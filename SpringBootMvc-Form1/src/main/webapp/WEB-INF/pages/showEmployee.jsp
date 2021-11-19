
<%@page import="java.util.List"%>
<%@page import="com.cov.beans.Employee"%>
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
<title>allEmpDetails</title>
</head>
<body style="background-color:powderblue;">	
<center >
		<br> <br> <br>
		<h2>Saved Employee Details</h2>
		<br> <br>
		<table style="width:50%">
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Department Name</th>
				<th>Edit</th>
				<th>Delete</th>
			</tr>
			<%
			List<Employee> emps = (List<Employee>) request.getAttribute("emps");
			for (Employee emp : emps) {
			%>
			<tr>
				<td><%=emp.getId()%></td>
				<td><%=emp.getName()%></td>
				<td><%=emp.getDepartment().getName()%></td>
				<td><a href="editEmp?id=<%=emp.getId()%>">Edit</a></td>
				<td><a href="deleteEmp?id=<%=emp.getId()%>">Delete</a></td>
			</tr>
			<%
			}
			%>
		</table><br><br>
		<br><br>
		<br><br>
		<br><br>
		
		<h4>
			<a href="/">Back To Home</a>
			</h4><br>
			
			<!--  <h4>
			<a href="updateEmp">Search Department By ID</a>
			
			</h4>-->

			<h4>
				<a href="getDepts"> Department Details</a>
				</h4>
				<br> <br>
	</center>
</body>
</html>

