<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Placement Cell</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="css/custom.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous"> <!-- ****link for fontawesome -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script></head>
<body>
<!-- Header for the navigation bar -->

  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
      <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
       <span class="sr-only"> Toggle navigation</span>
        <span class="icon-bar"> </span>
        <span class="icon-bar"> </span>
        <span class="icon-bar"> </span> 
      </button>
      <!--  <a class="navbar-brand" href="#"> Placement Cell </a>-->
      <div class="navbar-collapse collapse">
        <ul class="nav navbar-nav navbar-right">
          <li class="active"> <a href="navign.html"> HOME </a> </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown"> ABOUT <b class="caret"> </b>
              <ul class="dropdown-menu">
                <li class="dropdown-header"> <a href="company.html"> COMPANIES </a> </li>
                <li class="dropdown-header"> <a href="#"> CAREER </a> </li>
                <li class="dropdown-header"> <a href="#"> TECH-NEWS </a> </li>
              </ul>
          </li>
          <li class="active"> <a href="admin.html"> ADMIN </a> </li>
          <li class="active"> <a href="forms2.html"> USER </a> </li>
        </ul>
      </div>
  </nav>
 
<!-- jumbotron -->

  <div class="container">
    <div class="jumbotron text-center">
      <h3> WELCOME to PLACEMENT CELL </h3>
      <p>Moving towards a digital India, We introduce to you the digital Placement cell.</p>
                  <!-- buttons in jumbotron -->
      <button type=button class="btn btn-info"> Information</button>
      <button type=button class="btn btn-success"> Success</button>
    </div>
    <div class="thumbnail" href="#">
    <img src="/PlacementCellAllTestProject/img/navignpagepic.jpg" alt="Placement" title="Placement">
    </div>
    <div class="page-header">
      <h3>REVIEWS</h3>
    </div>
    <div class="row">
      <div class="col-md-4">. <!-- md-mediumscreen sm-smallscreen xs-extrasmallscreen -->
        <h4>By Students</h4>
        <p> A very good site for placement. Its a free portal and my college is part of it.</p>
        <button type=button class="btn btn-link"> Read More</button>
      </div>
      <div class="col-md-4"> <br />
        <h4>By Companies</h4>
        <p> A very good site for placement. Its a free portal and our company is part of it.</p>
        <button type=button class="btn btn-link"> Read More</button>
      </div>
      <div class="col-md-4"> <br />
        <h4>By College</h4> 
        <p> Our students took great initiative to develop this site. And it works very smoothly!</p>
        <button type=button class="btn btn-link"> Read More</button>
      </div>
    </div>
    </div>
  </div>

<!-- Fixed footer -->

  <div class="navbar navbar-inverse navbar-fixed-bottom">
    <div class="container">
      <div class="navbar-text pull-left">
      <p> Copyright Placement cell 2018 </p>
      </div>
      <div class="navbar-text pull-right">
      <a hreh="#" > <i class="fas fa-user-graduate fa-2x"></i> </a>
      <a hreh="#" > <i class="fab fa-connectdevelop fa-2x"></i> </a>
      </div>
    </div>
  </div>
</body>
</html>