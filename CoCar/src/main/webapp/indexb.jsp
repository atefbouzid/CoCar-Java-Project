<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import= "java.util.Map" %>
	<%@page import= "com.Cocarclasses.UserDao" %>
	<jsp:useBean id='u' class="com.Cocarclasses.User"/>
	<jsp:setProperty property="*" name="u"/>
	<%
		boolean status = UserDao.login(u);
		if (status==true){
			session = request.getSession();
			Map <String , Object> row = UserDao.logininfo(u);
			session.setAttribute("CIN", row.get("CIN"));
			session.setAttribute("noms", row.get("noms"));
			session.setAttribute("prenom", row.get("prenom"));
			session.setAttribute("email", row.get("email"));
			if (row.get("avis")!=null){
				session.setAttribute("avis", row.get("avis"));
			}
			else{
				session.setAttribute("avis",3.6);
			}
			session.setAttribute("ntel", row.get("numTel"));
			response.sendRedirect("Home.jsp");
		}
		else{
			response.sendRedirect("index.jsp");
		}
	%>
</body>
</html>