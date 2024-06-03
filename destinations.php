<?php
// Connexion à la base de données
include 'connexion.php';

// Gestion de la recherche
$search = isset($_GET['search']) ? $_GET['search'] : '';
$order = isset($_GET['order']) ? $_GET['order'] : 'DESC';
$queryStr = "SELECT * FROM article";
$params = [];

if ($search) {
    $queryStr .= " WHERE nom_article LIKE :search";
    $params[':search'] = '%' . $search . '%';
}

if ($order === 'ASC') {
    $queryStr .= " ORDER BY prix ASC";
} else {
    $queryStr .= " ORDER BY prix DESC";
}

$query = $db->prepare($queryStr);
$query->execute($params);
$destinations = $query->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SPACE TRAVEL - Nos Destinations</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Audiowide&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&display=swap" rel="stylesheet">
</head>

<body>
<nav>
        <span class="name"><a href="index.php">SPACETRAVEL</a></span>
        <a href="index.php">Accueil</a>
        <a href="destinations.php">Les destinations</a>
        <a href="apropos.html">À propos de nous</a>
        <form action="destinations.php" method="GET" class="search-form">
        <input type="text" name="search" placeholder="Rechercher une destination...">
        <button type="submit">Rechercher</button>
    </form>
    </nav>

    <div class="container">
    <main>
        <div class="destinationpage">
            <h1>Nos Destinations</h1>
            <div class="filtersprice">
                <button id="ascButton">Prix Croissant</button>
                <button id="descButton">Prix Décroissant</button>
            </div>
        </div>

        <!-- Liste des destinations -->
        <section class="destinations-container">
            <div class="planete-container" id="planetecontainer">
                <?php
                if (empty($destinations)) {
                    echo '<p>Aucune destination trouvée.</p>';
                } else {
                foreach ($destinations as $destination) {
                    echo '<div class="planete">';
                    echo '<img src="images/' . $destination['image'] . '" alt="' . $destination['nom_article'] . '">';
                    echo '<h2>' . $destination['nom_article'] . '</h2>';
                    echo '<p>' . $destination['prix'] . '€</p>';
                    echo '<a href="article.php?id=' . $destination['article_ID'] . '" class="button">Détails</a>';
                    echo '</div>';
                }
            }
                ?>
            </div>
        </section>
    </main>
    </div>
    <footer>
        <a href="mentions_legales.html" alt="Accéder aux mentions légales du site">Mentions Légales</a>
        <a href="contacts.html" alt="Accéder à la page de contacts">Contacts</a>
        <a href="donnees_personnelles.html" alt="Accéder à la page des données personnelles">Données Personnelles</a>
        <a href="faq.html" alt="Accéder à la page de la FAQ">FAQ</a>
    </footer>

    <script>
        document.getElementById('ascButton').addEventListener('click', function() {
            window.location.href = '?order=ASC';
        });
        
        document.getElementById('descButton').addEventListener('click', function() {
            window.location.href = '?order=DESC';
        });
    </script>
</body>

</html>
