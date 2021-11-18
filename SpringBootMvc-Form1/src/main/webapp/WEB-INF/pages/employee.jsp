%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
</head>
<body>
	<h2>Employee Registration</h2>

	<form:form action="emp" method="post" modelAttribute="employee">
		<form:label path="id">ID</form:label>
		<form:input path="id" />
		<br>
		<br>
		<form:label path="name">Name</form:label>
		<form:input path="name" />
		<br>
		<br>
		
		<input type="submit" value="Register">
	</form:form>