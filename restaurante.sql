-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-09-2025 a las 22:23:49
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
-- Base de datos: `restaurante`
--
CREATE DATABASE IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurante`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `precio` decimal(11,0) NOT NULL,
  `stock` tinyint(11) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `menu`
--

INSERT INTO `menu` (`id`, `producto`, `precio`, `stock`, `tipo`, `foto`) VALUES
(1, 'Bife de Carne ', 12500, 8, 'Carne', 'foto.jpg'),
(2, 'Ensalada Cesar', 2000, 8, 'Ensalada', 'foto.jpg'),
(3, 'Helado', 800, 22, 'Postre', 'foto.jpg'),
(4, 'Tarta de Jamon y Queso', 5000, 9, 'Tartas', 'foto.jpg'),
(5, 'Vino Rosado', 6900, 100, 'Bebidas', 'foto.jpg'),
(6, 'Torta', 7000, 9, 'Postre', 'foto.jpg'),
(7, 'Cafe con Leche', 8900, 23, 'Bebidas', 'foto.jpg'),
(8, 'Ñoquis', 12000, 9, 'Pasta', 'foto.jpg'),
(9, 'CocaCola', 780, 23, 'Bebidas', 'foto.jpg'),
(10, 'Yogurt con granola', 1500, 100, 'Postre', 'foto.jpg'),
(11, 'Leche', 800, 3, 'Bebidas', 'foto.jpg'),
(12, 'chocolatada', 400, 9, 'Bebidas', 'foto.jpg'),
(13, 'Asado', 17000, 22, 'Carne', 'foto.jpg'),
(14, 'Hamburguesa con Papas Fritas', 9000, 20, 'Carne', 'foto.jpg'),
(15, 'Jugo de Naranja', 6900, 22, 'Bebidas', 'foto.jpg'),
(16, 'Tacos', 8900, 8, 'Tacos', 'foto.jgp'),
(17, 'Agua', 1250, 7, 'Bebidas', 'foto.jpg'),
(18, 'Quesadillas', 1789, 8, 'Quesadillas', 'foto.jgp'),
(19, 'Lemon Pie', 6900, 100, 'Postre', 'foto.jpg'),
(20, 'Chocotorta', 6000, 78, 'Postre', 'foto.jgp');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mesas`
--

CREATE TABLE `mesas` (
  `id` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `reservado` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mesas`
--

INSERT INTO `mesas` (`id`, `numero`, `reservado`) VALUES
(1, 1, 'si'),
(2, 2, 'no'),
(3, 3, 'si'),
(4, 4, 'no'),
(5, 5, 'si'),
(6, 6, 'si'),
(7, 7, 'no'),
(8, 8, 'no'),
(9, 9, 'si'),
(10, 10, 'no'),
(11, 11, 'si'),
(12, 12, 'no'),
(13, 13, 'no'),
(14, 14, 'si'),
(15, 15, 'si'),
(16, 16, 'si'),
(17, 17, 'no'),
(18, 18, 'si'),
(19, 19, 'si'),
(20, 20, 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `promociones`
--

CREATE TABLE `promociones` (
  `id` int(11) NOT NULL,
  `descuento` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `promociones`
--

INSERT INTO `promociones` (`id`, `descuento`) VALUES
(1, 40),
(2, 25),
(3, 30),
(4, 50),
(5, 35),
(6, 15),
(7, 20),
(8, 50),
(9, 80),
(10, 90),
(11, 75),
(12, 85),
(13, 40),
(14, 20),
(15, 80),
(16, 20),
(17, 80),
(18, 25),
(19, 40),
(20, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `nickname`, `password`, `correo`) VALUES
(1, 'Maria', 'Maria30', '1234', 'maria30@gmail.com'),
(2, 'Juan', 'Juan4', '5678', 'juan4@gmail.com'),
(3, 'Carlos', 'carlitos23', '8980', 'carlitosh@hotmail.com'),
(4, 'Laura', 'Laura23', '89878', 'Laura23rodriguez@gmail.com'),
(5, 'Mar', 'Mar1', '1234', 'mar130@gmail.com'),
(6, 'Tomas', 'Tomas44', '1234', 'tomas44@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` int(11) NOT NULL,
  `horario` time NOT NULL,
  `cantidad` int(11) NOT NULL,
  `comensales` smallint(6) NOT NULL,
  `estado` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha`, `total`, `horario`, `cantidad`, `comensales`, `estado`) VALUES
(1, '2025-08-08', 20000, '20:00:00', 9, 4, 'Completado'),
(2, '2025-09-28', 70000, '13:00:00', 59, 20, 'En Progreso'),
(3, '2026-08-04', 40000, '20:00:00', 9, 8, 'Completado'),
(4, '2025-08-22', 70000, '13:00:00', 59, 20, 'En Progreso'),
(5, '2025-08-08', 56000, '20:00:00', 9, 8, 'Completado'),
(6, '2025-09-28', 70000, '13:00:00', 89000, 22, 'En Progreso'),
(7, '2026-08-04', 56000, '22:00:00', 2300, 18, 'En Progreso '),
(8, '2026-08-04', 37000, '23:00:00', 25600, 18, 'En Progreso '),
(9, '2025-08-08', 20000, '22:00:00', 25600, 22, 'Completado'),
(10, '2025-08-08', 40000, '22:00:00', 2300, 22, 'En Progreso ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mesas`
--
ALTER TABLE `mesas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `promociones`
--
ALTER TABLE `promociones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `mesas`
--
ALTER TABLE `mesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `promociones`
--
ALTER TABLE `promociones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
