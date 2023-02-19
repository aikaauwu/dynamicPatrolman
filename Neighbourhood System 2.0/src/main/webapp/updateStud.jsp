<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Update Student</title>
<style>
body {font-family: "Lato", sans-serif;}


<style>
body {font-family: "Lato", sans-serif;}

.sidebar {
  height: 100%;
  width: 160px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 16px;
}

.sidebar a {
  padding: 6px 8px 6px 16px;
  text-decoration: none;
  font-size: 20px;
  color: #818181;
  display: block;
}

.sidebar a:hover {
  color: #f1f1f1;
}

.main {
  margin-left: 160px; /* Same as the width of the sidenav */
  padding: 0px 10px;
}

@media screen and (max-height: 450px) {
  .sidebar {padding-top: 15px;}
  .sidebar a {font-size: 18px;}
}
</style>
</head>
<body>


</style>
</head>
<body>

<div class="sidebar">
<a href="studHomepage.jsp"><i class="fa fa-fw fa-home"></i> Homepage</a>
  <a href="viewStud.jsp"><i class="fa fa-fw fa-user"></i> My Profile</a>
</div>

<div class="topnav">
  <a href="studentProfile.jsp" class="split" >Ajax</a>
</div>
	
	<div class="main">

<div class= "row; center;" style="padding:70px 40px 50px 100px; border:100px; background-color: white;">
	<div class = "col-8" color = white  >
	

	<h1 style="font-family:'Poppins'; color:#607D8B;" class = "intro";>Update Profile</h1><br>
	
	
	<form action="UpdateStudentController" method="post">
<fieldset style="padding:30px 20px 30px 30px; background-color: #ebecf0 "  >

<legend>Update</legend>

	<form action="UpdateStudentController" method="post">
		First Name: <br>
		<input type="text" name="firstname" value="<c:out value="${student.name}"/>"/><br>
		Last Name: <br>
		<input type="text" name="lastname" value="<c:out value="${student.brand}"/>"/><br>
		Username: <br>
		<input type="text" name="username" value="<c:out value="${student.color}"/>"/><br>
		Gender: <br>
		<select name="gender">
			<option value="<c:out value="${s.material}"/>"><c:out value="${student.material}"/></option>
			<option value="female">female</option>
			<option value="male">male</option>
				
		</select><br>
		Contact No: <br>
		<input type="number" name="contactNo" value="<c:out value="${student.price}"/>"/><br>
		Email: <br>
		<input type="text" name="email" value="<c:out value="${student.quantity}"/>"/><br>
		Block ID: <br>
		<input type="text" name="blockId" value="<c:out value="${student.price}"/>"/><br>
		Room ID: <br>
		<input type="text" name="roomId" value="<c:out value="${student.price}"/>"/><br>
		
		
		<input type="submit" value="Create">
		<input type="reset" value="Reset">
	</form>
</div>

</body>
</html>