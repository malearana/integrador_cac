-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2023 a las 17:33:07
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `integrador_cac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id_orador` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `mail` varchar(80) NOT NULL,
  `tema` varchar(250) NOT NULL,
  `fecha_alta` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES
(1, 'STEVE ', 'JOBS', 'sjobs@apple.com.ar', 'REACT\r\nJAVASCRIPT', '2023-11-10'),
(2, 'BILL', 'GATES', 'bgates@gmail.com', 'JAVASCRIPT y REACT', '2023-11-10'),
(3, 'ADA', 'LOVELACE', 'alovelace@gmail.com', 'NEGOCIOS y STARTUPS', '2023-11-10'),
(4, 'MIGUEL', 'DONOVAN', 'mdonovan@gmail.com', 'SERVICIOS WEB', '2023-11-10'),
(5, 'JULIA', 'CERINI', 'jcerini@gmail.com', 'BASE DE DATOS RELACIONALES', '2023-11-10'),
(6, 'ESTEBAN', 'FERNANDES', 'estefer@gmail.com', 'JAVASCRIPT CSS', '2023-11-10'),
(7, 'MARISA INES', 'VIZIO', 'vizio.m@gmail.com', 'SQL y BASE DE DATOS', '2023-11-10'),
(8, 'JIMENA', 'PEROZA', 'jperoza@gmail.com', 'STARTUPS', '2023-11-10'),
(9, 'DANIEL', 'SORDA', 'd.sor@gmail.com', 'PHP', '2023-11-10'),
(10, 'TOMAS', 'AQUINO', 'aquinotomas@gmail.com', 'MOTORES DE BD', '2023-11-10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id_orador`),
  ADD KEY `apellido` (`apellido`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id_orador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
