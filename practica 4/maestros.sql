-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2025 a las 01:22:14
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha_de_nacimiento`) VALUES
(1, 'Maria Guadalupe Lupita Astorgas', 'maria.lupita@cetis107.edu.mx', 0, '0000-00-00'),
(2, 'pedro noe shande octava', 'pedro.shande23@ceis107.edu.mx', 1, '0000-00-00'),
(3, 'Teresa mayte guadalupe loaiza', 'teresa.guadalupe23@cetis107.edu.mx', 0, '0000-00-00'),
(4, 'Karina hernandez diantez', 'karina.diantez23@cetis107.edu.mx', 1, '0000-00-00'),
(5, 'jesus alberto zepeda lopez', 'jesus.zepeda23@cetis107.edu.mx', 1, '0000-00-00'),
(6, 'gibran uriel garzia camacho', 'gibran.garcia23@cetis107.edu.mx', 1, '0000-00-00'),
(7, 'Paola supria Ochoa Castellano', 'Paola.Ochoa23@cetis107.edu.mx', 0, '0000-00-00'),
(8, 'Horus millan paredes ', 'Horus.paredes23@cetis107.edu.mx', 1, '0000-00-00'),
(9, 'Esmeralda Perla Nuñes Soto', 'Esmeralda.nuñes23@cetis107.edu.mx', 0, '0000-00-00'),
(10, 'santiago aispuro pilen', 'santiago.pilen23@cetis107.edu.mx', 1, '0000-00-00');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
