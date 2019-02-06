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
	 <title>Forgot Password</title>
</head>
<body>

<!------ Include the above in your HEAD tag ---------->

<!-- All the files that are required -->


<!-- Where all the magic happens -->

<div class ="container">
  	<div class= "row">
  		<div class="col-md-6 ">
  		</br></br>
	<div class="logo text-center"><h2>Forgot Password</h2></div>
	<!-- Main Form -->
	<div class="login-form-1">
		<form id="forgot-password-form" class="text-left" action="/PlacementCellAllTestProject/updatedemail.html" method="post">
			<div class="etc-login-form">
			</br>
				<p>When you fill in your registered email address, you will be sent instructions on how to reset your password.</p>
			</div>
			<div class="login-form-main-message"></div>
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
        					<label for="fp_email" >Email address</label>
        					<input type="email" class="form-control" name="update_email" placeholder="email">
    				</div>
    				<div class="form-group">
        					<label for="fp_username" >User Name</label>
        					<input type="text" class="form-control" name="update_username" placeholder="email">
    				</div>
					<div>
							<button type="Submit" class="btn btn-success">Submit<i class="fa fa-chevron-right"></i></button>
					</div>	
					
				</div>
			</div>
			
						<div class="etc-login-form text-right">
							Recollect your password?<a href="forms2.html"> click here </a>to go to log in page
						</div>
		</form>
	</div>
</div>
</div>
</div>
</body>
</html>