Maria Alejandra Arana
Trabajo Practico Integrador

Creacion base de datos
CREATE DATABASE 'integrador_cac';

Creacion tabla oradores

CREATE TABLE `oradores` (
 `id_orador` int(11) NOT NULL,
 `nombre` varchar(50) NOT NULL,
 `apellido` varchar(50) NOT NULL,
 `mail` varchar(80) NOT NULL,
 `tema` varchar(100) NOT NULL,
 `fecha_alta` date NOT NULL DEFAULT current_timestamp(),
 PRIMARY KEY (`id_orador`)
)

crear indice por apellido
ALTER TABLE `integrador_cac`.`oradores` DROP INDEX `apellido`, ADD INDEX `apellido` (`apellido`) USING BTREE;

Insersion de oradores

INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES 
(NULL, 'STEVE ', 'JOBS', 'sjobs@apple.com.ar', 'REACT\r\nJAVASCRIPT', current_timestamp());
INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES 
(NULL, 'BILL', 'GATES', 'bgates@gmail.com', 'JAVASCRIPT y REACT', current_timestamp());
INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES 
(NULL, 'ADA', 'LOVELACE', 'alovelace@gmail.com', 'NEGOCIOS y STARTUPS', current_timestamp()),
 (NULL, 'MIGUEL', 'DONOVAN', 'mdonovan@gmail.com', 'SERVICIOS WEB', current_timestamp());
INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES 
(NULL, 'JULIA', 'CERINI', 'jcerini@gmail.com', 'BASE DE DATOS RELACIONALES', current_timestamp()),
 (NULL, 'ESTEBAN', 'FERNANDES', 'estefer@gmail.com', 'JAVASCRIPT CSS', current_timestamp()), 
(NULL, 'MARISA INES', 'VIZIO', 'vizio.m@gmail.com', 'SQL y BASE DE DATOS', current_timestamp())
INSERT INTO `oradores` (`id_orador`, `nombre`, `apellido`, `mail`, `tema`, `fecha_alta`) VALUES 
(NULL, 'JIMENA', 'PEROZA', 'jperoza@gmail.com', 'STARTUPS', current_timestamp()), 
(NULL, 'DANIEL', 'SORDA', 'd.sor@gmail.com', 'PHP', current_timestamp()), 
(NULL, 'TOMAS', 'AQUINO', 'aquinotomas@gmail.com', 'MOTORES DE BD', current_timestamp());