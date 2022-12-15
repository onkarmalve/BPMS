
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*" %>

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


<%
String name=request.getParameter("fullname");

String url="jdbc:mysql://localhost:3306/buspass";
String uname="root";
String pass="root";
Connection con=DriverManager.getConnection(url,uname,pass);

PreparedStatement ps=con.prepareStatement("select * from pass where fullname = ?");
ps.setString(1, name);
ResultSet rs=ps.executeQuery();

if(rs.next())
{
	String status=rs.getString(12);
	Double charges=rs.getDouble(3);
	int id=rs.getInt(1);
	
	if(status.equals("Processing"))
	{
	%>
		<center><h1 style="color: red;"><b>Make a Payment...!,and Create Your pass</b></h1></center>
	<form action="SuccessFull.jsp">
	<input type="text" name="charges" value=<%= charges %> readonly="readonly"><br>
	<input type="hidden" name="id" value=<%=id %>>
	<input type="hidden" name="status" value="SuccessFull">
	<input type="submit" value="Pay">
	</form>
	<%	
	}
	else if(status.equals("Failed"))
	{
	%>
	<center><h1 style="color: red;"><b>Sorry...!,Your Request For Pass is Rejected......Please Try Again Later</b></h1></center>
	<% 
	}
	else if(status.equals("Pending"))
	{
	%>
	<center><h1 style="color: green;"><b>Pending...!,Your Request For Pass is Is Pending......Please Wait</b></h1></center>
	<% 
	}
	else if(status.equals("SuccessFull"))
	{
	%>
	<center><h1 style="color: black;"><b>Your Pass Are Aready Created.....!</b></h1></center>
			
	<% 
	}
}
else
{
	%>
	<center><h1 style="color: red;"><b>record Not Found...!</b></h1></center>
<%
}
%>



           
        </div>
        </div>


    </header>
</body>
</html>







