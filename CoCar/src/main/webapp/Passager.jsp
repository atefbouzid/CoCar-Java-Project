<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CoCar</title>
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/Passager.css">


</head>

<body>
    <img class="img1" src="img/Covoiturage.jpg" >
  <div class="main-content">
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
    <div class="wrapper">
        <form action="Results.jsp">
            <div class="field"> <input type="text" name="lieuDepart" id="text" required> <label for="text">Lieu de départ
                </label> </div>
                <div class="field"> <input type="text" name="lieuArrivee" id="text" required> <label for="text">Lieu d'arrivée
                </label> </div>
                <br>
                <h5> Date de départ </h5>
            <div class="field"> <input type="date" name="date" id="date"  required> <label for="date">
                </label> </div>
                <br>
                <h5> horaire de départ </h5>
            <div class="field"> <input type="time" name="time" id="time" > <label for="time">
                </label> </div>
            <div class="field"> <input type="number" name="number" id="number" required> <label for="number">Nombre de places</label> </div>
            <div class="field"><input type="submit" value="chercher"> </div>           
       
        </form>
    </div>
  </div>
</body>
</html>