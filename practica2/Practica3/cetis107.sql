-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2025 a las 02:12:43
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
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_de_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Bayron Uriel', 'Estrada camacho', '23325061070375', '0000-00-00', 1, 'bayron.estrada23@cetis107.edu.mx', '+1 (909) 516-0134'),
(2, 'Angel Gibran', 'Loaiza Garcia', '23325061070694', '0000-00-00', 1, 'angel.loaiza23@cetis107.edu.mx', '6671451436'),
(3, 'Santiago', 'Lopez Aispuro', '23325061070386', '0000-00-00', 1, 'santiago.lopeza23@cetis107.edu.mx', '6673309322'),
(4, 'Victor Manuel', 'Dias Gastelum', '23325061070728', '0000-00-00', 1, 'victor.dias23@cetis107.edu.mx', '6677911274'),
(5, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '0000-00-00', 1, 'paolo.valdez23@cetis107.edu.mx', '6675412714'),
(6, 'Rosselyn', 'Esparza Uriarte', '23325061070528', '0000-00-00', 0, 'rosselyn.esparza23@cetis107.edu.mx', '6674093254'),
(7, 'Frida Sofia', 'Sanchez Valenzuela', '23325061070611', '0000-00-00', 0, 'frida.sanchez23@cetis107.edu.mx', '6674087474'),
(8, 'Krisell Bettina', 'Angulo Garcia', '23325061070627', '0000-00-00', 0, 'krisell.angulo23@cetis107.edu.mx667', '6675793242'),
(9, 'Rubi Esmeralda', 'Zepeda Garcia', '23325061070514', '0000-00-00', 0, 'rubi.zepeda23@cetis107.edu.mx', '6673940804'),
(10, 'Jonathan Horus', 'Zazueta Hernadez', '23325061070413', '2008-04-09', 1, 'jonathan.zazueta', '6677562259');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripcion`) VALUES
(1, 'COntruccion ', 'Aprenderas las bases de la edificacion geometria etc'),
(2, 'Programacion', 'Aprenderas sobre software etc'),
(3, 'ofimatica ', 'edicion y aprender a usar documentos etc'),
(4, 'contabilidad', 'aprenderas sobre impuestos ahorros etc'),
(5, 'Electronica ', 'Aprenderas a crear ciercuitos manejar voltajes etc'),
(6, 'Diseño Grafico', 'Edicion, Arte, Dibujo, renderizar, etc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `nombre`, `semestre`) VALUES
(1, 'temas Matematicos', 4),
(2, 'Historia', 4),
(3, 'Tutoria', 4),
(4, 'Reaccion Quimica', 4),
(5, 'Bd No Relacionales', 4),
(6, 'Bd Relacionales', 4),
(7, 'Ingles', 4),
(8, 'Ciencias Sociales', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
