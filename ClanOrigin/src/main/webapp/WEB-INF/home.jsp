<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Clan Origin</title>
<link href="../css/styles.css" rel="stylesheet"/>
</head>
<body>
<h1> In the beginning there were two.....</h1>



<div class="clans">
<div class="clan">
<a href="falcon.do">
<h2>Jade Falcon</h2>
<img src="images/Jade Falcon.jpeg">
</a>
</div>

<div class="clan">
<a href="wolf.do">
<h2>Wolf</h2>
<img src="images/wolf.jpeg">
</a>
</div>


</div>


	
	
	<a href="gotoform.do">Search Dropship</a>
	<br>
	<a href="gotocreate.do">Create Dropship</a>
	<br>
	<a href="gotoupdate.do">Configure Dropship</a>
	<br>
	<br>
	<br>
	<div>
	

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
						<th></th>
					</tr>
				</thead>
					<c:forEach var="dship" items="${dshipList}">
						<tr>
							<td>${dship.id} ${dship.clan} ${dship.mech} ${dship.pilot} ${dship.elemental} ${dship.aerospaceFighter} ${dship.combatVehicle}
							
						</tr>
					</c:forEach>
			</table>


		</c:otherwise>
	</c:choose>

</div>

</body>
</html>