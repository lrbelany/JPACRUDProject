<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update dropship</title>
</head>
<body>

	<br>
	<br>
	<div>
		<a class="link-dark" href="home.do">Home</a>
		<h3>Assemble units in a Dropship</h3>
		<form class="form-group" action="update.do" method="POST">

			<br> <br> <label for="clan">Clan</label> <select required
				name="clan" id="clan">
				<option value="jadeFalcon">Jade Falcon</option>
				<option value="wolf">Wolf</option>
			</select> <label for="mech">Mech</label> <input type="text" name="mech"
				required /> <label for="pilot">Pilot</label> <input type="text"
				name="pilot" required /> <br> <br> <label
				for="aerospaceFighter">Aerospace Fighter</label> <input type="text"
				name="aerospaceFighter" required /> <label for="elemental">Elemental</label>
			<input type="text" name="elemental" required /> <label
				for="combatVehicle">Combat Vehicle</label> <input type="text"
				name="combatVehicle" required /> <br> <br> <input
				class="btn btn-dark" type="submit" value="Submit" /> <br> <br>
		</form>
	</div>



	<br>

	<c:choose>

		<c:when test="${empty dshipList}">

			<h2>errorpage.do</h2>
			<body>
		</c:when>
		<c:otherwise>
			<table>
				<thead>
					<tr>
						<th>ID</th>
						<th>Clan</th>
					</tr>
				</thead>
				<c:forEach var="dship" items="${dshipList}">
					<tr>
						<td>${dship.id}
						<td>
					</tr>
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>


</body>
</html>
