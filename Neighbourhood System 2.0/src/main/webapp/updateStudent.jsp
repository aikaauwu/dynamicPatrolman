<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Update </title>
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

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

/* Create a right-aligned (split) link inside the navigation bar */
.topnav a.split {
  float: right;
  background-color: #04AA6D;
  color: white;
}
</style>
</head>
<body>

<div class="topnav">
  <a class="active" href="#home">Home</a>
  <a href="#news">News</a>
  <a href="#contact">Contact</a>
  <a href="#about" class="split">Help</a>
</div>

<div style="padding-left:16px">
<a href="ListStudentController">Update Profile</a><br><br>

						<div>
							<img src="images/studentlogo.png" alt="" width="150" height="200">
						</div>


	<form action="UpdateStudentController" method="post">
		First Name: <br>
		<input type="text" name="firstname" value="<c:out value="${student.firstName}"/>"/><br>
		Last Name: <br>
		<input type="text" name="lastname" value="<c:out value="${student.lastName}"/>"/><br>
		Username: <br>
		<input type="text" name="username" value="<c:out value="${student.studUsername}"/>"/><br>
		Gender: <br>
		<select name="gender">
			<option value="<c:out value="${student.studGender}"/>"><c:out value="${student.studGender}"/></option>
			<option value="female">female</option>
			<option value="male">male</option>
				
		</select><br>
		Contact No: <br>
		<input type="number" name="contactNo" value="<c:out value="${student.contactNo}"/>"/><br>
		Email: <br>
		<input type="text" name="email" value="<c:out value="${student.studEmail}"/>"/></br>
		Block ID: <br>
		<input type="text" name="blockId" value="<c:out value="${student.blockId}"/>"/><br>
		Room ID: <br>
		<input type="text" name="roomId" value="<c:out value="${student.roomId}"/>"/><br>
		Student Password: <br>
		<input type="text" name="roomId" value="<c:out value="${student.studPassword}"/>"/><br>
		
		
		<input type="submit" value="Submit">
		<input type="reset" value="Reset">
	</form>
</div>

</body>
</html>
