<?php

// Connexion à la base de données
include 'connexion.php';

// Vérification des détails de la réservation
if (!isset($_GET['nom'], $_GET['prenom'], $_GET['email'], $_GET['tel'], $_GET['date_debut'], $_GET['date_fin'], $_GET['nb_personne'])) {
    die("Détails de la réservation manquants.");
}

$nom = htmlspecialchars($_GET['nom']);
$prenom = htmlspecialchars($_GET['prenom']);
$email = htmlspecialchars($_GET['email']);
$tel = htmlspecialchars($_GET['tel']);
$date_debut = htmlspecialchars($_GET['date_debut']);
$date_fin = htmlspecialchars($_GET['date_fin']);
$nb_personne = htmlspecialchars($_GET['nb_personne']);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmation de Réservation</title>
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
    <main>
        <div class="confirmation-page">
            <div class="confirmation-container">
                <h3>Réservation Confirmée</h3>
                <p>Merci pour votre réservation, <?php echo $prenom . " " . $nom; ?>.</p>
                <p>Voici les détails de votre réservation :</p>
                <ul>
                    <li><strong>Email :</strong> <?php echo $email; ?></li>
                    <li><strong>Téléphone :</strong> <?php echo $tel; ?></li>
                    <li><strong>Date de début :</strong> <?php echo $date_debut; ?></li>
                    <li><strong>Date de fin :</strong> <?php echo $date_fin; ?></li>
                    <li><strong>Nombre de personnes :</strong> <?php echo $nb_personne; ?></li>
                </ul>
                <p>Nous vous contacterons bientôt avec plus de détails.</p>
                <a href="index.php" class="button">Retour à l'accueil</a>
            </div>
        </div>
    </main>

    <footer>
        <a href="mentions_legales.html" alt="Accéder aux mentions légales du site">Mentions Légales</a>
        <a href="contacts.html" alt="Accéder à la page de contacts">Contacts</a>
        <a href="donnees_personnelles.html" alt="Accéder à la page des données personnelles">Données Personnelles</a>
        <a href="faq.html" alt="Accéder à la page de la FAQ">FAQ</a>
    </footer>
</body>
</html>
