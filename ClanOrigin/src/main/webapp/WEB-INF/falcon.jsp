<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Jade Falcon Dropship select</title>
</head>
<body>


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
Combat Vehicle: ${dship.combatVehicle}
<br>
<a href="upgrade.do?id=$.id">Configure Dropship</a>

</body>
</html>