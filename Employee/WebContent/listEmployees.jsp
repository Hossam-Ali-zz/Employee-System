<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.9.2/jquery-ui.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-migrate-3.0.0.js"></script>

<link rel='stylesheet' type='text/css'
	href='http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css' />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
* {
	box-sizing: border-box;
}

#searchText {
	background-image:
		url('https://www.broadviewnet.com/assets/images/icon-search.png');
	background-position: 10px 10px;
	background-repeat: no-repeat;
	width: 100%;
	font-size: 16px;
	padding: 12px 20px 12px 40px;
	border: 1px solid #ddd;
	margin-bottom: 12px;
}
</style>
<title><fmt:message key="employee.titleList" /></title>
</head>
<body>
	<input type="text" id="searchText" onkeyup="filterNames()"
		placeholder="Search for names.." title="Type in a name">
	<table class="table table-striped" id="empTable">
		<thead>
			<tr>
				<th style="text-align: center"><fmt:message key="employee.name" /></th>
				<th style="text-align: center"><fmt:message key="employee.age" /></th>
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
				<th style="text-align: center"><fmt:message key="employee.view" /></th>
				<th style="text-align: center"><fmt:message key="employee.edit" /></th>
				<th style="text-align: center"><fmt:message
						key="employee.delete" /></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${Emp}" var="myItem">
				<tr align="center" id="employeeInformation">
					<td
						onclick="showUrlInDialog('<c:url value="/employees/${myItem.id}"/>'); return false;"><c:out
							value="${myItem.name}" /></td>
					<td><c:out value="${myItem.age}" /></td>
					<td><c:out value="${myItem.salary}" /></td>
					<td><c:out value="${myItem.jobTitle}" /></td>
					<td><c:out value="${myItem.dateOfBirth}" /></td>
					<td><c:out value="${myItem.department}" /></td>
					<td><c:out value="${myItem.email}" /></td>
					<td>
						<form action="viewEmployee" method="GET">
							<button type="submit" class="btn btn-info">View</button>
							<input type="hidden" name="idId" value="${myItem.id}" /> <input
								type="hidden" name="idName" value="${myItem.name}" /> <input
								type="hidden" name="idAge" value="${myItem.age}" /> <input
								type="hidden" name="idSalary" value="${myItem.salary}" /> <input
								type="hidden" name="idJobTitle" value="${myItem.jobTitle}" /> <input
								type="hidden" name="idDateOfBirth" value="${myItem.dateOfBirth}" />
							<input type="hidden" name="idDepartment"
								value="${myItem.department}" /> <input type="hidden"
								name="idEmail" value="${myItem.email}" />
						</form>
					</td>
					<td>
						<form action="editEmployee" method="POST">
							<button type="submit" class="btn btn-warning">Edit</button>
							<input type="hidden" name="idId" value="${myItem.id}" />
						</form>
					</td>
					<td>
						<form action="deleteEmployee" method="POST">
							<button id="del" type="submit" class="btn btn-danger"
								onclick="return confirm('Are you sure you want to continue')">Delete</button>
							<input type="hidden" name="idSalary" value="${myItem.salary}" />
							<input type="hidden" name="idId" value="${myItem.id}" />
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<script type="text/javascript">
		function showUrlInDialog(url) {
			var tag = $("<div></div>");
			$.ajax({
				url : url,
				type : 'get',
				dataType : "json",
				success : function(data) {
					tag.html(
							JSON.stringify("Name : " + data.name
									+ "<br> Age : " + data.age
									+ "<br> Job Title : " + data.jobTitle
									+ "<br> Date Of Birth : "
									+ data.dateOfBirth + "<br> Department : "
									+ data.department + "<br> Email : "
									+ data.email)).dialog({
						title : "Employee Information",
						autoOpen : false,
						width : 390,
						height : 200
					}).dialog('open');
				}
			});
		}
		function filterNames() {
			var input, filter, table, tr, td, i;
			input = document.getElementById("searchText");
			filter = input.value.toUpperCase();
			table = document.getElementById("empTable");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td")[0];
				if (td) {
					if (td.innerHTML.toUpperCase().indexOf(filter) > -1)
						tr[i].style.display = "";
					else
						tr[i].style.display = "none";
				}
			}
		}
	</script>
</body>
</html>
