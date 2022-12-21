<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search by id</title>
</head>
<body>
<div>
<a href="home.do">Home</a>
<br>
<br>
<h2>Search Dropship by ID</h2>
</div>
<form action="id.do" method = "GET">
<input type="text" name="id" id="id">
<input type="submit" value="submit">

${dshipList}
</form>
</body>
</html>