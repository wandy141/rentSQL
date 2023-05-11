-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-05-2023 a las 19:47:49
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `renta`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alquiler`
--

CREATE TABLE `alquiler` (
  `idalquiler` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `idvehiculo` int(11) DEFAULT NULL,
  `precio` double DEFAULT NULL,
  `fechaini` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `dias` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `entregado` bit(1) DEFAULT NULL,
  `recibido` bit(1) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `alquiler`
--

INSERT INTO `alquiler` (`idalquiler`, `usuario`, `fecha`, `idvehiculo`, `precio`, `fechaini`, `fechafin`, `dias`, `total`, `entregado`, `recibido`, `estado`) VALUES
(1, 'wandy', '2023-05-20', 63, 60, '2023-05-20', '2023-05-23', NULL, 200, NULL, NULL, NULL),
(2, NULL, '2023-05-05', 48, 44, '2023-05-05', '2023-05-09', 4, 176, NULL, NULL, NULL),
(3, NULL, '2023-05-05', 48, 44, '2023-05-05', '2023-05-09', 4, 176, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `token` varchar(100) NOT NULL,
  `usuarioid` varchar(45) DEFAULT NULL,
  `fechavalida` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `seccion`
--

INSERT INTO `seccion` (`token`, `usuarioid`, `fechavalida`) VALUES
('brian2123', 'brian2', '2023-04-14 16:44:47'),
('wandy123', 'wandy', '2023-05-05 19:25:02');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipovehiculo`
--

CREATE TABLE `tipovehiculo` (
  `idtipo` int(11) NOT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipovehiculo`
--

INSERT INTO `tipovehiculo` (`idtipo`, `tipo`, `estado`) VALUES
(1, 'Economico', b'1'),
(2, 'Compacto', b'1'),
(3, 'Tamaño normal', b'1'),
(4, 'Premium', b'1'),
(5, 'Lujo', b'1'),
(6, 'camion', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuarioid` varchar(15) NOT NULL,
  `contrasena` varchar(12) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuarioid`, `contrasena`, `nombre`, `estado`) VALUES
('wandy', '123', 'wandy', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `idvehiculo` int(11) NOT NULL,
  `marca` varchar(50) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `color` varchar(25) DEFAULT NULL,
  `asiento` int(11) DEFAULT NULL,
  `combustible` varchar(50) DEFAULT NULL,
  `tipo` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `placa` varchar(45) DEFAULT NULL,
  `precio` double NOT NULL,
  `imagen` blob DEFAULT NULL,
  `estado` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`idvehiculo`, `marca`, `modelo`, `color`, `asiento`, `combustible`, `tipo`, `ano`, `placa`, `precio`, `imagen`, `estado`) VALUES
(47, 'Toyota', 'Banglades', 'Gris', 5, 'Gasolina', 1, 2022, 'H28888', 55, NULL, b'1'),
(48, 'Honda', 'logo', 'blanco', 4, 'Gasolina', 1, 2022, 'A656530', 44, NULL, b'1'),
(61, 'Tesla', 'xr33', 'blanco', 4, 'Electrico', 5, 2022, 'xvxffxggfcff', 76, NULL, b'1'),
(62, 'toyota', 'asdf78', 'rojo', 5, 'Gas', 2, 2006, 'a382', 56, NULL, b'1'),
(63, 'Toyota', 'Camry', 'Rojo', 4, 'Gasolina', 2, 2018, 'VHGVhsw2', 50, NULL, b'1'),
(64, 'Casd', 'Fsdf', 'Aerg', 4, 'Gasolina', 6, 2010, 'Ergre', 88, NULL, b'1'),
(65, 'Th', 'Fghf', 'Tfdth', 4, 'Gasoil', 3, 2008, 'Fhfd', 85, NULL, b'0'),
(66, 'Fdg', 'Df', 'G', 2, 'Gasolina', 4, 2005, 'Fg', 85, NULL, b'0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD PRIMARY KEY (`idalquiler`),
  ADD KEY `fk_vehiculo` (`idvehiculo`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`token`);

--
-- Indices de la tabla `tipovehiculo`
--
ALTER TABLE `tipovehiculo`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuarioid`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`idvehiculo`),
  ADD KEY `tipo_idx_2` (`tipo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alquiler`
--
ALTER TABLE `alquiler`
  MODIFY `idalquiler` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipovehiculo`
--
ALTER TABLE `tipovehiculo`
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `idvehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alquiler`
--
ALTER TABLE `alquiler`
  ADD CONSTRAINT `fk_vehiculo` FOREIGN KEY (`idvehiculo`) REFERENCES `vehiculo` (`idvehiculo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `fk_tipo` FOREIGN KEY (`tipo`) REFERENCES `tipovehiculo` (`idtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
