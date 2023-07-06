<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;


require 'db.php';
require 'vendor/autoload.php';

session_start();

// request from client with email address
if($_SERVER['REQUEST_METHOD']=='POST' && isset($_POST['email'])){
$email = $conn->real_escape_string($_POST['email']);
$result = $conn->query("select * from tbl_student where role_id = '2' AND email = '$email';");
if($result->num_rows){
    $_SESSION['EMAIL']=$email;
    $password = rand(1111, 9999);
    $conn->query("update tbl_student set password = $password where email = '$email';");
   //-- add set otp to the table 
    sendEmail($email, $password);
    echo json_encode(['status' => 'success']);
}
else
echo json_encode(['status' => 'failure']);
exit();
}

// request from client with OTP code
if($_SERVER['REQUEST_METHOD']=='POST' && isset($_POST['password'])){
    $userProvidedOtp = $conn->real_escape_string($_POST['password']);
    $email = $_SESSION['EMAIL'];
    $result = $conn->query("select * from tbl_student where password = $userProvidedOtp and email = '$email' ;");
    if($result->num_rows){
        $_SESSION['LOGGEDIN']=true;
        echo json_encode(['status' => 'success']); 
    }
    else 
    echo json_encode(['status' => 'failure']);
exit();
}

if($_SERVER['REQUEST_METHOD']=='GET' && isset($_GET['logout'])){
   
    unset($_SESSION['EMAIL']);
    unset($_SESSION['LOGGEDIN']);
    session_destroy();
    echo json_encode(['status' => 'success']); 
    
    exit();
}

if($_SERVER['REQUEST_METHOD']=='GET'){
    if(isset($_SESSION['LOGGEDIN']))
    echo json_encode(['status' => 'success']); 
    else
    echo json_encode(['status' => 'failure']); 
    exit();
}


// function sendEmail logic
function sendEmail($email, $password){
   
$mail = new PHPMailer(true);

try{
$mail->isSMTP();
$mail->Host = 'smtp.gmail.com';
$mail->Username ='YOUR_EMAIL';
$mail->Password = 'YOUR_PASSWORD';
$mail->SMTPAuth=true;
$mail->Port = 587;
$mail->SMTPSecure = 'tls';
$mail->setFrom('charis.orony@strathmore.edu', 'election admin');
$mail->addAddress($email);
$mail->isHTML(true);
$mail->Subject='Your OTP Code';
$mail->Body = "Here is your OTP code: <br> $password";
$mail->send();
}catch(Exception $e)
    {echo $e;}
}