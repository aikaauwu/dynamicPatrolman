<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<title>Order</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="author" content="colorlib.com">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>
	<body>
            <form action="OrderController" method="post" id="wizard">
        		<!-- SECTION 1 -->
                <h2></h2>
                <section>
                    <div class="inner">
						<div>
							<img src="images/mybaju.png" alt="" width="500" height="700">
						</div>
						<div class="form-content" >
							<div class="form-header">
								<h3>New Order</h3>
						</div>
					<div class="form-row">
							<div class="form-holder">
								<input type="text" name="customerId" placeholder="CustomerId" class="form-control">
							</div>
						</div>
					<p>Top Measurement</p>
							<div class="form-row">
								<input type="hidden" name="customerId" value="<c:out value="${param.customerId}" />">
								<div class="form-holder">
									<input type="text" name="sleeve" placeholder="Sleeve (inch)" class="form-control">
								</div>
								<div class="form-holder">
									<input type="text" name="shoulder" placeholder="Shoulder (inch)" class="form-control">
								</div>
							</div>
							<div class="form-row">
								<div class="form-holder">
									<input type="text" name="chest" placeholder="Chest (inch)" class="form-control">
								</div>
								<div class="form-holder">
									<input type="text" name="topLength" placeholder="Top Length (inch)" class="form-control">
								</div>
							</div>
							<p>Bottom Measurement</p>
							<div class="form-row">
								<div class="form-holder">
									<input type="text" name="waist" placeholder="Waist (inch)" class="form-control">
								</div>
								<div class="form-holder">
									<input type="text" name="hip" placeholder="Hip (inch)" class="form-control">
								</div>
							</div>
							<div class="form-row">
								<div class="form-holder">
									<input type="text" name="bottomLength" placeholder="Bottom Length (inch)" class="form-control">
								</div>
							</div>
							<div class="form-row">
								<div class="form-holder">
									Amount (RM):
								</div>
								<div class="form-holder">
									<input type="number" name="amount" value="0.00" step="0.00" class="form-control">
								</div>
							</div>
							<div class="form-row">
								<div class="form-holder">
									<input type="submit" value="Submit" class="button">
									<input type="reset" value="Reset" class="button">	
								</div>
							</div>			
						</div>
					</div>
                </section>
 			</form>
		<!-- Template created and distributed by Colorlib -->
</body>
</html>