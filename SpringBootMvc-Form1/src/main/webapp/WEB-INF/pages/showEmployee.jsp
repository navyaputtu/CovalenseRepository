<%@page import="java.util.List"%>
<%@page import="com.cov.beans.Employee"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All employee page</title>
</head>
<body>

<form:form action="getEmp" method="post" modelAttribute="employee">

		<form:label path="name">Name</form:label>
		<form:input path="name" />
		<br>
		<br>
		<form:label path="department">Department</form:label>
		<label for="Departments">Choose a Department</label>
		<select name="departments" id="departments">
			<option value="1">Admin</option>
			<option value="2">Marketing</option>
		</select>
		<br>
		<br>
		<input type="submit" value="Register">
		
	</form:form>
	<br>
	<br>
	<br>

	<h2>Employee Details</h2>
	<table border="1">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Department</th>
			<th>Update</th>
		</tr>
		<%
		List<Employee> emps = (List<Employee>) request.getAttribute("emps");
		for (Employee emp : emps) {
		%>
		<tr>
			<td><%=emp.getId()%></td>
			<td><%=emp.getName()%></td>
			<td><%=emp.getDepartment()%></td>
			<td><a href="getEmp">Edit</a>
		</tr>
		<%
		}
		%>
	</table>
	<br>
	<a href="/">Home</a>
</body>
</html>