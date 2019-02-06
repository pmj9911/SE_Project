<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <!-- Required meta tags -->
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="css/custom.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"> <!-- ****link for fontawesome -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></head>
	 <title>user sign up</title></head>
<body>
<!--FORGOT PASSWORD FORM -->
<div class ="container">
	  	<div class= "row">
  		<div class="col-xs-4">
  		</br>
	<div class="logo text-center"><h2>Sign up</h2></div>
	<!-- Main Form -->
		<div class="login-form-1">
			<form id="register-form" class="text-left" action="/PlacementCellAllTestProject/forms2aftersignup.html" method="post" >
				<div class="login-form-main-message"></div>
				<div class="main-login-form">
					<div class="login-group">
						<div class="form-group">
							<label for="reg_username" >Username</label>
							<input type="text" class="form-control" id="reg_username" name="reg_username" placeholder="username">
						</div>
						<div class="form-group">
							<label for="reg_email" >Email Address</label>
							<input type="email" class="form-control" id="reg_email" name="reg_email" placeholder="email">
						</div>
						<div class="form-group">
							<label for="reg_fullname" >Full Name</label>
							<input type="text" class="form-control" id="reg_fullname" name="reg_fullname" placeholder="full name">
						</div>
						<div class="form-group">
        					<label for="reg_gender">Gender</label>
        					<input type="text" class="form-control" name="reg_gender" placeholder="Male or Female">
    					</div>							
						<div class="form-group">
							<label for="reg_password">Password</label>
							<input type="password" class="form-control" id="reg_password" name="reg_password" placeholder="password">
						</div>
						<div class="form-group">
							<label for="reg_password_confirm">Password Confirm</label>
							<input type="password" class="form-control" id="reg_password_confirm" name="reg_password_confirm" placeholder="confirm password">
						</div>					    					
						<div class="form-group login-group-checkbox">
							<input type="checkbox" class="" id="reg_agree" name="reg_agree">
							<label for="reg_agree">I agree with <a href="#">terms</a></label>
						</div>
					
						<div>
							<button type="Submit" class="btn btn-success">Submit<i class="fa fa-chevron-right"></i></button>
							<a href="forms2.html">Already have an account?</a>
						</div> 
					<br>
			</form>
		</div>
	<!-- end:Main Form -->
</div>
</div>
</div>
</body>
</html>