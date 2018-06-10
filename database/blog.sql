-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  Dim 10 juin 2018 à 20:27
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
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
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `author_id`, `created_at`, `update_at`, `title`, `content`, `category_id`) VALUES
(68, 2, '2018-06-10 20:20:38', '2018-06-10 20:20:38', 'La musculation', 'La musculation est un ensemble d\'exercices physiques visant le d&eacute;veloppement des muscles squelettiques, afin d\'acqu&eacute;rir plus de force, d\'endurance, de puissance, d\'explosivit&eacute; ou de volume musculaire. Dans ces exercices, une force (par exemple la gravit&eacute;, avec l\'utilisation des halt&egrave;res ou du poids du corps) est oppos&eacute;e de mani&egrave;re r&eacute;p&eacute;titive &agrave; la force g&eacute;n&eacute;r&eacute;e par la contraction des muscles. Cette activit&eacute; est g&eacute;n&eacute;ralement pratiqu&eacute;e dans une salle de sport.\r\n\r\nSes bienfaits sont cons&eacute;quents, tout d\'abord physiquement car on am&eacute;liore sa silhouette, mais aussi mentalement. Elle permet &eacute;galement d\'am&eacute;liorer sa sant&eacute;, la circulation du sang, de lutter contre le mal de dos, contre le vieillissement.\r\n\r\nLa musculation est &agrave; la base de la pratique du culturisme et des plusieurs sports de force comme l\'halt&eacute;rophilie. Elle est aussi une pr&eacute;paration physique dans de nombreux sports n&eacute;cessitant une condition physique solide (notamment pour les sportifs de haut-niveau). La musculation douce fait aussi partie de nombreuses m&eacute;thodes d\'am&eacute;lioration de la condition physique (fitness, gymnastique) ou de m&eacute;thodes de soin (kin&eacute;sith&eacute;rapie).', 3),
(69, 3, '2018-06-10 20:21:54', '2018-06-10 20:23:16', 'Ed Sheeran', 'Ed Sheeran na&icirc;t le 17 f&eacute;vrier 1991 et grandit &agrave; Halifax, dans le lieu-dit de Maindreville, en Angleterre. Sa famille s\'installe ensuite &agrave; Framlingham, petite ville du Suffolk3,4. Il est d\'origine irlandaise par sa famille paternelle5. Membre d\'une chorale durant son enfance, il prend d\'abord des cours de violoncelle puis s\'initie &agrave; la musique populaire gr&acirc;ce &agrave; son oncle, qui lui offre une guitare &laquo; Little Martin LX1 &raquo;. Il prend ensuite des cours pour se perfectionner4.\r\n\r\n&Agrave; l\'&acirc;ge de 11 ans, il assiste &agrave; un concert de l\'auteur-compositeur irlandais Damien Rice et r&eacute;alise qu\'il aimerait se lancer dans la chanson. Il sort ensuite &agrave; l\'&acirc;ge de 13 ans l\'album The Orange Room. Il d&eacute;m&eacute;nage &agrave; Londres, dans un appartement au-dessus du pub T-Bird dans le quartier de Finsbury Park6. Ed Sheeran quitte l\'&eacute;cole &agrave; 16 ans pour se consacrer &agrave; la musique. Il commence &agrave; se produire sur sc&egrave;ne, notamment lors de soir&eacute;es sc&egrave;nes libres ouvertes aux amateurs3.', 1),
(70, 1, '2018-06-10 20:22:44', '2018-06-10 20:22:44', 'Deadpool le FILM', 'Deadpool est un film de super-h&eacute;ros am&eacute;ricain r&eacute;alis&eacute; par Tim Miller, sorti en 2016.\r\n\r\nIl met en sc&egrave;ne le personnage du m&ecirc;me nom tir&eacute; des comics, interpr&eacute;t&eacute; par Ryan Reynolds, qu\'il avait d&eacute;j&agrave; incarn&eacute; en 2009, dans le film X-Men Origins: Wolverine. L\'histoire du film revient sur sa vie de mercenaire rencontrant l\'amour, avant d\'accepter un traitement exp&eacute;rimental contre le cancer qui pourrait le sauver, qui a en fait pour but de le transformer en esclave. Voyant le traitement le rendre pratiquement immortel gr&acirc;ce &agrave; un pouvoir de gu&eacute;rison acc&eacute;l&eacute;r&eacute; mais qui le d&eacute;figure, il s\'&eacute;vade et se met &agrave; la recherche de celui qui l\'a m&eacute;tamorphos&eacute;.\r\n\r\nD\'abord pr&eacute;sent&eacute; en avant-premi&egrave;re &agrave; Paris, le film sort en f&eacute;vrier 2016 et rencontre un &eacute;norme succ&egrave;s commercial avec plus de 783 millions de dollars de recettes mondiales, battant de nombreux records au box-office, notamment en devenant le neuvi&egrave;me plus grand succ&egrave;s cin&eacute;matographique de 2016 et le film le plus rentable de la franchise X-Men, en d&eacute;pit de son interdiction aux moins de 17 ans aux &Eacute;tats-Unis. Deadpool re&ccedil;oit par ailleurs des critiques plut&ocirc;t positives, qui saluent l\'humour, les s&eacute;quences d\'action et la performance de Reynolds.', 2);

-- --------------------------------------------------------

--
-- Structure de la table `author`
--

CREATE TABLE `author` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `author`
--

INSERT INTO `author` (`id`, `firstname`, `lastname`, `email`, `password`) VALUES
(1, 'John', 'Doe', 'Johdoo@gmail.com', 'john'),
(2, 'Victor', 'Hugo', 'victorhugo@gmail.com', 'victorhugo'),
(3, 'Joe', 'Dalton', 'JoeDalton@gmail.com', 'joedalton');

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Jeux videos'),
(2, 'Film'),
(3, 'Sport'),
(4, 'Musique'),
(5, 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `article_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `created_at`, `pseudo`, `content`, `article_id`) VALUES
(17, '2018-06-10 20:22:58', 'Dayan', 'C\'est un superbe film ! +5', 70),
(18, '2018-06-10 20:26:16', 'Martin', 'Je pense que je vais m\'y mettre bientot a la musculation', 68);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Index pour la table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_id` (`article_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
