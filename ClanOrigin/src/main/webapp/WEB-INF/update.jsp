<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>update dropship</title>
</head>
<body>
<div class = "col-10 mx-auto">
	<a class = "link-dark" href="home.do">Home</a>
	<h3> Assemble units in a Dropship </h3>
	<form class="form-group" action="update.do" method="POST">
	
	<label for="id">Dropship ID</label>
	<input type="text" name="id" value = "${dshipId}" required/>
	<br>
	<br>

	<label for="clan">Clan</label>
	<select name="clan" id="clan" />
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
	
	
	<label for="rating">Rating</label>
	<select name="rating" id="rating">
<option value="G">G</option>
<option value="PG">PG</option>
<option value="PG13">PG13</option>
<option value="R">R</option>
<option value="NC17">NC17</option>
</select> 
<br><br>
	
	
	<label for="features">Features</label>
	<select name="features" id="features">
<option value=""></option>
<option value="Behind the Scenes">Behind the Scenes</option>
<option value="Commentaries">Commentaries</option>
<option value="Deleted scenes">Deleted Scenes</option>
<option value="railers">Trailers</option>
	</select>
	
	<label for="languageID">Language</label>
	<select name="languageID" id="languageID">
			<option value="1">English</option>
			<option value="2">Italian</option>
			<option value="3">Japanese</option>
			<option value="4">Mandarin</option>
			<option value="5">French</option>
			<option value="6">German</option>
		</select>
	
	<br>
	<br>
	<input class = "btn btn-dark" type="submit" value="Submit" />
	</form>
</div>
</body>
</html>
