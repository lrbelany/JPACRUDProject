<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> Dropship output</title>
</head>
<body>
<a href="home.do">Home</a>
<br>
<br>
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
<br>
<a href="gotoupdate.do?id=$.id">Configure Dropship</a>
<br>
<form action="deleteid.do" method="GET">
				<input type ="hidden" name = "id" value ="${dship.id}"/>
				<input class = "btn btn-primary" type="submit" value="Delete"  />
				</form>

</body>
</html>