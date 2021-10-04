<%@ page import="java.util.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<style>
body {
	background: #DCE35B; /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #db9f2f, #dae057);
	/* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #db9f2f, #dae057);
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
</style>
</head>
<body>
	<table class="table table-dark table-hover" class="container">
		<tr>
			<td colspan=8 align="center" style="background-color:rgb(131, 122, 218)"><b><i>Employee Record</i></b></td>
		</tr>
		<tr style="background-color: rgb(153, 149, 149);">
			<th scope="col"> Employee Id</th>
			<th scope="col">Employee fullName</th>
			
			<th scope="col">Employee mobileNo</th>
			<th scope="col">Employee Email</th>
		</tr>

	
		<c:forEach items="${employee}" var="e">
			<tr>
		<th scope="row">${e.employeeId }</th>
		<td>${e.fullName }</td>
		
		<td>${e.mobile }</td>
		<td>${e.email }</td>

		
	</tr>
	</c:forEach>
	
	
		
		
		<tr>
		<a href=""${pageContext.request.contextPath }/admin"" class="btn btn-primary">BACK TO USERLIST</a>
							
		</tr>

	</table>
</body>
</html>