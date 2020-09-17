<?php

use PHPMailer\PHPMailer\PHPMailer;


function sendOTP($email, $otp){

    require('PHPMailer/src/PHPMailer.php');
    require('PHPMailer/src/SMTP.php');
// Load Composer's autoloader
//    require 'vendor/autoload.php';

    $message_body = "One Time Password for PHP login authentication is:<br/><br/>" . $otp;
    $mail = new PHPMailer(true);
    $mail->IsSMTP();
    $mail->SMTPDebug = 2;
    $mail->SMTPAuth = true;
    $mail->SMTPSecure = 'tls'; // tls or ssl
    $mail->Port = 587;
    $mail->Username = "yourmail";
    $mail->Password = "yourpassword";
    $mail->Host = "smtp-mail.outlook.com";
//		$mail->Mailer   = "smtp";
    $mail->SetFrom("yourmail", "yourFirstname");
    $mail->AddAddress($email);
    $mail->Subject = "OTP to Login";
    $mail->MsgHTML($message_body);
    $mail->IsHTML(true);
    $result = $mail->Send();

    return $result;
}

?>