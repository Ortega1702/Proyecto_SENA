-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-01-2024 a las 23:21:16
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
-- Base de datos: `proyecto_sena`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acuicultura11`
--

CREATE TABLE `acuicultura11` (
  `id_dato` int(11) NOT NULL,
  `id_dispositivo` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `Acuicultura` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acuicultura11`
--

INSERT INTO `acuicultura11` (`id_dato`, `id_dispositivo`, `fecha`, `Acuicultura`) VALUES
(1, 54, '2023-12-17 05:00:00', 15.00),
(2, 54, '2023-12-17 05:00:00', 16.00),
(3, 54, '2023-12-18 05:00:00', 16.00),
(4, 54, '2023-12-19 05:00:00', 21.00),
(5, 54, '2023-12-20 05:00:00', 8.00),
(6, 54, '2023-12-21 05:00:00', 17.00),
(7, 54, '2023-12-22 05:00:00', 22.00),
(8, 54, '2023-12-20 05:00:00', 8.00),
(9, 54, '2023-12-21 05:00:00', 17.00),
(10, 54, '2023-12-22 05:00:00', 22.00),
(11, 54, '2023-12-20 05:00:00', 8.00),
(12, 54, '2023-12-21 05:00:00', 17.00),
(13, 54, '2023-12-22 05:00:00', 22.00),
(14, 54, '2023-12-20 05:00:00', 8.00),
(15, 54, '2023-12-21 05:00:00', 17.00),
(16, 54, '2023-12-22 05:00:00', 22.00),
(17, 54, '2023-12-20 05:00:00', 8.00),
(18, 54, '2023-12-21 05:00:00', 17.00),
(19, 54, '2023-12-22 05:00:00', 22.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `acuiculturaaa13`
--

CREATE TABLE `acuiculturaaa13` (
  `id_dato` int(11) NOT NULL,
  `id_dispositivo` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `Acuiculturaaa` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `acuiculturaaa13`
--

INSERT INTO `acuiculturaaa13` (`id_dato`, `id_dispositivo`, `fecha`, `Acuiculturaaa`) VALUES
(1, 55, '2023-12-20 05:00:00', 8.00),
(2, 55, '2023-12-21 05:00:00', 17.00),
(3, 55, '2023-12-22 05:00:00', 22.00),
(4, 55, '2023-12-20 05:00:00', 8.00),
(5, 55, '2023-12-21 05:00:00', 17.00),
(6, 55, '2023-12-22 05:00:00', 22.00),
(7, 55, '2023-12-20 05:00:00', 8.00),
(8, 55, '2023-12-21 05:00:00', 17.00),
(9, 55, '2023-12-22 05:00:00', 22.00),
(10, 55, '2023-12-20 05:00:00', 8.00),
(11, 55, '2023-12-21 05:00:00', 17.00),
(12, 55, '2023-12-22 05:00:00', 22.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dispositivos`
--

CREATE TABLE `dispositivos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `unidad_de_medida` varchar(50) NOT NULL,
  `hardware` varchar(50) NOT NULL,
  `id_unidad` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `limite_bajo` int(11) DEFAULT NULL,
  `limite_alto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `dispositivos`
--

INSERT INTO `dispositivos` (`id`, `nombre`, `unidad_de_medida`, `hardware`, `id_unidad`, `descripcion`, `id_usuario`, `limite_bajo`, `limite_alto`) VALUES
(49, 'Temperatura', '', 'ESP32', 11, '', 3, NULL, NULL),
(54, 'Acuicultura', 'Kelvin', 'ESP32', 11, '', 3, 15, 20),
(55, 'Acuiculturaaa', 'Atm', 'ESP32', 13, 'fdsgsgh', 3, 5, 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hardware`
--

CREATE TABLE `hardware` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hardware`
--

INSERT INTO `hardware` (`id`, `nombre`) VALUES
(1, 'ESP32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `mensaje` varchar(1000) NOT NULL,
  `unidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `mensaje`, `unidad`) VALUES
(15, 'El dispositivo Acuicultura de la unidad Acuicultura tuvo un decremento por debajo del límite el día 2023/12/20, por favor estar atentos.', 'Acuicultura'),
(16, 'El dispositivo Acuicultura de la unidad Acuicultura tuvo un aumento por encima del límite el día 2023/12/22, por favor estar atentos.', 'Acuicultura'),
(17, 'El dispositivo Acuiculturaaa de la unidad Porcinos tuvo un aumento por encima del límite el día 2023/12/22, por favor estar atentos.', 'Porcinos'),
(18, 'El dispositivo Temperatura de la unidad Acuicultura tuvo un aumento por encima del límite el día 2023/12/20, por favor estar atentos.', 'Acuicultura'),
(19, 'El dispositivo Temperatura de la unidad Acuicultura tuvo un aumento por encima del límite el día 2023/12/21, por favor estar atentos.', 'Acuicultura'),
(20, 'El dispositivo Temperatura de la unidad Acuicultura tuvo un aumento por encima del límite el día 2023/12/22, por favor estar atentos.', 'Acuicultura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temperatura11`
--

CREATE TABLE `temperatura11` (
  `id_dato` int(11) NOT NULL,
  `id_dispositivo` int(11) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `Temperatura` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `temperatura11`
--

INSERT INTO `temperatura11` (`id_dato`, `id_dispositivo`, `fecha`, `Temperatura`) VALUES
(169, 49, '2024-01-11 03:01:54', 35.00),
(170, 49, '2024-01-11 03:02:04', 37.00),
(171, 49, '2024-01-11 03:02:14', 35.00),
(172, 49, '2024-01-11 03:02:24', 36.00),
(173, 49, '2024-01-11 03:02:34', 35.00),
(174, 49, '2024-01-11 03:02:44', 36.00),
(175, 49, '2024-01-11 03:02:54', 35.00),
(176, 49, '2024-01-11 03:03:05', 35.00),
(177, 49, '2024-01-11 03:03:15', 36.00),
(178, 49, '2024-01-11 03:03:25', 35.00),
(179, 49, '2024-01-11 03:03:35', 31.00),
(180, 49, '2024-01-11 03:03:45', 36.00),
(181, 49, '2024-01-11 03:03:55', 35.00),
(182, 49, '2024-01-11 03:04:05', 35.00),
(183, 49, '2024-01-11 03:04:15', 31.00),
(184, 49, '2024-01-11 03:04:26', 35.00),
(185, 49, '2024-01-11 03:04:36', 35.00),
(186, 49, '2024-01-11 03:04:46', 35.00),
(187, 49, '2024-01-11 03:04:56', 35.00),
(188, 49, '2024-01-11 03:05:06', 27.00),
(189, 49, '2024-01-11 03:05:16', 34.00),
(190, 49, '2024-01-11 03:05:26', 36.00),
(191, 49, '2024-01-11 03:05:37', 35.00),
(192, 49, '2024-01-11 03:05:47', 37.00),
(193, 49, '2024-01-11 03:05:57', 35.00),
(194, 49, '2024-01-11 03:06:07', 35.00),
(195, 49, '2024-01-11 03:06:17', 35.00),
(196, 49, '2024-01-11 03:06:27', 35.00),
(197, 49, '2024-01-11 03:06:38', 36.00),
(198, 49, '2024-01-11 03:06:48', 36.00),
(199, 49, '2024-01-11 03:06:58', 35.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `unidades`
--

CREATE TABLE `unidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `unidades`
--

INSERT INTO `unidades` (`id`, `nombre`, `id_usuario`) VALUES
(11, 'Acuicultura', 3),
(13, 'Porcinos', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  `rol` varchar(15) NOT NULL,
  `unidad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `usuario`, `email`, `contrasena`, `rol`, `unidad`) VALUES
(3, 'Juan ', 'Vahos', 'jdvahos', 'jdvahos@misena.edu.co', 'admin123', 'admin', ''),
(5, 'Julian David', 'Ortega Sanmartin', 'Ortega222', 'julianortega985@gmail.com', '12345', 'usuario', 'Acuicultura');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `acuicultura11`
--
ALTER TABLE `acuicultura11`
  ADD PRIMARY KEY (`id_dato`),
  ADD KEY `id_dispositivo` (`id_dispositivo`);

--
-- Indices de la tabla `acuiculturaaa13`
--
ALTER TABLE `acuiculturaaa13`
  ADD PRIMARY KEY (`id_dato`),
  ADD KEY `id_dispositivo` (`id_dispositivo`);

--
-- Indices de la tabla `dispositivos`
--
ALTER TABLE `dispositivos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`,`id_unidad`) USING BTREE;

--
-- Indices de la tabla `hardware`
--
ALTER TABLE `hardware`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temperatura11`
--
ALTER TABLE `temperatura11`
  ADD PRIMARY KEY (`id_dato`),
  ADD KEY `id_dispositivo` (`id_dispositivo`);

--
-- Indices de la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`,`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `acuicultura11`
--
ALTER TABLE `acuicultura11`
  MODIFY `id_dato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `acuiculturaaa13`
--
ALTER TABLE `acuiculturaaa13`
  MODIFY `id_dato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `dispositivos`
--
ALTER TABLE `dispositivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `hardware`
--
ALTER TABLE `hardware`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `temperatura11`
--
ALTER TABLE `temperatura11`
  MODIFY `id_dato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT de la tabla `unidades`
--
ALTER TABLE `unidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `acuicultura11`
--
ALTER TABLE `acuicultura11`
  ADD CONSTRAINT `acuicultura11_ibfk_1` FOREIGN KEY (`id_dispositivo`) REFERENCES `dispositivos` (`id`);

--
-- Filtros para la tabla `acuiculturaaa13`
--
ALTER TABLE `acuiculturaaa13`
  ADD CONSTRAINT `acuiculturaaa13_ibfk_1` FOREIGN KEY (`id_dispositivo`) REFERENCES `dispositivos` (`id`);

--
-- Filtros para la tabla `temperatura11`
--
ALTER TABLE `temperatura11`
  ADD CONSTRAINT `temperatura11_ibfk_1` FOREIGN KEY (`id_dispositivo`) REFERENCES `dispositivos` (`id`);

--
-- Filtros para la tabla `unidades`
--
ALTER TABLE `unidades`
  ADD CONSTRAINT `unidades_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
