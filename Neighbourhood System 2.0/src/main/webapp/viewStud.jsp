<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>View Student</title>
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

<div class="sidebar">
  <a href="studHomepage.jsp"><i class="fa fa-fw fa-home"></i> Homepage</a>
  <a href="viewStud.jsp"><i class="fa fa-fw fa-user"></i> My Profile</a>
  <a href="fees.jsp"><i class="fa fa-fw fa-envelope"></i> My Fees</a>
</div>

 <a href="listStudent.jsp">Student Profile</a><br><br>
 
<div style="text-align:center" "class="main">

	<h1>Student Info</h1> <br>
	Student ID: <c:out value="${student.studentId}"/> <br>
	First Name: <c:out value="${student.firstName}"/> <br>
	Last Name: <c:out value="${student.lastName}"/> <br>
	Username: <c:out value="${student.studUsername}"/> <br>
	Gender: <c:out value="${student.studGender}"/> <br>
	Contact No: <c:out value="${student.contactNo}"/> <br>
	Email: <c:out value="${student.studEmail}"/> <br>
	Block ID: <c:out value="${student.blockId}"/> <br>
	Room ID: <c:out value="${student.roomId}"/> <br>
	Password: <c:out value="${student.studPassword}"/> <br>
	
	<a href="UpdateStudentController?studentId=2022981519" class="button">Update Details</a></td>
   </div>
</body>
</html> 
