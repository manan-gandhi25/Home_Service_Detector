<?php 
include_once('database/index.php');
$email = $_GET['id'];
$sql = mysqli_query($con,"SELECT * from `service_provider_profile_tbl` where  `email` = '".$email."' ");
	$row = mysqli_fetch_array($sql);
	$nu = mysqli_num_rows($sql);
	if($nu > 0){
		header('location:updatepassword.php?id='.$email);
	}else{
		$_SESSION['errormsg'] = "Your Email Don't Not Match With Our Record";
		header('location:provider-register.php');
	}
?>