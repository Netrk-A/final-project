<?php
// Include database connection (assume $conn is the connection variable)
require_once 'DB-con.php';

// Set content type for JSON response
header('Content-Type: application/json');

// Get the input from the request body =>from json to data list.
$input = json_decode(file_get_contents('php://input'), true);

// Check if required fields are provided
if (!isset($input['username']) || !isset($input['password'])) {
    echo json_encode([
        "status" => "error",
        "message" => "Username and password are required",
        "data" => null
    ]);
    exit;
}

$username = $input['username'];
$password = $input['password'];

// Validate user in the database
$query = "SELECT USER_ID, USER_NAME, EMAIL FROM USER WHERE USER_NAME = ? AND PASSWORD = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param("ss", $username, $password);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    // User found
    $user = $result->fetch_assoc();
    
    // Set cookies (optional: make secure in production)
    setcookie("USER_ID", $user['USER_ID'], time() + (30 * 24 * 60 * 60), "/", "", false, true);
    setcookie("USER_NAME", $user['USER_NAME'], time() + (30 * 24 * 60 * 60), "/", "", false, true);

    echo json_encode([
        "status" => "success",
        "message" => "Login successful",
        "data" => $user
    ]);
} else {
    // No user found
    echo json_encode([
        "status" => "error",
        "message" => "Invalid username or password",
        "data" => []
    ]);

    // Clear cookies to ensure nothing is stored
    setcookie("USER_ID", "", time() - (30 * 24 * 60 * 60), "/", "", false, true);
    setcookie("USER_NAME", "", time() - (30 * 24 * 60 * 60), "/", "", false, true);
}
?>
