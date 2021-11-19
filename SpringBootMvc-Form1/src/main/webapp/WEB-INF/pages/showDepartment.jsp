<%@page import="com.cov.beans.Department"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<style>
table, th, td {
	border: 1px solid black;
	border-collapse: collapse;
}

th:nth-child(odd), td:nth-child(odd) {
	background-color: white;
}
</style>
<meta charset="ISO-8859-1">
<title>AllDepDetails</title>
</head>
<body style="background-color: powderblue;">
	<center>
		<br>
		<br>
		<br>
		<h2>Saved Department Details</h2>
		<br>
		<br>
		<table style="width:50%">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Edit</th>
			</tr>
			<%
			List<Department> depts = (List<Department>) request.getAttribute("depts");
			for (Department dept : depts) {
			%>

			<tr>
				<td><%=dept.getId()%></td>
				<td><%=dept.getName()%></td>
				<td><a href="editDept?id=<%=dept.getId()%>">Edit</a></td>
			</tr>

			<%
			}
			%>
		</table>
		<br>
		<br> <br>
		<br> <br>
		<br> <h4><a href="/">Back To Home</a></h4> <br>
		<h4><a href="regdept">Register For Department</a> </h4><br> <br>
	</center>
</body>
</html>