<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Employee</title>
</head>
<body>
	<table class="table table-condensed">
		<tr>
			<th style="text-align: center"><fmt:message
					key="employee.name" /></th>
			<th style="text-align: center"><fmt:message
					key="employee.age" /></th>
			<th style="text-align: center"><fmt:message
					key="employee.salary" /></th>
			<th style="text-align: center"><fmt:message
					key="employee.jobTitle" /></th>
			<th style="text-align: center"><fmt:message
					key="employee.dateOfBirth" /></th>
			<th style="text-align: center"><fmt:message
					key="employee.department" /></th>
			<th style="text-align: center"><fmt:message
					key="employee.email" /></th>
		</tr>
		<tr align="center">
			<td><c:out value="${Emp.getName()}" /></td>
			<td><c:out value="${Emp.getAge()}" /></td>
			<td><c:out value="${Emp.getSalary()}" /></td>
			<td><c:out value="${Emp.getJobTitle()}" /></td>
			<td><c:out value="${Emp.getDateOfBirth()}" /></td>
			<td><c:out value="${Emp.getDepartment()}" /></td>
			<td><c:out value="${Emp.getEmail()}" /></td>
		</tr>
	</table>
</body>
</html>