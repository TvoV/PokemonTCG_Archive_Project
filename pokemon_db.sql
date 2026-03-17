-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 17. Mrz 2026 um 16:09
-- Server-Version: 10.4.32-MariaDB
-- PHP-Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `new_pokemon_db`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `cards`
--

CREATE TABLE `cards` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `card_number` int(11) NOT NULL,
  `rarity_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `element_id` int(11) NOT NULL,
  `hp_value` int(11) NOT NULL,
  `card_photo` varchar(255) NOT NULL,
  `set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `cards`
--

INSERT INTO `cards` (`ID`, `name`, `card_number`, `rarity_id`, `type_id`, `element_id`, `hp_value`, `card_photo`, `set_id`) VALUES
(1335, 'Clefable', 1, 1, 1, 6, 70, '/php_project/Codebase/Assets/Jungle_1999/1_thumb.png', 2),
(1336, 'Electrode', 2, 1, 1, 5, 90, '/php_project/Codebase/Assets/Jungle_1999/2_thumb.png', 2),
(1337, 'Flareon', 3, 1, 1, 3, 70, '/php_project/Codebase/Assets/Jungle_1999/3_thumb.png', 2),
(1338, 'Jolteon', 4, 1, 1, 5, 70, '/php_project/Codebase/Assets/Jungle_1999/4_thumb.png', 2),
(1339, 'Kangaskhan', 5, 1, 1, 6, 90, '/php_project/Codebase/Assets/Jungle_1999/5_thumb.png', 2),
(1340, 'Mr. Mime', 6, 1, 1, 7, 40, '/php_project/Codebase/Assets/Jungle_1999/6_thumb.png', 2),
(1341, 'Nidoqueen', 7, 1, 1, 2, 90, '/php_project/Codebase/Assets/Jungle_1999/7_thumb.png', 2),
(1342, 'Pidgeot', 8, 1, 1, 6, 80, '/php_project/Codebase/Assets/Jungle_1999/8_thumb.png', 2),
(1343, 'Pinsir', 9, 1, 1, 2, 60, '/php_project/Codebase/Assets/Jungle_1999/9_thumb.png', 2),
(1344, 'Scyther', 10, 1, 1, 2, 70, '/php_project/Codebase/Assets/Jungle_1999/10_thumb.png', 2),
(1345, 'Snorlax', 11, 1, 1, 6, 90, '/php_project/Codebase/Assets/Jungle_1999/11_thumb.png', 2),
(1346, 'Vaporeon', 12, 1, 1, 4, 80, '/php_project/Codebase/Assets/Jungle_1999/12_thumb.png', 2),
(1347, 'Venomoth', 13, 1, 1, 2, 70, '/php_project/Codebase/Assets/Jungle_1999/13_thumb.png', 2),
(1348, 'Victreebel', 14, 1, 1, 2, 80, '/php_project/Codebase/Assets/Jungle_1999/14_thumb.png', 2),
(1349, 'Vileplume', 15, 1, 1, 2, 80, '/php_project/Codebase/Assets/Jungle_1999/15_thumb.png', 2),
(1350, 'Wigglytuff', 16, 1, 1, 6, 80, '/php_project/Codebase/Assets/Jungle_1999/16_thumb.png', 2),
(1351, 'Clefable', 17, 2, 1, 6, 70, '/php_project/Codebase/Assets/Jungle_1999/17_thumb.png', 2),
(1352, 'Electrode', 18, 2, 1, 5, 90, '/php_project/Codebase/Assets/Jungle_1999/18_thumb.png', 2),
(1353, 'Flareon', 19, 2, 1, 3, 70, '/php_project/Codebase/Assets/Jungle_1999/19_thumb.png', 2),
(1354, 'Jolteon', 20, 2, 1, 5, 70, '/php_project/Codebase/Assets/Jungle_1999/20_thumb.png', 2),
(1355, 'Kangaskhan', 21, 2, 1, 6, 90, '/php_project/Codebase/Assets/Jungle_1999/21_thumb.png', 2),
(1356, 'Mr. Mime', 22, 2, 1, 7, 40, '/php_project/Codebase/Assets/Jungle_1999/22_thumb.png', 2),
(1357, 'Nidoqueen', 23, 2, 1, 2, 90, '/php_project/Codebase/Assets/Jungle_1999/23_thumb.png', 2),
(1358, 'Pidgeot', 24, 2, 1, 6, 80, '/php_project/Codebase/Assets/Jungle_1999/24_thumb.png', 2),
(1359, 'Pinsir', 25, 2, 1, 2, 60, '/php_project/Codebase/Assets/Jungle_1999/25_thumb.png', 2),
(1360, 'Scyther', 26, 2, 1, 2, 70, '/php_project/Codebase/Assets/Jungle_1999/26_thumb.png', 2),
(1361, 'Snorlax', 27, 2, 1, 6, 90, '/php_project/Codebase/Assets/Jungle_1999/27_thumb.png', 2),
(1362, 'Vaporeon', 28, 2, 1, 4, 80, '/php_project/Codebase/Assets/Jungle_1999/28_thumb.png', 2),
(1363, 'Venomoth', 29, 2, 1, 2, 70, '/php_project/Codebase/Assets/Jungle_1999/29_thumb.png', 2),
(1364, 'Victreebel', 30, 2, 1, 2, 80, '/php_project/Codebase/Assets/Jungle_1999/30_thumb.png', 2),
(1365, 'Vileplume', 31, 2, 1, 2, 80, '/php_project/Codebase/Assets/Jungle_1999/31_thumb.png', 2),
(1366, 'Wigglytuff', 32, 2, 1, 6, 80, '/php_project/Codebase/Assets/Jungle_1999/32_thumb.png', 2),
(1367, 'Butterfree', 33, 3, 1, 2, 70, '/php_project/Codebase/Assets/Jungle_1999/33_thumb.png', 2),
(1368, 'Dodrio', 34, 3, 1, 6, 70, '/php_project/Codebase/Assets/Jungle_1999/34_thumb.png', 2),
(1369, 'Exeggutor', 35, 3, 1, 2, 80, '/php_project/Codebase/Assets/Jungle_1999/35_thumb.png', 2),
(1370, 'Fearow', 36, 3, 1, 6, 70, '/php_project/Codebase/Assets/Jungle_1999/36_thumb.png', 2),
(1371, 'Gloom', 37, 3, 1, 2, 60, '/php_project/Codebase/Assets/Jungle_1999/37_thumb.png', 2),
(1372, 'Lickitung', 38, 3, 1, 6, 90, '/php_project/Codebase/Assets/Jungle_1999/38_thumb.png', 2),
(1373, 'Marowak', 39, 3, 1, 1, 60, '/php_project/Codebase/Assets/Jungle_1999/39_thumb.png', 2),
(1374, 'Nidorina', 40, 3, 1, 2, 70, '/php_project/Codebase/Assets/Jungle_1999/40_thumb.png', 2),
(1375, 'Parasect', 41, 3, 1, 2, 60, '/php_project/Codebase/Assets/Jungle_1999/41_thumb.png', 2),
(1376, 'Persian', 42, 3, 1, 6, 70, '/php_project/Codebase/Assets/Jungle_1999/42_thumb.png', 2),
(1377, 'Primeape', 43, 3, 1, 1, 70, '/php_project/Codebase/Assets/Jungle_1999/43_thumb.png', 2),
(1378, 'Rapidash', 44, 3, 1, 3, 70, '/php_project/Codebase/Assets/Jungle_1999/44_thumb.png', 2),
(1379, 'Rhydon', 45, 3, 1, 1, 100, '/php_project/Codebase/Assets/Jungle_1999/45_thumb.png', 2),
(1380, 'Seaking', 46, 3, 1, 4, 70, '/php_project/Codebase/Assets/Jungle_1999/46_thumb.png', 2),
(1381, 'Tauros', 47, 3, 1, 6, 60, '/php_project/Codebase/Assets/Jungle_1999/47_thumb.png', 2),
(1382, 'Weepinbell', 48, 3, 1, 2, 70, '/php_project/Codebase/Assets/Jungle_1999/48_thumb.png', 2),
(1383, 'Bellsprout', 49, 4, 1, 2, 40, '/php_project/Codebase/Assets/Jungle_1999/49_thumb.png', 2),
(1384, 'Cubone', 50, 4, 1, 1, 40, '/php_project/Codebase/Assets/Jungle_1999/50_thumb.png', 2),
(1385, 'Eevee', 51, 4, 1, 6, 50, '/php_project/Codebase/Assets/Jungle_1999/51_thumb.png', 2),
(1386, 'Exeggcute', 52, 4, 1, 2, 50, '/php_project/Codebase/Assets/Jungle_1999/52_thumb.png', 2),
(1387, 'Goldeen', 53, 4, 1, 4, 40, '/php_project/Codebase/Assets/Jungle_1999/53_thumb.png', 2),
(1388, 'Jigglypuff', 54, 4, 1, 6, 60, '/php_project/Codebase/Assets/Jungle_1999/54_thumb.png', 2),
(1389, 'Mankey', 55, 4, 1, 1, 30, '/php_project/Codebase/Assets/Jungle_1999/55_thumb.png', 2),
(1390, 'Meowth', 56, 4, 1, 6, 50, '/php_project/Codebase/Assets/Jungle_1999/56_thumb.png', 2),
(1391, 'Nidoran', 57, 4, 1, 2, 60, '/php_project/Codebase/Assets/Jungle_1999/57_thumb.png', 2),
(1392, 'Oddish', 58, 4, 1, 2, 50, '/php_project/Codebase/Assets/Jungle_1999/58_thumb.png', 2),
(1393, 'Paras', 59, 4, 1, 2, 40, '/php_project/Codebase/Assets/Jungle_1999/59_thumb.png', 2),
(1394, 'Pikachu', 60, 4, 1, 5, 50, '/php_project/Codebase/Assets/Jungle_1999/60_thumb.png', 2),
(1395, 'Rhyhorn', 61, 4, 1, 1, 70, '/php_project/Codebase/Assets/Jungle_1999/61_thumb.png', 2),
(1396, 'Spearow', 62, 4, 1, 6, 50, '/php_project/Codebase/Assets/Jungle_1999/62_thumb.png', 2),
(1397, 'Venonat', 63, 4, 1, 2, 60, '/php_project/Codebase/Assets/Jungle_1999/63_thumb.png', 2),
(1398, 'Poké Ball', 64, 4, 2, 8, 0, '/php_project/Codebase/Assets/Jungle_1999/64_thumb.png', 2),
(1399, 'Alakazam', 1, 1, 1, 7, 80, '/php_project/Codebase/Assets/Baseset_1999/1_thumb.png', 3),
(1400, 'Blastoise', 2, 1, 1, 4, 100, '/php_project/Codebase/Assets/Baseset_1999/2_thumb.png', 3),
(1401, 'Chansey', 3, 1, 1, 6, 120, '/php_project/Codebase/Assets/Baseset_1999/3_thumb.png', 3),
(1402, 'Charizard', 4, 1, 1, 3, 120, '/php_project/Codebase/Assets/Baseset_1999/4_thumb.png', 3),
(1403, 'Clefairy', 5, 1, 1, 6, 40, '/php_project/Codebase/Assets/Baseset_1999/5_thumb.png', 3),
(1404, 'Gyarados', 6, 1, 1, 4, 100, '/php_project/Codebase/Assets/Baseset_1999/6_thumb.png', 3),
(1405, 'Hitmonchan', 7, 1, 1, 1, 70, '/php_project/Codebase/Assets/Baseset_1999/7_thumb.png', 3),
(1406, 'Machamp', 8, 1, 1, 1, 100, '/php_project/Codebase/Assets/Baseset_1999/8_thumb.png', 3),
(1407, 'Magneton', 9, 1, 1, 5, 60, '/php_project/Codebase/Assets/Baseset_1999/9_thumb.png', 3),
(1408, 'Mewtwo', 10, 1, 1, 7, 60, '/php_project/Codebase/Assets/Baseset_1999/10_thumb.png', 3),
(1409, 'Nidoking', 11, 1, 1, 2, 90, '/php_project/Codebase/Assets/Baseset_1999/11_thumb.png', 3),
(1410, 'Ninetales', 12, 1, 1, 3, 80, '/php_project/Codebase/Assets/Baseset_1999/12_thumb.png', 3),
(1411, 'Poliwrath', 13, 1, 1, 4, 90, '/php_project/Codebase/Assets/Baseset_1999/13_thumb.png', 3),
(1412, 'Raichu', 14, 1, 1, 5, 80, '/php_project/Codebase/Assets/Baseset_1999/14_thumb.png', 3),
(1413, 'Venusaur', 15, 1, 1, 2, 100, '/php_project/Codebase/Assets/Baseset_1999/15_thumb.png', 3),
(1414, 'Zapdos', 16, 1, 1, 5, 90, '/php_project/Codebase/Assets/Baseset_1999/16_thumb.png', 3),
(1415, 'Beedrill', 17, 2, 1, 2, 80, '/php_project/Codebase/Assets/Baseset_1999/17_thumb.png', 3),
(1416, 'Dragonair', 18, 2, 1, 6, 80, '/php_project/Codebase/Assets/Baseset_1999/18_thumb.png', 3),
(1417, 'Dugtrio', 19, 2, 1, 1, 70, '/php_project/Codebase/Assets/Baseset_1999/19_thumb.png', 3),
(1418, 'Electabuzz', 20, 2, 1, 5, 70, '/php_project/Codebase/Assets/Baseset_1999/20_thumb.png', 3),
(1419, 'Electrode', 21, 2, 1, 5, 80, '/php_project/Codebase/Assets/Baseset_1999/21_thumb.png', 3),
(1420, 'Pidgeotto', 22, 2, 1, 6, 60, '/php_project/Codebase/Assets/Baseset_1999/22_thumb.png', 3),
(1421, 'Arcanine', 23, 3, 1, 3, 100, '/php_project/Codebase/Assets/Baseset_1999/23_thumb.png', 3),
(1422, 'Charmeleon', 24, 3, 1, 3, 80, '/php_project/Codebase/Assets/Baseset_1999/24_thumb.png', 3),
(1423, 'Dewgong', 25, 3, 1, 4, 80, '/php_project/Codebase/Assets/Baseset_1999/25_thumb.png', 3),
(1424, 'Dratini', 26, 3, 1, 6, 40, '/php_project/Codebase/Assets/Baseset_1999/26_thumb.png', 3),
(1425, 'Farfetch\'d', 27, 3, 1, 6, 50, '/php_project/Codebase/Assets/Baseset_1999/27_thumb.png', 3),
(1426, 'Growlithe', 28, 3, 1, 3, 60, '/php_project/Codebase/Assets/Baseset_1999/28_thumb.png', 3),
(1427, 'Haunter', 29, 3, 1, 7, 60, '/php_project/Codebase/Assets/Baseset_1999/29_thumb.png', 3),
(1428, 'Ivysaur', 30, 3, 1, 2, 60, '/php_project/Codebase/Assets/Baseset_1999/30_thumb.png', 3),
(1429, 'Jynx', 31, 3, 1, 7, 70, '/php_project/Codebase/Assets/Baseset_1999/31_thumb.png', 3),
(1430, 'Kadabra', 32, 3, 1, 7, 60, '/php_project/Codebase/Assets/Baseset_1999/32_thumb.png', 3),
(1431, 'Kakuna', 33, 3, 1, 2, 80, '/php_project/Codebase/Assets/Baseset_1999/33_thumb.png', 3),
(1432, 'Machoke', 34, 3, 1, 1, 80, '/php_project/Codebase/Assets/Baseset_1999/34_thumb.png', 3),
(1433, 'Magikarp', 35, 3, 1, 4, 30, '/php_project/Codebase/Assets/Baseset_1999/35_thumb.png', 3),
(1434, 'Magmar', 36, 3, 1, 3, 50, '/php_project/Codebase/Assets/Baseset_1999/36_thumb.png', 3),
(1435, 'Nidorino', 37, 3, 1, 2, 60, '/php_project/Codebase/Assets/Baseset_1999/37_thumb.png', 3),
(1436, 'Poliwhirl', 38, 3, 1, 4, 60, '/php_project/Codebase/Assets/Baseset_1999/38_thumb.png', 3),
(1437, 'Porygon', 39, 3, 1, 6, 30, '/php_project/Codebase/Assets/Baseset_1999/39_thumb.png', 3),
(1438, 'Raticate', 40, 3, 1, 6, 60, '/php_project/Codebase/Assets/Baseset_1999/40_thumb.png', 3),
(1439, 'Seel', 41, 3, 1, 4, 60, '/php_project/Codebase/Assets/Baseset_1999/41_thumb.png', 3),
(1440, 'Wartortle', 42, 3, 1, 4, 70, '/php_project/Codebase/Assets/Baseset_1999/42_thumb.png', 3),
(1441, 'Abra', 43, 4, 1, 7, 30, '/php_project/Codebase/Assets/Baseset_1999/43_thumb.png', 3),
(1442, 'Bulbasaur', 44, 4, 1, 2, 40, '/php_project/Codebase/Assets/Baseset_1999/44_thumb.png', 3),
(1443, 'Caterpie', 45, 4, 1, 2, 40, '/php_project/Codebase/Assets/Baseset_1999/45_thumb.png', 3),
(1444, 'Charmander', 46, 4, 1, 3, 50, '/php_project/Codebase/Assets/Baseset_1999/46_thumb.png', 3),
(1445, 'Diglett', 47, 4, 1, 1, 30, '/php_project/Codebase/Assets/Baseset_1999/47_thumb.png', 3),
(1446, 'Doduo', 48, 4, 1, 6, 50, '/php_project/Codebase/Assets/Baseset_1999/48_thumb.png', 3),
(1447, 'Drowzee', 49, 4, 1, 7, 50, '/php_project/Codebase/Assets/Baseset_1999/49_thumb.png', 3),
(1448, 'Gastly', 50, 4, 1, 7, 30, '/php_project/Codebase/Assets/Baseset_1999/50_thumb.png', 3),
(1449, 'Koffing', 51, 4, 1, 2, 50, '/php_project/Codebase/Assets/Baseset_1999/51_thumb.png', 3),
(1450, 'Machop', 52, 4, 1, 1, 50, '/php_project/Codebase/Assets/Baseset_1999/52_thumb.png', 3),
(1451, 'Magnemite', 53, 4, 1, 5, 40, '/php_project/Codebase/Assets/Baseset_1999/53_thumb.png', 3),
(1452, 'Metapod', 54, 4, 1, 2, 70, '/php_project/Codebase/Assets/Baseset_1999/54_thumb.png', 3),
(1453, 'Nidoran', 55, 4, 1, 2, 40, '/php_project/Codebase/Assets/Baseset_1999/55_thumb.png', 3),
(1454, 'Onix', 56, 4, 1, 1, 90, '/php_project/Codebase/Assets/Baseset_1999/56_thumb.png', 3),
(1455, 'Pidgey', 57, 4, 1, 6, 40, '/php_project/Codebase/Assets/Baseset_1999/57_thumb.png', 3),
(1456, 'Pikachu', 58, 4, 1, 5, 40, '/php_project/Codebase/Assets/Baseset_1999/58_thumb.png', 3),
(1457, 'Poliwag', 59, 4, 1, 4, 40, '/php_project/Codebase/Assets/Baseset_1999/59_thumb.png', 3),
(1458, 'Ponyta', 60, 4, 1, 3, 40, '/php_project/Codebase/Assets/Baseset_1999/60_thumb.png', 3),
(1459, 'Rattata', 61, 4, 1, 6, 30, '/php_project/Codebase/Assets/Baseset_1999/61_thumb.png', 3),
(1460, 'Sandshrew', 62, 4, 1, 1, 40, '/php_project/Codebase/Assets/Baseset_1999/62_thumb.png', 3),
(1461, 'Squirtle', 63, 4, 1, 4, 40, '/php_project/Codebase/Assets/Baseset_1999/63_thumb.png', 3),
(1462, 'Starmie', 64, 4, 1, 4, 60, '/php_project/Codebase/Assets/Baseset_1999/64_thumb.png', 3),
(1463, 'Staryu', 65, 4, 1, 4, 40, '/php_project/Codebase/Assets/Baseset_1999/65_thumb.png', 3),
(1464, 'Tangela', 66, 4, 1, 2, 50, '/php_project/Codebase/Assets/Baseset_1999/66_thumb.png', 3),
(1465, 'Voltorb', 67, 4, 1, 5, 40, '/php_project/Codebase/Assets/Baseset_1999/67_thumb.png', 3),
(1466, 'Vulpix', 68, 4, 1, 3, 50, '/php_project/Codebase/Assets/Baseset_1999/68_thumb.png', 3),
(1467, 'Weedle', 69, 4, 1, 2, 40, '/php_project/Codebase/Assets/Baseset_1999/69_thumb.png', 3),
(1468, 'Clefairy Doll', 70, 2, 2, 8, 10, '/php_project/Codebase/Assets/Baseset_1999/70_thumb.png', 3),
(1469, 'Computer Search', 71, 2, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/71_thumb.png', 3),
(1470, 'Devolution Spray', 72, 2, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/72_thumb.png', 3),
(1471, 'Imposter Professor Oak', 73, 2, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/73_thumb.png', 3),
(1472, 'Item Finder', 74, 2, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/74_thumb.png', 3),
(1473, 'Lass', 75, 2, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/75_thumb.png', 3),
(1474, 'Pokémon Breeder', 76, 2, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/76_thumb.png', 3),
(1475, 'Pokémon Trader', 77, 2, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/77_thumb.png', 3),
(1476, 'Scoop Up', 78, 2, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/78_thumb.png', 3),
(1477, 'Super Energy Removal', 79, 2, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/79_thumb.png', 3),
(1478, 'Defender', 80, 3, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/80_thumb.png', 3),
(1479, 'Energy Retrieval', 81, 3, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/81_thumb.png', 3),
(1480, 'Full Heal', 82, 3, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/82_thumb.png', 3),
(1481, 'Maintenance', 83, 3, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/83_thumb.png', 3),
(1482, 'PlusPower', 84, 3, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/84_thumb.png', 3),
(1483, 'Pokémon Center', 85, 3, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/85_thumb.png', 3),
(1484, 'Pokémon Flute', 86, 3, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/86_thumb.png', 3),
(1485, 'Pokédex', 87, 3, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/87_thumb.png', 3),
(1486, 'Professor Oak', 88, 3, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/88_thumb.png', 3),
(1487, 'Revive', 89, 3, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/89_thumb.png', 3),
(1488, 'Super Potion', 90, 3, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/90_thumb.png', 3),
(1489, 'Bill', 91, 4, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/91_thumb.png', 3),
(1490, 'Energy Removal', 92, 4, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/92_thumb.png', 3),
(1491, 'Gust of Wind', 93, 4, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/93_thumb.png', 3),
(1492, 'Potion', 94, 4, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/94_thumb.png', 3),
(1493, 'Switch', 95, 4, 2, 8, 0, '/php_project/Codebase/Assets/Baseset_1999/95_thumb.png', 3),
(1494, 'Double Colorless Energy', 96, 3, 3, 6, 0, '/php_project/Codebase/Assets/Baseset_1999/96_thumb.png', 3),
(1495, 'Fighting Energy', 97, 4, 3, 1, 0, '/php_project/Codebase/Assets/Baseset_1999/97_thumb.png', 3),
(1496, 'Fire Energy', 98, 4, 3, 3, 0, '/php_project/Codebase/Assets/Baseset_1999/98_thumb.png', 3),
(1497, 'Grass Energy', 99, 4, 3, 2, 0, '/php_project/Codebase/Assets/Baseset_1999/99_thumb.png', 3),
(1498, 'Lightning Energy', 100, 4, 3, 5, 0, '/php_project/Codebase/Assets/Baseset_1999/100_thumb.png', 3),
(1499, 'Psychic Energy', 101, 4, 3, 7, 0, '/php_project/Codebase/Assets/Baseset_1999/101_thumb.png', 3),
(1500, 'Water Energy', 102, 4, 3, 4, 0, '/php_project/Codebase/Assets/Baseset_1999/102_thumb.png', 3),
(1501, 'Aerodactyl', 1, 1, 1, 1, 60, '/php_project/Codebase/Assets/Fossil_1999/1_thumb.png', 4),
(1502, 'Articuno', 2, 1, 1, 4, 70, '/php_project/Codebase/Assets/Fossil_1999/2_thumb.png', 4),
(1503, 'Ditto', 3, 1, 1, 6, 50, '/php_project/Codebase/Assets/Fossil_1999/3_thumb.png', 4),
(1504, 'Dragonite', 4, 1, 1, 6, 100, '/php_project/Codebase/Assets/Fossil_1999/4_thumb.png', 4),
(1505, 'Gengar', 5, 1, 1, 7, 80, '/php_project/Codebase/Assets/Fossil_1999/5_thumb.png', 4),
(1506, 'Haunter', 6, 1, 1, 7, 50, '/php_project/Codebase/Assets/Fossil_1999/6_thumb.png', 4),
(1507, 'Hitmonlee', 7, 1, 1, 1, 60, '/php_project/Codebase/Assets/Fossil_1999/7_thumb.png', 4),
(1508, 'Hypno', 8, 1, 1, 7, 90, '/php_project/Codebase/Assets/Fossil_1999/8_thumb.png', 4),
(1509, 'Kabutops', 9, 1, 1, 1, 60, '/php_project/Codebase/Assets/Fossil_1999/9_thumb.png', 4),
(1510, 'Lapras', 10, 1, 1, 4, 80, '/php_project/Codebase/Assets/Fossil_1999/10_thumb.png', 4),
(1511, 'Magneton', 11, 1, 1, 5, 80, '/php_project/Codebase/Assets/Fossil_1999/11_thumb.png', 4),
(1512, 'Moltres', 12, 1, 1, 3, 70, '/php_project/Codebase/Assets/Fossil_1999/12_thumb.png', 4),
(1513, 'Muk', 13, 1, 1, 2, 70, '/php_project/Codebase/Assets/Fossil_1999/13_thumb.png', 4),
(1514, 'Raichu', 14, 1, 1, 5, 90, '/php_project/Codebase/Assets/Fossil_1999/14_thumb.png', 4),
(1515, 'Zapdos', 15, 1, 1, 5, 80, '/php_project/Codebase/Assets/Fossil_1999/15_thumb.png', 4),
(1516, 'Aerodactyl', 16, 2, 1, 1, 60, '/php_project/Codebase/Assets/Fossil_1999/16_thumb.png', 4),
(1517, 'Articuno', 17, 2, 1, 4, 70, '/php_project/Codebase/Assets/Fossil_1999/17_thumb.png', 4),
(1518, 'Ditto', 18, 2, 1, 6, 50, '/php_project/Codebase/Assets/Fossil_1999/18_thumb.png', 4),
(1519, 'Dragonite', 19, 2, 1, 6, 100, '/php_project/Codebase/Assets/Fossil_1999/19_thumb.png', 4),
(1520, 'Gengar', 20, 2, 1, 7, 80, '/php_project/Codebase/Assets/Fossil_1999/20_thumb.png', 4),
(1521, 'Haunter', 21, 2, 1, 7, 50, '/php_project/Codebase/Assets/Fossil_1999/21_thumb.png', 4),
(1522, 'Hitmonlee', 22, 2, 1, 1, 60, '/php_project/Codebase/Assets/Fossil_1999/22_thumb.png', 4),
(1523, 'Hypno', 23, 2, 1, 7, 90, '/php_project/Codebase/Assets/Fossil_1999/23_thumb.png', 4),
(1524, 'Kabutops', 24, 2, 1, 1, 60, '/php_project/Codebase/Assets/Fossil_1999/24_thumb.png', 4),
(1525, 'Lapras', 25, 2, 1, 4, 80, '/php_project/Codebase/Assets/Fossil_1999/25_thumb.png', 4),
(1526, 'Magneton', 26, 2, 1, 5, 80, '/php_project/Codebase/Assets/Fossil_1999/26_thumb.png', 4),
(1527, 'Moltres', 27, 2, 1, 3, 70, '/php_project/Codebase/Assets/Fossil_1999/27_thumb.png', 4),
(1528, 'Muk', 28, 2, 1, 2, 70, '/php_project/Codebase/Assets/Fossil_1999/28_thumb.png', 4),
(1529, 'Raichu', 29, 2, 1, 5, 90, '/php_project/Codebase/Assets/Fossil_1999/29_thumb.png', 4),
(1530, 'Zapdos', 30, 2, 1, 5, 80, '/php_project/Codebase/Assets/Fossil_1999/30_thumb.png', 4),
(1531, 'Arbok', 31, 3, 1, 2, 60, '/php_project/Codebase/Assets/Fossil_1999/31_thumb.png', 4),
(1532, 'Cloyster', 32, 3, 1, 4, 50, '/php_project/Codebase/Assets/Fossil_1999/32_thumb.png', 4),
(1533, 'Gastly', 33, 3, 1, 7, 50, '/php_project/Codebase/Assets/Fossil_1999/33_thumb.png', 4),
(1534, 'Golbat', 34, 3, 1, 2, 60, '/php_project/Codebase/Assets/Fossil_1999/34_thumb.png', 4),
(1535, 'Golduck', 35, 3, 1, 4, 70, '/php_project/Codebase/Assets/Fossil_1999/35_thumb.png', 4),
(1536, 'Golem', 36, 3, 1, 1, 80, '/php_project/Codebase/Assets/Fossil_1999/36_thumb.png', 4),
(1537, 'Graveler', 37, 3, 1, 1, 60, '/php_project/Codebase/Assets/Fossil_1999/37_thumb.png', 4),
(1538, 'Kingler', 38, 3, 1, 4, 60, '/php_project/Codebase/Assets/Fossil_1999/38_thumb.png', 4),
(1539, 'Magmar', 39, 3, 1, 3, 70, '/php_project/Codebase/Assets/Fossil_1999/39_thumb.png', 4),
(1540, 'Omastar', 40, 3, 1, 4, 70, '/php_project/Codebase/Assets/Fossil_1999/40_thumb.png', 4),
(1541, 'Sandslash', 41, 3, 1, 1, 70, '/php_project/Codebase/Assets/Fossil_1999/41_thumb.png', 4),
(1542, 'Seadra', 42, 3, 1, 4, 60, '/php_project/Codebase/Assets/Fossil_1999/42_thumb.png', 4),
(1543, 'Slowbro', 43, 3, 1, 7, 60, '/php_project/Codebase/Assets/Fossil_1999/43_thumb.png', 4),
(1544, 'Tentacruel', 44, 3, 1, 4, 60, '/php_project/Codebase/Assets/Fossil_1999/44_thumb.png', 4),
(1545, 'Weezing', 45, 3, 1, 2, 60, '/php_project/Codebase/Assets/Fossil_1999/45_thumb.png', 4),
(1546, 'Ekans', 46, 4, 1, 2, 40, '/php_project/Codebase/Assets/Fossil_1999/46_thumb.png', 4),
(1547, 'Geodude', 47, 4, 1, 1, 50, '/php_project/Codebase/Assets/Fossil_1999/47_thumb.png', 4),
(1548, 'Grimer', 48, 4, 1, 2, 50, '/php_project/Codebase/Assets/Fossil_1999/48_thumb.png', 4),
(1549, 'Horsea', 49, 4, 1, 4, 40, '/php_project/Codebase/Assets/Fossil_1999/49_thumb.png', 4),
(1550, 'Kabuto', 50, 4, 1, 1, 30, '/php_project/Codebase/Assets/Fossil_1999/50_thumb.png', 4),
(1551, 'Krabby', 51, 4, 1, 4, 50, '/php_project/Codebase/Assets/Fossil_1999/51_thumb.png', 4),
(1552, 'Omanyte', 52, 4, 1, 4, 40, '/php_project/Codebase/Assets/Fossil_1999/52_thumb.png', 4),
(1553, 'Psyduck', 53, 4, 1, 4, 50, '/php_project/Codebase/Assets/Fossil_1999/53_thumb.png', 4),
(1554, 'Shellder', 54, 4, 1, 4, 30, '/php_project/Codebase/Assets/Fossil_1999/54_thumb.png', 4),
(1555, 'Slowpoke', 55, 4, 1, 7, 50, '/php_project/Codebase/Assets/Fossil_1999/55_thumb.png', 4),
(1556, 'Tentacool', 56, 4, 1, 4, 30, '/php_project/Codebase/Assets/Fossil_1999/56_thumb.png', 4),
(1557, 'Zubat', 57, 4, 1, 2, 40, '/php_project/Codebase/Assets/Fossil_1999/57_thumb.png', 4),
(1558, 'Mr. Fuji', 58, 4, 2, 8, 0, '/php_project/Codebase/Assets/Fossil_1999/58_thumb.png', 4),
(1559, 'Energy Search', 59, 4, 2, 8, 0, '/php_project/Codebase/Assets/Fossil_1999/59_thumb.png', 4),
(1560, 'Gambler', 60, 4, 2, 8, 0, '/php_project/Codebase/Assets/Fossil_1999/60_thumb.png', 4),
(1561, 'Recycle', 61, 4, 2, 8, 0, '/php_project/Codebase/Assets/Fossil_1999/61_thumb.png', 4),
(1562, 'Mysterious Fossil', 62, 4, 2, 8, 10, '/php_project/Codebase/Assets/Fossil_1999/62_thumb.png', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `collection`
--

CREATE TABLE `collection` (
  `ID` int(11) NOT NULL,
  `collection_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `collection`
--

INSERT INTO `collection` (`ID`, `collection_name`, `user_id`) VALUES
(1, 'My first Collection', 21),
(5, 'My second Collection', 21),
(6, 'My third Collection', 21);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `collectionxcard`
--

CREATE TABLE `collectionxcard` (
  `ID` int(11) NOT NULL,
  `collection_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `collectionxcard`
--

INSERT INTO `collectionxcard` (`ID`, `collection_id`, `card_id`) VALUES
(1, 1, 1399),
(2, 5, 1335),
(3, 6, 1501),
(4, 1, 1408),
(5, 1, 1340),
(6, 1, 1506),
(7, 1, 1505),
(8, 1, 1508),
(9, 5, 1403),
(10, 5, 1401),
(11, 5, 1339),
(12, 5, 1342),
(13, 5, 1350),
(14, 5, 1503),
(15, 5, 1504);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `elements`
--

CREATE TABLE `elements` (
  `ID` int(11) NOT NULL,
  `Bezeichnung` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `elements`
--

INSERT INTO `elements` (`ID`, `Bezeichnung`, `icon`) VALUES
(1, 'Fighting', '/php_project/Codebase/Assets/element_icons/fighting.png'),
(2, 'Grass', '/php_project/Codebase/Assets/element_icons/grass.png'),
(3, 'Fire', '/php_project/Codebase/Assets/element_icons/fire.png'),
(4, 'Water', '/php_project/Codebase/Assets/element_icons/water.png'),
(5, 'Lightning', '/php_project/Codebase/Assets/element_icons/lightning.png'),
(6, 'Colorless', '/php_project/Codebase/Assets/element_icons/normal.png'),
(7, 'Psychic', '/php_project/Codebase/Assets/element_icons/psychic.png'),
(8, 'none', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rarity`
--

CREATE TABLE `rarity` (
  `ID` int(11) NOT NULL,
  `Bezeichnung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `rarity`
--

INSERT INTO `rarity` (`ID`, `Bezeichnung`) VALUES
(1, 'Rare Holo'),
(2, 'Rare'),
(3, 'Uncommon'),
(4, 'Common');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `set`
--

CREATE TABLE `set` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `card_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `set`
--

INSERT INTO `set` (`ID`, `name`, `year`, `card_count`) VALUES
(2, 'Jungle Set', 1999, 64),
(3, 'Base Set', 1999, 102),
(4, 'Fossil Set', 1999, 62);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `types`
--

CREATE TABLE `types` (
  `ID` int(11) NOT NULL,
  `Bezeichnung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `types`
--

INSERT INTO `types` (`ID`, `Bezeichnung`) VALUES
(1, 'Pokémon'),
(2, 'Trainer'),
(3, 'Energy');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `user_ID` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `pw` varchar(255) DEFAULT NULL,
  `profile_card_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`user_ID`, `first_name`, `last_name`, `email`, `birthday`, `username`, `pw`, `profile_card_id`) VALUES
(21, 'Alexander', 'Leuschner', 'aleuschner.test@gmail.com', '1993-06-11', 'TVoV', '$2y$10$s1cjY/ggz.fJTqLREb01w.k8.En4cKZEXsZWw.KU.X8xSg.UlMSZ6', 1394),
(22, 'Peter', 'Parker', 'pooderman@pider.de', '1995-01-30', 'Biderman', '$2y$10$rdkllnUDLjtV7F1Fw7EDBOzACk8N6PZeiucPEGxHrZwqO2xJ/Dbny', 0);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `set_constraint` (`set_id`),
  ADD KEY `rarity_constraint` (`rarity_id`),
  ADD KEY `type_constraint` (`type_id`),
  ADD KEY `element_contraint` (`element_id`);

--
-- Indizes für die Tabelle `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `User_Constraint` (`user_id`);

--
-- Indizes für die Tabelle `collectionxcard`
--
ALTER TABLE `collectionxcard`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `card_constraint` (`card_id`),
  ADD KEY `collection_constraint` (`collection_id`);

--
-- Indizes für die Tabelle `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `rarity`
--
ALTER TABLE `rarity`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `set`
--
ALTER TABLE `set`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `cards`
--
ALTER TABLE `cards`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1563;

--
-- AUTO_INCREMENT für Tabelle `collection`
--
ALTER TABLE `collection`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT für Tabelle `collectionxcard`
--
ALTER TABLE `collectionxcard`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT für Tabelle `elements`
--
ALTER TABLE `elements`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT für Tabelle `rarity`
--
ALTER TABLE `rarity`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `set`
--
ALTER TABLE `set`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `types`
--
ALTER TABLE `types`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `cards`
--
ALTER TABLE `cards`
  ADD CONSTRAINT `element_contraint` FOREIGN KEY (`element_id`) REFERENCES `elements` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `rarity_constraint` FOREIGN KEY (`rarity_id`) REFERENCES `rarity` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `set_constraint` FOREIGN KEY (`set_id`) REFERENCES `set` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `type_constraint` FOREIGN KEY (`type_id`) REFERENCES `types` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `User_Constraint` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_ID`) ON DELETE CASCADE;

--
-- Constraints der Tabelle `collectionxcard`
--
ALTER TABLE `collectionxcard`
  ADD CONSTRAINT `card_constraint` FOREIGN KEY (`card_id`) REFERENCES `cards` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `collection_constraint` FOREIGN KEY (`collection_id`) REFERENCES `collection` (`ID`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
