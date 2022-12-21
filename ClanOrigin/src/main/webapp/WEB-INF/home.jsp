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




<div class="row">
  <div class="column">
<h2>Jade Falcon</h2>
    <img src="images/Jade Falcon.jpeg" alt="falcon" style="width:50%">
  </div>

  <div class="column">
<h2>Wolf</h2>
    <img src="images/wolf.jpeg" alt="wolf" style="width:50%">
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
	
		<form class="form-group" action="deleteid.do" method="GET">
<label for="id">To Delete Dropship enter its ID</label> <input type="text" name="id"/>
				 <input class="btn btn-dark" type="submit" value="Delete" /> <br> <br>
		</form>
	
	
			
				
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
						<th></th>
						<th></th>
					</tr>
				</thead>
					<c:forEach var="dship" items="${dshipList}">
						<tr>
							<table class="table table-bordered">
  <thead class="thead-dark">
    <tr>
    
      <th scope="col">ID</th>
      <th scope="col">Clan</th>
      <th scope="col">Mech</th>
      <th scope="col">Pilot</th>
      <th scope="col">Elemental</th>
      <th scope="col">Aerospace Fighter</th>
      <th scope="col">Combat Vehicle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      
      <td>${dship.id}</td>
      <br>
      <td>${dship.clan}</td>
      <br>
      <td>${dship.mech}</td>
      <br>
      <td>${dship.pilot}</td>
      <br>
      <td>${dship.elemental}</td>
      <br>
      <td>${dship.aerospaceFighter}</td>
      <br>
      <td>${dship.combatVehicle}</td>
  
    </tr>
  </tbody>
</table>
							
						</tr>
					</c:forEach>
			</table>


		</c:otherwise>
	</c:choose>

</div>

</body>
</html>