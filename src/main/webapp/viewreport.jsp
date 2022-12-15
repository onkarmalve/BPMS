

<%@page import="java.util.Date"%>
<%@page import="com.example.demo.Pass"%>
<%@page import="java.math.BigInteger"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="i"%>
 <%@ page import="java.util.*" %>
  <%@ page import="java.sql.*" %>
   
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


                </ul>
            </div>
        </div>
        </nav>

        <div class="container">
        <div class="row">
<h1>REPORT</h1>
<%
String fromdate1=request.getParameter("fromdate");
String todate2=request.getParameter("todate");

String url="jdbc:mysql://localhost:3306/buspass";
String uname="root";
String pass="root";
Connection con=DriverManager.getConnection(url,uname,pass);

PreparedStatement ps=con.prepareStatement("select * from pass where date BETWEEN ? and ?");
ps.setString(1, fromdate1);
ps.setString(2, todate2);
ResultSet rs=ps.executeQuery();


while(rs.next())
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
	double mno=rs.getDouble(10);
	String passtype=rs.getString(11);
	String status=rs.getString(12);
	Date todate=rs.getDate(13);	

%>

<table border="1">
<tr>
<th>Id</th>
<th>Full Name</th>
<th>Contact</th>
<th>DOB</th>
<th>Gender</th>
<th>Source</th>
<th>Destination</th>
<th>Pass Type</th>
<th>Start Date</th>
<th>End Date</th>
<th>Duration</th>
</tr>

<tr>

<td><%=id %></td>
<td><%=fullname %></td>
<td><%=mno%></td>
<td><%=date %></td>
<td><%=gender %></td>
<td><%=source %></td>
<td><%=destination%></td>
<td><%=passtype %></td>
<td><%=fromdate %></td>
<td><%=todate %></td>
<td><%=duration%></td>
</tr>

</table>
<%}

 %>
          
        </div>
        </div>


    </header>
</body>
</html>