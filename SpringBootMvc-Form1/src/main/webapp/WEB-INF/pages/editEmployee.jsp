<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>editemp</title>
</head>
<body>
	<h1>Update Employee Details</h1>
	<form:form action="editEmp" modelAttribute="empToEdit">
	<form:label path="id">ID</form:label>
		<form:input path="id" readonly="true" />
		<br>
		<br>
		<form:label path="name">Name</form:label>
		<form:input path="name" />
		<br>
		<br>
       List<Department> depts = (List<Department>)
		request.getAttribute("depts"); for (Department dept : depts) { <select
			name="Department">
			<option value="Sales">Sales</option>
			<option value="Production">Production</option>
			<option value="Maintainance">Maintainance</option>
		</select> <input type="submit" value="Update">
	</form:form>
</body>
</html>