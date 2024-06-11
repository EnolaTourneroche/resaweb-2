-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 10 juin 2024 à 20:37
-- Version du serveur : 10.6.18-MariaDB
-- Version de PHP : 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tourneroche_resaweb`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `nom_article` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `article_ID` bigint(20) NOT NULL,
  `prix` decimal(10,0) NOT NULL,
  `duree` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`nom_article`, `description`, `image`, `article_ID`, `prix`, `duree`) VALUES
('Mercure', 'Embarquez à bord de notre vaisseau ultra-moderne, le Stellar Voyager, pour une aventure inoubliable vers Mercure, la planète la plus proche du Soleil.\r\n\r\n \r\nDécouvrez un monde de contrastes extrêmes où les températures varient de -173°C la nuit à 427°C le jour. Ses paysages sont marqués par des cratères immenses, témoins des nombreux impacts météoritiques, et des plaines de lave solidifiée, résultat de son passé volcanique intense. Admirez les spectaculaires falaises escarpées, certaines atteignant plusieurs kilomètres de hauteur, qui racontent l\'histoire de la contraction de la planète au fil des millénaires. \r\n\r\n\r\nSituée à environ 77 millions de kilomètres de la Terre, Mercure est désormais accessible en seulement un jour grâce à notre vaisseau voyageant à une vitesse exceptionnelle de 3.2 millions de km/h. \r\n\r\n\r\nÀ bord du Stellar Voyager, vous profiterez de cabines luxueuses avec des fenêtres panoramiques, vous permettant de vivre une expérience immersive et confortable. Détendez-vous dans nos salons d\'observation, où vous pourrez admirer la vue tout en dégustant des mets raffinés préparés par nos chefs étoilés. Nos spécialistes à bord vous fourniront des récits captivants sur la géologie et l\'histoire de Mercure, ajoutant une dimension éducative à votre voyage. Profitez également de nos espaces de détente, de notre bibliothèque interstellaire et des conférences tenues par des experts en astronomie. \r\n\r\n\r\nAvec Space Travel, vous frôlerez ce monde brûlant et glacé à la fois, vivant une expérience exclusive et incomparable, alliant aventure et confort de haut niveau.', 'mercure.png', 2, 30000, 2),
('Venus', 'Explorez les mystères de Vénus, la planète la plus brillante de notre ciel, à bord du Stellar Voyager. \r\n\r\n\r\nFrôlez cette étoile du matin et découvrez une atmosphère épaisse composée principalement de dioxyde de carbone, créant une serre naturelle avec des températures avoisinant les 465°C. Les nuages d\'acide sulfurique reflètent la lumière solaire, donnant à Vénus son éclat distinctif. En survolant cette planète, vous observerez des volcans gigantesques, des plaines de lave et des montagnes imposantes, preuve d\'une activité géologique encore méconnue. \r\n\r\n\r\nVénus se trouve à environ 41 millions de kilomètres de la Terre, et notre vaisseau vous y emmènera en seulement 14 heures, grâce à une vitesse de croisière de 3.4 millions de km/h. \r\n\r\n\r\nLe Stellar Voyager est équipé de technologies avancées pour assurer votre sécurité et votre confort, avec des espaces de détente luxueux et des fenêtres d\'observation à 360 degrés. Nos guides experts vous fourniront des informations fascinantes sur cette planète envoûtante, rendant votre voyage éducatif et captivant. Profitez de notre cuisine raffinée et de notre service personnalisé, garantissant une expérience de voyage inégalée. Détendez-vous dans nos suites luxueuses ou participez à nos ateliers interactifs sur l\'astronomie et la science des planètes. \r\n\r\n\r\nLaissez-vous émerveiller par ce monde à la fois envoûtant et redoutable, une aventure que seul Space Travel peut offrir.\r\n', 'venus.png', 3, 25000, 2),
('Terre', 'Redécouvrez notre magnifique planète bleue depuis l\'espace. \r\n\r\n\r\nÀ bord du Stellar Voyager, admirez la Terre dans toute sa splendeur, avec ses océans scintillants, ses continents verdoyants et ses majestueuses chaînes de montagnes. Observez les phénomènes météorologiques depuis une perspective unique, avec des tempêtes, des nuages et des aurores boréales visibles comme jamais auparavant. Ressentez l\'émotion de voir notre maison depuis l\'immensité de l\'espace, une expérience qui vous reconnectera profondément à notre monde.\r\n\r\n\r\nEn quelques heures seulement, le Stellar Voyager vous permet de quitter l\'orbite terrestre pour une vue imprenable. \r\n\r\n\r\nLes installations du Stellar Voyager, incluant des salons d\'observation et des suites spacieuses, vous garantiront un voyage confortable et mémorable. Profitez de notre cuisine raffinée et de nos services personnalisés pour une expérience de voyage incomparable. À bord, des experts partageront des informations fascinantes sur notre planète, enrichissant votre compréhension de la Terre. Vous pourrez également participer à des discussions et à des ateliers interactifs sur l\'astronomie et l\'écologie. \r\n\r\n\r\nAvec Space Travel, vivez une aventure à la fois émouvante et spectaculaire, redécouvrant la beauté et la fragilité de notre planète, le tout dans un cadre luxueux et sécurisé.', 'terre.png', 4, 15000, 1),
('Mars', 'Voyagez vers Mars, la planète rouge qui a inspiré tant de rêves et d\'explorations. \r\n\r\n\r\nÀ bord du Stellar Voyager, survolez ses paysages désertiques, ses volcans gigantesques comme Olympus Mons, le plus grand du système solaire, et ses canyons impressionnants, notamment Valles Marineris. Découvrez les calottes polaires glacées et les traces d\'anciens lits de rivières qui suggèrent un passé humide. \r\n\r\n\r\nSituée à environ 225 millions de kilomètres de la Terre, Mars est accessible en seulement 3 jours grâce à la vitesse phénoménale de 3.1 millions de km/h du Stellar Voyager. \r\n\r\n\r\nRessentez l\'excitation de voir de près cette planète qui pourrait un jour devenir une deuxième maison pour l\'humanité. Le Stellar Voyager offre des équipements de pointe, des cabines spacieuses et des salles d\'observation qui permettent une immersion totale dans la beauté martienne. Nos spécialistes à bord vous fourniront des récits captivants sur la géologie et l\'histoire de Mars, ajoutant une dimension éducative à votre voyage. Profitez de nos salons d\'observation, de notre bibliothèque interstellaire et de conférences tenues par des experts en exploration spatiale. \r\n\r\n\r\nAvec Space Travel, plongez dans l\'aventure martienne et laissez-vous séduire par son mystère et sa beauté, tout en profitant d\'un confort inégalé et d\'un service exceptionnel.\r\n', 'mars2.png', 5, 55000, 6),
('Jupiter', 'Approchez le géant gazeux Jupiter et ses bandes colorées fascinantes. \r\n\r\n\r\nÀ bord du Stellar Voyager, admirez la grandeur de la plus grande planète de notre système solaire, avec ses tempêtes gigantesques, y compris la célèbre Grande Tache Rouge, une tempête active depuis des siècles. Découvrez les nuages tourbillonnants de gaz et les éclairs impressionnants qui illuminent ses couches atmosphériques. \r\n\r\n\r\nSituée à environ 778 millions de kilomètres de la Terre, Jupiter est accessible en seulement 6 jours grâce à notre vaisseau voyageant à une vitesse de 3.2 millions de km/h. \r\n\r\n\r\nRessentez l\'émerveillement de frôler cette planète colossale et observez ses nombreuses lunes, chacune renfermant ses propres secrets, comme l\'océan sous-glaciaire d\'Europe. Le Stellar Voyager est conçu pour offrir une vue imprenable et un confort inégalé, avec des systèmes de stabilisation avancés pour une expérience de vol douce et sereine. Profitez de nos suites luxueuses, de notre cuisine gastronomique et de conférences sur la science des planètes géantes et leurs satellites. Nos experts partageront des histoires captivantes sur les découvertes récentes et les mystères encore non résolus de Jupiter. \r\n\r\n\r\nAvec Space Travel, explorez Jupiter et ses merveilles célestes, un spectacle grandiose à couper le souffle.\r\n', 'jupiter2.png', 6, 85000, 12),
('Saturne', 'Venez contempler les majestueux anneaux de Saturne à bord du Stellar Voyager. \r\n\r\n\r\nSurvolez cette planète aux anneaux de glace et de roche, une vision d\'une beauté époustouflante. Observez les subtiles variations de couleur et de structure au sein des anneaux, révélant leur complexité et leur délicatesse. Explorez les lunes fascinantes de Saturne, comme Titan avec ses lacs de méthane liquide et Encelade avec ses geysers d\'eau. Ressentez l\'émerveillement de voir ces structures délicates et complexes qui entourent ce géant gazeux. \r\n\r\n\r\nSaturne se trouve à environ 1,2 milliard de kilomètres de la Terre, et notre vaisseau vous y emmènera en 10 jours grâce à une vitesse de 3.2 millions de km/h. \r\n\r\n\r\nÀ bord du Stellar Voyager, vous bénéficiez d\'un confort exceptionnel et d\'une technologie avancée qui vous permet de vivre chaque instant en toute sécurité et sérénité. Nos salons panoramiques et nos espaces de détente vous permettront de savourer chaque moment du voyage. Participez à nos ateliers sur les systèmes d\'anneaux planétaires et leurs formations. \r\n\r\n\r\nAvec Space Travel, plongez dans un univers de splendeur et de mystère, là où les rêves deviennent réalité, tout en profitant d\'un service de première classe et d\'une expérience inégalée.', 'saturne2.png', 7, 150000, 20),
('Lune', 'Redécouvrez notre satellite naturel, la Lune, avec Space Travel. Embarquez à bord du Stellar Voyager pour un voyage captivant autour de ce corps céleste fascinant. \r\n\r\n\r\nSurvolez ses vastes mers de basalte sombre, ses cratères lumineux et ses montagnes majestueuses. Observez de près les sites des missions Apollo et les nouvelles bases de recherche scientifique. Ressentez l\'émerveillement de voir de près la surface lunaire, marquée par des milliards d\'années d\'histoire cosmique. \r\n\r\n\r\nSituée à environ 384 400 kilomètres de la Terre, la Lune est accessible en seulement 2 heures grâce à une vitesse de 768 000 km/h. \r\n\r\n\r\nÀ bord du Stellar Voyager, profitez de suites luxueuses et d\'espaces communs élégants qui rendent le voyage aussi plaisant que la destination. Nos guides experts vous fourniront des informations fascinantes sur la géologie et l\'histoire de la Lune, rendant votre voyage éducatif et captivant. Participez à des ateliers interactifs sur l\'astronomie et la science lunaire. Profitez de notre cuisine raffinée et de nos services personnalisés pour une expérience de voyage incomparable. \r\n\r\n\r\nAvec Space Travel, vivez une aventure lunaire mémorable, alliant découverte et confort.', 'lune2.png', 8, 20000, 1),
('Callisto', 'Découvrez Callisto, l\'une des lunes de Jupiter, avec Space Travel. Embarquez à bord du Stellar Voyager pour un voyage vers ce monde glacé. \r\n\r\n\r\nSurvolez une surface semée de cratères anciens qui racontent une histoire de collisions cosmiques. Callisto est l\'une des lunes les plus criblées de cratères du système solaire, offrant un aperçu unique de l\'histoire primordiale du système jovien. Découvrez les vastes plaines glacées et les structures géologiques complexes, résultat d\'une activité intérieure passée. \r\n\r\n\r\nCallisto, située à environ 628 millions de kilomètres de la Terre, est accessible en seulement 8 jours grâce à une vitesse de croisière de 3.3 millions de km/h. \r\n\r\n\r\nRessentez l\'excitation de découvrir ce monde éloigné, baigné dans l\'ombre majestueuse de Jupiter. À bord du Stellar Voyager, vous profiterez d\'un confort et d\'une sécurité optimaux, avec des vues panoramiques et des technologies avancées. Nos spécialistes à bord partageront des récits captivants sur la géologie et l\'histoire de Callisto, ajoutant une dimension éducative à votre voyage. Détendez-vous dans nos salons d\'observation et savourez notre cuisine gastronomique. \r\n\r\n\r\nAvec Space Travel, laissez-vous séduire par l\'inconnu et vivez une aventure cosmique sans précédent, où chaque instant est une découverte.', 'callisto.png', 9, 110000, 16);

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `reservationID` bigint(20) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `nb_personne` int(11) NOT NULL,
  `article_ID` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`reservationID`, `nom`, `prenom`, `email`, `tel`, `date_debut`, `date_fin`, `nb_personne`, `article_ID`) VALUES
(43, 'jrj', 'jfkhe', 'jehfkjh@gmail.com', '918748726', '2024-05-08', '2024-05-31', 3, 2),
(44, 'rams', 'rams', 'ram@gmail.com', '298379573', '2024-11-21', '2024-12-10', 5, 4),
(45, 'Tahar', 'Jeremy', 'jeremy.tahar12@gmail.com', '0782029563', '2024-06-04', '2025-05-31', 1, 9),
(46, 'Tahar', 'Jérémy', 'jeremy.tahar12@gmail.com', '0782029563', '2024-06-01', '2024-06-01', 1, 3),
(47, 'Tahar', 'Jérémy', 'jeremy.tahar12@gmail.com', '0782029563', '2024-06-01', '2024-06-02', 1, 6),
(48, 'Tahar', 'Jérémy', 'jeremy.tahar12@gmail.com', '0782029563', '2024-06-11', '2024-06-18', 1, 5),
(49, 'Tahar', 'Jérémy', 'jeremy.tahar12@gmail.com', '0782029563', '2024-06-11', '2024-06-18', 1, 5),
(50, 'Tahar', 'Jérémy', 'jeremy.tahar12@gmail.com', '0782029563', '2024-06-11', '2024-06-14', 1, 6),
(51, 'Tahar', 'Jérémy', 'jeremy.tahar12@gmail.com', '0782029563', '2024-06-01', '2024-06-05', 1, 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`article_ID`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservationID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `article_ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservationID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
