

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>BPMS</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" 
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <script src='main.js'></script>
</head>
<body>
    <header class="header">
        <nav class="navbar navbar-style">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#micon">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                  <a href=""><img class="logo" src="bus.jfif"></a>
                </div>

                <div class="collapse navbar-collapse" id="micon">

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index">HOME</a></li>
					<li><a href="signup">SignUp</a></li>
					<li><a href="login">Login</a></li>
					<li><a href="adminlogin">Admin</a></li>
					<li><a href="aboutus">About/ContactUs</a></li>

                </ul>
            </div>
        </div>
        </nav>

        <div class="container">
        <div class="row">

            <div class="col-sm-6 banner-info">
                <h1>Welcome In</h1>
                <p class="big-text">Bus Pass Management System</p>
                <p>"We Provide Bus Pass To each And Every Citizen,Here You Will Get A pass without Wait In Any Queue."</p>
                <a class="btn btn-first" href="login">Login Here</a>
                <a class="btn btn-second" href="signup">Signup Here</a>
            </div>
            <div class="col-sm-6 banner-img">
                <img src="bus1.png" class="img-responsive">
            </div>
        </div>
        </div>


    </header>
</body>
</html>