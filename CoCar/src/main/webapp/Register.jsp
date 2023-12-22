<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/Register.css">
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
    <title>CoCar</title>
</head>
<body>
    <img src="img/Covoiturage.jpg" class="img1">
    <nav>
        <div class="nav-bar">
            <span class="logo navLogo"><a href="login.jsp">CoCar</a></span>

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
    
    <div class="container">
        <header>S'inscrire</header>
        <form action="registerb.jsp">
            <div class="form first">
                <div class="details ID">
                    <span class="title">Détails de l'identité</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Numero de CIN</label>
                            <input type="number" name="CIN" placeholder="N° de CIN " required>
                        </div>
                        <div class="input-field">
                            <label>Avez-vous un permis de conduire?</label>
                            <select required>
                                <option disabled selected>Sélectionner</option>
                                <option>Oui</option>
                                <option>Non</option>
                            </select>
                        </div>
                        <div class="input-field">
                            <label>Numero de permis</label>
                            <input type="number" name="permis" placeholder="Example : 09543512" required>
                        </div>
                </div> 
            </div>

                <div class="details personal">
                    <span class="title">Données personnelles</span>

                    <div class="fields">
                        <div class="input-field">
                            <label>Nom</label>
                            <input type="text" name="noms" placeholder="Nom" required>
                        </div>
                        <div class="input-field">
                            <label>Prenom</label>
                            <input type="text"  name="prenom" placeholder="Prenom" required>
                        </div>
                        <div class="input-field">
                            <label>Date de naissance</label>
                            <input type="date" name="birthday" placeholder="Date de naissance" >
                        </div>

                        <div class="input-field">
                            <label>Email</label>
                            <input type="text" name="email" placeholder="Exemple : flenfoulani@gmail.com" required>
                        </div>

                        <div class="input-field">
                            <label>Numero de télephone</label>
                            <input type="number" name="numTel" placeholder="Votre N° de télephone" required>
                        </div>

                        <div class="input-field">
                            <label>Sexe</label>
                            <select name="sexe" required>
                                <option disabled selected>Sélectionner le sexe</option>
                                <option>Homme</option>
                                <option>Femme</option>
                            </select>
                        </div>
                        <div class="input-field">
                            <label>Adresse d'habitation</label>
                            <input type="text" name="adresse" placeholder="Exemple : Marsa" >
                        </div>
                        <div class="input-field">
                            <label>Mot de passe</label>
                            <input type="password" name="password" placeholder="Mot de passe" required>
                        </div>
                        <div class="input-field">
                            <label>Confirmation de mot de passe</label>
                            <input type="password" placeholder="Mot de passe" required>
                        </div>
                        <button class="nextBtn">
                            <span class="btnText">Créer un compte</span>
                            <!-- <i class="uil uil-navigator"></i> -->
                        </button>
                    </div>
                </div>

            </div>
        </form>
    </div>
</body>
</html>
