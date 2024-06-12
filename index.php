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


        <!-- Slider des destinations -->
        <div class="items">
            <?php
                foreach ($destinations as $index => $destination) {
                    $class = '';
                    if ($index === 0) {
                        $class = 'active';
                    } elseif ($index === 1) {
                        $class = 'next';
                    } elseif ($index === count($destinations) - 1) {
                        $class = 'prev';
                    }
                    echo '<div class="item ' . $class . '">';
                    echo '<img src="Images/' . $destination['image'] . '" alt="' . $destination['nom_article'] . '">';
                    echo '<div class="item-details">';
                    echo '<h2>' . $destination['nom_article'] . '</h2>';
                    echo '<p>' . $destination['prix'] . '€</p>';
                    echo '<a href="article.php?id=' . $destination['article_ID'] . '" class="button">Détails</a>';
                    echo '</div>';
                    echo '</div>';
                }
            ?>
        </div>






    </main>

    <footer>
        <a href="apropos.html#mentions-legales" alt="Accéder aux mentions légales du site">Mentions Légales</a>
        <a href="contacts.html" alt="Accéder à la page de contacts">Contacts</a>
        <a href="donnees_personnelles.html" alt="Accéder à la page des données personnelles">Données Personnelles</a>
        <a href="faq.html" alt="Accéder à la page de la FAQ">FAQ</a>
    </footer>

    <script src="slider.js"></script>
</body>

</html>