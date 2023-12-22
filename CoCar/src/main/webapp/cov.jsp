<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@page import= "com.Cocarclasses.CovoiturageDao" %>
	<jsp:useBean id="c" class="com.Cocarclasses.Covoiturage"></jsp:useBean>
	<jsp:setProperty property="*" name="c"/>
	
	<% 
		session = request.getSession();
		c.setCIN((int)session.getAttribute("CIN"));
		int status=CovoiturageDao.save(c);
		if (status>0){
			response.sendRedirect("Home.jsp");
		}
		else{
			System.out.print("enable to create cov");
			response.sendRedirect("Home.jsp");
		}
	%>

</body>
</html>