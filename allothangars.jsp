<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Allot Hangar</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/contents/csspages/style_my_pets.css">
</head>
<body>
	<h3>AIRPORT MANAGEMENT</h3>
	<jsp:include page="managermenu.jsp" />
	<h2>Hi, ${sessionmanager.managerFirstName}</h2>
	<div>
		<table class="center" id="pets">
			<thead>
				<tr>
					<th>Hangar Id</th>
					<th>Hangar Location</th>
					<th>Plane Status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.hangars}" var="hangar">
					<tr>
						<td><c:out value="${hangar.getHangarId()}"></c:out></td>
						<td><c:out value="${hangar.hangarLocation}"></c:out></td>
						<c:choose>
							<c:when test="${empty hangar.plane}">
								<td><a
									href="./allothangar?planeId=${planeId}&hangarId=${hangar.getHangarId()}">Allot</a></td>
							</c:when>
							<c:otherwise>
								<td>
									<button disabled="disabled">Alloted</button>
								</td>
							</c:otherwise>
						</c:choose>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>

