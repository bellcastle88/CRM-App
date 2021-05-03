<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>
	<!-- Required meta tags -->
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	
	<title>List Customers</title>
	
	<!-- reference our style sheet -->

	<link type="text/css"
		  rel="stylesheet"
		  href="${pageContext.request.contextPath}/resources/css/style.css" />

</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	
	<div id="container">
	
		<div id="content">
		
			<!-- put new button: Add Customer -->
			
			<input type="button" class="btn btn-outline-success"	 value="Add Customer"
					onclick="window.location.href='showFormForAdd'; return false;"
					class="add-button"
			/>
		
			<!--  add our html table here -->
		
			<table class="table">
				<thead class="table-primary">
					<tr>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action<th>
					</tr>
				</thead>
				
				<!-- loop over and print our customers -->
				<c:forEach var="tempCustomer" items="${customers}">
					
					<!-- construct an "update" link with customer id -->
						<c:url var="updateLink" value="/customer/showFormForUpdate" >
							<c:param name="customerId" value="${tempCustomer.id}" />					
						</c:url>
						
					<!-- construct an "update" link with customer id -->
						<c:url var="deleteLink" value="/customer/delete" >
							<c:param name="customerId" value="${tempCustomer.id}" />					
						</c:url>
						
					<tr>
						<td> ${tempCustomer.firstName} </td>
						<td> ${tempCustomer.lastName} </td>
						<td> ${tempCustomer.email} </td>
					
						<td>
						<!-- display the update link -->
						<a href="${updateLink}" type="button" class="btn btn-outline-warning">Update</a>

						<a href="${deleteLink}"
							type="button" class="btn btn-outline-danger"
							onclick="if (!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
						</td>
					</tr>
				
				</c:forEach>
						
			</table>
				
		</div>
	
	</div>
	

</body>

</html>
