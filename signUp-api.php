<?php
// Include database connection and PHPMailer for sending emails
require_once 'DB-con.php';
// require_once 'PHPMailer/PHPMailer.php';
// require_once 'PHPMailer/SMTP.php';
// require_once 'PHPMailer/Exception.php';

// use PHPMailer\PHPMailer\PHPMailer;
// use PHPMailer\PHPMailer\Exception;

// Set content type for JSON response
header('Content-Type: application/json');

// Get the input from the request body
$input = json_decode(file_get_contents('php://input'), true);

// Check if all required fields are provided
if (!isset($input['name']) || !isset($input['email']) || !isset($input['phone']) || !isset($input['password'])) {
    echo json_encode([
        "status" => "error",
        "message" => "All fields (name, email, phone, password) are required",
        "data" => null
    ]);
    exit;
}

$name = $input['name'];
$email = $input['email'];
$phone = $input['phone'];
$password = password_hash($input['password'], PASSWORD_DEFAULT); // Secure password storage
$otp = rand(100000, 999999); // Generate 6-digit OTP
// $expiry_time = time() + (5*60)
$expires = date('U') + 900; // 15 minutes from now


// Check if the email already exists
$query = "SELECT USER_ID FROM USER WHERE EMAIL = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("s", $email);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    // Email already exists
    echo json_encode([
        "status" => "error",
        "message" => "Email already registered",
        "data" => []
    ]);
    exit;
}

// Insert the user into the database
$query = "INSERT INTO USER (USER_NAME, EMAIL, PHONE, PASSWORD, OTP, EXPIRY_TIME ) VALUES (?,?, ?, ?, ?, ?)";
$stmt = $conn->prepare($query);
$stmt->bind_param("ssssii", $name, $email, $phone, $password, $otp, $expires);

if ($stmt->execute()) {
    $user_id = $stmt->insert_id;

    // Send OTP email
    // $mail = new PHPMailer(true);
    try {
        // SMTP configuration
        // $mail->isSMTP();
        // $mail->Host = 'smtp.hostinger.com'; // Hostinger SMTP server
        // $mail->SMTPAuth = true;
        // $mail->Username = 'your_email@yourdomain.com'; // Replace with your Hostinger email
        // $mail->Password = 'your_email_password'; // Replace with your Hostinger email password
        // $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
        // $mail->Port = 465;

        // // Email settings
        // $mail->setFrom('your_email@yourdomain.com', 'Your App Name'); // Sender info
        // $mail->addAddress($email); // Recipient
        // $mail->isHTML(true);
        // $mail->Subject = 'Your OTP Code';
        // $mail->Body = "Hello $name,<br><br>Your OTP code is: <strong>$otp</strong><br><br>Thank you.";

        // $mail->send();

        // Set cookies (optional: make secure in production)
        setcookie("USER_ID", $user_id, time() + (60*60*24*30), "/", "", false, true);
        setcookie("USER_NAME", $name, time() + (60*60*24*30), "/", "", false, true);
        setcookie("EMAIL", $email, time() + (60*60*24*30), "/", "", false, true);

        // Respond with user data
        echo json_encode([
            "status" => "success",
            "message" => "Sign-up successful. OTP sent to your email.",
            "data" => [
                "id" => $user_id,
                "name" => $name,
                "email" => $email,
                "phone" => $phone
            ]
        ]);
    } catch (Exception $e) {
        // Email sending failed
        echo json_encode([
            "status" => "error",
            "message" => "Sign-up successful but failed to send OTP: " . $mail->ErrorInfo,
            "data" => []
        ]);
    }
} else {
    // Insertion failed
    echo json_encode([
        "status" => "error",
        "message" => "Failed to register user",
        "data" => []
    ]);
}
?>
