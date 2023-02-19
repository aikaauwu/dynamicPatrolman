<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<div id="top" class="content2">
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
  padding: 6px 6px 6px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.content2{
    background: white;
	margin-top: 60px;
	width: 1350px;
	padding: 20px;
	margin-left: 70px;
	height: 600px;
	color:white;
	position: relative;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
}
.content2 h1{
    color: #4d4d4d;
	text-align: center;
	font-family:'Montserrat Alternates', sans-serif;
	margin-top: 50px;
	letter-spacing: 20px;
}
.btn {
  border: none;
  background-color: inherit;
  padding: 14px 28px;
  font-size: 16px;
  cursor: pointer;
  display: inline-block;
}

/* Green */
.success {
  color: gray;
  color: dodgerblue;
  display: block;
  width: 100%;
  border: none;
  background-color: #222725f5;
  color: white;
  padding: 5px 5px;
  font-size: 30px;
  cursor: pointer;
  text-align: center;
}

.success:hover {
  background-color: #04AA6D;
  color: white;
}

/* Blue */
.info {
  color: dodgerblue;
  display: block;
  width: 100%;
  border: none;
  background-color: #222725f5;
  color: white;
  padding: 5px 5px;
  font-size: 30px;
  cursor: pointer;
  text-align: center;
}

.info:hover {
  background: #2196F3;
  color: white;
}

/* Orange */
.warning {
  color: orange;
  color: dodgerblue;
  display: block;
  width: 100%;
  border: none;
  background-color: #222725f5;
  color: white;
  padding: 5px 5px;
  font-size: 30px;
  cursor: pointer;
  text-align: center;
}

.warning:hover {
  background: #94c0aef5;
  color: white;
}

/* Red */
.danger {
  color: red;
  display: block;
  width: 100%;
  border: none;
  background-color: #94c0aef5;
  color: white;
  padding: 5px 5px;
  font-size: 30px;
  cursor: pointer;
  text-align: center;
}

.danger:hover {
  background: #222725f5;
  color: white;
}

/* Gray */
.default {
  color: gray;
  display: block;
  width: 100%;
  border: none;
  background-color: #f44336;
  color: white;
  padding: 5px 5px;
  font-size: 30px;
  cursor: pointer;
  text-align: center;
}

.default:hover {
  background: #94c0aef5;
}
</style>

<div class="sidenav">
  <p><a href="ListStudentController" >Student List</a>
		<p><a href="ListFurnitureController" >Furniture List</a>		
		<p><a href="addFurniture.jsp" >Create Furniture</a>
		  <p><a href="LogoutStudentServlet" class = "split">Logout</a>

</div>
	    <h1><b>. Hostel Management System .</b></h1>
	    <p><a href="ListStudentController" class="btn success">Student List</a>
		<p><a href="ListFurnitureController" class="btn info">Furniture List</a>		
		<p><a href="addFurniture.jsp" class="btn warning">Create Furniture</a>
