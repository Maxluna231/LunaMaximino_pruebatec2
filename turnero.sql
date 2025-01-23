-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-01-2025 a las 18:17:47
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `turnero`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `CIUDADANO`
--

CREATE TABLE `CIUDADANO` (
  `ID` bigint(20) NOT NULL,
  `DNI` varchar(255) DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `CIUDADANO`
--

INSERT INTO `CIUDADANO` (`ID`, `DNI`, `NOMBRE`) VALUES
(1, NULL, 'max'),
(2, 'curp', 'max'),
(3, 'curp', 'max2'),
(4, 'Acta', 'max5'),
(5, 'Acta', 'prueba'),
(6, 'curp', 'maxe23e'),
(7, 'curp', 'maxewdew'),
(8, 'curp', 'max342');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PERSONA`
--

CREATE TABLE `PERSONA` (
  `ID` bigint(20) NOT NULL,
  `APELLIDO` varchar(255) DEFAULT NULL,
  `NOMBRE` varchar(255) DEFAULT NULL,
  `TELEFONO` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `PERSONA`
--

INSERT INTO `PERSONA` (`ID`, `APELLIDO`, `NOMBRE`, `TELEFONO`) VALUES
(1, 'luna', 'max', '231uew'),
(2, 'sa', 'maxaS', '231uew'),
(3, 'luna', 'max', '231uew');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TRAMITE`
--

CREATE TABLE `TRAMITE` (
  `ID` bigint(20) NOT NULL,
  `DESCRIPCION` varchar(255) DEFAULT NULL,
  `TIPOTRAMITE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TRAMITE`
--

INSERT INTO `TRAMITE` (`ID`, `DESCRIPCION`, `TIPOTRAMITE`) VALUES
(1, '', '1'),
(2, 'No me gusta donde vivo', 'Cambio de domicilio'),
(3, 'No me gusta donde vivo1', 'Cambio de domicilio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TURNO`
--

CREATE TABLE `TURNO` (
  `ID` bigint(20) NOT NULL,
  `ESTADO` varchar(255) DEFAULT NULL,
  `FECHA` varchar(255) DEFAULT NULL,
  `NUMERO` varchar(255) DEFAULT NULL,
  `ciudadano_id` bigint(20) DEFAULT NULL,
  `tramite_id` bigint(20) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `TURNO`
--

INSERT INTO `TURNO` (`ID`, `ESTADO`, `FECHA`, `NUMERO`, `ciudadano_id`, `tramite_id`, `usuario_id`) VALUES
(1, 'Activo', '20000/2/2', '2', 2, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USUARIO`
--

CREATE TABLE `USUARIO` (
  `ID` int(11) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `USUARIO`
--

INSERT INTO `USUARIO` (`ID`, `EMAIL`, `PASSWORD`) VALUES
(1, 'mlunadelacruz300@gmail.com', '1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `CIUDADANO`
--
ALTER TABLE `CIUDADANO`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `PERSONA`
--
ALTER TABLE `PERSONA`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `TRAMITE`
--
ALTER TABLE `TRAMITE`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `TURNO`
--
ALTER TABLE `TURNO`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ciudadano_id` (`ciudadano_id`),
  ADD UNIQUE KEY `tramite_id` (`tramite_id`,`usuario_id`);

--
-- Indices de la tabla `USUARIO`
--
ALTER TABLE `USUARIO`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `CIUDADANO`
--
ALTER TABLE `CIUDADANO`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `PERSONA`
--
ALTER TABLE `PERSONA`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `TRAMITE`
--
ALTER TABLE `TRAMITE`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `TURNO`
--
ALTER TABLE `TURNO`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
