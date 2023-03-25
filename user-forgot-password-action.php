<?php include_once('database/index.php'); ?>
<?php 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
include_once("PHPMailer/src/Exception.php");
include_once("PHPMailer/src/OAuth.php");
include_once("PHPMailer/src/PHPMailer.php");
include_once("PHPMailer/src/SMTP.php"); 
?>
<?php 
if (isset($_POST['forgot'])) {
	extract($_POST);
	$sql = mysqli_query($con,"SELECT * from `user_registreation_tbl` where  `email` = '".$_POST['email']."' ");
	$row = mysqli_fetch_array($sql);
	$nu = mysqli_num_rows($sql);
	print_r($nu);
	if($nu > 0){
		$code = rand(0000,9999);
		
		$url = "http://localhost:8000/Website/verifypassword-user.php?id=$email"; 
		//header('location:provider-forgot-password-action.php');
		$mail = new PHPMailer(true);
	$mail->SMTPDebug = 3;                               
//Set PHPMailer to use SMTP.
$mail->isSMTP();            
//Set SMTP host name                          
$mail->Host = "smtp.gmail.com";
//Set this to true if SMTP host requires authentication to send email
$mail->SMTPAuth = true;                          
//Provide username and password     
$mail->Username = "homeservicedetector@gmail.com";     # wadu mail che ne google par ?? ane loging kar ..karyu sir            
$mail->Password = "hsd12345@";                           
//If SMTP requires TLS encryption then set it
$mail->SMTPSecure = "tsl";                           
//Set TCP port to connect to
$mail->Port = 587;                                   

$mail->From = "homeservicedetector@gmail.com";
$mail->FromName = "Home Service Detector";

$mail->addAddress($email, "$firstname");

$mail->isHTML(true);

$mail->Subject = "Your Request has been submitted.";
$mail->Body = "
Hello Mr/Ms $firstname,

You Request For Reset Password Here Link <a href='".$url."'>Update Your Password</a>
	
Regards :-
Home Service Detector";
$mail->AltBody = "This is the plain text version of the email content";
if($mail->send()){
	echo "Mail has been sent";
	header('location:index.php');
}else{
	echo "cde ma kai error che ";
}
	}
	else{
		header('location:user-forgot-password.php');
	}
} 
?>