<%@page import="com.cov.service.EmployeeService"%>
<%@page import="ch.qos.logback.core.net.SyslogOutputStream"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.List"%>
<%@page import="com.cov.beans.Employee"%>
<%@page import="com.cov.beans.Department"%>
<%@page import="com.cov.service.DepartmentService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<title>Employees List</title>
</head>
<body style="background-color:powderblue;">
<center>
<br> <br> <br>
	<form:form modelAttribute="department" method="GET">
		<form:label path="id">Sort By Department</form:label>
		<form:select path="id">
			<form:option value="0">--Select--</form:option>
			<%
			DepartmentService departmentService = (DepartmentService) request.getAttribute("departmentService");
			List<Department> departments = departmentService.findAll();
			for (Department department : departments) {
			%>
			<form:option value="<%=department.getId()%>"><%=department.getName()%></form:option>
			<%
			}
			%>
		</form:select>
		<input type="submit" value="Process"><br><br>
	</form:form>
	<h2>Saved Employee Details</h2>
	<br>
	<br>
	<br>
	<table style="width:50%">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Department</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<%
		if (request.getParameter("id") == null) {
		%>
		<%
		List<Employee> employees = (List<Employee>) request.getAttribute("employees");
		for (Employee employee : employees) {
		%>
		<tr>
			<td><%=employee.getId()%></td>
			<td><%=employee.getName()%></td>
			<td><%=employee.getDepartment().getName()%></td>
			<td><a href="editEmp?id=<%=employee.getId()%>">Edit</a></td>
			<td><a href="deleteEmp?id=<%=employee.getId()%>">Delete</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<%
	} else {
	%>
	<%
	int id = Integer.parseInt(request.getParameter("id"));
	DepartmentService departmentService = (DepartmentService) request.getAttribute("departmentService");
	Department department = departmentService.findById(id);
	EmployeeService employeeService = (EmployeeService) request.getAttribute("employeeService");
	%>
	<br>
	<%
	List<Employee> employees = employeeService.findAllByDeptno(id);
	for (Employee employee : employees) {
	%>
	<tr>
		<td><%=employee.getId()%></td>
		<td><%=employee.getName()%></td>
		<td><%=employee.getDepartment().getName()%></td>
		<td><a href="editEmp?id=<%=employee.getId()%>">Edit</a></td>
		<td><a href="deleteEmp?id=<%=employee.getId()%>">Delete</a></td>
	</tr>
	<%
	}
	%>
	</table>
	<%
	}
	%>
	<br>
	<br>
	<a href="/">Back To Home</a>
	<br>
	<br>
	<a href="regEmp">Register For Employees</a>
	<br>
	<br>
	</center>
</body>
</html>