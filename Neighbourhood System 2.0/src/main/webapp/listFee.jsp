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
		
			<div class="form-content">
				<div class="form-header">
					<h3>Fees List</h3>
				</div>
					
						<table style="width:100%;text-align:left;">
							<tr>
								<th>Fees ID</th>
								<th>Student ID</th>
								<th>Fee Amount</th>
								<th>Fee Date</th>							
								<th colspan="3"></th>
							</tr>
							<c:forEach items="${fees}" var="fee">
								<tr>
									<td><c:out value="${fees.feeId}" /></td>
									<td><c:out value="${fees.studentId}" /></td>
									<td><c:out value="${fees.feeAmount}" /></td>
									<td><c:out value="${fees.feeDate}" /></td>
							</c:forEach>
						</table>
			</div>
		</div>
	</section>
	<!-- Template created and distributed by Colorlib -->
</body>
</html>