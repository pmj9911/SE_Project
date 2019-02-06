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
	 <title>USER Login</title>
</head>
<body>

<!------ Include the above in your HEAD tag ---------->

<!-- All the files that are required -->


<!-- Where all the magic happens -->
<!-- LOGIN FORM -->
<div class ="container">
  	<div class= "row">
  		<div class="col-xs-6 ">
  		
  			<div class="logo text-center"><h2>Login</h2></div>
	<!-- Main Form -->
			<div class="login-form-1">
				<form id="login-form" class="text-left" action="/PlacementCellAllTestProject/profile.html" method="post">
					<div class="login-form-main-message"> </div>
 						<div class="form-group">
  							<label for="inputUsername">username</label>
  							<input type="text" class="form-control" name="inputUsername" placeholder="User Name">
  						</div>
  						<div class="form-group">
        					<label for="inputPassword">Password</label>
        					<input type="password" class="form-control" name="inputPassword" placeholder="Password">
    					</div>
						<button type="submit" class="btn btn-primary">Login</button>
				
					<div class="etc-login-form">
					<p>Forgot your Password? <a href="fp.html">Click Here</a></p>
					<p>New User? <a href="reg.html">Sign in(create a new account)</a></p>
					</div>
				</form>
			</div>
			</div>
		</div>
	</div>
	<!-- end:Main Form -->

</body>
</html>