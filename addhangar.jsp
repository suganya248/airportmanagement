<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Pilot</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/contents/csspages/stylepage.css">

</head>
<body>
	<h3>ADD HANGAR</h3>
	<jsp:include page="adminmenu.jsp" />
	<h2>Hi, ${sessionadmin.adminFirstName}</h2>

	<form:form method="post" modelAttribute="hangar">
		<p style="color: red;">${exists}</p>
		<table>
			<tr>
				<td><label>Hanger Location</label></td>
				<td><form:input path="hangarLocation"
						placeholder="Enter Hanger Location" required="required"
						oninvalid="this.setCustomValidity('Mandatory field')"
						oninput="this.setCustomValidity('')" /></td>
			</tr>
		</table>
		<button style="float: left" type="submit" name="save" value="save"
			formaction="./addhangar">Save</button>
	</form:form>
</body>
</html>