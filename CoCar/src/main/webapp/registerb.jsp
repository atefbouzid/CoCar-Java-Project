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
	<jsp:useBean id='u' class='com.Cocarclasses.User'/>
	<jsp:setProperty property="*" name="u"/>
	
	<% 	
		boolean status1 = UserDao.login(u);
		if (status1==false){	
			int status = UserDao.save(u);
			if(status>0){
				String re = "successfuly registred"; 
				session.setAttribute("sr",re);
				response.sendRedirect("index.jsp");
			}
			else{
				out.println("try again");
			}
		}
		else{
			response.sendRedirect("");
		}
		%>
</body>
</html>