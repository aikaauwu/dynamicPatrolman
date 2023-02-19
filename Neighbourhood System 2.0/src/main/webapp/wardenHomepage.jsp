<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Homepage</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
	
	 Welcome <%=request.getAttribute("studUsername") %> 
	 
            <form action="SearchController" method="get" id="wizard">
        		<!-- SECTION 1 -->
                <h2></h2>
                <section>
                    <div class="inner">
						<div>
							<img src="images/studentlogo.png" alt="" width="500" height="700">
						</div>
						<div class="form-content" >
							<div class="form-header">
								<h3>Homepage</h3>
							</div>
							<p>Welcome!</p>
								
							<p><a href="ListStudentController" class="button">Student List</a></p>	
							<p><a href="ListFurnitureController" class="button">Furniture List</a></p>		
							<p><a href="addFurniture.jsp" class="button">Create Furniture</a></p>	
							<p><a href="manageFurniture.jsp" class="button">Room List</a></p>	
							<p><a href="createRoom.jsp" class="button">Create Room</a></p>		
						</div>
					</div>
                </section>
 			</form>
		<!-- Template created and distributed by Colorlib -->
</body>
</html>