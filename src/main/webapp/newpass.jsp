<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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


<!DOCTYPE html>
<!-- Created By CodingLab - www.codinglabweb.com -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <!---<title> Responsive Registration Form | CodingLab </title>--->
    <link rel="stylesheet" href="style.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="container">
    <div class="title">Registration</div>
    <div class="content">
      <form action="addpass">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" placeholder="Enter your name" name="fullname" required>
          </div>
          <div class="input-box">
            <span class="details">Contact No</span>
            <input type="text" placeholder="Enter your Mobile no" name="mno" required>
          </div>
          <div class="input-box">
            <span class="details">Dob</span>
            <input type="date" name="date" required>
          </div>
        
          <div class="input-box">
            <span class="details">Pass Type</span>
            <select  name="passtype" required>
				 <option value="#">SELECT</option>
 				 <option value="Student" name="Student">Student</option>
  				 <option value="General" name="General">General</option>
				 <option value="Senior Citizen" name="Senior Citizen">Senior Citizen</option>
 				<option value="Person With Disability" name="Person With Disability">Person With Disability</option>
				</select>
          </div>
          <div class="input-box">
            <span class="details">Source</span>
            <input type="text" placeholder="From" name="source" required>
          </div>
 				<div class="input-box">
            <span class="details">Destination</span>
            <input type="text" placeholder="To" name="destination" required>
          </div>
        </div>
        <div class="gender-details">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"> <input type="radio" name="gender" value="male"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"><input type="radio" name="gender" value="Female"></span>
            <span class="gender">Female</span>
          </label>
          <label for="dot-3">
            <span class="dot three">  <input type="radio" name="gender" value="Other"></span>
            <span class="gender">Prefer not to say</span>
            </label>
          </div>
        </div>
 <div class="gender-details">
      
	   
  	
   	   
          <span class="gender-title">Duration</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one">  <input type="radio" name="duration" value="1 Month"></span>
            <span class="gender">1 Month</span>
          </label>
          <label for="dot-2">
            <span class="dot two"> <input type="radio" name="duration" value="3 Month"></span>
            <span class="gender">3 Month</span>
          </label>
          <label for="dot-3">
            <span class="dot three"><input type="radio" name="duration" value="6 Month"></span>
            <span class="gender">6 Month</span>
            </label>
          <label for="dot-4">
            <span class="dot four"> <input type="radio" name="duration" value="1 Year"></span>
            <span class="gender">1 Year</span>
            </label>
          </div>
        </div>
		<input type="hidden" name="status" value="Pending">
        <div class="button">
          <input type="submit" value="Register">
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
</html>

          
        </div>
        </div>


    </header>
</body>
</html>