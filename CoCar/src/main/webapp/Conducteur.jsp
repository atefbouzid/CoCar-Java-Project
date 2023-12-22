<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css\Conducteur.css" />
<title>CoCar</title>
</head>
<body>
	<img src="img\Covoiturage.jpg" class="img1" />
	<nav>
		<div class="nav-bar">
			<span class="logo navLogo"><a href="#">CoCar</a></span>

			<div class="menu">
				<div class="logo-toggle">
					<span class="logo"><a href="#">CoCar</a></span> <i
						class="bx bx-x siderbarClose"></i>
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

	<div class="container">
		<header>Créer un covoiturage</header>
		<form action="cov.jsp">
			<div class="form first">
				<div class="details ID">
					<span class="title">Destination</span>

					<div class="fields">
						<div class="input-field">
							<label>Lieu de départ</label> <input type="text" name="lieuDepart" placeholder="Example : Marsa" required />
						</div>
						<div class="input-field">
							<label>Lieu d'arrivée</label> <input type="text" name="lieuArrivee" placeholder="Example : Sousse" required />
						</div>
						<div class="input-field">
							<label>Date de départ</label> <input type="date" name="date" placeholder="Date de naissance" />
						</div>
						<div class="input-field">
							<label>Temps de départ</label> <input type="number" name="heureDepart" placeholder="Temps de départ" />
						</div>
						<div class="input-field">
							<label>Prix en DT</label> <input type="number" name="prix" placeholder="Example 15 DT" />
						</div>
					</div>
				</div>

				<div class="details personal">
					<span class="title">Voiture</span>

					<div class="fields">
						<div class="input-field">
							<label>Marque</label> <input type="text" name="carType" placeholder="Exemple : Audi" required />
						</div>
						<div class="input-field">
							<label>Nombre de place disponible</label> <input type="number" name="nbPlace" placeholder="N° de place disponible" required />
						</div>
						<button class="nextBtn">
							<span class="btnText">Publier</span>
							<!-- <i class="uil uil-navigator"></i> -->
						</button>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
