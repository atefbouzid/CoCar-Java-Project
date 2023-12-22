<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deconnexion</title>
</head>
<body>
	<%
		session = request.getSession();
		session.invalidate();
	%>
	<jsp:forward page="index.jsp"></jsp:forward>
</body>
</html>