-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2025 a las 21:19:21
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sis_asignacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignaciones`
--

CREATE TABLE `asignaciones` (
  `Id` int(11) NOT NULL,
  `turno` varchar(50) NOT NULL,
  `dia` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado') NOT NULL,
  `carrera` varchar(255) DEFAULT NULL,
  `anio` int(11) DEFAULT NULL,
  `profesor` varchar(255) DEFAULT NULL,
  `materia` varchar(255) DEFAULT NULL,
  `aula_id` int(11) DEFAULT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  `entidad_id` int(11) DEFAULT NULL,
  `comentarios` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignaciones`
--

INSERT INTO `asignaciones` (`Id`, `turno`, `dia`, `carrera`, `anio`, `profesor`, `materia`, `aula_id`, `hora_inicio`, `hora_fin`, `entidad_id`, `comentarios`) VALUES
(2, 'Matutino', 'Martes', 'Lic. en Informática', 2, 'Raúl Pérez', 'Base de Datos', 3, '10:00:00', '12:00:00', 1, NULL),
(3, 'Vespertino', 'Miércoles', 'Tecnicatura en Redes', 1, 'Julieta Fernández', 'Sistemas Operativos', 5, '16:00:00', '18:00:00', 2, NULL),
(4, 'Vespertino', 'Jueves', 'Tecnicatura en Redes', 2, 'Carlos Álvarez', 'Hardware y Mantenimiento', 6, '18:00:00', '20:00:00', 2, NULL),
(5, 'Nocturno', 'Viernes', 'Profesorado en Historia', 3, 'Lucía Martínez', 'Historia Medieval', 7, '19:30:00', '21:30:00', 3, NULL),
(6, 'Matutino', 'Sábado', 'Enfermería Universitaria', 1, 'Esteban Robles', 'Anatomía', 8, '08:30:00', '11:30:00', 4, NULL),
(14, 'Matutino', 'Miércoles', 'Desarrollo', 1, 'Pepito', 'Intro A La Programacion', 2, '07:00:00', '11:30:00', 3, NULL),
(15, 'Matutino', 'Jueves', 'Rcp', 1, 'Papo', 'Lala', 2, '08:00:00', '12:00:00', 4, NULL),
(16, 'Matutino', 'Miércoles', 'Ingenieria', 1, 'Pepito', 'Matematica', 3, '10:00:00', '12:00:00', 6, NULL),
(22, 'Matutino', 'Martes', 'Safdasdf', 2, 'Qwqdw', 'Sadfasf', 3, '10:00:00', '12:00:00', 6, 'sdfsdfgjol sdfjsdgfjksñ sdfsdfgj');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aulas`
--

CREATE TABLE `aulas` (
  `aula_id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `recurso` enum('Proyector','TV','Ninguno') DEFAULT 'Ninguno',
  `capacidad` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aulas`
--

INSERT INTO `aulas` (`aula_id`, `nombre`, `recurso`, `capacidad`) VALUES
(1, 'Auditorio', 'TV', 100),
(2, 'Aula Magna 1', 'Proyector', 80),
(3, 'Aula Magna 2', 'Proyector', 80),
(4, 'Aula Magna 1 y 2', 'Proyector', 160),
(5, 'Aula Gabinete', 'Ninguno', 25),
(6, 'Laboratorio', 'Ninguno', 30),
(7, 'Aula 1', 'Proyector', 40),
(8, 'Aula 2', 'Proyector', 40),
(9, 'Aula 1 y 2', 'Proyector', 80),
(10, 'Aula 3', 'Ninguno', 35),
(11, 'Aula 4', 'Ninguno', 35),
(12, 'Aula 5', 'TV', 45),
(13, 'Aula 6', 'TV', 45),
(14, 'Aula 5 y 6', 'TV', 90);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entidades`
--

CREATE TABLE `entidades` (
  `entidad_id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entidades`
--

INSERT INTO `entidades` (`entidad_id`, `nombre`) VALUES
(1, 'UNAHUR'),
(2, 'UNLAM'),
(3, 'Marechal'),
(4, 'Enfermeria'),
(5, 'Ofertas independientes'),
(6, 'Curso ingreso UNLAM');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `aula_id` (`aula_id`),
  ADD KEY `entidad_id` (`entidad_id`);

--
-- Indices de la tabla `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`aula_id`);

--
-- Indices de la tabla `entidades`
--
ALTER TABLE `entidades`
  ADD PRIMARY KEY (`entidad_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `aulas`
--
ALTER TABLE `aulas`
  MODIFY `aula_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `entidades`
--
ALTER TABLE `entidades`
  MODIFY `entidad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignaciones`
--
ALTER TABLE `asignaciones`
  ADD CONSTRAINT `asignaciones_ibfk_aula` FOREIGN KEY (`aula_id`) REFERENCES `aulas` (`aula_id`),
  ADD CONSTRAINT `asignaciones_ibfk_entidad` FOREIGN KEY (`entidad_id`) REFERENCES `entidades` (`entidad_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
