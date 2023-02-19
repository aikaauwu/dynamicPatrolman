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
        		<!-- SECTION 1 -->
                <h2></h2>
	<section>
		<div class="inner">
			<div>
				<img src="images/mybaju.png" alt="" width="500" height="700">
			</div>
			<div class="form-content">
				<div class="form-header">
					<h3>Customer Orders</h3>
				</div>
					<div class="form-row">
						<div class="form-holder">
							<a href="addOrder.jsp" class="button">Add Order</a>
						</div>
					</div>
						<table style="width:100%;text-align:left;">
							<tr>
								<th>Order Id</th>
								<th>Customer Id</th>
								<th>Date Zul Created</th>
								<th>Date Collect</th>
								<th>Amount</th>
								<th colspan="3"></th>
							</tr>
							<c:forEach items="${orders}" var="order">
								<tr>
									<td><c:out value="${order.orderId}" /></td>
									<td><c:out value="${order.customerId}" /></td>
									<td><c:out value="${order.dateCreated}" /></td>
									<td><c:out value="${order.dateCollect}" /></td>
									<td><c:out value="${order.amount}" /></td>
									<td><a href="OrderController?action=view&orderId=<c:out value="${order.orderId}"/>" class="button">View</a>
									<a href="OrderController?action=delete&orderId=<c:out value="${order.orderId}" />" class="button">Delete</a></td>
							</c:forEach>
						</table>
			</div>
		</div>
	</section>
	<!-- Template created and distributed by Colorlib -->
</body>
</html>