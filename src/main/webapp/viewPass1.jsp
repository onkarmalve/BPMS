
  <%@page import="com.example.demo.Pass"%>
<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="i"%>
 <%@ page import="java.util.*" %>
  <%@ page import="java.sql.*" %>
   <%@ page import="java.sql.Date" %>

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
           
						<li><a href="user">USER</a></li>
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
String pid=request.getParameter("id");

String url="jdbc:mysql://localhost:3306/buspass";
String uname="root";
String pass="root";
Connection con=DriverManager.getConnection(url,uname,pass);

PreparedStatement ps=con.prepareStatement("select * from pass where id = ?");
ps.setString(1, pid);
ResultSet rs=ps.executeQuery();

if(rs.next())
{
	
	int id=rs.getInt(1);
	String source=rs.getString(2);
	double charges=rs.getDouble(3);
	Date date=rs.getDate(4);
	String destination=rs.getString(5);
	String duration=rs.getString(6);
	Date fromdate=rs.getDate(7);
	String fullname=rs.getString(8);
	String gender=rs.getString(9);
	String mno=rs.getString(10);
	String passtype=rs.getString(11);
	String status=rs.getString(12);
	Date todate=rs.getDate(13);	

%>
<center>
<h3 style="color: black;"><b>Your Pass</b></h3>
<table border="1" style="width: 30%">
<tr>
<th>Id</th>
<td><%=id %></td>
</tr>
<tr>
<th>Full Name</th>
<td><%=fullname %></td>
</tr>
<tr>
<th>Contact</th>
<td><%=mno%></td>
</tr>
<tr>
<th>DOB</th>
<td><%=date %></td>
</tr>
<tr>
<th>Gender</th>
<td><%=gender %></td>
</tr>
<tr>
<th>Source</th>
<td><%=source %></td>
<tr>
<tr>
<th>Destination</th>
<td><%=destination%></td>
</tr>
<tr>
<th>Pass Type</th>
<td><%=passtype %></td>
</tr>
<tr>
<th>Start Date</th>
<td><%=fromdate %></td>
</tr>
<tr>
<th>End Date</th>
<td><%=todate %></td>
</tr>
<tr>
<th>Duration</th>
<td><%=duration%></td>
</tr>
</table>
</center>
<%
}
else
{
	 %>
<center><h1 style="color: red;"><b>record Not Found...!</b></h1></center>
     <%
     }%>     
        </div>
        </div>


    </header>
</body>
</html>




