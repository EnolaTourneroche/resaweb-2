<?php
// Connexion à la base de données
include 'connexion.php';

// Récupération de l'ID de l'article
$articleId = isset($_GET['id']) ? intval($_GET['id']) : 0;

// Vérification de la validité de l'ID
if ($articleId <= 0) {
    die("ID de l'article invalide.");
}

// Préparation de la requête pour obtenir les détails de l'article
$queryStr = "SELECT * FROM article WHERE article_ID = :articleId";
// fait un select de article et de agence pour avoir le nom de l'agence plus simple
$query = $db->prepare($queryStr);
$query->execute([':articleId' => $articleId]);

// Récupération des données de l'article
$article = $query->fetch(PDO::FETCH_ASSOC);

// Vérification si l'article existe
if (!$article) {
    die("Article non trouvé.");
}
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SPACE TRAVEL - <?php echo htmlspecialchars($article['nom_article']); ?></title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Audiowide&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&display=swap" rel="stylesheet">
</head>

<body>
<nav>
        <span class="name"><a href="index.php">SPACETRAVEL</a></span>
        <a href="index.php">Accueil</a>
        <a href="destinations.php">Les destinations</a>
        <a href="#">À propos de nous</a>
        <a href="#">Contacts</a>
        <form action="destinations.php" method="GET" class="search-form">
        <input type="text" name="search" placeholder="Rechercher une destination...">
        <button type="submit">Rechercher</button>
    </form>
    </nav>

    <div class="container">
    <main>
        <div class="articlepage">
            <div class="article-info">
            <h3><?php echo htmlspecialchars($article['nom_article']); ?></h3>
                    <p><strong>Description:</strong> <?php echo nl2br(htmlspecialchars($article['description'])); ?></p>
                    <p><strong>Prix:</strong> <?php echo htmlspecialchars($article['prix']); ?>€</p>
                    <a href="reservation.php?id=<?php echo $article['article_ID']; ?>" class="button">Réserver</a>
                </div>
            <div class="article-details">
                <img src="images/<?php echo htmlspecialchars($article['image']); ?>" alt="<?php echo htmlspecialchars($article['nom_article']); ?>">
                </div>
            </div>
    </main>
    </div>

    <footer>
        <a href="mentions_legales.html" alt="Accéder aux mentions légales du site">Mentions Légales</a>
        <a href="contacts.html" alt="Accéder à la page de contacts">Contacts</a>
        <a href="donnees_personnelles.html" alt="Accéder à la page des données personnelles">Données Personnelles</a>
        <a href="faq.html" alt="Accéder à la page de la FAQ">FAQ</a>
    </footer>
</body>

</html>
