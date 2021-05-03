<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
	<!-- Required meta tags -->
    <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
	
	<title>Save Customer</title>

	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css">

	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
	
</head>

<body>
	
	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>	
		</div>
	</div>
	
	<div id="container">
		<h3>Save Customer</h3>
	
		<form:form action="saveCustomer" modelAttribute="customer" method="POST">
			
			<!-- need to associate this data with customer id -->
			<form:hidden path="id"/>
			
			<table>
				<tbody>
					<tr>
						<div class="input-group mb-2">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="inputGroup-sizing-default">First name:</span>
						  </div>
						  <form:input path="firstName" type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default"/>
						</div>
					</tr>
					
					<tr>
						<div class="input-group mb-2">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="inputGroup-sizing-default">Last name:</span>
						  </div>
						  <form:input path="LastName" type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default"/>
						</div>
					</tr>
					
					<tr>
						<div class="input-group mb-2">
						  <div class="input-group-prepend">
						    <span class="input-group-text" id="inputGroup-sizing-default">Email:</span>
						  </div>
						  <form:input path="email" type="text" class="form-control" aria-label="Default" aria-describedby="inputGroup-sizing-default"/>
						</div>
					</tr>
					
					<tr>
						<td><label></label></td>
						<td><input type="submit" value="Save" class="save" /></td>
						
					</tr>

				</tbody>
			</table>	
	
		</form:form>
	
		<div style="clear; both;"></div>
		
		<p>
			<a href="${pageContext.request.contextPath}/customer/list " type="button" class="btn btn-outline-dark">Back to List</a>
		</p>
	
	</div>
	
	
</body>

</html>
