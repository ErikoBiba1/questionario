-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 14, 2019 alle 09:56
-- Versione del server: 10.1.30-MariaDB
-- Versione PHP: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

INSERT INTO `utenti` (`Username`, `Password`, `Livello`) VALUES
('cippo', MD5('password'), '0'),
('costel', MD5('password'), '0'),
('edoardo', MD5('password'), '1'),
('elia', MD5('password'), '0'),
('emanuele', MD5('password'), '0'),
('erika', MD5('password'), '0'),
('gabriele', MD5('password'), '0'),
('ilaria', MD5('password'), '0'),
('samuele', MD5('password'), '1'),
('silvia', MD5('password'), '0'),
('studente', MD5('password'), '0');

INSERT INTO `materie` (`Nome`) VALUES
('inglese'),
('sistemi'),
('tpsit'),
('italiano'),
('informatica'),
('storia');

INSERT INTO `domande` (`ID_domanda`, `Testo_domanda`, `FK_Materia`) VALUES
(1, 'How many stanzas does poetry \"Dulce et decorum est\" have?', 'inglese'),
(2, ' Cosa fa una VLAN?', 'sistemi'),
(3, 'In JSON, cosa contengono le parentesi quadrate?', 'tpsit'),
(5, 'Il modello OSI da quanti livelli e formato?', 'sistemi'),
(6, 'Which among these is not an advantage offered by web apps?', 'inglese'),
(7, 'Nella risposta http, il codice 404 a cosa corrisponde?', 'tpsit'),
(8, 'Quale è l\'algoritmo di crittografia simmetrico piu sicuro?', 'sistemi'),
(9, 'Che cosa è l\'ONU?', 'storia'),
(11, 'Chi ha dato vita al verismo italiano?', 'italiano'),
(12, 'XMLHttpRequest: il metodo responseText', 'tpsit'),
(13, 'Nel linguaggio SQL, per implementare un ordinamento decrescente è necessario utilizzare la sintassi:', 'informatica'),
(14, 'In che secolo è vissuto Montale?', 'italiano'),
(15, 'Cosa permette di fare la DMZ?', 'sistemi'),
(16, 'Il tag form serve per:', 'tpsit'),
(17, 'What year did women get the same voting rights in Great Britain?', 'inglese'),
(18, 'Il PHP è un linguaggio', 'informatica'),
(19, 'ACCESS è un DBMS che gestisce DataBase di tipo:', 'informatica'),
(20, 'Che cosa intende Svevo per uomo \"inetto\"?', 'italiano'),
(21, 'How many laws is IT affected?', 'inglese'),
(22, 'In un DataBase, un Record è costituita da:', 'informatica'),
(23, 'When was WSPU formed?', 'inglese'),
(24, 'Che cosa fu il maccartismo?', 'storia'),
(25, 'Quale tra le seguenti affermazioni è vera?', 'informatica'),
(26, 'Da quanti bit è costituto un Kbyte ?', 'informatica'),
(27, 'Che differenza c\'è tra hardware e software?', 'informatica'),
(28, 'Chi fù il primo presidente della repubblica italiana?', 'storia'),
(29, 'In che anno entrò in vigore la costituzione Italiana?', 'storia'),
(30, 'Nel linguaggio SQL, le tre parole chiave \"UPDATE\", \" SET\" e \"WHERE\":', 'informatica'),
(31, 'Nel linguaggio SQL, esiste una differenza tra la clausola \"WHERE\" e la clausola \"HAVING\"?', 'informatica'),
(32, 'Quale fù la nazione che liberò gli ebrei?', 'storia'),
(33, 'Quale tra i seguenti dispositivi di memoria può avere la capacità  più alta?', 'informatica'),
(34, 'Quale tra i seguenti non è un operatore logico di Access?', 'informatica'),
(35, 'Cosa si intende per chiave esterna?', 'informatica'),
(36, 'Una base dati si definisce come:', 'informatica'),
(37, 'Il modello relazionale si basa sui concetti di:', 'informatica'),
(39, 'Quale funzione ha il firewall?', 'sistemi');

INSERT INTO `risposte` (`ID_risposta`, `Testo_risposta`, `Punteggio`, `FK_domanda`) VALUES
(1, '3', '0.0', 1),
(2, '5', '0.0', 1),
(3, '4', '1.0', 1),
(4, '6', '0.0', 1),
(5, 'permette di definire più reti locali virtuali distinte usando un unica rete fisica', '1.0', 2),
(6, 'crea tante reti virtuali', '0.0', 2),
(7, 'collega una rete su più reti', '0.0', 2),
(8, 'cambia rete e indirizzo', '0.0', 2),
(9, 'un oggetto', '0.0', 3),
(10, 'un\'array', '1.0', 3),
(11, 'un record', '0.0', 3),
(12, 'un metodo', '0.0', 3),
(17, '3', '0.0', 5),
(18, '4', '0.0', 5),
(19, '6', '0.0', 5),
(20, '7', '1.0', 5),
(21, 'It\'s speed', '1.0', 6),
(22, 'It\'s safer', '0.0', 6),
(23, 'It works on every device with a web browser', '0.0', 6),
(24, 'You can access your data from anywhere', '0.0', 6),
(25, 'ad un errore del server', '0.0', 7),
(26, 'ad un errore del client', '1.0', 7),
(27, 'ad un\'informazione', '0.0', 7),
(28, 'ad un reindirizzamento della pagina su un altro URL.', '0.0', 7),
(29, 'AES', '0.0', 8),
(30, 'DES', '0.0', 8),
(31, 'ONE-TIME-PAD', '1.0', 8),
(32, 'IDEA', '0.0', 8),
(33, 'L\'organizzazione delle nazioni unite', '1.0', 9),
(34, 'Un gruppo comunista', '0.0', 9),
(35, 'Un gruppo militare', '0.0', 9),
(36, 'Un campo di concentramento', '0.0', 9),
(41, 'Ungaretti', '0.0', 11),
(42, 'Montale', '0.0', 11),
(43, 'Verga', '1.0', 11),
(44, 'Svevo', '0.0', 11),
(45, 'contiene la risposta del server', '1.0', 12),
(46, 'contiene la richiesta del client', '0.0', 12),
(47, 'contiene lo stato della risposta', '0.0', 12),
(48, 'non esiste come metodo', '0.0', 12),
(49, 'Non si usa nessun comando poichè i dati hanno un ordinamento decrescente di default', '0.0', 13),
(50, 'ORDER BY con la causola DESC', '1.0', 13),
(51, 'ORDER BY', '0.0', 13),
(52, 'ORDER BY con la causola FROM', '0.0', 13),
(53, 'diciasettesimo secolo', '0.0', 14),
(54, 'diciannovesimo secolo', '0.0', 14),
(55, 'ventesimo secolo', '1.0', 14),
(56, 'sedicesimo secolo', '0.0', 14),
(57, 'effettua una sicurezza negli IP', '0.0', 15),
(58, 'effettua una sicurezza perimetrale', '1.0', 15),
(59, 'si trova all interno della lan', '0.0', 15),
(60, 'protegge tutte le reti', '0.0', 15),
(61, 'creare il corpo della pagina web', '0.0', 16),
(62, 'ricevere le richieste dal client', '0.0', 16),
(63, 'inviare informazioni al server', '1.0', 16),
(64, 'contenere i tag di input', '0.0', 16),
(65, '1928', '1.0', 17),
(66, '1915', '0.0', 17),
(67, '1903', '0.0', 17),
(68, '1918', '0.0', 17),
(69, 'server', '1.0', 18),
(70, 'client', '0.0', 18),
(71, 'di interrogazione', '0.0', 18),
(72, 'di scrittura', '0.0', 18),
(73, 'RELAZIONALI', '1.0', 19),
(74, 'FLAT FILE', '0.0', 19),
(75, 'GERARCHICI', '0.0', 19),
(76, ' RIVOLTI AD OGGETTI', '0.0', 19),
(77, '\r\nIl borghese bloccato da una nevrosi che lo rende incapace di vivere la concretezza della vita quot', '0.0', 20),
(78, 'L\'uomo che non vuole aprire gli occhi sulla realtà , ma vuole vivere schiavo dei condizionamenti borghesi', '0.0', 20),
(79, 'Il borghese bloccato da una nevrosi che lo rende incapace di vivere la concretezza della vita quotidiana', '1.0', 20),
(80, 'Un borghese liberale.', '0.0', 20),
(81, '6', '1.0', 21),
(82, '8', '0.0', 21),
(83, '7', '0.0', 21),
(84, '5', '0.0', 21),
(85, 'TABELLE', '0.0', 22),
(86, 'CAMPI', '1.0', 22),
(87, 'IDENTIFICATORI', '0.0', 22),
(88, 'CHIAVI', '0.0', 22),
(89, '1910', '0.0', 23),
(90, '1919', '0.0', 23),
(91, '1903', '1.0', 23),
(92, '1925', '0.0', 23),
(93, 'Il processo di presunte spie e comunisti', '1.0', 24),
(94, 'Un fenomeno migratorio', '0.0', 24),
(95, 'Sono un gruppo di fascisti', '0.0', 24),
(96, 'Era una fazione del popolo con pensieri diversi a quelli dell\'URSS', '0.0', 24),
(97, 'La RAM Ã¨ una memoria volatile.', '1.0', 25),
(98, 'La RAM e la ROM sono memorie volatili.', '0.0', 25),
(99, 'La RAM e la ROM non sono memorie volatili.', '0.0', 25),
(100, 'La ROM è una memoria volatile.', '0.0', 25),
(101, '1024', '0.0', 26),
(102, '8192', '1.0', 26),
(103, '1000', '0.0', 26),
(104, '8000', '0.0', 26),
(105, 'L\'hardware si riferisce al computer come macchina, il software si riferisce ai programmi.', '1.0', 27),
(106, 'Hardware e software designano rispettivamente computer difficili e facili da usare.', '0.0', 27),
(107, 'L\'hardware è il corpo principale del computer, il software è costitutio dai dischetti', '0.0', 27),
(108, 'L\'hardware è costituito dal sistema operativo, il software da tutti gli altri programmi.', '0.0', 27),
(109, 'Benito Mussolini', '0.0', 28),
(110, 'Luigi Einaudi', '1.0', 28),
(111, 'Palmiro Togliatti', '0.0', 28),
(112, 'Hitler', '0.0', 28),
(113, '1° Gennaio 1948', '1.0', 29),
(114, '12 Maggio 1947', '0.0', 29),
(115, '18 Aprile 1948', '0.0', 29),
(116, '2 Giugno 1946', '0.0', 29),
(117, 'Aggiornano tutti i campi di una tabella', '0.0', 30),
(118, 'Permettono di aggiornare uno o più attributi delle righe di una tabella che soddisfano la condizio', '1.0', 30),
(119, 'Permettono di aggiornare un unico attributo delle righe di una tabella che soddisfano la condizione', '0.0', 30),
(120, 'Permettono di aggiornare uno o più attributi delle righe di una tabella anche se non soddisfano ne', '0.0', 30),
(121, 'Si usa Having insieme alla funzione di aggregazione Count; si usa Where per la ricerca semplice', '0.0', 31),
(122, 'Si, dipende dal programma che uso e dall\'interprete SQL implementato', '0.0', 31),
(123, 'Si usa Having per esprimere condizioni su valori aggregati, Where per condizioni su semplici valori', '1.0', 31),
(124, 'Si usa Having insieme alla funzione di aggregazione Count; si usa Where per la ricerca articolata', '0.0', 31),
(125, 'Polonia', '1.0', 32),
(126, 'Germania', '0.0', 32),
(127, 'Cina', '0.0', 32),
(128, 'Austria', '0.0', 32),
(129, 'RAM', '0.0', 33),
(130, 'Floppy disk', '0.0', 33),
(131, 'CD-ROM', '0.0', 33),
(132, 'Hard-disk', '1.0', 33),
(133, 'OR', '0.0', 34),
(134, 'AND', '0.0', 34),
(135, 'WITH', '1.0', 34),
(136, 'NOT', '0.0', 34),
(137, 'Uno o più campi di una tabella che riferiti al campo o ai campi chiave primaria di un\'altra tabella', '1.0', 35),
(138, 'La proprietà  che identifica in modo univoco la tabella esterna', '0.0', 35),
(139, 'E\' una proprietà  delle tabelle che specifica il collegamento tra i record', '0.0', 35),
(140, 'La proprietà  che identifica in modo univoco la tabella principale', '0.0', 35),
(141, 'Una collezione di dati contenente informazioni organizzate, manipolabili attraverso un DBMS', '1.0', 36),
(142, 'Un insieme di archivi in cui sono custodite informazioni riservate', '0.0', 36),
(143, 'Un insieme di archivi in cui sono custodite informazioni pubbliche', '0.0', 36),
(144, 'Un elemento del linguaggio SQL', '0.0', 36),
(145, 'Sicurezza ed organizzazione', '0.0', 37),
(146, 'Relazione e operatori d\'interrogazione', '1.0', 37),
(147, 'Integrazione ed analisi', '0.0', 37),
(148, 'Autenticazione e integrità', '0.0', 37),
(153, '\r\nUsato per il filtraggio di pacchetti', '1.0', 39),
(154, 'Elimina i pacchetti', '0.0', 39),
(155, 'Crea un server', '0.0', 39),
(156, 'Protezione degli IP', '0.0', 39);

INSERT INTO `questionari` (`ID`, `Nome`, `FK_Materia`) VALUES
(1, 'sistemi', 'sistemi'),
(2, 'sistemi2', 'sistemi'),
(4, 'Domande storia', 'storia'),
(5, 'Domande guerra fredda', 'storia'),
(6, 'Questionario inglese', 'inglese'),
(7, 'Questionario inglese', 'inglese'),
(9, 'Database', 'informatica'),
(10, 'ciao bello de zio', 'tpsit'),
(11, 'Questionario', 'informatica'),
(12, 'sistemi', 'sistemi'),
(13, 'sistemi2', 'sistemi'),
(14, 'sistemi tutte', 'sistemi'),
(15, 'prova di informatica', 'informatica'),
(16, 'bhoo', 'italiano');

INSERT INTO `domande_questionari` (`ID`, `FK_domanda`, `FK_questionario`) VALUES
 (1, 2, 1),
 (2, 15, 1),
 (3, 8, 2),
 (5, 5, 2),
 (6, 9, 4),
 (7, 24, 4),
 (8, 28, 4),
 (9, 29, 4),
 (10, 32, 4),
 (11, 32, 5),
 (12, 24, 5),
 (13, 9, 5),
 (14, 6, 6),
 (15, 1, 6),
 (16, 17, 6),
 (17, 21, 6),
 (18, 23, 6),
 (19, 23, 7),
 (20, 1, 7),
 (21, 21, 7),
 (22, 13, 9),
 (23, 30, 9),
 (24, 31, 9),
 (25, 35, 9),
 (26, 37, 9),
 (29, 18, 11),
 (30, 19, 11),
 (31, 25, 11),
 (32, 26, 11),
 (33, 27, 11),
 (34, 33, 11),
 (35, 34, 11),
 (36, 15, 12),
 (37, 2, 12),
 (38, 8, 13),
 (41, 2, 14),
 (42, 8, 14),
 (43, 15, 14),
 (44, 5, 14),
 (46, 13, 15),
 (47, 18, 15),
 (48, 19, 15),
 (49, 22, 15),
 (50, 25, 15);

INSERT INTO `svolgimenti` (`ID`, `Data`, `FK_Utente`, `FK_questionario`) VALUES
(35, '2018-05-30', 'cippo', 1),
(36, '2018-05-30', 'cippo', 2),
(38, '2018-05-30', 'cippo', 4),
(39, '2018-05-30', 'samuele', 4),
(40, '2018-05-30', 'elia', 6),
(41, '2018-05-30', 'gabriele', 4),
(43, '2018-05-30', 'elia', 4),
(44, '2018-05-30', 'cippo', 14),
(45, '2018-05-30', 'edoardo', 14),
(46, '2018-05-30', 'elia', 14),
(47, '2018-05-30', 'gabriele', 5),
(48, '2018-05-30', 'elia', 10),
(49, '2018-05-30', 'elia', 10),
(50, '2018-05-30', 'edoardo', 14),
(51, '2018-05-30', 'elia', 10),
(52, '2018-05-30', 'elia', 10),
(53, '2018-05-30', 'elia', 10),
(54, '2018-05-30', 'emanuele', 14),
(55, '2018-05-30', 'gabriele', 14),
(56, '2018-05-30', 'emanuele', 9),
(57, '2018-05-30', 'silvia', 6),
(58, '2018-05-30', 'silvia', 6),
(59, '2018-05-30', 'silvia', 6),
(60, '2018-05-30', 'silvia', 11),
(61, '2018-05-30', 'silvia', 10),
(62, '2018-05-30', 'cippo', 9),
(63, '2018-05-30', 'gabriele', 4),
(64, '2018-05-30', 'gabriele', 4),
(65, '2018-05-30', 'gabriele', 4),
(66, '2018-05-30', 'erika', 15),
(67, '2018-05-30', 'erika', 7),
(68, '2018-05-30', 'erika', 2),
(69, '2018-05-30', 'edoardo', 1),
(70, '2018-07-03', 'costel', 1);

INSERT INTO `risposte_svolgimenti` (`ID`, `FK_Risposta`, `FK_Svolgimento`) VALUES
(34, 5, 35),
(35, 58, 35),
(36, 31, 36),
(38, 20, 36),
(44, 33, 38),
(45, 93, 38),
(46, 111, 38),
(47, 116, 38),
(48, 125, 38),
(49, 34, 39),
(50, 94, 39),
(51, 110, 39),
(52, 113, 39),
(53, 125, 39),
(54, 22, 40),
(55, 3, 40),
(56, 66, 40),
(57, 81, 40),
(58, 90, 40), 
(59, 33, 41),
(60, 94, 41),
(61, 110, 41),
(62, 115, 41),
(63, 125, 41),
(69, 33, 43),
(70, 93, 43),
(71, 109, 43),
(72, 113, 43),
(73, 127, 43),
(74, 5, 44),
(75, 31, 44),
(76, 58, 44),
(77, 20, 44),
(79, 5, 45), 
(80, 31, 45),
(81, 58, 45),
(82, 20, 45),
(84, 6, 46),
(85, 31, 46), 
(86, 58, 46),
(89, 125, 47),
(90, 93, 47),
(91, 33, 47),
(92, 9, 48),
(93, 27, 48),
(94, 11, 49),
(95, 28, 49),
(96, 5, 50),
(97, 31, 50),
(98, 58, 50), 
(101, 12, 51),
(102, 26, 51),
(103, 10, 52),
(104, 28, 52),
(105, 10, 53),
(106, 26, 53),
(107, 5, 54),
(108, 31, 54),
(109, 58, 54),
(110, 20, 54),
(112, 5, 55), 
(113, 31, 55),
(114, 58, 55),
(115, 20, 55),
(117, 50, 56),
(118, 119, 56),
(119, 121, 56),
(120, 137, 56),
(121, 146, 56),
(122, 21, 57),
(123, 3, 57),
(124, 65, 57),
(125, 81, 57),
(126, 91, 57),
(127, 24, 58),
(128, 1, 58),
(129, 67, 58),
(130, 82, 58),
(131, 90, 58),
(132, 21, 59),
(133, 3, 59),
(134, 66, 59),
(135, 82, 59),
(136, 91, 59),
(137, 69, 60),
(138, 73, 60),
(139, 97, 60),
(140, 101, 60),
(141, 106, 60),
(142, 132, 60),
(143, 135, 60),
(144, 10, 61),
(145, 25, 61),
(146, 52, 62),
(147, 119, 62),
(148, 123, 62),
(149, 138, 62),
(150, 146, 62),
(156, 33, 63),
(157, 93, 63),
(158, 109, 63),
(159, 113, 63),
(160, 125, 63),
(161, 33, 64),
(162, 93, 64),
(163, 109, 64),
(164, 113, 64),
(165, 125, 64),
(166, 33, 65),
(167, 93, 65),
(168, 109, 65),
(169, 113, 65),
(170, 125, 65),
(171, 49, 66),
(172, 69, 66),
(173, 73, 66),
(174, 86, 66),
(175, 97, 66),
(176, 91, 67),
(177, 2, 67),
(178, 81, 67),
(179, 31, 68),
(180, 20, 68),
(181, 5, 69),
(182, 57, 69),
(183, 6, 70),
(184, 58, 70);