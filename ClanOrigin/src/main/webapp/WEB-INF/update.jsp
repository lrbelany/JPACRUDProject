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
<a href="home.do">Home</a>
<br>
<br>
<div class = "col-10 mx-auto">
	<a class = "link-dark" href="home.do">Home</a>
	<h3> Assemble units in a Dropship </h3>
	<form class="form-group" action="update.do" method="POST">
	
	<label for="id">Dropship ID</label>
	<input type="text" name="id" value = "${dshipId}" required/>
	<br>
	<br>

	<label for="clan">Clan</label>
	<select required name="clan" id="clan">
	<option value="jadeFalcon">Jade Falcon</option>
    <option value="wolf">Wolf</option>
    </select> 
	
	
	
	<label for="mech">Mech</label>
	<input type="text" name="mech"/>
	<label for="pilot">Pilot</label>
	<input type="text" name="pilot"/>
	
	<br>
	<br>
	<label for="aerospaceFighter">Aerospace Fighter</label>
	<input type="text" name="aerospaceFighter"/>
	<label for="elemental">Elemental</label>
	<input type="text" name="elemental"/>
	
	<label for="combatVehicle">Combat Vehicle</label>
	<input type="text" name="combatVehicle"/>
	<br> <br>
		
	<input class = "btn btn-dark" type="submit" value="Submit" />
	<br>
	<br>
	</form>
</div>
   
   
   
<br>

	<c:choose>

		<c:when test="${empty dshipList}">

			<h2>Nothing found</h2>
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
					<c:forEach var="dropShip" items="${dshipList}">
						<tr>
							<td>${dship.id}
							<td><a href="id.do?fid=${dship.id}">${dship.clan}</a>
						</tr>
					</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>


</body>
</html>
