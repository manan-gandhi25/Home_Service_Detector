<?php include_once('database/index.php'); ?>
<!DOCTYPE html>
<html lang="en">

<!-- Mirrored from truelysell-html.dreamguystech.com/template/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 24 Dec 2020 11:44:33 GMT -->
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
	<title>Home Service Detector</title>

	<!-- Favicon -->
	<link rel="shortcut icon" href="assets/img/HSD1.png">
	
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,500;0,600;0,700;1,400&amp;display=swap" rel="stylesheet"> 
	
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">

	<!-- Fontawesome CSS -->
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
	<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

	<!-- Owl Carousel CSS -->
	<link rel="stylesheet" href="assets/plugins/owlcarousel/owl.carousel.min.css">
	<link rel="stylesheet" href="assets/plugins/owlcarousel/owl.theme.default.min.css">

	<!-- Main CSS -->
	<link rel="stylesheet" href="assets/css/style.css">
</head>
<div class="main-wrapper">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-body">
					<div class="login-header">
						<h3>Forgot Password</h3>
					</div>
<form action="provider-forgot-password-action.php" method="POST">
	<div class="form-group form-focus">
		<label class="focus-label">Email Id:-</label>
		<input type="text" class="form-control" name="email" placeholder="xyz@gmail.com">
	</div>
	<button class="btn btn-primary btn-block btn-lg login-btn" type="submit" name="forgot">Submit</button>
</form>