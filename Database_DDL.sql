-- --------------------------------------------------------
-- Host:                         mydatabase.ctxb7zts2zyl.eu-central-1.rds.amazonaws.com
-- Server Version:               5.6.40-log - Source distribution
-- Server Betriebssystem:        Linux
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Exportiere Datenbank Struktur für CHASM
CREATE DATABASE IF NOT EXISTS `CHASM` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `CHASM`;

-- Exportiere Struktur von Tabelle CHASM.t_item
CREATE TABLE IF NOT EXISTS `t_item` (
  `item_id` varchar(255) NOT NULL,
  `value` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `image_ref` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle CHASM.t_item: ~11 rows (ungefähr)
/*!40000 ALTER TABLE `t_item` DISABLE KEYS */;
INSERT INTO `t_item` (`item_id`, `value`, `user_id`, `locked`, `image_ref`, `description`) VALUES
	('1', 1, '1', 0, '', 'NONE'),
	('4016262020591', 1, 'F2ECADDB-F4CC-4167-A340-531044C87002', 1, 'https://borsch-it.de/ch4sm/item-4016262020591.jpg', 'A Beer. Drink it!'),
	('41005941', 1337, '', 0, 'https://borsch-it.de/ch4sm/item-41005941.jpg', 'Water medium'),
	('41005958', 7, '', 0, 'https://borsch-it.de/ch4sm/item-41005958.jpg', 'Water with a blue lable.'),
	('4260107220015', 18, '', 0, 'https://borsch-it.de/ch4sm/item-4260107220015.jpg', 'Produktinformationen\r\n\r\nKategorie: Cola\r\nMenge / Grösse: 0,33 Liter\r\nStrichcode-Nummer: 4260107220015\r\n\r\nInhaltsstoffe / techn. Angaben*:\r\nWasser, Zucker, Kohlensäure, Farbstoff Ammonsulfit-Zuckerkulör, Säuerungsmittel Phosphorsäure, Koffein...'),
	('4260107220022', 4, '', 0, 'https://borsch-it.de/ch4sm/item-4260107220022.jpg', 'Fritz Cola - white'),
	('4260107221289', 2, '', 0, 'https://borsch-it.de/ch4sm/item-4260107221289.jpg', 'Mischmasch'),
	('4260178730109', 82, '', 0, 'https://borsch-it.de/ch4sm/item-4260178730109.jpg', 'Apfel-Schorle'),
	('4260178730123', 62, '', 0, 'https://borsch-it.de/ch4sm/item-4260178730123.jpg', 'Limo'),
	('4260178730437', 42, '', 0, 'https://borsch-it.de/ch4sm/item-4260178730437.jpg', 'Yet an other Limo '),
	('5740600510602', 0, '', 0, 'https://borsch-it.de/ch4sm/item-5740600510602.jpg', 'Carlsberg Beer');
/*!40000 ALTER TABLE `t_item` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle CHASM.t_questions
CREATE TABLE IF NOT EXISTS `t_questions` (
  `question_id` int(11) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `question` varchar(2000) DEFAULT NULL,
  `answer` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle CHASM.t_questions: ~24 rows (ungefähr)
/*!40000 ALTER TABLE `t_questions` DISABLE KEYS */;
INSERT INTO `t_questions` (`question_id`, `item_id`, `question`, `answer`) VALUES
	(1, '1', 'Is the object blue?', 0),
	(2, '5740600510602', 'Allow to dring and drive?', 0),
	(3, '41005958', 'Is it sparkling water?', 0),
	(4, '5740600510602', 'Altbier schmeckt besser als Köln?', 0),
	(5, '4016262020591', 'Allow to drink and drive?', 0),
	(23, '41005958', 'Is it a green bottle?', 0),
	(6, '41005941', 'CH4SM will rule the world?', 1),
	(8, '4260107221289', 'mVISE is cool?', 1),
	(9, '4260107220022', 'mVISE is cool?', 1),
	(10, '4260107220015', 'CH4SM will rule the world?', 1),
	(13, '4260178730437', 'mVISE is cool?', 1),
	(11, '4260178730109', 'mVISE is cool?', 1),
	(12, '4260178730123', 'mVISE is cool?', 1),
	(14, '4016262020591', 'CH4SM will rule the world?', 1),
	(15, '5740600510602', 'mVISE is cool?', 1),
	(16, '4016262020591', 'Does the ingredients match the rules of German Beer Purity Law?', 1),
	(17, '4016262020591', 'Is there a face on the bottle?', 1),
	(18, '4016262020591', 'Is there english text on the bottle?', 0),
	(19, '41005941', 'Is it sparkling water?', 1),
	(20, '41005941', 'Is there a website-URL on the bottle?', 1),
	(21, '41005941', 'Allow to drink and drive?', 0),
	(22, '41005958', 'Is the product produced in germany?', 1),
	(7, '41005958', 'CH4SM will rule the world?', 1),
	(24, '4260107220015', 'Is the product vegan?', 1);
/*!40000 ALTER TABLE `t_questions` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle CHASM.t_transaction
CREATE TABLE IF NOT EXISTS `t_transaction` (
  `user_id` varchar(255) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `value` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `signature` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle CHASM.t_transaction: ~6 rows (ungefähr)
/*!40000 ALTER TABLE `t_transaction` DISABLE KEYS */;
INSERT INTO `t_transaction` (`user_id`, `item_id`, `value`, `timestamp`, `signature`) VALUES
	('1', '1', 1, '2019-01-20 10:35:23', 'asdf'),
	('1', '1', 1, '2019-01-20 10:56:50', ''),
	('1', '4260178730437', 42, '2019-01-20 11:01:53', ''),
	('F2ECADDB-F4CC-4167-A340-531044C87002', '4260178730437', 42, '2019-01-20 11:02:42', ''),
	('F2ECADDB-F4CC-4167-A340-531044C87002', '4260178730437', 42, '2019-01-20 10:03:07', ''),
	('F2ECADDB-F4CC-4167-A340-531044C87002', '4260178730437', 42, '2019-01-20 10:18:48', '');
/*!40000 ALTER TABLE `t_transaction` ENABLE KEYS */;

-- Exportiere Struktur von Tabelle CHASM.t_user
CREATE TABLE IF NOT EXISTS `t_user` (
  `user_id` varchar(255) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Exportiere Daten aus Tabelle CHASM.t_user: ~3 rows (ungefähr)
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`user_id`, `score`) VALUES
	('1', 58),
	('2', 0),
	('F2ECADDB-F4CC-4167-A340-531044C87002', 126);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
