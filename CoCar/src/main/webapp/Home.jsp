<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CoCar</title>
    <link rel="stylesheet" href="css\Home.css">
</head>

<body>
    
    <nav>
        <div class="nav-bar">
            <span class="logo navLogo"><a href="Home.jsp">CoCar</a></span>

            <div class="menu">
                <div class="logo-toggle">
                    <span class="logo"><a href="#">CoCar</a></span>
                    <i class='bx bx-x siderbarClose'></i>
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
    
    <section class="main">
        <div class="profile-card">
            <div class="image">
                <img src="USER PROFILE.png" alt="" class="profile-pic">
            </div>
            <div class="data">
            <%
            	String prenom = (String)session.getAttribute("prenom");
                out.print("<h2><output type='text'  name='Full name' >"+prenom+"</output></h2>");
            %>
            </div>
            <div class="data">
                <h3>Email</h3>
                <%
                	String email = (String)session.getAttribute("email");
                	out.print("<span>"+email+"</span>");
                %>
            </div>
            <div class="data">
                <h3>N° de telephone</h3>
                <% 
                	int num = (int)session.getAttribute("ntel");
                	out.print("<span>"+num+"</span>");
                %>
            </div>
            <div class="row">
                <div class="info">
                    <h3>Avis</h3>
                    <%
                    double av = (double)session.getAttribute("avis");
                    out.print("<span>"+av+"</span><span>/5</span>");
                	%>
                </div>
            </div>
            <div class="buttons">
                <a href="Setting.jsp" class="btn">Parametre</a>
            </div>
        </div>
    </section>
    <section class="about-us">
        <div class="about">
          <div class="text">
            <h2>Bienvenue chez CoCar,</h2>
            <h5>Le premier site de covoiturage en Tunisie.</h5>
            <p>Je veut covoiturer en tant que </p>
            <button class="nextBtn">
                <a class="btnText" href="Passager.jsp">Passager</a> 
            </button>
            <button class="nextBtn" >
                    <a class="btnText" href="Conducteur.jsp">Conducteur</a> 
            </button>
                <img class="image3" src="img\CocarFinal - Copie.png">
          </div>
        </div>
      </section>
  
</body>

</html>
