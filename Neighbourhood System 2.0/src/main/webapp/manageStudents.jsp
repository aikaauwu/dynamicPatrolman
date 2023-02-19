<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en" class="no-js">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Manage Rooms</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script language="javascript" type="text/javascript">

</script>

<style>

.sidenav {
  height: 100%;
  width: 200px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 15px 6px 6px 32px;
  text-decoration: none;
  font-size: 18px;
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}

a {
  text-decoration: none;
  display: inline-block;
  padding: 8px 16px;
}

a:hover {
  background-color: #ddd;
  color: black;
}

.previous {
  background-color: #f1f1f1;
  color: black;
}
</style>

</head>

<body>

<div class="sidenav">
  <p><a href="ListStudentController" >Student List</a>
		<p><a href="ListFurnitureController" >Furniture List</a>		
		<p><a href="addFurniture.jsp" >Create Furniture</a>
		<p><a href="LogoutStudentServlet" class = "split">Logout</a>

</div>
	<?php include('includes/header.php');?>

	<div class="ts-main-content">
			<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<h2 class="page-title" style="margin-top:4%">Manage Registred Students</h2>
						<div class="panel panel-default">
							<div class="panel-heading">All Room Details</div>
							<div class="panel-body">
								<table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0" width="100%">
									
									
															<tr>
								<th>Student ID</th>
								<th>First Name</th>
								<th>Last Name</th>
								<th>Username</th>
								<th>Gender</th>
								<th>Contact Number</th>
								<th>Email</th>
								<th>Block ID</th>
								<th>Room ID</th>
								
							</tr>
							<c:forEach items="${students}" var="student">
								<tr>
									<td><c:out value="${student.studentId}" /></td>
									<td><c:out value="${student.firstName}" /></td>
									<td><c:out value="${student.lastName}" /></td>
									<td><c:out value="${student.studUsername}" /></td>
									<td><c:out value="${student.studGender}" /></td>
									<td><c:out value="${student.contactNo}" /></td>
									<td><c:out value="${student.studEmail}" /></td>
									<td><c:out value="${student.blockId}" /></td>
									<td><c:out value="${student.roomId}" /></td>
									<td><a href="ViewStudentDetailsController?studentId=<c:out value="${student.studentId}"/>" class="button">View</a>
									<a href="DeleteStudentController?studentId=<c:out value="${student.studentId}" />" class="button">Delete</a></td>
							</c:forEach>
						</table>
									
						<a href="homepage.jsp" class="previous">BACK</a>
									
									

								
							</div>
						</div>

					
					</div>
				</div>

			

			</div>
		</div>
	</div>

</body>

</html>