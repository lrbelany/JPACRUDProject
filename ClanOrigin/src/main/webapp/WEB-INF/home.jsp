<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clan Origin</title>


<link href="../css/styles.css" rel="stylesheet" />
</head>
<body>
	<div class="background-image">

		<h1>In the beginning there were two.....</h1>





		<div class="clans">
			<div class="clanjf">
				<br> <br> <br> <br> <br> <br>
				<h2>Jade Falcon</h2>
				<img src="images/jadefalcon.jpeg" alt="falcon">
			</div>

			<div class="clanwolf">
				<br> <br> <br> <br> <br> <br>
				<h2>Wolf</h2>
				<img src="images/wolf.jpeg" alt="wolf">
			</div>
		</div>
<br>
<br>

<div class="gotoform">
		<h2><a href="gotoform.do">Search Dropship</a></h2> <br> 
		</div>
	<br>	
		<div class="gotocreate">
		<h2><a href="gotocreate.do">Create New Dropship</a></h2> <br>
		</div>
		<br> 
		 <div class="gotoupdate">
		 <h2><a href="gotoupdate.do">Configure Existing Dropship</a></h2>
		 </div>
		 
		  <br> 
		  <br> 
		  <br>

		<form class="form-group" action="deleteid.do" method="GET">
			<label for="id">To Delete Dropship enter its ID</label> <input
				type="text" name="id" /> <input class="btn btn-dark" type="submit"
				value="Delete" /> <br> <br>
		</form>




		<div class="list">
			<div class="listheader">
			<h2>Dropships</h2>
			</div>
			
			<table border="3">
				<tr>
					<th>Dropship ID</th>
					<th>Clan</th>
					<th>Mech</th>
					<th>Pilot</th>
					<th>Elemental</th>
					<th>Aerospace Fighter</th>
					<th>Combat Vehicle</th>
				</tr>
				<c:forEach var="dship" items="${dshipList}">
					<tr>
						<td>${dship.id}</td>
						<td>${dship.clan}</td>
						<td align="center">${dship.mech}</td>
						<td align="center">${dship.pilot}</td>
						<td align="center">${dship.elemental}</td>
						<td align="center">${dship.aerospaceFighter}</td>
						<td align="center">${dship.combatVehicle}</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>


</body>




</html>