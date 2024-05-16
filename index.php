<!DOCTYPE html>
<html lang="fr">

<head>
    <link rel="stylesheet" href="Resaweb.css">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/css2?family=Audiowide&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&display=swap" rel="stylesheet">
    <title>SPACE TRAVEL</title>
</head>

<body>

    <nav> <!--Création de ma barre menu-->
        <span class="name"><a href="index.php">SPACETRAVEL</a></span>
        <a href="index.php">Accueil</a>
        <a href="#">Les destinations</a>
        <a href="resa.php">Réserver</a>
        <a href="#">A propos de nous</a>
        <a href="#">Contacts</a>
    </nav>

    <header>
        <div class="text">
            <h1>SPATIAL TRAVEL</h1>
            <h2>E x p l o r e z l ' e s p a c e </h2>
        </div>
    </header>


    <main>
        <div class="presentation">
            <h3>Visitez tous les recoins de notre système solaire !</h3>
            <p>
                Spatial Travel est la seule agence de voyage à vous proposer des destinations hors de la Terre ! Avec
                nous vous pourrez observer au plus près les planètes de notre système solaire mais vous pourrez aussi
                vous approcher des plus belles étoiles telles que Sirius ou Canopus ! Et bien sûr les satellites de
                notre système solaire ne sont pas laissés sans reste et la Lune, ou Callisto n'auront plus de secrets
                pour vous !
            </p>
        </div>
    

    <section class="slider">
        <div class="container">
            <div class="titre-diapo">
                <h1>NOS SALLES</h1>
                <p class="diapo-reservation">Afin de réserver une salle <a href="salles.html">cliquez ici !</a></p>
            </div>

            <div class="js-slider" id="decaleGauche">
                <div class="js-photos">
                    <div class="js-photo" style="background-image: url('Images/chambre_1.jpg');"></div>
                    <div class="js-photo" style="background-image: url('Images/chambre_2.jpg');"></div>
                    <div class="js-photo" style="background-image: url('Images/chambre_3.jpg');"></div>
                    <div class="js-photo" style="background-image: url('Images/chambre_4.jpg');"></div>
                    <div class="js-photo" style="background-image: url('Images/chambre_5.jpg');"></div>
                </div>
            </div>
        </div>
        <div class="nav-slider">
            <button class="prev-btn">&#10094;</button>
            <button class="next-btn">&#10095;</button>
        </div>
    </section>

</main>




    <footer>
        <!-- Pieds de page avec toutes les pages concernant les mentions légales, données personnelles, etc-->
        <a href="m" alt="Accéder aux mentions légales du site">Mentions Légales</a>
        <a href="contacts.html" alt="Accéder à la page de contacts">Contacts</a>
        <a href="donnees_personnelles.html" alt="Accéder à la page des données personnelles">Données Personnelles</a>
        <a href="faq.html" alt="Accéder à la page de la FAQ">FAQ</a>
    </footer>


    <script src="script.js"></script>

</body>

</html>