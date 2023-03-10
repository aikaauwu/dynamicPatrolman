<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.container{
   background: #fff;
  width: 410px;
  height: 600px;
  padding: 30px;
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
  margin-left: 500px;
  margin-top: 50px;
}
.container .text{
  font-size: 35px;
  font-weight: 600;
  text-align: center;
  font-family: 'Montserrat', sans-serif;
  text-transform:uppercase;
}
.container form{
  margin-top: 0px;
}
.container form .data{
  height: 45px;
  width: 100%;
  margin: 40px 0;
}
form .data label{
  font-size: 20px;
  font-family: 'Encode Sans SC', sans-serif;
}
form .data input{
  height: 100%;
  width: 100%;
  padding-left: 10px;
  font-size: 17px;
  border: 1px solid silver;
}
form .data input:focus{
  border-color: #3498db;
  border-bottom-width: 2px;
}
form .btn{
  margin: 30px 0;
  height: 45px;
  width: 100%;
  position: relative;
}
form .btn button{
    border: none;
	border-radius:5px;
	padding: 10px 165px;
	position: absolute;
	text-align: center;
	font-size:20px;
	text-transform: uppercase;
	transition-duration: 0.5s;
	cursor: pointer;
	background-color: 	#7393B3 ;
	border: 2px solid #bfbfbf;
	color: white;
	letter-spacing: 3px;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
form .btn:hover button{
    background-color: #89CFF0;
	border: 2px solid white;

}


.btn-group button {
  background-color: #728FCE; /* Green background */
  border: 1px solid white; /* Green border */
  color: white; /* White text */
  padding: 10px 24px; /* Some padding */
  cursor: pointer; /* Pointer/hand icon */
  float: left; /* Float the buttons side by side */
  text-decoration:none;
}

/* Clear floats (clearfix hack) */
.btn-group:after {
  content: "";
  clear: both;
  display: table;
}

.btn-group button:not(:last-child) {
  border-right: none; /* Prevent double borders */
  text-decoration:none;
}

/* Add a background color on hover */
.btn-group button:hover {
  background-color: #D5D6EA;
}
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}
a {text-decoration:none;}

</style></head>
<body style="margin:0; padding:0; font-family:Arial;background-color:#6667AB;">

    <div class="center">
	
         <div class="container">
		 
		 
            <div class="text"><b>Zulmittee Login</b></div>
            
			<div id="frmRegistration">
				<div class="hero">
			
			
 				 <div class="imgcontainer">
   					 <img src="img/comm.png" alt="Avatar" class="avatar">
  				 </div>

				 <div class="btn-group"style="width:100%">
				 
				<button style="width:33.3%"><a href="index.jsp">RESIDENT</button></a>
 				<button style="width:33.3%"><a href="login patrolman.jsp">PATROLMAN</button></a>
 				<button style="width:33.3%"><a href="login comm.jsp">COMMITTEE</button></a>
				</div>

<form name="form" action="LoginCommitteeServlet" method="post" onsubmit="return validate()">
		 
			
               <div class="data">
                  <label>Username</label>
                  <input type="text" id ="username"  name="commUsername">
               </div>
               <div class="data">
                  <label>Password</label>
                  <input type="password" id="password"  name="commPassword">
               </div>
               <div class="btn">
                  <button type="submit" name=login><b>login</b></button>
               </div>
             
			  
			   
            </form>
			</div>
         </div>
      </div>
</body>
</html>