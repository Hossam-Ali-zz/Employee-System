<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Confirm</title>

<style type="text/css">
html, body {
	margin: 0 auto !important;
	padding: 0 !important;
	height: 100% !important;
	width: 100% !important;
}

* {
	-ms-text-size-adjust: 100%;
	-webkit-text-size-adjust: 100%;
}

div[style*="margin: 16px 0"] {
	margin: 0 !important;
}

table, td {
	mso-table-lspace: 0pt !important;
	mso-table-rspace: 0pt !important;
}

table {
	border-spacing: 0 !important;
	border-collapse: collapse !important;
	table-layout: fixed !important;
	margin: 0 auto !important;
}

img {
	line-height: 100%;
	outline: none;
	text-decoration: none;
	-ms-interpolation-mode: bicubic;
	border: 0;
	max-width: 100%;
	height: auto;
	vertical-align: middle;
}
</style>
<style type="text/css">
.button__td, .button__a {
	transition: all 100ms ease;
}

.button__td:hover, .button__a:hover {
	background: #1ab77b !important;
}

</style>
</head>
<body
	style="background: #ffffff; height: 100% !important; margin: 0 auto !important; padding: 0 !important; width: 100% !important;">
	<div
		style="display: none; font-size: 1px; line-height: 1px; max-height: 0; max-width: 0; opacity: 0; overflow: hidden; mso-hide: all;"></div>
	<table cellpadding="0" cellspacing="0"
		style="background: #f2f2f2; border: 0; border-radius: 0; width: 100%;">
		<tbody>
			<tr>
				<td align="center" class="" style="padding: 0 20px;">
					<table cellpadding="0" cellspacing="0"
						style="background: #f2f2f2; border: 0; border-radius: 0;">
						<tbody>
							<tr>
								<td align="center" class="" style="width: 600px;">
									<table cellpadding="0" cellspacing="0"
										style="background: #ffffff; border: 0; border-radius: 4px; width: 100%;">
										<tbody>
											<tr>
												<td align="center" class="tw-card"
													style="padding: 20px 50px;">
													<table cellpadding="0" cellspacing="0" dir="ltr"
														style="border: 0; width: 100%;">
														<tbody>
															<tr>
																<td class=""
																	style="padding: 20px 0; text-align: center;"><img
																	alt="" class=" "
																	src="https://static.twistapp.com/eee278cf8d8222ad8c36e3fdfeeafbf5.png"
																	style="border: 0; height: auto; max-width: 100%; vertical-align: middle;"
																	width="337"></td>
															</tr>
														</tbody>
													</table>
													<table cellpadding="0" cellspacing="0" dir="ltr"
														style="border: 0; width: 100%;">
														<tbody>
															<tr>
																<td class=""
																	style="padding: 20px 0; text-align: left; color: #474747; font-family: sans-serif;">
																	<form:form method="post" action="${flowExecutionUrl}"
																		modelAttribute="email">
																		<label for="Name">Name:</label>
																		<input type="text" name="Name"
																			value="${email.getEmailNames()}" id="Name" disabled>
																		<br>
																		<label for="Name">Message:</label>
																		<br>
																		<textarea name="Message" rows="20" cols="20"
																			id="Message" disabled> ${email.emailMessage}</textarea>
																		<input type="submit" name="_eventId_send" value="Send" />
																	</form:form>
																</td>
															</tr>
														</tbody>
													</table>
												</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</tbody>
					</table>

				</td>
			</tr>
		</tbody>
	</table>
</body>
</html>