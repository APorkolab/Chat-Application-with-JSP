<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<head><title>Chat applikáció JSP megjelenítőkkel</title></head>
<body>
	<h1>Adatok</h1>
	Usernév: ${human.name}
	<br>

	<h2>Eddigi üzenetek</h2>


	<!-- ArrayList <Message> allMessage = (ArrayList<Message>)session.getAttribute("allMessage"); -->

<c:choose>
    <c:when test="${fn:length(allMessage) > 0}">
       <c:forEach begin="0" end="${fn:length(allMessage) - 1}" var="index">
				<c:out value="${allMessage[index]}" />
				 <br>
			</c:forEach> 
    </c:when>    
    <c:otherwise>
        <h2>Nincs üzenet eltárolva.</h2>
    </c:otherwise>
</c:choose>

	<h2>Üzenet beküldése</h2>
	<form action="${pageContext.request.contextPath}/WriteServlet"
		method="GET">
		<label for="messageString">Írja be az üzenetét:</label><br> <input
			type="text" id="messageString" name="messageString"><br>
		<input type="submit" value="Üzenet beküldése" /><br>
	</form>
</body>
</html>