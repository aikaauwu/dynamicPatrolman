<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Add Furniture</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>

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
					
						<h2 class="page-title">Add Furniture </h2>
	
						<div class="row">
							<div class="col-md-12">
								<div class="panel panel-default">
									<div class="panel-heading">Add Furniture</div>
									<div class="panel-body">
										<form action = "AddFurnitureController" method="post" class="form-horizontal">
											
											<div class="hr-dashed"></div>
											<div class="form-group">
												<label class="col-sm-2 control-label">Furniture ID</label>
												<div class="col-sm-8">
													<input type="text" value="" name="furnitureId"  class="form-control"> </div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">Furniture Name </label>
												<div class="col-sm-8">
													<input type="text" value="" name="furnitureName"  class="form-control"> </div>
											</div>
											<div class="form-group">
												<label class="col-sm-2 control-label">Details</label>
												<div class="col-sm-8">
			<input type="text" class="form-control" name="furnitureDesc" id="cns" value="" required="required">
						 
												</div>
											</div>
			<div class="form-group">
									<label class="col-sm-2 control-label">Room ID</label>
									<div class="col-sm-8">
									<input type="text" class="form-control" name="roomId" value="" >
												</div>
											</div>



												<div class="col-sm-8 col-sm-offset-2">
													
													<input class="btn btn-primary" type="submit" name="submit" value="Add Furniture">
												</div>
											</div>
</form>
	
			
	</form>
	
	
									</div>
								</div>
									
							<a href="homepage.jsp" class="previous">BACK</a>
							</div>
						
									
							

							</div>
						</div>

					</div>
				</div> 	
				

			</div>
		</div>
	</div>

</script>
</body>

</html>