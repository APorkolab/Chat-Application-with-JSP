<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chat alkalmazás JSP fájlokkal</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/NewHumanServlet"
		method="GET">
		<label for="name">Név:</label><br> 
		<input type="text" id="name" name="name"><br> 
		<input type="submit" value="Új ember"/><br>
</form>
</body>
</html>