<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Email Form</title>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
html, body {
	height: 100%;
	padding: 0;
	margin: 0;
}

form {
	width: 31em;
	height: 14em;
	margin: -5em auto 0 auto;
	position: relative;
	top: 45%;
	border: 1px dotted #ccc;
	padding: .25em;
}

fieldset {
	margin: 0;
	border: 0;
	padding: 0;
	text-align: center;
}

legend {
	float: left;
	font-size: 200%;
	text-align: center;
	color: blue;
	font-weight: bold;
	border-bottom: 1px solid blue;
	width: 15em;
	padding: 0;
}

#sub {
	margin-top: 1em;
	position: relative;
	float: left;
	clear: left;
	margin-left: 29%
}

.styled-select {
	width: 240px;
	height: 34px;
	overflow: hidden;
	background: url(new_arrow.png) no-repeat right #ddd;
	border: 1px solid #ccc;
}

.styled-select select {
	background: transparent;
	width: 268px;
	padding: 5px;
	font-size: 16px;
	line-height: 1;
	border: 0;
	border-radius: 0;
	height: 34px;
	-webkit-appearance: none;
}
</style>
</head>
<body>
	<form:form action="${flowExecutionUrl}" method="POST"
		modelAttribute="email">
		<fieldset>
			<legend>Email Form</legend>
			<label>Name: </label>
			<form:select path="empName" name="empName">
				<c:forEach var="listValue" items="${employees}">
					<form:option value="${listValue.getName()}">${listValue.getName()}</form:option>
				</c:forEach>
			</form:select>
			<br> <br> <label>Department: </label>
			<form:select path="empDepartment" name="empDepartment">
				<option value="Software Engineer">Software Engineer</option>
				<option value="IT">IT</option>
				<option value="Finance">Finance</option>
				<option value="Consultant">Consultant</option>
			</form:select>
			<br> <input type="submit" name="_eventId_submitEmail"
				value="Next" /> <input type="submit" name="_eventId_cancelEmail"
				value="Cancel" />
		</fieldset>
	</form:form>
</body>
</html>