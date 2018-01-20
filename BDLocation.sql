-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Sam 20 Janvier 2018 à 14:03
-- Version du serveur :  5.7.20-0ubuntu0.17.04.1
-- Version de PHP :  7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `BDLocation`
--

-- --------------------------------------------------------

--
-- Structure de la table `BIEN`
--

CREATE TABLE `BIEN` (
  `idBien` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `montantLoc` varchar(15) NOT NULL,
  `commssion` varchar(15) NOT NULL,
  `etat` int(2) NOT NULL,
  `idTypeBien` int(11) NOT NULL,
  `idProprietaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `BIEN`
--

INSERT INTO `BIEN` (`idBien`, `nom`, `adresse`, `montantLoc`, `commssion`, `etat`, `idTypeBien`, `idProprietaire`) VALUES
(1, '2 chambres, salon', 'Colobane', '110 000f', '20 000f', 0, 1, 3),
(2, '5 chambres avec garage', 'Colobane', '1 800 000f', '80 000f', 0, 2, 3),
(3, '5 chambres avec garage', 'Colobane', '1 800 000f', '80 000f', 0, 2, 3),
(4, '5 chambres avec garage', 'Colobane', '1 800 000f', '80 000f', 0, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `PROPRIETAIRE`
--

CREATE TABLE `PROPRIETAIRE` (
  `idProprietaire` int(11) NOT NULL,
  `numCNI` varchar(17) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `tel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `PROPRIETAIRE`
--

INSERT INTO `PROPRIETAIRE` (`idProprietaire`, `numCNI`, `nom`, `tel`) VALUES
(1, '12002020', 'Ousmane Ndiaye', '777777777'),
(2, '12002020', 'Ndeye Amy Lam', '85852585'),
(3, '0000000000', 'Seydou', '7777777');

-- --------------------------------------------------------

--
-- Structure de la table `TYPEBIEN`
--

CREATE TABLE `TYPEBIEN` (
  `idTypeBien` int(11) NOT NULL,
  `nom` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `TYPEBIEN`
--

INSERT INTO `TYPEBIEN` (`idTypeBien`, `nom`) VALUES
(1, 'Appartement'),
(2, 'maison');

-- --------------------------------------------------------

--
-- Structure de la table `UTILISATEUR`
--

CREATE TABLE `UTILISATEUR` (
  `idUser` int(11) NOT NULL,
  `nomComplet` varchar(50) NOT NULL,
  `login` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `profil` varchar(15) NOT NULL,
  `etat` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `UTILISATEUR`
--

INSERT INTO `UTILISATEUR` (`idUser`, `nomComplet`, `login`, `password`, `profil`, `etat`) VALUES
(14, 'Ousmane Ndiaye', 'Aumones', 'Ma deesse', 'Administrateur', '-1'),
(15, 'Jean Noel Ndiaye', 'jean2018', 'jeanleboss', 'Admin', '-1'),
(18, 'Babacar Gueye', 'bapsfrance', 'babacar', 'Admin', '-1'),
(19, 'Jules Gomis', 'julejulo', 'julejulo', 'Gerant', '-1');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `BIEN`
--
ALTER TABLE `BIEN`
  ADD PRIMARY KEY (`idBien`),
  ADD KEY `idTypeBien` (`idTypeBien`),
  ADD KEY `idProprietaire` (`idProprietaire`);

--
-- Index pour la table `PROPRIETAIRE`
--
ALTER TABLE `PROPRIETAIRE`
  ADD PRIMARY KEY (`idProprietaire`);

--
-- Index pour la table `TYPEBIEN`
--
ALTER TABLE `TYPEBIEN`
  ADD PRIMARY KEY (`idTypeBien`);

--
-- Index pour la table `UTILISATEUR`
--
ALTER TABLE `UTILISATEUR`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `BIEN`
--
ALTER TABLE `BIEN`
  MODIFY `idBien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `PROPRIETAIRE`
--
ALTER TABLE `PROPRIETAIRE`
  MODIFY `idProprietaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `TYPEBIEN`
--
ALTER TABLE `TYPEBIEN`
  MODIFY `idTypeBien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `UTILISATEUR`
--
ALTER TABLE `UTILISATEUR`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `BIEN`
--
ALTER TABLE `BIEN`
  ADD CONSTRAINT `BIEN_ibfk_1` FOREIGN KEY (`idTypeBien`) REFERENCES `TYPEBIEN` (`idTypeBien`),
  ADD CONSTRAINT `BIEN_ibfk_2` FOREIGN KEY (`idProprietaire`) REFERENCES `PROPRIETAIRE` (`idProprietaire`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
