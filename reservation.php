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
$query = $db->prepare($queryStr);
$query->execute([':articleId' => $articleId]);

// Récupération des données de l'article
$article = $query->fetch(PDO::FETCH_ASSOC);

// Vérification si l'article existe
if (!$article) {
    die("Article non trouvé.");
}

// Si le formulaire est soumis
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Récupérer les données du formulaire
    $nom = $_POST['nom'];
    $prenom = $_POST['prenom'];
    $email = $_POST['email'];
    $tel = $_POST['tel'];
    $date_debut = $_POST['date_debut'];
    $nb_personne = $_POST['nb_personne'];

    // Convertir la date de début en objet DateTime
    $start = new DateTime($date_debut);

    // Ajouter la durée pour obtenir la date de fin
    $duration = new DateInterval('P' . $article['duree'] . 'D');
    $end = clone $start;
    $end->add($duration);
    $date_fin = $end->format('Y-m-d');

    // Envoi des emails
    $to = $email;
    $subject = "Réservation de votre voyage Space Travel confirmée";
    $message = "Félicitations ! Vous allez bientôt décoller pour un voyage dans l'espace ! Voici les détails de votre réservation:\n\n";
    $message .= "Planète: " . $article['nom_article'] . "\n";
    $message .= "Date de début: " . $date_debut . "\n";
    $message .= "Date de fin: " . $date_fin . "\n";
    $message .= "Durée: " . $article['duree'] . " jours\n";
    $message .= "Prix du voyage: " . $article['prix'] . "€\n";
    $headers = "From: spacetravel@contact.com";
    mail($to, $subject, $message, $headers);

    $to_admin = "etourneroche@gmail.com";
    $subject_admin = "Nouvelle réservation de voyage";
    $message_admin = "Une nouvelle réservation de voyage a été effectuée. Voici les détails de la réservation:\n\n";
    $message_admin .= "Client: " . $email . "\n";
    $message_admin .= "Planète: " . $article['nom_article'] . "\n";
    $message_admin .= "Date de début: " . $date_debut . "\n";
    $message_admin .= "Date de fin: " . $date_fin . "\n";
    $message_admin .= "Durée: " . $article['duree'] . " jours\n";
    $message_admin .= "Prix du voyage: " . $article['prix'] . "€\n";
    $headers = "From: spacetravel@contact.com";
    mail($to_admin, $subject_admin, $message_admin, $headers);

    // Insertion dans la base de données
    $insertQueryStr = "INSERT INTO reservation (nom, prenom, email, tel, date_debut, date_fin, nb_personne, article_ID) VALUES (:nom, :prenom, :email, :tel, :date_debut, :date_fin, :nb_personne, :article_ID)";
    $insertQuery = $db->prepare($insertQueryStr);
    $insertSuccess = $insertQuery->execute([
        ':nom' => $nom,
        ':prenom' => $prenom,
        ':email' => $email,
        ':tel' => $tel,
        ':date_debut' => $date_debut,
        ':date_fin' => $date_fin,
        ':nb_personne' => $nb_personne,
        ':article_ID' => $articleId
    ]);

    if ($insertSuccess) {
        // Redirection vers la page de confirmation avec les détails de la réservation
        header("Location: confirmation.php?nom=$nom&prenom=$prenom&email=$email&tel=$tel&date_debut=$date_debut&date_fin=$date_fin&nb_personne=$nb_personne");
        exit();
    } else {
        echo "<span class='error'>Erreur lors de la réservation. Veuillez remplir tous les champs.</span>";
    }
}
?>

<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SPACE TRAVEL - Réservation</title>
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Audiowide&display=swap" rel="stylesheet">
    <!-- <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300..700&display=swap" rel="stylesheet"> -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@200..700&display=swap" rel="stylesheet">
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
        <div class="reservation-page">
        <div class="reservation-container">
            <h2>Réserver: <?php echo htmlspecialchars($article['nom_article']); ?></h2>
            <form action="reservation.php?id=<?php echo $articleId; ?>" method="POST">
            <span id="prix"><?php echo htmlspecialchars($article['prix']); ?></span>
                <label for="nom">Nom:</label>
                <input type="text" id="nom" name="nom" placeholder="Votre nom" required>

                <label for="prenom">Prénom:</label>
                <input type="text" id="prenom" name="prenom" placeholder="Votre prénom" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="ledevcestdur@mail.com" required>

                <label for="tel">Téléphone:</label>
                <input type="text" id="tel" name="tel" placeholder="0601020304" required>

                <label for="date_debut">Date de début:</label>
                <input type="date" id="date_debut" name="date_debut" required>

                <label for="nb_personne">Nombre de personnes:</label>
                <input type="number" id="nb_personne" name="nb_personne" min="1" required>

                <button type="button" onclick="openModal()">Voir le récapitulatif</button>
                <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h3>Récapitulatif de la réservation</h3>
            <p id="recap">
            </p>
            <button onclick="submitForm()">Confirmer la réservation</button>
        </div>
    </div>
            </form>
        </div>
        </div>
    </main>
</div>
   

    <footer>
        <a href="apropos.html#mentions-legales" alt="Accéder aux mentions légales du site">Mentions Légales</a>
        <a href="contacts.html" alt="Accéder à la page de contacts">Contacts</a>
        <a href="donnees_personnelles.html" alt="Accéder à la page des données personnelles">Données Personnelles</a>
        <a href="faq.html" alt="Accéder à la page de la FAQ">FAQ</a>
    </footer>


<script>
    function openModal() {
    var nom = document.getElementById('nom').value;
    var prenom = document.getElementById('prenom').value;
    var email = document.getElementById('email').value;
    var tel = document.getElementById('tel').value;
    var date_debut = document.getElementById('date_debut').value;
    var nb_personne = parseInt(document.getElementById('nb_personne').value); // Convertir en nombre entier
    var prixTotal = parseFloat(document.getElementById('prix').textContent);

    // Calcul de la date de fin et de la durée du voyage
    var debut = new Date(date_debut);
    var duree = <?php echo $article['duree']; ?>; // Durée de la base de données
    var fin = new Date(debut);
    fin.setDate(debut.getDate() + duree);
    var date_fin = fin.toISOString().split('T')[0]; // Format AAAA-MM-JJ

    var recap = `
        <strong>Nom:</strong> ${nom} <br>
        <strong>Prénom:</strong> ${prenom} <br>
        <strong>Email:</strong> ${email} <br>
        <strong>Téléphone:</strong> ${tel} <br>
        <strong>Date de début:</strong> ${date_debut} <br>
        <strong>Date de fin:</strong> ${date_fin} <br>
        <strong>Durée du voyage:</strong> ${duree} jours<br>
        <strong>Nombre de personnes:</strong> ${nb_personne} <br>
        <strong>Prix total:</strong> ${prixTotal} € <br>
    `;

    document.getElementById('recap').innerHTML = recap;

    // Affichage de la fenêtre modale
    var modal = document.getElementById('myModal');
    modal.style.display = "block";
}

// Fonction pour fermer la fenêtre modale
var span = document.getElementsByClassName("close")[0];
span.onclick = function() {
    var modal = document.getElementById('myModal');
    modal.style.display = "none";
}

// Fonction pour fermer la fenêtre modale en cliquant à l'extérieur
window.onclick = function(event) {
    var modal = document.getElementById('myModal');
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
</body>

</html>
