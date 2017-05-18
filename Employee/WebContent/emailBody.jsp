<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Email Form</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<style>
* {
	margin: 0;
	padding: 0;
}

body {
	font-size: 62.5%;
	font-family: Helvetica, sans-serif;
	background-image:
		url(http://i257.photobucket.com/albums/hh237/wingsofdestiny89/Blog%20template/stripetj9.png);
	background-repeat: repeat;
}

p {
	font-size: 1.3em;
	margin-bottom: 15px;
}

#page-wrap {
	width: 660px;
	background: white;
	padding: 20px 50px 20px 50px;
	margin: 20px auto;
	min-height: 500px;
	height: auto !important;
	height: 500px;
}

#contact-area {
	width: 600px;
	margin-top: 25px;
}

#contact-area textarea {
	height: 90px;
}

#contact-area textarea:focus, #contact-area input:focus {
	border: 2px solid #900;
}

#contact-area input.submit-button {
	width: 100px;
	float: right;
}

label {
	float: left;
	text-align: right;
	margin-right: 15px;
	width: 100px;
	padding-top: 5px;
	font-size: 1.4em;
}
</style>
</head>
<body>
	<div id="page-wrap">
		<div id="contact-area">
			<form:form method="post" action="${flowExecutionUrl}"
				modelAttribute="email">
				<label for="Name">Name:</label>
				<input type="text" name="Name" value="${email.getEmailNames()}"
					style="padding: 5px; width: 471px; font-family: Helvetica, sans-serif; font-size: 1.4em; margin: 0px 0px 10px 0px; border: 2px solid #ccc;"
					id="Name" />
				<label for="Message">Message:</label>
				<br />
				<form:textarea name="Message" rows="20" cols="20" id="Message"
					path="emailMessage"
					style="padding: 5px; width: 471px; font-family: Helvetica, sans-serif; font-size: 1.4em; margin: 0px 0px 10px 0px; border: 2px solid #ccc;"></form:textarea>
				<br />
				<div>
					<form:checkbox path="newReceiver" name="moreEmp" value="moreEmp" />
					&nbsp; Add more employees <br /> <br /> <input type="submit"
						name="_eventId_sentEmail" value="Next" />
				</div>
			</form:form>
			<div style="clear: both;"></div>
		</div>
	</div>
</body>
</html>