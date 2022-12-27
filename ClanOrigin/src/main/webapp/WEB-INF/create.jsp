<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Creating</title>
<link href="../css/createsheet.css" rel="stylesheet" />
</head>
<body>
<div class="createdropship">
<h2><a href="home.do">Home</a></h2>
<br>
<br>
<br>
<br>
<br>
<br>
<h1>Create a new Dropship:</h1>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>

	<form action="created.do" method="POST">
            <label for="clan">Clan</label>
		<select required name="clan" id="clan">
			<option value="jadeFalcon">Jade Falcon</option>
			<option value="wolf">Wolf</option>
		</select>  <br><br>
		<label for="mech">Mech</label> <input type="text" name="mech" required />
		<label for="pilot">Pilot</label> 
		<input type="text" name="pilot" required /> 
		<br> <br>
			<label for="aerospaceFighter">Aerospace Fighter</label> 
			<input type="text" name="aerospaceFighter" /> 
			<label for="elemental">Elemental</label> 
			<input type="text" name="elemental" /> 
			<label for="combatVehicle">Combat Vehicle</label> 
			<input type="text" name="combatVehicle" />  <br><br>
			
		 <br> <br> 
			<input class="btn btn-dark" type="submit" value="Submit" /> 
	</form>
</div>
</body>
</html>