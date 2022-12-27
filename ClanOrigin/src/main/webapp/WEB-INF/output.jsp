<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Dropship output</title>
<link href="../css/found.css" rel="stylesheet" />
</head>
<body>
<div class="output">
<h2><a href="home.do">Home</a></h2>
<br>
<br>

<div class="results">
<h2>
Dropship ID: ${dship.id}
<br>
Clan: ${dship.clan}
<br>
Mech: ${dship.mech} 
<br>
Pilot: ${dship.pilot}
<br>
Aerospace Fighter: ${dship.aerospaceFighter}
<br>
Elemental: ${dship.elemental}
<br>
Combat Vehicle: ${dship.combatVehicle}
</h2>
</div>
<br>
<br>
<br>
<form action="deleteid.do" method="GET">
 <label for="delete">Delete Current Dropship</label>
				<input type ="hidden" name = "id" value ="${dship.id}"/>
				<input class = "btn btn-primary" type="submit" value="Delete"  />
				</form>

<br>
<br>
<br>
<a href="gotoupdate.do?id=$.id">Configure A Dropship</a>
</div>
</body>
</html>