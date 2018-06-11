-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 11, 2018 at 04:36 PM
-- Server version: 5.7.22-0ubuntu0.16.04.1
-- PHP Version: 7.0.30-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `update_at` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `author_id`, `created_at`, `update_at`, `title`, `content`, `category_id`) VALUES
(68, 2, '2018-06-10 20:20:38', '2018-06-11 13:15:54', 'La musculation', 'La musculation est un ensemble d\'exercices physiques visant le développement des muscles squelettiques, afin d\'acquérir plus de force, d\'endurance, de puissance, d\'explosivité ou de volume musculaire. Dans ces exercices, une force (par exemple la gravité, avec l\'utilisation des haltères ou du poids du corps) est opposée de manière répétitive à la force générée par la contraction des muscles. Cette activité est généralement pratiquée dans une salle de sport.\r\n\r\nSes bienfaits sont conséquents, tout d\'abord physiquement car on améliore sa silhouette, mais aussi mentalement. Elle permet également d\'améliorer sa santé, la circulation du sang, de lutter contre le mal de dos, contre le vieillissement.\r\n\r\nLa musculation est à la base de la pratique du culturisme et des plusieurs sports de force comme l\'haltérophilie. Elle est aussi une préparation physique dans de nombreux sports nécessitant une condition physique solide (notamment pour les sportifs de haut-niveau). La musculation douce fait aussi partie de nombreuses méthodes d\'amélioration de la condition physique (fitness, gymnastique) ou de méthodes de soin (kinésithérapie).', 3),
(69, 3, '2018-06-10 20:21:54', '2018-06-11 10:58:08', 'Ed Sheeran', 'Ed Sheeran naît le 17 février 1991 et grandit à Halifax, dans le lieu-dit de Maindreville, en Angleterre. Sa famille s\'installe ensuite à Framlingham, petite ville du Suffolk3,4. Il est d\'origine irlandaise par sa famille paternelle5. Membre d\'une chorale durant son enfance, il prend d\'abord des cours de violoncelle puis s\'initie à la musique populaire grâce à son oncle, qui lui offre une guitare « Little Martin LX1 ». Il prend ensuite des cours pour se perfectionner4.\r\n\r\nÀ l\'âge de 11 ans, il assiste à un concert de l\'auteur-compositeur irlandais Damien Rice et réalise qu\'il aimerait se lancer dans la chanson. Il sort ensuite à l\'âge de 13 ans l\'album The Orange Room. Il déménage à Londres, dans un appartement au-dessus du pub T-Bird dans le quartier de Finsbury Park6. Ed Sheeran quitte l\'école à 16 ans pour se consacrer à la musique. Il commence à se produire sur scène, notamment lors de soirées scènes libres ouvertes aux amateurs3.\r\nCarrière musicale\r\nLes débuts\r\n\r\nÀ partir de 2005 (à 14 ans), Ed Sheeran réalise une série de cinq EP auto-produits.\r\n\r\nIl signe un contrat avec le label Asylum Records, filiale d\'Atlantic Records, au début de l\'année 2011. Son premier album, +, sorti en septembre 2011, atteint la 1re place des ventes au Royaume-Uni7, où il figure parmi les dix meilleures ventes de l\'année 20118. L\'album connaît également le succès à l\'international (n°1 en Australie, n°5 aux Etats-Unis et au Canada...), atteignant les 4 millions de copies vendues9 grâce aux singles The A Team, You need me I don\'t need you, Lego House (qui se classent tous dans le Top 5 au Royaume-Uni), Drunk, Small Bump et Give me love.\r\n\r\nAprès avoir joué dans plusieurs festivals britanniques durant l\'été 2011, il est récompensé aux UK Festival Awards (en) dans la catégorie « jeune talent » 10. Fin 2011, le chanteur fonde le label Paw Print Records afin de rééditer ses cinq EP autoproduits avant sa signature chez Asylum11. Le 25 novembre, il se produit au Hallenstadion à Zurich lorsque Gary Lightbody (le leader de Snow Patrol)12 lui propose de participer à leur tournée aux États-Unis13.\r\n\r\nLors de l\'édition 2012 des Brit Awards, Ed Sheeran remporte deux récompenses : Meilleur artiste solo masculin britannique et Révélation de l\'année. Ses disques étaient également nommés dans les catégories Meilleur album et Meilleur single14.\r\n\r\nIl collabore alors avec les One Direction et écrit des chansons pour leurs albums Up All Night et Take Me Home. En 2012, il compose Everything Has Changed pour l\'album Red de Taylor Swift, et fait les premières parties de sa tournée 2013 Red Tour. Il se produit également lors de la cérémonie de clôture des Jeux olympiques d\'été de 2012 de Londres en interprétant Wish You Were Here de Pink Floyd, avec Mike Rutherford et Nick Mason15. Fin 2013, il signe la chanson I See Fire, générique de fin du film Le Hobbit : La Désolation de Smaug.', 4),
(70, 1, '2018-06-10 20:22:44', '2018-06-11 13:08:03', 'Deadpool le FILM', 'Le convoi d\'Ajax est attaqué par Deadpool. Il commence par massacrer les gardes à l\'intérieur d\'une voiture, avant de s\'en prendre au reste du convoi. Après une longue escarmouche, où il est contraint de n\'utiliser que les douze balles qu\'il lui reste, Deadpool capture Ajax (de son vrai nom Francis, ce que Deadpool ne cesse de lui rappeler). Après l\'intervention de Colossus et Negasonic venus empêcher Deadpool de causer plus de dégâts et le rallier à la cause des X-Men, Ajax parvient à s\'échapper en retirant le sabre de son épaule. Il apprend par la même occasion la véritable identité de Deadpool : Wade Wilson.\r\n\r\nEn flashbacks, on revient sur la vie de mercenaire de Wade Wilson et sur sa liaison avec sa petite amie Vanessa Carlysle, une ancienne prostituée avec laquelle il va vivre pendant un an avant de lui demander sa main. C\'est à la fin de cette année que le couple apprendra le cancer en phase terminale de Wade. Il choisit de suivre un inconnu qui lui propose un traitement qui fera de lui un super-héros. Il se porte volontaire pour le programme pour Vanessa.\r\n\r\nUne fois dans le laboratoire secret et miteux en sous-sol, les scientifiques dirigés par Ajax le torturent pour réveiller ses gènes mutants. Alors qu\'Ajax lui fait subir une énième séance de torture en le plaçant dans une machine qui, en filtrant l\'oxygène, l\'empêchera de respirer correctement et le fera suffoquer, son gène mutant se réveille finalement. La machine cause également de terribles dommages à son corps et le défigure. Par la même occasion, Ajax révèle que Wade ne sera jamais un héros : il compte lui mettre un collier de contrôle et en faire un esclave.\r\n\r\nRendu presque immortel, Wade s\'évade du laboratoire. Il rejoint ensuite le bar des mercenaires et se choisit un surnom, Deadpool1 avant de commencer à se constituer un costume sur les conseils de son ami barman, surnommé la Fouine. Il commence ensuite une lutte contre l\'organisation d\'Ajax afin de le retrouver : Ajax lui a avoué être le seul à pouvoir le guérir, lui permettant ainsi retrouver l\'amour de Vanessa à laquelle il n\'a pas donné signe de vie depuis.\r\n\r\nL\'histoire reprend alors son cours, et on voit Deadpool dans une sorte de maison délabrée tenue par Al, une vieille femme aveugle accro à la cocaïne qui lui sert de colocataire. Là-bas, il reprend des forces - il s\'est tranché la main pour échapper à Colossus - tandis qu\'Ajax se soigne de son côté. Ce dernier décide de kidnapper la petite amie de Deadpool, le forçant à intervenir dans un combat épique dans les ruines d\'un héliporteur du SHIELD. À la fin de ce combat durant lequel Vanessa manque de subir le même sort que Deadpool, ce dernier terrasse Ajax et le tue, après que celui-ci avoue lui avoir menti : il ne peut le guérir. Tout se termine néanmoins bien puisque Vanessa accepte la nouvelle apparence de Wade.', 2),
(76, 2, '2018-06-11 13:10:14', '2018-06-11 13:10:14', 'Crossfit', 'Le CrossFit est une méthode de conditionnement physique, de type entraînement croisé, ainsi que le nom de l\'entreprise qui promeut cette méthode et détient la marque.\r\n\r\nLe CrossFit combine principalement la force athlétique, l\'haltérophilie, la gymnastique et les sports d\'endurance1. Le mot CrossFit vient de Cross Fitness (en français, entraînement croisé), appelé ainsi parce qu\'il mélange différentes activités physiques et sportives préexistantes2.\r\n\r\nLes pratiquants de CrossFit courent, rament, grimpent à la corde, sautent, déplacent des objets, pratiquent des mouvements olympiques d\'haltérophilie ainsi que des exercices au poids du corps, utilisent des haltères, des anneaux de gymnastique, des boîtes, des girevoys, des sacs et tout autre objet pouvant servir de poids.\r\n\r\nLe CrossFit axe son fonctionnement autour de dix compétences athlétiques : endurance cardiovasculaire et respiratoire, endurance musculaire, force, souplesse, puissance, vitesse, agilité, psychomotricité, équilibre et précision.\r\n\r\nLe programme CrossFit veut augmenter la capacité de travail dans ces différents domaines en provoquant par les entraînements des adaptations neurologiques et hormonales au travers des différentes filières métaboliques3,4. Ceci afin de préparer ses pratiquants à s’adapter à n’importe quels efforts physiques rencontrés tous les jours grâce à la variété des entraînements, l’utilisation de mouvements poly-articulaires et l’intensité élevée du travail5,6.', 3),
(79, 2, '2018-06-11 16:08:23', '2018-06-11 16:08:23', 'Captain America LE FILM', 'Captain America: First Avenger ou Capitaine America : Le Premier Vengeur au Québec (Captain America: The First Avenger) est un film de super-héros américain réalisé par Joe Johnston, sorti en 2011. Il s\'agit de la 5e étape de l\'univers cinématographique Marvel et il fait partie de la phase I.\r\n\r\nLe film raconte l\'histoire de Steve Rogers, un jeune homme frêle de Brooklyn transformé en un super-soldat nommé Captain America durant la Seconde Guerre mondiale. Il doit notamment arrêter Crâne rouge, chef d\'HYDRA, qui a mis au point des armes surpuissantes en utilisant une mystérieuse source d\'énergie.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'John', 'Doe', 'Johdoo@gmail.com', 'john'),
(2, 'Victor', 'Hugo', 'victorhugo@gmail.com', 'victorhugo'),
(3, 'Joe', 'Dalton', 'JoeDalton@gmail.com', 'joedalton');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Jeux videos'),
(2, 'Film'),
(3, 'Sport'),
(4, 'Musique'),
(5, 'Informatique');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `created_at`, `pseudo`, `content`, `article_id`) VALUES
(17, '2018-06-10 20:22:58', 'Dayan', 'C\'est un superbe film ! +5', 70),
(18, '2018-06-10 20:26:16', 'Martin', 'Je pense que je vais m\'y mettre bientot a la musculation', 68),
(19, '2018-06-11 10:05:13', 'Martin', 'super film', 70),
(20, '2018-06-11 10:05:25', 'Jean', 'J\'aime bcp ce film a revoir', 70),
(21, '2018-06-11 10:56:25', 'Dayan', 'Super chanteur !!!', 69),
(24, '2018-06-11 15:11:32', '<h1>Titre</h1>', '<script>\r\nalert(\'tioto\');\r\n<script>', 68),
(25, '2018-06-11 16:19:06', 'gdfs', 'gdfgdfs', 70),
(26, '2018-06-11 16:20:13', 'gdfs', 'gdfgdfs', 70),
(27, '2018-06-11 16:20:32', 'fefez', 'fezfz', 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
