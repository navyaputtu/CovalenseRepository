<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DeptRegPge</title>
</head><center><br><br>
<body style="background-color: powderblue;">

	<h2>Registration For Department</h2><br><br>
	<form:form action="regdept" method="post" modelAttribute="department">
		<h3><form:label path="name">Name</form:label>
		<form:input path="name" /></h3>
		<br>
		
		<input type="submit" value="Register">
	</form:form>
	<br>
	<br>
	<br>
	<br>
	<br>
	
	<h4><a href="getDepts">Department Details</a></h4>
	
	
	<h4><a href="/">Back To Home</a></h4>
	<br>
	<br>
	
</body>
</center>
</html>