<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateDept</title>
</head><center>
<body style="background-color:powderblue;"><br><br><br>
	<h2>Update Department Details</h2><br><br>
	<form:form action="updateDept" modelAttribute="deptToEdit">
		<form:label path="id">ID</form:label>
		<form:input path="id" readonly="true" />
		<br>
		<br>
		<form:label path="name">Name</form:label>
		<form:input path="name" />
		<br>
		<br><br>
		<input type="submit" value="Update">
	</form:form>
	<br>
	<br><br><br>
	<a href="/"> Back To Home</a>
	<br>
	<br>
</body>
</center>
</html>