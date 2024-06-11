<?php
  // Connexion à la base de données
include 'connexion.php';
  // Récupération des données des cinq dernières destinations
  $query = $db->query("SELECT * FROM article ORDER BY article_ID DESC LIMIT 5");
  $destinations = $query->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SPACE TRAVEL</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Audiowide&display=swap" rel="stylesheet">
    <!-- <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&display=swap" rel="stylesheet"> -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
</head>

<body>

    <nav>
        <a href="#main" class="skip-link">Aller au contenu</a>
        <span class="name"><a href="index.php">SPACETRAVEL</a></span>
        <a href="index.php">Accueil</a>
        <a href="destinations.php">Les destinations</a>
        <a href="apropos.html">À propos de nous</a>
        <form action="destinations.php" method="GET" class="search-form">
        <input type="text" name="search" placeholder="Rechercher une destination...">
        <button type="submit">Rechercher</button>
    </form>
    </nav>

    <header>
        <div class="text">
            <h1>SPACE TRAVEL</h1>
            <h2>E x p l o r e z l ' e s p a c e</h2>
        </div>
    </header>

    <main role="main" id="main" tabindex="-1">
        <div class="presentation">
            <h3>Visitez tous les recoins de notre système solaire !</h3>
            <br class="espace">
            <p>
                Spatial Travel est la seule agence de voyage à vous proposer des destinations hors de la Terre ! Avec
                nous vous pourrez observer au plus près les planètes de notre système solaire mais vous pourrez aussi
                vous approcher des plus belles étoiles telles que Sirius ou Canopus ! Et bien sûr les satellites de
                notre système solaire ne sont pas laissés sans reste et la Lune, ou Callisto n'auront plus de secrets
                pour vous !
            </p>
        </div>


        <!-- Carte des destinations -->
        <section class="destinations-carousel">
            <h3>Nos dernières destinations</h3>
            <div class="carousel">
                <div class="track">
                    <?php
                    foreach ($destinations as $destination) {
                        echo '<div class="slide">';
                        echo '<img src="Images/' . $destination['image'] . '" alt="' . $destination['nom_article'] . '">';
                        echo '<h4>' . $destination['nom_article'] . '</h4>';
                        echo '<p>' . $destination['prix'] . '€</p>';
                        echo '<a href="article.php?id=' . $destination['article_ID'] . '" class="button">Détails</a>';
                        echo '</div>';
                    }
                    ?>
                </div>
                <div class="navigation">
                <button class="prev">&#8592;</button>
                <button class="next">&#8594;</button>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <a href="apropos.html#mentions-legales" alt="Accéder aux mentions légales du site">Mentions Légales</a>
        <a href="contacts.html" alt="Accéder à la page de contacts">Contacts</a>
        <a href="donnees_personnelles.html" alt="Accéder à la page des données personnelles">Données Personnelles</a>
        <a href="faq.html" alt="Accéder à la page de la FAQ">FAQ</a>
    </footer>

    <script>
        // Slider
const nextBtn = document.querySelector(".next");
const prevBtn = document.querySelector(".prev");
const track = document.querySelector(".track");

const NUM_SLIDES = 5; 

let currSlide = 0;

function slideTrack() {
  track.style.transform = `translateX(${-currSlide * 100}%)`;
}

nextBtn.addEventListener("click", () => {
  currSlide = (currSlide + 1) % NUM_SLIDES;
  slideTrack();
});

prevBtn.addEventListener("click", () => {
  currSlide = (currSlide - 1 + NUM_SLIDES) % NUM_SLIDES;
  slideTrack();
});

function submitForm() {
  document.querySelector("form").submit();
}
    </script>
</body>

</html>