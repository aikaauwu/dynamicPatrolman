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
<link rel="stylesheet"
	href="fonts/material-design-iconic-font/css/material-design-iconic-font.css">

<!-- STYLE CSS -->
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<!-- SECTION 1 -->
	<section>
		<div class="inner">
			<div>
				<img src="images/mybaju.png" alt="" width="500" height="700">
			</div>
			<div class="form-content">
				<div class="form-header">
					<h3>Detail for </h3>
				</div>
				<div class="form-row">
						<div class="form-holder">
							<a href="ViewStudentDetailsController" class="button">List Orders</a>
						</div>
					</div>
					<p>Order Info</p>
					<div class="form-row">
						<div class="form-holder">
						
						<%=request.getAttribute("studentId") %> 
						
							Order Id: <c:out value="${order.orderId}" />
						</div>
						<div class="form-holder">
							Customer Id: <c:out value="${order.customerId}" />
						</div>
					</div>
					-------
					<div class="form-row">
						<div class="form-holder">
							Date Created: <c:out value="${order.dateCreated}" />
						</div>
						<div class="form-holder">
							Date Collect: <c:out value="${order.dateCollect}" />
						</div>
					</div>
					--------
					<p>Top Measurement</p>
					<div class="form-row">
						<div class="form-holder">
							Sleeve (inch): <c:out value="${order.sleeve}" />
						</div>
						<div class="form-holder">
							Shoulder (inch): <c:out value="${order.shoulder}" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-holder">
							Chest (inch): <c:out value="${order.chest}" />
						</div>
						<div class="form-holder">
							Top Length (inch): <c:out value="${order.topLength}" />
						</div>
					</div>
					<p>Bottom Measurement</p>
					<div class="form-row">
						<div class="form-holder">
							Waist (inch): <c:out value="${order.waist}" />
						</div>
						<div class="form-holder">
							Hip (inch): <c:out value="${order.hip}" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-holder">
							Bottom Length (inch): <c:out value="${order.bottomLength}" />
						</div>
					</div>
					<div class="form-row">
						<div class="form-holder">
						</div>
					</div>
					<div class="form-row">
						<div class="form-holder">
							Amount (RM): <c:out value="${order.amount}" />
						</div>
					</div>
			</div>
		</div>
	</section>
	<!-- Template created and distributed by Colorlib -->
</body>
</html>