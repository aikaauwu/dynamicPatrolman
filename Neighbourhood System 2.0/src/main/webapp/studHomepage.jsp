

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<div id="top" class="content2">
<style>

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Create a right-aligned (split) link inside the navigation bar*/
.topnav a.split {
  float: right;
  background-color: #949494;
  color: black;
}


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
  <a href="studHomepage.jsp"><i class="fa fa-fw fa-home"></i>Homepage</a>
  <a href="ViewStudentDetailsController?studentId=2022981519">My Profile</a>
  <a href="ListFeesController">My Fees</a>
</div>

<div class="topnav">
  <div style="text-align: right"><a href="LogoutStudentServlet" class = "split">Logout</a></div>
</div>
		
	    <h1><b>. Student Homepage .</b></h1>
	    <p><a href="studHomepage.jsp" class="btn success">Homepage</a>
		<p><a href="ViewStudentDetailsController?studentId=2022981519" class="btn info">My Profile</a>	
<div class="form-content" >
							
