<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hiba történt!</title>
</head>
<body>
	<%response.setStatus(200); %>
	Hiba történt a Chat JSP webalkalmazásban.
	<br> Hibakód: ${pageContext.errorData.statusCode }
	<br> Kivétel: ${pageContext.errorData.throwable }
	<br>
	<%-- vagy: ${pageContext.exception } --%>
	URL: ${ pageContext.errorData.requestURI }
	<br> Servlet neve: ${ pageContext.errorData.servletName }
	<br>
</body>
</html>