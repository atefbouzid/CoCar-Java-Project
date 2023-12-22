<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>CoCar</title>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <link rel="stylesheet" href="css/Results.css" />
  </head>
  <body>
    <h1 class="h1resultat">Les résultats</h1>
    <nav>
      <div class="nav-bar">
        <span class="logo navLogo"><a href="Home.jsp">CoCar</a></span>

        <div class="menu">
          <div class="logo-toggle">
            <span class="logo"><a href="#">CoCar</a></span>
            <i class="bx bx-x siderbarClose"></i>
          </div>

          <ul class="nav-links">
            <li><a href="#">Accès à l'information</a></li>
            <li><a href="#">A propos de nous</a></li>
            <li>
            	<form action="deconnexion.jsp">
                 	<input type="submit" value="Deconnexion">
                </form>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
    <%@page import="com.Cocarclasses.CovoiturageDao" %>
    <%@page import="java.util.List" %>
    <%@page import="com.Cocarclasses.Covoiturage" %>
    <jsp:useBean id="c" class="com.Cocarclasses.Covoiturage"></jsp:useBean>
    <jsp:setProperty property="*" name="c"/>
    <% 
    	List <Covoiturage> rs = CovoiturageDao.recherche(c);
    	for (Covoiturage cov:rs){
    		int id = cov.getId();
    %>
    	<div class="container cta-100">
      	<div class="container">
        <div class="row blog">
          <div class="col-md-12">
            <div
              id="blogCarousel"
              class="carousel slide container-blog"
              data-ride="carousel"
            >
              <div class="carousel-inner">
                <div class="carousel-item active">
                  <div class="row">
                    <div class="col-md-4">
                      <div class="item-box-blog">
                        <div class="item-box-blog-image">
                          <div class="item-box-blog-date bg-blue-ui white">
                            <span class="mon"></span>
                          </div>
                        </div>
                        <div class="item-box-blog-body">
                          <br />
                          <div class="item-box-blog-heading">
                              <h3>
                                <output><%=cov.getLieuDepart()%></output> vers
                                <output><%=cov.getLieuArrivee()%></output>
                              </h3>
                          </div>
                          <br />
                          <div
                            class="item-box-blog-data"
                            style="padding: px 15px"
                          >
                            <p>
                              <i class="fa fa-user-o"></i>
                              Prix:
                              <output><%=cov.getPrix()%>Dt</output
                              ><i class="fa fa-comments-o"></i><br />
                              Avis :
                              <output>3.6/5</output>
                            </p>
                          </div>
                          <div class="item-box-blog-text">
                            <output>Heure de départ </output>
                            <p>Description : par exemple bagage legere.</p>
                          </div>
                          <div class="mt">
                            <form action="postuler">
                            	<input type="hidden" name="id" value="${id}">
                            	<input type="submit" value="contacter">
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
 <%} %>
  </body>
</html>
