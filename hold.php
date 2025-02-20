<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <title>account</title>
    <link rel="icon" href="assets/img/logo.png">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="https://site-assets.fontawesome.com/releases/v5.15.4/css/all.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/otp.css">
    <link rel="stylesheet" href="assets/css/account.css">
    <link rel="stylesheet" href="assets/css/signup_bid.css">
    <style>
        .otp-container {
            height: 100% !important;
            margin: 75px 0;
            place-self: center;
            background: white;
            border-radius: 15px;
            box-shadow: 1px 6px 7px 2px #0000002e;
            min-width: 270px;
            max-width: 550px;
            display: block;
    place-items: center;
        }
        .otp-container h2{
            margin-bottom: 15px;
            color: var(--primary);
        }
        @media (max-width:767px) {
            .otp-container {
                width: 80%;
            }
        }
    </style>
</head>

<body>

    <?php include_once "header.php"; ?>
    <div class="register-container">
        <div class="otp-container">
        <h2>time for checking up!</h2>
        <P>we are checking up your application for safety  sir, we holding your auction account and soon we email you and you can bid for all products you want.</P>
  
        </div>

    </div>
    <?php include_once "footer.php"; ?>

</body>

</html>