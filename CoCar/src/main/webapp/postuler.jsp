<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>postuler</title>
</head>
<body>
	<%@page import="com.Cocarclasses.Postuler" %>
	<% 
		int status;
	 	session = request.getSession();
		int cin = (int)session.getAttribute("CIN");
		int id = (int)session.getAttribute("id");
		status = Postuler.save(cin, id);
		if (status>0){
			System.out.println("postulat succeded");
			response.sendRedirect("Home.jsp");
		}
		else{
			System.out.println("Error");
			response.sendRedirect("Home.jsp");
		}
	%>
</body>
</html>