
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>

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
                    	<li><a href="user">User</a></li>
						<li><a href="newpass">New Pass</a></li>
						<li><a href="status">Status</a></li>
						<li><a href="viewpass">View Pass</a></li>
						<li><a href="index">Logout</a></li>
						<li><a href="useraboutus">About/ContactUs</a></li>
						
                </ul>
            </div>
        </div>
        </nav>

        <div class="container">
        <div class="row">

            <div class="col-sm-6 banner-info">
               
               <%
              int id=Integer.parseInt(request.getParameter("id"));
              String status=request.getParameter("status");
              
              String url="jdbc:mysql://localhost:3306/buspass";
              String uname="root";
              String pass="root";
              Connection con=DriverManager.getConnection(url,uname,pass);

              PreparedStatement ps=con.prepareStatement("update pass set status=? where id=?");
              ps.setString(1, status);
              ps.setInt(2, id);
             int ans=ps.executeUpdate();
				if(ans>0)
				{
               %>
                <p class="big-text"><h1>Your Approval Is Successfull...! Your Pass Id is<b style="color:red; "> <%=id%></b></h1></p>
                <p>Click Here And Enter Pass Id To View Your Pass</p>
                <a class="btn btn-first" href="viewpass">Click Here</a>
            </div>
            
        </div>
        </div>
        <%
				}
				else 
				{
		%>
		<h3 style="color: red;"><center>Something wents Wrong......! please Try Again Later</center></h3>
			<%
			}%>	
     
    </header>
</body>
</html>

