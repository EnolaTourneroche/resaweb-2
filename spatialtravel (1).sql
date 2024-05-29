-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 22 mai 2024 à 13:18
-- Version du serveur : 5.7.39
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `spatialtravel`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `nom_article` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `article_ID` int(11) NOT NULL,
  `prix` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`nom_article`, `description`, `image`, `article_ID`, `prix`) VALUES
('Decentraland Villa', 'Premièrement, en tant que résident de Decentraland, vous pourriez réserver cette maison pour une période de temps définie. Une fois à l\'intérieur, vous avez la liberté d\'explorer chaque recoin, que ce soit seul ou avec des amis. Vous pourriez choisir de vous reposer dans le jardin paisible, de jouer à des jeux virtuels dans la salle de divertissement, ou même de créer de l\'art dans un atelier numérique.\r\n\r\nImaginez-vous inviter des amis pour une soirée de jeux de société virtuels, ou organiser une séance de méditation en groupe dans le jardin zen de la maison. Vous pourriez également y héberger des événements spéciaux, des fêtes, des expositions d\'art, des concerts ou des conférences, invitant ainsi des résidents de Decentraland du monde entier à se joindre à vous.\r\n\r\nLa maison elle-même pourrait être personnalisée selon vos goûts, avec des options infinies de décoration, de mobilier et de design intérieur. Peut-être même pourriez-vous intégrer des technologies interactives telles que la réalité virtuelle ou la réalité augmentée pour une expérience encore plus immersive.', 'maison-decentraland.png', 1, '300'),
('Decentraland Terrain', 'Ce terrain réservable devient un espace où les résidents de Decentraland peuvent se retrouver pour diverses activités. Que vous choisissiez d\'explorer en solitaire ou de vous aventurer avec des amis, les possibilités sont infinies.\r\n\r\nTout d\'abord, le terrain pourrait être aménagé pour offrir des espaces de détente, comme des jardins zen, des coins tranquilles pour méditer, ou même des hamacs suspendus entre les arbres. Vous pourriez vous retirer dans cet environnement apaisant pour échapper au tumulte du monde réel et vous ressourcer.\r\n\r\nEnsuite, il pourrait également être équipé pour le divertissement. Vous pourriez installer des équipements de jeu, comme des terrains de sport virtuels, des simulateurs de course, ou des aires de jeux interactives. Ces installations offriraient aux résidents de Decentraland l\'opportunité de se défier les uns les autres dans des compétitions amicales ou de simplement s\'amuser ensemble.\r\n\r\nDe plus, le terrain pourrait être conçu pour l\'exploration, avec des sentiers sinueux à travers des paysages fantastiques, des grottes cachées à découvrir, ou des panoramas à couper le souffle à admirer. Les résidents pourraient partir à l\'aventure seuls ou en groupe, cherchant des trésors cachés ou des mystères à résoudre.\r\n\r\nEnfin, ce terrain réservable pourrait devenir un lieu de rassemblement pour des événements communautaires, tels que des fêtes, des concerts, des projections de films ou des conférences. Les résidents pourraient se réunir pour célébrer, échanger des idées, ou tout simplement se connecter les uns aux autres dans ce monde virtuel.', 'decentraland-terre.webp', 2, '500'),
('Sandbox Maison', 'Tout d\'abord, imaginez l\'intérieur de cette maison virtuelle, soigneusement aménagé pour offrir des espaces de repos et de loisirs. Des chambres confortables avec des vues panoramiques sur le paysage environnant invitent à la relaxation. Un salon équipé de jeux interactifs, de consoles de réalité virtuelle ou même d\'un simulateur de vol offre des heures de divertissement.\r\n\r\nEn sortant à l\'extérieur, les résidents peuvent profiter d\'un jardin luxuriant, aménagé avec des coins ombragés pour se détendre, des sentiers sinueux à explorer et peut-être même un étang où nager. Les possibilités de personnalisation sont infinies, permettant aux résidents de créer un espace qui correspond parfaitement à leurs goûts et à leur style.\r\n\r\nEn plus d\'être un lieu de repos et de divertissement, cette maison réservable est également une porte d\'entrée vers l\'aventure. Les résidents peuvent partir à la découverte du vaste monde de Sandbox.', 'sandbo- maison.jpg', 3, '300'),
('Sandbox Terrain', 'Tout d\'abord, visualisez les possibilités offertes par ce terrain. Vous pourriez l\'aménager avec une cabane rustique pour vous reposer, des hamacs entre les arbres pour la sieste, ou même une terrasse en bois surplombant un paysage spectaculaire. Chaque recoin peut être conçu pour répondre à vos besoins et à vos envies, que ce soit pour méditer, lire un livre, ou simplement contempler la beauté de l\'environnement.\r\n\r\nEnsuite, imaginez les activités ludiques que vous pourriez organiser sur ce terrain. Des jeux interactifs comme des puzzles, des énigmes à résoudre, ou même des jeux de rôle peuvent être installés pour divertir les visiteurs. Vous pourriez également créer des zones dédiées à des activités spécifiques, comme un terrain de sport pour des matchs amicaux ou un espace pour des jeux de société virtuels.\r\n\r\nEn sortant à l\'extérieur, le terrain peut devenir un point de départ pour l\'exploration de l\'univers étendu de Sandbox. Vous pourriez partir à l\'aventure seul ou en groupe, découvrir des secrets cachés, des trésors enfouis, ou même rencontrer d\'autres joueurs sur le chemin. Chaque exploration promet des découvertes excitantes et des rencontres inattendues.', 'sandbox-terrain.jpg', 4, '500'),
('Horizon Villa', 'Cette maison réservable devient un sanctuaire personnel dans le monde numérique d\'Horizon, où les résidents peuvent se retirer pour une multitude d\'activités. Que ce soit pour se détendre seul après une journée bien remplie ou pour partager des moments de plaisir avec des amis, cette maison offre une myriade de possibilités.\r\n\r\nTout d\'abord, imaginez l\'intérieur de cette maison virtuelle. Vous pourriez la décorer selon vos goûts, avec des meubles confortables, des œuvres d\'art uniques et des éléments de design qui reflètent votre style personnel. Des chambres chaleureuses invitent à la détente, tandis qu\'un salon équipé de consoles de jeux, de films en réalité virtuelle ou de jeux de société offre des heures de divertissement.\r\n\r\nEn sortant à l\'extérieur, les résidents peuvent profiter d\'un jardin luxuriant, d\'une terrasse ensoleillée ou d\'un balcon offrant une vue imprenable sur le paysage environnant. Ces espaces extérieurs peuvent être aménagés avec des coins de repos, des aires de jeux interactives ou même des jardins zen pour méditer.\r\n\r\nEn plus d\'être un lieu de repos et de divertissement, cette maison réservable est également une porte d\'entrée vers l\'aventure. Les résidents peuvent partir à la découverte du vaste monde d\'Horizon, explorer des terrains variés, découvrir des trésors cachés et rencontrer d\'autres joueurs en chemin. Que ce soit en solo ou en groupe, chaque exploration promet des découvertes passionnantes et des moments inoubliables.', 'horizon-maison.png', 5, '300'),
('Horizon Terrain ', 'Ce terrain réservable devient un espace personnel où les résidents d\'Horizon peuvent se retirer pour une variété d\'activités. Que ce soit pour se détendre en solitaire après une journée bien remplie ou pour partager des moments de plaisir avec des amis, ce terrain offre une multitude de possibilités.\r\n\r\nImaginez l\'aménagement de ce terrain selon vos préférences. Vous pourriez y construire une villa luxueuse, une cabane rustique ou même une maison futuriste avec des fonctionnalités technologiques avancées. Chaque détail, des jardins soigneusement entretenus aux terrasses spacieuses, peut être personnalisé pour créer un espace qui vous ressemble.\r\n\r\nÀ l\'intérieur de ce terrain, vous pourriez créer des espaces de détente, de divertissement et d\'exploration. Des salons confortables équipés de consoles de jeux vidéo, de bibliothèques virtuelles ou même de cinémas privés offrent des possibilités de divertissement infinies. Des jardins intérieurs, des serres exotiques ou des musées virtuels peuvent également être aménagés pour satisfaire votre curiosité et votre envie d\'explorer.', 'horizon-worlds.webp', 6, '500'),
('Minecraft Terrain', 'Dans ce village réservable de Minecraft VR, les joueurs peuvent se retirer pour se détendre en solitaire ou partager des moments avec des amis. Les différentes structures, comme les maisons, la taverne, le marché et la salle commune, offrent des possibilités de personnalisation pour créer une atmosphère unique. À l\'intérieur, les espaces de repos et de loisirs, ainsi que les activités comme les jeux de société, invitent à s\'amuser. En explorant les environs, les joueurs peuvent découvrir des trésors cachés et rencontrer des villageois amicaux. Ce village peut également servir de lieu de rassemblement pour la communauté, avec des événements spéciaux et des tournois organisés pour partager des expériences et créer des souvenirs ensemble.', 'mincraft-vr.jpg', 8, '500'),
('Microsoft Maison', 'Cette maison réservable devient un véritable havre de paix dans le monde numérique de Microsoft Mesh, où les utilisateurs peuvent se retirer pour se détendre en solitaire ou partager des moments de convivialité avec des amis, des collègues ou des membres de leur famille, peu importe où ils se trouvent dans le monde réel.\r\n\r\nÀ l\'intérieur de cette maison virtuelle, les utilisateurs peuvent trouver une multitude d\'espaces conçus pour répondre à leurs besoins et à leurs envies. Des pièces confortables équipées de canapés moelleux et de cheminées virtuelles invitent à la détente, tandis que des salles de jeux équipées de consoles de jeux vidéo, de tables de ping-pong virtuelles ou même de simulateurs de réalité augmentée offrent des heures de divertissement.\r\n\r\nEn sortant à l\'extérieur, les utilisateurs peuvent explorer les environs de leur maison virtuelle. Que ce soit pour se promener dans un jardin luxuriant, admirer la vue depuis un balcon panoramique ou partir à l\'aventure à travers des paysages numériques spectaculaires, chaque exploration promet des découvertes fascinantes et des moments inoubliables.\r\n\r\nEn plus d\'être un lieu de repos et de divertissement, cette maison réservable peut également servir de lieu de rencontre pour la communauté de Microsoft Mesh. Des événements spéciaux, des conférences, des séminaires ou même des concerts virtuels peuvent être organisés, offrant aux utilisateurs l\'opportunité de se connecter, de partager des expériences et de créer des souvenirs ensemble, le tout dans un environnement numérique immersif et interactif.', 'microsoft-maison.png', 9, '300'),
('The Pickaxe Master', 'The Pickaxe Master est une marque de jeux qui se concentre sur les jeux sur le thème de l\'exploitation minière. C\'est le premier jeu minier de The Sandbox et aussi la première adaptation d\'un jeu de société dans le métaverse.\r\n\r\nCette montagne mythique a été construite avec un dévouement et une attention incroyable aux détails, tout en présentant des mécanismes logiques révolutionnaires que l\'on pensait impossibles sur Game Maker. Vous ne trouverez aucun autre jeu comme Pickaxe Master - Misty Mountain.\r\n\r\nÊtes-vous prêt à exploiter dans le métaverse ?', 'the-pickaxe-master.avif', 9, '50'),
('Atari\'s-Sunnyvale', 'Atari Sunnyvale est le lieu où le jeu rétro rencontre le futur : un hommage aux origines d\'Atari et un témoignage du potentiel infini du métaverse.', 'Atari\'s-Sunnyvale.avif', 10, '60'),
('Temple-of-Dum-Dum', 'Bienvenue dans la jungle! Devenez un aventurier en pénétrant dans le légendaire TEMPLE DE DUM-DUM. Est-ce vraiment une ruine antique ? Un lieu mystérieux resté intact dans un coin secret du bac à sable ? Ou a-t-il été construit, pierre par pierre artificiellement vieillie, par le Dr Bomkus pour y tenir son troisième procès ? Tout ce que vous savez, c\'est que c\'est une course qui demandera toutes vos compétences et techniques, et que le seul trésor à trouver est le BLACK CRYSTAL promis au concurrent le plus rapide. Et quel trésor c\'est ! Il y aura des récompenses pour les joueurs qui se sont approchés mais n\'ont pas gagné. Connaissant Bomkus, ils sont probablement constitués des richesses qu\'il a pillées dans le temple.', 'Temple-of-Dum-Dum.avif', 11, '40'),
('The-Laboratory', 'Le laboratoire est désormais en désordre. C\'est votre seule et unique chance d\'échapper au laboratoire, à l\'expérience cruelle, à la captivité sans fin. Traversez le laboratoire et trouvez votre chemin pour sortir.\r\n\r\nMéfiez-vous du danger qui patrouille autour du laboratoire. Vous ne saurez jamais quand ils perdront le contrôle et vous prendront la vie.\r\n\r\nSurveillez vos pas et trouvez la sortie vers la liberté. Bonne chance...', 'Cryptic-Escape-The-Laboratory.avif', 12, '20'),
('Rapide Rumble', 'Êtes-vous la personne la plus rapide et la plus agile du Metaverse ?\r\n\r\nSi vous pensez l’être, mesurez-vous aux autres dans cet environnement qui mettra vos compétences à l’épreuve. Rapid Rumble est une expérience de course compétitive qui rassemble jusqu\'à 10 joueurs.', 'Rapid Rumble.avif', 13, '40'),
('The sewer', 'Coupé du monde extérieur, vous devez rassembler votre courage et exploiter vos extraordinaires compétences en parkour pour défier leur emprise de fer et vous lancer dans un périlleux voyage vers la liberté. Chaque pas et chaque saut deviennent cruciaux alors que vous franchissez des obstacles dangereux, échappez aux poursuivants acharnés et surmontez les sinistres pièges de la secte.\r\n\r\nAlors que les ombres des ténèbres se profilent, vous devez repousser vos limites physiques et mentales, perfectionner votre agilité et votre résilience pour déjouer vos ravisseurs. Les croyances tordues et le pouvoir malveillant de la secte menacent de vous consumer, mais à chaque geste audacieux, vous vous rapprochez de la rupture des chaînes de leur contrôle.\r\n\r\n\r\n Parviendrez-vous à rassembler la force, l\'agilité et la détermination nécessaires pour échapper aux ténèbres et récupérer votre liberté ? La réponse est en vous.', 'The sewer.avif', 14, '80'),
('Meaning of Life', 'Résolvez le puzzle du labyrinthe et découvrez le sens de la vie !', 'MAZE.avif', 15, '65'),
('THE UNDERWATCH', 'MAZE RUN', 'THE UNDERWATCH.avif', 16, '75'),
('The Walking Dead', '??Trouvez-vous au seuil d’un règlement de survivants qui a prospéré, mais à peine. Ils en ont vu assez pour se méfier des nouveaux arrivants, alors ils ne vous font pas confiance... pour le moment. Dans ce cadre de l\'expérience The Walking Dead, vous rencontrerez des personnages comme Michonne, Rick Grimes et Negan, accomplissant des quêtes qui affecteront votre position auprès d\'eux et feront vos premières impressions dans le grand monde. Vous rencontrerez de nouveaux personnages en difficulté au quotidien et vous aiderez même quelqu\'un à prendre une décision dramatique.  ', 'walking-dead.avif', 17, '200'),
('HODL Island', 'découvrez l\'ile perdue, explorer et amusez vous !!!', 'HODL-Island.avif', 18, '150'),
('HOUSE ISLAND', 'profiter dans cette magnifique villa avec vos amis ou vos proche.', 'HOUSE-ISLAND.avif', 19, '120'),
('EVEREST | Camp ', 'Félicitations, vous êtes parvenus en toute sécurité au Camp , le point le plus élevé accessible pour l\'instant car les camps supérieurs n\'ont pas encore été installés. Prenez un repos bien mérité et explorez les merveilles de l\'Everest, mais soyez prudent : cet endroit abrite bien plus que de simples grimpeurs.', 'Everest.avif', 20, '30');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `reservationID` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `tel` varchar(10) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `nb_personne` int(11) NOT NULL,
  `article_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`reservationID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `reservationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
