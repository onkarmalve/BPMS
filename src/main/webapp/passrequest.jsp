

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
<%
String name=request.getParameter("fullname");

String url="jdbc:mysql://localhost:3306/buspass";
String uname="root";
String pass="root";
Connection con=DriverManager.getConnection(url,uname,pass);

PreparedStatement ps=con.prepareStatement("select * from pass where status = ?");
ps.setString(1, "Pending");
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
<center>
<h3 style="color: black;"><b>All Request's</b></h3>
<table border="1"  style="height: 20%">
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
</center>
<%
} 
	 %>
          
        </div>
        
b        
        

  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Registration Form | CodingLab </title>--->
    <link rel="stylesheet" href="style.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container"><br><br>
    <div class="title">PASS Approval</div>
    <div class="content">
      <form action="passapproval">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Id</span>
            <input type="text" placeholder="Enter Id Whos Approval You Want To complete" name="id" required>
          </div>
          <div class="input-box">
            <span class="details">FromDate</span>
            <input type="date" name="fromdate" required>
          </div>
           <div class="input-box">
            <span class="details">ToDate</span>
            <input type="date" name="todate" required>
          </div>
          <div class="input-box">
            <span class="details">Charges</span>
            <input type="text" placeholder="Enter Charges" name="charges" required>
          </div>
       <div class="input-box">
            <span class="details">Status</span>
            <select  name="status" required>
				 <option value="#">SELECT</option>
				 <option value="Processing" name="Processing">Processing</option> 
  				 <option value="Failed" name="Failed">Failed</option>
 				
				</select>
          </div>
        <div class="button">
          <input type="submit" value="Submit">
        </div>
      </form>
    </div>
  </div>

</body>

<style>

.container .title{
  font-size: 25px;
  font-weight: 500;
  position: relative;
}
.container .title::before{
  content: "";
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 30px;
  border-radius: 5px;
  background: linear-gradient(135deg, #71b7e6, #9b59b6);
}
.content form .user-details{
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  margin: 20px 0 12px 0;
}
form .user-details .input-box{
  margin-bottom: 15px;
  width: calc(100% / 2 - 20px);
}
form .input-box span.details{
  display: block;
  font-weight: 500;
  margin-bottom: 5px;
}
.user-details .input-box input{
  height: 45px;
  width: 100%;
  outline: none;
  font-size: 16px;
  border-radius: 5px;
  padding-left: 15px;
  border: 1px solid #ccc;
  border-bottom-width: 2px;
  transition: all 0.3s ease;
}
.user-details .input-box input:focus,
.user-details .input-box input:valid{
  border-color: #9b59b6;
}
 form .gender-details .gender-title{
  font-size: 20px;
  font-weight: 500;
 }
 form .category{
   display: flex;
   width: 80%;
   margin: 8px 0 ;
   justify-content: space-between;
 }
 form .category label{
   display: flex;
   align-items: center;
   cursor: pointer;
 }
 form .category label .dot input{
  height: 18px;
  width: 18px;
  border-radius: 50%;
  margin-right: 8px;
  background: #d9d9d9;
  border: 5px solid transparent;
  transition: all 0.3s ease;
}


 form .button{
   height: 45px;
   margin: 35px 0
 }
 form .button input{
   height: 100%;
   width: 100%;
   border-radius: 5px;
   border: none;
   color: #fff;
   font-size: 18px;
   font-weight: 500;
   letter-spacing: 1px;
   cursor: pointer;
   transition: all 0.3s ease;
   background: linear-gradient(135deg, #71b7e6, #9b59b6);
 }
 form .button input:hover{
  /* transform: scale(0.99); */
  background: linear-gradient(-135deg, #71b7e6, #9b59b6);
  }
 @media(max-width: 584px){
 .container{
  max-width: 100%;
}
form .user-details .input-box{
    margin-bottom: 15px;
    width: 100%;
  }
  form .category{
    width: 100%;
  }
  .content form .user-details{
    max-height: 300px;
    overflow-y: scroll;
  }
  .user-details::-webkit-scrollbar{
    width: 5px;
  }
  }
  @media(max-width: 459px){
  .container .content .category{
    flex-direction: column;
  }
}

 </style>
</div>
        
    </header>

</html>

