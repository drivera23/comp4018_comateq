-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2022 at 09:09 PM
-- Server version: 10.3.34-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `comateq003`
--

-- --------------------------------------------------------

--
-- Table structure for table `Administrador`
--

CREATE TABLE `Administrador` (
  `idAdministrador` int(11) NOT NULL,
  `NombreP` text NOT NULL,
  `ApellidoP` text NOT NULL,
  `ApellidoM` text NOT NULL,
  `Email` text NOT NULL,
  `Posición` text NOT NULL,
  `Género` enum('M','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Administrador`
--

INSERT INTO `Administrador` (`idAdministrador`, `NombreP`, `ApellidoP`, `ApellidoM`, `Email`, `Posición`, `Género`) VALUES
(1, 'Chris', 'Paul', 'Martinez', 'cp3@uprm.edu', 'Profe', 'M'),
(2, 'Devin', 'Booker', 'Ramirez', 'db1@uprm.edu', 'Profe', 'M'),
(3, 'Bismack', 'Biyombo', 'Alvarez', 'bb99@uprm.edu', 'Decano', 'M'),
(4, 'Mikal', 'Bridges', 'Burgos', 'mb25@uprm.edu', 'Decano', 'M'),
(5, 'Cam', 'Johnson', 'Correa', 'cj6@uprm.edu', 'Decano', 'M'),
(6, 'Landry', 'Shamet', 'Rivera', 'ls28@uprm.edu', 'Decano', 'M'),
(7, 'Jae', 'Crowder', 'Pompeo', 'jc9@uprm.edu', 'Profe', 'M'),
(8, 'Javale', 'McGee', 'Yang', 'jm10@uprm.edu', 'Profe', 'M'),
(9, 'Frank', 'Kaminsky', 'Karev', 'fk44@uprm.edu', 'Profe', 'M'),
(10, 'Cam', 'Payne', 'Burke', 'cp26@uprm.edu', 'Profe', 'M'),
(11, 'Angel', 'Ortiz', 'Román ', 'angel.ortiz9@upr.edu', 'Decano', 'M'),
(12, 'Ernesto', 'Diaz', 'Correa', 'edc@yahoo.com', 'Decano', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `Coordinador`
--

CREATE TABLE `Coordinador` (
  `idCoordinador` int(11) NOT NULL,
  `idUniversidad` int(11) NOT NULL,
  `NombreP` text NOT NULL,
  `ApellidoP` text NOT NULL,
  `ApellidoM` text NOT NULL,
  `Telefono` text NOT NULL,
  `Email` text NOT NULL,
  `Género` enum('M','F') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Coordinador`
--

INSERT INTO `Coordinador` (`idCoordinador`, `idUniversidad`, `NombreP`, `ApellidoP`, `ApellidoM`, `Telefono`, `Email`, `Género`) VALUES
(1, 1, 'Jrue', 'Holiday', 'Hernandez', '1111111111', 'jhh1@gmail.com', 'M'),
(2, 4, 'Giannis', 'Antetokounmpo', 'Alvarez', '1111111111', 'gaa4@gmail.com', 'M'),
(3, 10, 'Brook', 'Lopez', 'Lorenzo', '2222222222', 'bll10@gmail.com', 'M'),
(4, 4, 'Grayson', 'Allen', 'Alberty', '2222222222', 'gaa11@gmail.com', 'M'),
(5, 5, 'Pat', 'Connaughton', 'Cora', '4444444444', 'pcc11@gmail.com', 'M'),
(6, 8, 'Khris', 'Middleton', 'Montañez', '1111111111', 'kmm8@gmail.com', 'M'),
(7, 9, 'Bobby', 'Portis', 'Perez', '88888888', 'bpp9@gmail.com', 'M'),
(8, 12, 'Thanasis', 'Antetokounmpo', 'Torres', '88888888', 'tat12@gmail.com', 'M'),
(9, 13, 'Luka', 'Doncic', 'Deivar', '77777777', 'ldd13@gmail.com', 'M'),
(10, 14, 'Jalen', 'Brunson', 'Burgos', '3333333333', 'jbb44@gmail.com', 'M'),
(11, 15, 'Tim', 'Hardaway', 'Hernandez', '1911911199', 'thh5@gmail.com', 'M'),
(12, 4, 'Luis', 'Rivera', 'Correa', '7875020937', 'diego.rivera24@upr.edu', 'F'),
(13, 8, 'Jose', 'Gomez', 'Gomez', '22222222', 'juangg@aol.com', 'M');

-- --------------------------------------------------------

--
-- Table structure for table `Equipo`
--

CREATE TABLE `Equipo` (
  `ID` int(11) NOT NULL,
  `idEquipo` varchar(13) NOT NULL,
  `Año` int(4) NOT NULL,
  `idEstudiante1` int(11) NOT NULL,
  `idEstudiante2` int(11) NOT NULL,
  `idEstudiante3` int(11) DEFAULT NULL,
  `idCoordinador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Equipo`
--

INSERT INTO `Equipo` (`ID`, `idEquipo`, `Año`, `idEstudiante1`, `idEstudiante2`, `idEstudiante3`, `idCoordinador`) VALUES
(4, 'ITM1301_2021', 2021, 12, 13, 14, 8),
(11, 'ITM1301_2022', 2032, 1, 2, 3, 1),
(5, 'UBA1221_2021', 2021, 12, 13, 14, 8),
(2, 'UDA1011_2020', 2020, 5, 6, 7, 5),
(8, 'UDA1111_2022', 2022, 5, 6, 8, 5),
(9, 'UDV1001_2022', 2022, 18, 16, 15, 4),
(3, 'UDV1111_2020', 2020, 18, 17, 19, 4),
(1, 'UPRM1001_2020', 2020, 1, 2, 3, 1),
(6, 'UPRM1001_2021', 2021, 1, 2, 3, 1),
(7, 'UPRM1001_2022', 2022, 1, 4, 3, 1),
(10, 'UPRM1001_2023', 2025, 1, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Estudiante`
--

CREATE TABLE `Estudiante` (
  `idEstudiante` int(11) NOT NULL,
  `NombreP` text NOT NULL,
  `ApellidoP` text NOT NULL,
  `ApellidoM` text NOT NULL,
  `DOB` date NOT NULL,
  `Escuela` text NOT NULL,
  `Grado` int(11) NOT NULL,
  `Género` enum('M','F') NOT NULL,
  `Edad` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Estudiante`
--

INSERT INTO `Estudiante` (`idEstudiante`, `NombreP`, `ApellidoP`, `ApellidoM`, `DOB`, `Escuela`, `Grado`, `Género`, `Edad`) VALUES
(1, 'Diego', 'Rivera', 'Correa', '2009-12-26', 'CRV', 10, 'M', 12),
(2, 'Alejandro', 'Proskauer', 'Valerio', '2008-01-01', 'UPRM', 8, 'M', 14),
(3, 'Grant', 'Williams', 'Wilson', '2010-02-02', 'UPRM', 10, 'M', 12),
(4, 'Ime', 'Udoka', 'Velez', '2010-09-09', 'CRB', 10, 'F', 11),
(5, 'Ernesto', 'Ramirez', 'Ramos', '2011-02-01', 'UHS', 9, 'M', 11),
(6, 'Jalen', 'Brown', 'Hostos', '2008-11-23', 'CIEM', 9, 'F', 13),
(7, 'Jayson', 'Tatum', 'Nunez', '2009-03-30', 'CROEM', 8, 'F', 13),
(8, 'Aaron', 'Nesmith', 'Rivera', '2012-01-15', 'CIMATEC', 9, 'M', 10),
(9, 'Al ', 'Horford', 'Martinez', '2012-06-24', 'UHS', 9, 'M', 9),
(10, 'Robert', 'Williams', 'III', '2011-07-11', 'UPRC', 9, 'M', 10),
(11, 'Brandon', 'Ingram', 'Irizarry', '2012-01-01', 'CROEM', 8, 'F', 10),
(12, 'Chris', 'Joseph', 'McCollum', '2011-10-20', 'CIMATEC', 10, 'M', 10),
(13, 'Jonas', 'Valanciunas', 'Velez', '2010-07-11', 'UPRB', 10, 'F', 11),
(14, 'Herbert', 'Jones', 'Jaquez', '2010-06-11', 'UPRC', 9, 'F', 11),
(15, 'Johnny', 'Juzang', 'Jaime', '2009-08-30', 'UHS', 9, 'M', 12),
(16, 'Tyger', 'Campbell', 'Cancio', '2008-03-01', 'CIEM', 8, 'M', 14),
(17, 'Ja', 'Morant', 'Mendez', '2008-12-26', 'CROEM', 9, 'F', 13),
(18, 'Desmond', 'Bane', 'Benitez', '2010-05-21', 'CIMATEC', 9, 'M', 11),
(19, 'Steven', 'Adams', 'Alvarez', '2010-12-03', 'UPRB', 8, 'M', 11),
(20, 'Javier', 'Diaz', 'Noches', '2010-08-12', 'UPRC', 11, 'F', 13),
(21, 'Luis', 'Perez', 'Perez', '2011-11-11', 'CROEM', 10, 'M', 12);

-- --------------------------------------------------------

--
-- Table structure for table `Examen`
--

CREATE TABLE `Examen` (
  `idExamen` int(11) NOT NULL,
  `idAdministrador` int(11) NOT NULL,
  `Año` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Examen`
--

INSERT INTO `Examen` (`idExamen`, `idAdministrador`, `Año`) VALUES
(1, 4, 2020),
(2, 6, 2022),
(3, 8, 2018),
(4, 2, 2026);

-- --------------------------------------------------------

--
-- Table structure for table `Pais`
--

CREATE TABLE `Pais` (
  `idPais` int(11) NOT NULL,
  `Nombre` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Pais`
--

INSERT INTO `Pais` (`idPais`, `Nombre`) VALUES
(1, 'Haiti'),
(2, 'Puerto Rico'),
(3, 'Venezuela'),
(4, 'Mexico'),
(5, 'Jamaica'),
(6, 'Argentina'),
(7, 'Chile'),
(8, 'Colombia'),
(9, 'Panama'),
(10, 'Nicaragua'),
(11, 'Japon'),
(12, 'Alemania'),
(13, 'Canada'),
(14, 'Portugal');

-- --------------------------------------------------------

--
-- Table structure for table `ProblemasRA`
--

CREATE TABLE `ProblemasRA` (
  `idProblemaRA` int(11) NOT NULL,
  `idExamen` int(11) DEFAULT NULL,
  `idCoordinador` int(11) NOT NULL,
  `Premisa` text NOT NULL,
  `Contestación` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ProblemasRA`
--

INSERT INTO `ProblemasRA` (`idProblemaRA`, `idExamen`, `idCoordinador`, `Premisa`, `Contestación`) VALUES
(1, 1, 1, 'A car traveled 281 miles in 4 hours 41 minutes. What was the average speed of the car in miles per hour?', '60mph'),
(2, 1, 2, 'In a group of 120 people, 90 have an age of more 30 years, and the others have an age of less than 20 years. If a person is selected at random from this group, what is the probability the person\'s age is less than 20?', '.25, 25%'),
(3, 1, 6, 'The length of a rectangle is four times its width. If the area is 100 m2 what is the length of the rectangle?', '20m'),
(4, 2, 9, 'A six-sided die is rolled once. What is the probability that the number rolled is an even number greater than 2?', '(1/3)'),
(5, 2, 9, 'Point A has the coordinates (2,2). What are the coordinates of its image point if it is translated 2 units up and 5 units to the left, and reflected in the x axis?', '(-3,4)'),
(6, 2, 7, 'The length of a rectangle is increased to 2 times its original size and its width is increased to 3 times its original size. If the area of the new rectangle is equal to 1800 square meters, what is the area of the original rectangle?', '300 square m'),
(7, 1, 10, 'Each dimension of a cube has been increased to twice its original size. If the new cube has a volume of 64,000 cubic centimeters, what is the area of one face of the original cube?', '400 square cm'),
(8, 2, 11, 'Pump A can fill a tank of water in 5 hours. Pump B can fill the same tank in 8 hours. How long does it take the two pumps working together to fill the tank?(round your answer to the nearest minute).', '3 hours - 5 minutes');

-- --------------------------------------------------------

--
-- Table structure for table `ProblemasSM`
--

CREATE TABLE `ProblemasSM` (
  `idProblemaSM` int(11) NOT NULL,
  `idExamen` int(11) DEFAULT NULL,
  `idCoordinador` int(11) NOT NULL,
  `Premisa` text NOT NULL,
  `OpcionIncorrecta1` text NOT NULL,
  `OpcionIncorrecta2` text NOT NULL,
  `OpcionIncorrecta3` text NOT NULL,
  `Contestación` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ProblemasSM`
--

INSERT INTO `ProblemasSM` (`idProblemaSM`, `idExamen`, `idCoordinador`, `Premisa`, `OpcionIncorrecta1`, `OpcionIncorrecta2`, `OpcionIncorrecta3`, `Contestación`) VALUES
(1, 1, 1, '2+2', '3', '1', '0', '4'),
(2, 1, 2, '3*3*3', '1', '3', '9', '27'),
(3, 1, 2, '2+ (2*2)', '2', '4', '8', '6'),
(4, 2, 9, '1- (9*2)', '-16', '0', '16', '-17'),
(5, 1, 9, '2^(2^(2))', '4', '8', '12', '16'),
(6, 1, 9, '100-1-100+1', '99', '-99', '1', '0'),
(7, 1, 10, '3x + 5 = 23', '3', '10', '5', '6'),
(8, 2, 11, '98m - 3 = 3623', '30', '38', '36', '37'),
(9, 2, 3, '400 = 29y + 81', '-11', '21', '7', '11'),
(10, NULL, 4, '27=1371−24x', '-56', '46', '57', '56'),
(11, 2, 4, '52m−6=98m−880', '10', '9', '38', '19'),
(12, 1, 5, '32d+25=80d+169', '20', '1', '-2', '-3'),
(13, 2, 7, '2n+38=26n+2198', '-91', '10', '-9', '-90'),
(14, 2, 7, '19d+20=9d+60', '1', '8', '16', '4'),
(15, 1, 8, '4(12x+59)=−3652', '81', '9', '-9', '-81'),
(16, NULL, 6, '40(23a−88)=−25600', '22', '16', '-48', '-24'),
(17, NULL, 5, '19(99x+3)=90345', '8', '6', '72', '48'),
(18, 2, 3, '(366b+1282)/646=−83', '-145', '150', '50', '-150'),
(19, 2, 3, '−3002=(824a+396)/262', '957', '-1000', '-954', '-955'),
(20, NULL, 4, '(190y+1380)/870=−79', '-123', '346', '-246', '-369');

-- --------------------------------------------------------

--
-- Table structure for table `RespondeRA`
--

CREATE TABLE `RespondeRA` (
  `idEquipo` varchar(13) NOT NULL,
  `idProblemaRA` int(11) NOT NULL,
  `Respuesta` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RespondeRA`
--

INSERT INTO `RespondeRA` (`idEquipo`, `idProblemaRA`, `Respuesta`) VALUES
('UPRM1001_2020', 1, '60mph'),
('UDA1011_2020', 1, '60mph'),
('UDV1111_2020', 1, '70mph'),
('UPRM1001_2020', 2, '0.25'),
('UDA1011_2020', 2, '0.35'),
('UDV1111_2020', 2, '0.25'),
('UPRM1001_2020', 3, '30m'),
('UDA1011_2020', 3, '20m'),
('UDV1111_2020', 3, '20m'),
('UPRM1001_2022', 4, '(1/3)'),
('UDA1111_2022', 4, '(1/3)'),
('UDV1001_2022', 4, '(1/2)'),
('UPRM1001_2022', 5, '(-3,4)'),
('UDA1111_2022', 5, '(-3,4)'),
('UDV1001_2022', 5, '(-2,4)'),
('UPRM1001_2022', 6, '500 square m'),
('UDA1111_2022', 6, '300 square m'),
('UDV1001_2022', 6, '300 square m'),
('UPRM1001_2020', 7, '400 square cm'),
('UDA1011_2020', 7, '200 square cm'),
('UDV1111_2020', 7, '200 square cm'),
('UPRM1001_2022', 8, '3 hours - 15 minutes'),
('UDA1111_2022', 8, '3 hours - 25 minutes'),
('UDV1001_2022', 8, '3 hours - 5 minutes');

-- --------------------------------------------------------

--
-- Table structure for table `RespondeSM`
--

CREATE TABLE `RespondeSM` (
  `idEquipo` varchar(13) NOT NULL,
  `idProblemaSM` int(11) NOT NULL,
  `Respuesta` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RespondeSM`
--

INSERT INTO `RespondeSM` (`idEquipo`, `idProblemaSM`, `Respuesta`) VALUES
('UPRM1001_2020', 1, 4),
('UDA1011_2020', 1, 4),
('UDV1111_2020', 1, 4),
('UPRM1001_2020', 3, 4),
('UDA1011_2020', 3, 3),
('UDV1111_2020', 3, 4),
('UPRM1001_2020', 7, 4),
('UDA1011_2020', 7, 4),
('UDV1111_2020', 7, 2),
('UPRM1001_2022', 4, 4),
('UDA1111_2022', 4, 4),
('UDV1001_2022', 4, 4),
('UPRM1001_2022', 9, 4),
('UDA1111_2022', 9, 4),
('UDV1001_2022', 9, 4),
('UPRM1001_2022', 19, 4),
('UDA1111_2022', 19, 4),
('UDV1001_2022', 19, 1),
('UPRM1001_2020', 12, 4),
('UDA1011_2020', 12, 1),
('UDV1111_2020', 12, 3),
('UPRM1001_2022', 8, 4),
('UDA1111_2022', 8, 4),
('UDV1001_2022', 8, 4),
('UPRM1001_2020', 2, 4),
('UDA1011_2020', 2, 4),
('UDV1111_2020', 2, 4),
('UPRM1001_2020', 5, 4),
('UDA1011_2020', 5, 3),
('UDV1111_2020', 5, 4),
('UPRM1001_2020', 6, 4),
('UDA1011_2020', 6, 4),
('UDV1111_2020', 6, 2),
('UPRM1001_2022', 11, 4),
('UDA1111_2022', 11, 4),
('UDV1001_2022', 11, 4),
('UPRM1001_2022', 13, 4),
('UDA1111_2022', 13, 4),
('UDV1001_2022', 13, 4),
('UPRM1001_2022', 18, 4),
('UDA1111_2022', 18, 4),
('UDV1001_2022', 18, 1),
('UPRM1001_2020', 15, 4),
('UDA1011_2020', 15, 1),
('UDV1111_2020', 15, 3),
('UPRM1001_2022', 14, 4),
('UDA1111_2022', 14, 4),
('UDV1001_2022', 14, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Universidad`
--

CREATE TABLE `Universidad` (
  `idUniversidad` int(11) NOT NULL,
  `idPais` int(11) NOT NULL,
  `Nombre` varchar(80) NOT NULL,
  `PaginaWeb` varchar(50) NOT NULL,
  `Telefono` varchar(20) NOT NULL,
  `DireccionCalle` varchar(100) NOT NULL,
  `DireccionCiudad` varchar(30) NOT NULL,
  `DireccionRegion` varchar(30) NOT NULL,
  `DireccionCodigoPostal` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Universidad`
--

INSERT INTO `Universidad` (`idUniversidad`, `idPais`, `Nombre`, `PaginaWeb`, `Telefono`, `DireccionCalle`, `DireccionCiudad`, `DireccionRegion`, `DireccionCodigoPostal`) VALUES
(1, 2, 'UPRM', 'uprm.edu', '(787) 832-4040', '259 Av. Alfonso Valdés Cobián', 'Mayaguez', 'Puerto Rico', '00682'),
(4, 8, 'UNIVALLE', 'univalle.edu.co', '+60 2 3212100', 'Ciudad Universitaria Meléndez Calle 13', 'Cali', 'Valle del Cauca', '100-00'),
(5, 8, 'Universidad de Antioquia', 'udea.edu.co', '[+57-604] 219 8332', 'Calle 67', 'Medellin', 'Antioquia', '53-108'),
(8, 6, 'Universidad Buenos Aires', 'uba.com', '88888888', 'calle 91', 'Buenos Aires', 'Ciudad Autonoma de Buenos Aire', '19'),
(9, 6, 'UADE', 'uade.com', '77777777', 'calle 32', 'Bogota', 'Distrito capital de Colombia', '23'),
(10, 2, 'UPRB', 'uprb.com', '3333333333', 'calle 5', 'Bayamon', 'Puerto Rico', '222'),
(11, 2, 'UPRC', 'uprc.com', '1911911199', 'calle 10', 'Cayey', 'Puerto Rico', '888'),
(12, 4, 'Tech Monterrey', 'tecmon.com', '2121212121', 'calle 99', 'Monterrey', 'Nuevo Leon', '881'),
(13, 4, 'Universidad Veracruzana', 'uv.mx', '01 228 8421700', 'Lomas del Estadio S/N, Col. Zona Universitaria', 'Xalapa', 'Veracruz', '91000'),
(14, 3, 'Universidad de Los Andes', 'ULA.com', '101010101', 'calle 431', 'Bogota', 'Distrito capital de Colombia', '999'),
(15, 3, 'Universidad de Zulia', 'uz.com', '98123456', 'calle 56', 'Maracaibo', 'Maracaibo', '10199'),
(16, 2, 'UPRA', 'upraa.edu', '7877877788', 'Calle 3', 'Aguadilla City', 'Noroeste', '11111'),
(17, 2, 'UPR-Rio Piedras', 'uuprrpp.edu', '1011011100', 'Calle 3', 'Rio Piedras', 'Norte', '00944');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Administrador`
--
ALTER TABLE `Administrador`
  ADD PRIMARY KEY (`idAdministrador`);

--
-- Indexes for table `Coordinador`
--
ALTER TABLE `Coordinador`
  ADD PRIMARY KEY (`idCoordinador`),
  ADD KEY `idUniversidad` (`idUniversidad`);

--
-- Indexes for table `Equipo`
--
ALTER TABLE `Equipo`
  ADD PRIMARY KEY (`idEquipo`),
  ADD UNIQUE KEY `idEquipo` (`idEquipo`),
  ADD KEY `ID` (`ID`),
  ADD KEY `idEstudiante1` (`idEstudiante1`),
  ADD KEY `idEstudiante2` (`idEstudiante2`),
  ADD KEY `idEstudiante3` (`idEstudiante3`),
  ADD KEY `idCoordinador` (`idCoordinador`);

--
-- Indexes for table `Estudiante`
--
ALTER TABLE `Estudiante`
  ADD PRIMARY KEY (`idEstudiante`);

--
-- Indexes for table `Examen`
--
ALTER TABLE `Examen`
  ADD PRIMARY KEY (`idExamen`),
  ADD KEY `idAdministrador` (`idAdministrador`);

--
-- Indexes for table `Pais`
--
ALTER TABLE `Pais`
  ADD PRIMARY KEY (`idPais`);

--
-- Indexes for table `ProblemasRA`
--
ALTER TABLE `ProblemasRA`
  ADD PRIMARY KEY (`idProblemaRA`),
  ADD KEY `idCoordinador` (`idCoordinador`),
  ADD KEY `idExamen` (`idExamen`);

--
-- Indexes for table `ProblemasSM`
--
ALTER TABLE `ProblemasSM`
  ADD PRIMARY KEY (`idProblemaSM`),
  ADD KEY `idCoordinador` (`idCoordinador`),
  ADD KEY `idExamen` (`idExamen`);

--
-- Indexes for table `RespondeRA`
--
ALTER TABLE `RespondeRA`
  ADD KEY `idEquipo` (`idEquipo`),
  ADD KEY `idProblemaRA` (`idProblemaRA`);

--
-- Indexes for table `RespondeSM`
--
ALTER TABLE `RespondeSM`
  ADD KEY `idEquipo` (`idEquipo`),
  ADD KEY `idProblemaSM` (`idProblemaSM`);

--
-- Indexes for table `Universidad`
--
ALTER TABLE `Universidad`
  ADD PRIMARY KEY (`idUniversidad`),
  ADD KEY `idPais` (`idPais`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Coordinador`
--
ALTER TABLE `Coordinador`
  ADD CONSTRAINT `coordina` FOREIGN KEY (`idUniversidad`) REFERENCES `Universidad` (`idUniversidad`);

--
-- Constraints for table `Equipo`
--
ALTER TABLE `Equipo`
  ADD CONSTRAINT `dirige` FOREIGN KEY (`idCoordinador`) REFERENCES `Coordinador` (`idCoordinador`),
  ADD CONSTRAINT `forma1` FOREIGN KEY (`idEstudiante1`) REFERENCES `Estudiante` (`idEstudiante`),
  ADD CONSTRAINT `forma2` FOREIGN KEY (`idEstudiante2`) REFERENCES `Estudiante` (`idEstudiante`),
  ADD CONSTRAINT `forma3` FOREIGN KEY (`idEstudiante3`) REFERENCES `Estudiante` (`idEstudiante`);

--
-- Constraints for table `Examen`
--
ALTER TABLE `Examen`
  ADD CONSTRAINT `crea` FOREIGN KEY (`idAdministrador`) REFERENCES `Administrador` (`idAdministrador`);

--
-- Constraints for table `ProblemasRA`
--
ALTER TABLE `ProblemasRA`
  ADD CONSTRAINT `contieneRA` FOREIGN KEY (`idExamen`) REFERENCES `Examen` (`idExamen`),
  ADD CONSTRAINT `proponeRA` FOREIGN KEY (`idCoordinador`) REFERENCES `Coordinador` (`idCoordinador`);

--
-- Constraints for table `ProblemasSM`
--
ALTER TABLE `ProblemasSM`
  ADD CONSTRAINT `contieneSM` FOREIGN KEY (`idExamen`) REFERENCES `Examen` (`idExamen`),
  ADD CONSTRAINT `proponeSM` FOREIGN KEY (`idCoordinador`) REFERENCES `Coordinador` (`idCoordinador`);

--
-- Constraints for table `RespondeRA`
--
ALTER TABLE `RespondeRA`
  ADD CONSTRAINT `responde1RA` FOREIGN KEY (`idEquipo`) REFERENCES `Equipo` (`idEquipo`),
  ADD CONSTRAINT `responde2RA` FOREIGN KEY (`idProblemaRA`) REFERENCES `ProblemasRA` (`idProblemaRA`);

--
-- Constraints for table `RespondeSM`
--
ALTER TABLE `RespondeSM`
  ADD CONSTRAINT `responde1SM` FOREIGN KEY (`idEquipo`) REFERENCES `Equipo` (`idEquipo`),
  ADD CONSTRAINT `responde2SM` FOREIGN KEY (`idProblemaSM`) REFERENCES `ProblemasSM` (`idProblemaSM`);

--
-- Constraints for table `Universidad`
--
ALTER TABLE `Universidad`
  ADD CONSTRAINT `localizada` FOREIGN KEY (`idPais`) REFERENCES `Pais` (`idPais`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
