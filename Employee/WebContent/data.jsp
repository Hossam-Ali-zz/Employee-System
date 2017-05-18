<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel='stylesheet' type='text/css'
	href='http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css' />
<script
	src="//ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
</head>
<body>
	<a href="?lang=en">English</a> |
	<a href="?lang=de">Germany</a>
	<h2 align="center">Add Employee</h2>
	<div class="container">
		<form name="empForm" action="createEmployee" method="POST">
			<table class="table table-condensed">
				<tr>
					<th><fmt:message key="employee.name" /></th>
				</tr>
				<tr>
					<td><input type="text" name="name" onchange="checkName()" /></td>
					<td><form:errors path="employee.name" style="color:red" /></td>
				</tr>
				<tr>
					<th><fmt:message key="employee.age" /></th>
				</tr>
				<tr>
					<td><input type="text" name="age"></td>
					<td><form:errors path="employee.age" style="color:red" /></td>
				</tr>
				<tr>
					<th><fmt:message key="employee.salary" /></th>
				</tr>
				<tr>
					<td><input type="text" name="salary"></td>
					<td><form:errors path="employee.salary" style="color:red" /></td>
				</tr>
				<tr>
					<th><fmt:message key="employee.jobTitle" /></th>
				</tr>
				<tr>
					<td><input type="text" name="jobTitle"></td>
					<td><form:errors path="employee.jobTitle" style="color:red" /></td>
				</tr>
				<tr>
					<th><fmt:message key="employee.dateOfBirth" /></th>
				</tr>
				<tr>
					<td><input type="text" name="dateOfBirth" id="datePicker"
						onchange="checkDate()"></td>
					<td><form:errors path="employee.dateOfBirth" style="color:red" /></td>
				</tr>
				<tr>
					<th><fmt:message key="employee.department" /></th>
				</tr>
				<tr>
					<td><select name="department">
							<option value="Software Engineer">Software Engineer</option>
							<option value="IT">IT</option>
							<option value="Finance">Finance</option>
							<option value="Consultant">Consultant</option>
					</select></td>
				</tr>
				<tr>
					<th><fmt:message key="employee.email" /></th>
				</tr>
				<tr>
					<td><input type="text" name="email"></td>
					<td><form:errors path="employee.email" style="color:red" /></td>
				</tr>
			</table>
			<input class="btn btn-primary btn-md" type="submit" value="Submit">
		</form>
		<form action="listEmployees" method="GET">
			<input class="btn btn-success btn-md" type="submit"
				value="List All Employees">
		</form>
	</div>
	<script>
		function checkName() {
			var form = document.empForm;
			var empName = form.name.value;
			if (empName[0] !== empName[0].toUpperCase())
				alert("First Character In Name Must Be Uppercase");
		}
		$(function() {
			$("#datePicker").datepicker();
		});
		function checkDate() {
			var form = document.empForm;
			var date = form.dateOfBirth.value;
			var empDate = new Date(date)
			var todayDate = new Date();
			todayDate.setHours(0, 0, 0, 0);
			if (empDate >= todayDate) {
				alert("Please Enter A Valid Date");
				$('#datePicker').val(null);
			}
		}
	</script>
</body>
</html>