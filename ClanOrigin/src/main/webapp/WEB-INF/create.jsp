<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Creating</title>
</head>
<body>
<a href="home.do">Home</a>
<br>
<br>
<h3>Create a new Dropship:</h3>
	<form action="created.do" method="POST">
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
</body>
</html>