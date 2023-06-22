<html>
<head>
    <title>Login Page</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-...your-sha512-here..." crossorigin="anonymous" />
</head>
<body>

    <div class="container email-container">
        <h2>Enter Email</h2>
        <form action="" class="form email-form">
            <input type="email" name="email" id="email" placeholder="Enter your school email address" required >
            <small id="emailHelp" class="form-text" style="color: blue;"><i class="fas fa-info-circle"></i> Please enter a valid school email address ending with .edu</small>
            <span class="email-error"></span>
            <button class="btn email-submit">Send OTP</button>
        </form>
    </div>

    <div class="container otp-container">
        <h2>Enter OTP</h2>
        <form action="" class="form otp-form">
            <input type="number" name="otp" id="otp" placeholder="Enter OTP...">
            <span class="otp-error"></span>
            <button class="btn otp-submit">Login</button>
        </form>
    </div>
   <script src="js/script.js"></script> 
</body>
</html>
</body>