%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee</title>
</head>
<body>
	<h2>Employee Details</h2>

	<form:form action="empdata" method="post" modelAttribute="employee">

		<form:label path="name">Name</form:label>
		<form:input path="name" />
		<br>
		<br>
		<select name="employee">
			<c:forEach items="${employees}" var="employee">
				<option value="${employee.key}"
					${param.employee == employee.key ? 'selected' : ''}>${employee.value}</option>
			</c:forEach>
		</select>

	</form:form>