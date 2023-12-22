<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CoCar</title>
    <link rel="stylesheet" type="text/css" href="css\style_login.css">
</head>
<body>
    <img src="img/CocarFinal.png" class="img">
    <img src="img/Road-Transparent.png" class="img1">
    <nav>
        <div class="nav-bar">
            <span class="logo navLogo"><a href="index.jsp">CoCar</a></span>

            <div class="menu">
                <div class="logo-toggle">
                    <span class="logo"><a href="#">CoCar</a></span>
                    <i class='bx bx-x siderbarClose'></i>
                </div>

                <ul class="nav-links">
                    <li><a href="#">Accès à l'information</a></li>
                    <li><a href="#">A propos de nous</a></li>
                    
                </ul>
            </div>
        </div>
    </nav>
    <div class="wrapper">
        <div class="title"> Connectez-vous </div>
        <form action="indexb.jsp">
            <div class="field"> <input type="text" name="email" id="email" required> <label for="email">Email
                </label> </div>
            <div class="field"> <input type="password" name="password" id="password" required> <label for="password">Mot
                    de passe</label> </div>
            <div class="content">
                <div class="checkbox"> <input type="checkbox" name="checkbox" id="checkbox"> <label for="checkbox">Se
                        souvenir de moi</label> </div>
            </div>
            <div class="field"> <input type="submit" value="Se connecter"> </div>
            <div class="signup-link">
                <div class="link-signup">
                    <a href="Register.jsp">S'inscrire</a>
                </div>
                <%
                		String re = (String)session.getAttribute("sr");
						if (re!=null){                
                			out.print("<p>"+re+"</p>");
						}
						session.invalidate();
						request.getSession();
                %>
                	
            </div>
        </form>
    </div>
</body>
</html>