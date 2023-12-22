<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import="com.Cocarclasses.UserDao" %>
	<jsp:useBean id="u" class="com.Cocarclasses.User"/>
	<jsp:setProperty property="*" name="u"/>
	
	<%
		session = request.getSession();
		u.setCIN((int)session.getAttribute("CIN"));
		int status = UserDao.changeInfos(u);
		if (status == 1){
			session.setAttribute("noms", u.getNoms());
			session.setAttribute("prenom",u.getPassword());
			session.setAttribute("email", u.getEmail());
			session.setAttribute("ntel", u.getNumTel());
			response.sendRedirect("Home.jsp");
		}
	%>
</body>
</html>