<%@page import="com.cov.beans.Department"%>
<%@page import="java.util.List"%>
<%@page import="com.cov.service.DepartmentService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>updateEmp</title>
</head><center>
<body style="background-color:powderblue;">

<br><br>
<h1>Update Employee Details</h1>
	<form:form action="updateEmp" modelAttribute="empToEdit">
		<form:label path="id">ID</form:label>
		<form:input path="id" readonly="true" />
		<br>
		<br>
		<form:label path="name">Name</form:label>
		<form:input path="name" />
		<br>
		<br>
		<%
		DepartmentService departmentService = (DepartmentService) request.getAttribute("departmentService");
		List<Department> departments = departmentService.findAll();
		%>
		<form:label path="department">Department</form:label>
		<form:select path="department">
			<form:option value="0">--Select--</form:option>
			<%
			for (Department department : departments) {
			%>
			<form:option value="<%= department %>"><%=department.getName()%></form:option>
			<%
			}
			%>
		</form:select>


<br><br><br>
		<input type="submit" value="Update">
	</form:form>
    <br>
	<br><br><br>
	<h4><a href="/">Back To Home</a></h4>
	<br>
	<br>
</body>
</center>
</html>