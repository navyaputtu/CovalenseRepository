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
<title>searchDept</title>
</head>
<body>
<h2>Search Department By ID</h2>
<form:form action="updateDept" modelAttribute="empToEdit">
<form:label path="department">Department</form:label>
<%
		DepartmentService departmentService = (DepartmentService) request.getAttribute("departmentService");
		List<Department> departments = departmentService.findAll();
		%>
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
</body>
</html>