
</html><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

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
                  
					<li><a href="admin">Admin</a></li>
					<li><a href="passrequest">passRequests</a></li>
					<li><a href="search">Search</a></li>
					<li><a href="report">Report</a></li>
					<li><a href="index">Logout</a></li>
					
					</ul>


               
            </div>
        </div>
        </nav>

        <div class="container">
        <div class="row">
	
		<form action="viewreport" method="Post">
		From Date<input type="date" name="fromdate">
		To Date<input type="date" name="todate">
		<input type="submit" value="Report">
		</form>
			
        </div>
        </div>


    </header>
</body>
</html>