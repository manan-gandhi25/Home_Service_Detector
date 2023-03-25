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
if(isset($_POST['signup'])){
	extract($_POST);
	$sql1 = mysqli_query($con,"select * from `service_provider_profile_tbl` where `email` = '".$Email."' ");
	
	$count = mysqli_num_rows($sql1);
		
	if($count > 0){
		$_SESSION['alredmail'] = "Your Mail Id Is Already Register";
		header('location:provider-register.php');
	}
	else{
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

$mail->addAddress($Email, "$firstname");

$mail->isHTML(true);

$mail->Subject = "Welcome to Home Service Detector";
$mail->Body = "Dear Sir/Madam,

I am reaching out to thank you for registering to Home Service Detector. You will get notification for bookings and quotation for services.

Thank you again, and have great rest of the day,

Regards :-
Home Service Detector";
$mail->AltBody = "This is the plain text version of the email content";
if($mail->send()){
	echo "Mail has een sent";
}else{
	echo "cde ma kai error che ";
}

if (isset($_POST['signup'])) {
	echo $reques = $_REQUEST['signup'];
	extract($_POST);

	$sql = "INSERT INTO `service_provider_profile_tbl`(`firstname`,`lastname`, `email`, `password`, `mobilenum`,`dob`) VALUES ('$firstname','$lastname','$Email','$Password','$mobilenum','$dob')";
	$result = mysqli_query($con,$sql);
	if($result){
		header('location:provider-register.php');
		$_SESSION['succmsg'] = "Your Data Has Been Saved";
	}else{
		header('location:index.php?page=provider-register');
		$_SESSION['errormsg'] =  "Error";
	}
	}
}}
else if(isset($_POST['loginbtn'])){
	extract($_POST);
	echo $sql = "SELECT * FROM `service_provider_profile_tbl` WHERE `email` = '".$_POST['Email']."' and `password` = '".$_POST['Password']."' ";
	$result = mysqli_query($con,$sql);
	$row = mysqli_num_rows($result);
	if($row > 0){
		$fetchrow = mysqli_fetch_array($result);
		echo $_SESSION['sid'] = $fetchrow['service_provider_Id'];
		echo $_SESSION['firstname'] = $fetchrow['firstname'];
		echo $_SESSION['lastname'] = $fetchrow['lastname'];
		echo $_SESSION['email'] = $fetchrow['email'];
		echo $_SESSION['mobilenum'] = $fetchrow['mobilenum'];
		header('location:./serviceprovider/index.php'); 
	}else{
		header('location:provider-register.php'); 
		$_SESSION['errormsg'] =  "Invalid Username And Password";
	}
}
?>