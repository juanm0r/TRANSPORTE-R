-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2024 a las 05:22:19
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
-- Base de datos: `bd_transporte_rivera`
--
CREATE DATABASE IF NOT EXISTS `bd_transporte_rivera` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE `bd_transporte_rivera`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_admin` int(75) NOT NULL,
  `nombre_admin` varchar(50) NOT NULL,
  `apellido_admin` varchar(50) NOT NULL,
  `correo_admin` varchar(75) NOT NULL,
  `contraseña` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admin`, `nombre_admin`, `apellido_admin`, `correo_admin`, `contraseña`) VALUES
(1, 'Daniel Mauricio ', 'Suaterna Guzmán', 'suaterna77@gmail.com', 'SuaternaAdmin1'),
(2, 'Juan Carlos', 'Moreno Sierra', 'moreno21072006@gmail.com', 'MorenoAdmin2'),
(3, 'Brayan', 'Sarmiento Lara', 'brayansarmiento2509lara@gmail.com', 'SarmientoAdmin3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignacion`
--

CREATE TABLE `asignacion` (
  `id_conductor` int(75) DEFAULT NULL,
  `id_solicitud_acarreo` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_conductor`
--

CREATE TABLE `comentario_conductor` (
  `id_comentario_conductor` int(75) NOT NULL,
  `comentario_conductor` varchar(500) DEFAULT NULL,
  `id_conductor` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentario_usuario`
--

CREATE TABLE `comentario_usuario` (
  `id_comentario_usuario` int(75) NOT NULL,
  `comentario_usuario` varchar(500) DEFAULT NULL,
  `id_usuario` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conductor`
--

CREATE TABLE `conductor` (
  `id_conductor` int(75) NOT NULL,
  `nombre_conductor` varchar(57) DEFAULT NULL,
  `apellido_conductor` varchar(57) DEFAULT NULL,
  `telefono` bigint(10) DEFAULT NULL,
  `direccion` varchar(63) DEFAULT NULL,
  `localidad_ubica` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `conductor`
--

INSERT INTO `conductor` (`id_conductor`, `nombre_conductor`, `apellido_conductor`, `telefono`, `direccion`, `localidad_ubica`) VALUES
(1, 'Edwin', 'Rodriguez', 320914785, 'Calle 75 bis #8-33', 5),
(2, 'Carlos', 'Gómez', 3201234567, 'Calle 12 #34-56', 11),
(3, 'María', 'Pérez', 3117654321, 'Carrera 10 #23-45', 1),
(4, 'Andrés', 'Rodríguez', 3229876543, 'Avenida 5 #67-89', 14),
(5, 'Lucía', 'López', 3148765432, 'Transversal 7 #15-20', 20),
(6, 'Jorge', 'Martínez', 3176543210, 'Diagonal 4 #30-40', 20),
(7, 'Sofía', 'Ramírez', 3192345678, 'Calle 20 #50-10', 11),
(8, 'Alejandro', 'Torres', 3158765432, 'Carrera 8 #60-15', 9),
(9, 'Camila', 'Moreno', 3121234567, 'Avenida 10 #70-25', 6),
(10, 'Luis', 'Vargas', 3109876543, 'Calle 22 #80-30', 19),
(11, 'Isabela', 'Hernández', 3206543210, 'Carrera 12 #90-40', 10),
(12, 'Tomás', 'Navarro', 3145678901, 'Avenida 15 #20-50', 12),
(13, 'Valeria', 'Rojas', 3162345678, 'Transversal 18 #30-60', 6),
(14, 'Felipe', 'Silva', 3198765432, 'Carrera 25 #40-70', 13),
(15, 'Gabriela', 'Méndez', 3113456789, 'Calle 45 #50-80', 12),
(16, 'Ricardo', 'Cárdenas', 3221234567, 'Avenida 60 #15-90', NULL),
(17, 'Paula', 'Ortiz', 3177654321, 'Diagonal 70 #10-20', 8),
(18, 'Sebastián', 'Jiménez', 3123456789, 'Calle 80 #5-30', 3),
(19, 'Adriana', 'Castro', 3189876543, 'Carrera 3 #15-40', 4),
(20, 'Héctor', 'Santos', 3208765432, 'Avenida 50 #25-60', 17),
(21, 'Laura', 'Álvarez', 3112345678, '', NULL),
(22, 'Julián', 'Núñez', 3227654321, 'Calle 90 #20-30', NULL),
(23, 'Natalia', 'Guerrero', 3193456789, 'Carrera 40 #30-15', NULL),
(24, 'David', 'Luna', 3151234567, 'Calle 10 #25-35', NULL),
(25, 'Diana', 'Salazar', 3172345678, 'Avenida 12 #40-45', NULL),
(26, 'Pablo', 'Peña', 3138765432, 'Carrera 14 #50-60', NULL),
(27, 'Mónica', 'Rico', 3119876543, 'Transversal 30 #15-70', NULL),
(28, 'Manuel', 'Vallejo', 3206543210, 'Diagonal 16 #25-80', NULL),
(29, 'Catalina', 'Guzmán', 3198765432, 'Calle 25 #35-90', NULL),
(30, 'Francisco', 'Palacios', 3123456789, 'Carrera 5 #45-10', NULL),
(31, 'Ana', 'Montoya', 3147654321, 'Calle 8 #55-20', NULL),
(32, 'Leonardo', 'Suárez', 3139876543, 'Avenida 15 #65-30', NULL),
(33, 'Carolina', 'Cruz', 3161234567, 'Carrera 10 #75-40', NULL),
(34, 'Mateo', 'Mejía', 3217654321, 'Calle 20 #85-50', NULL),
(35, 'Luciana', 'Arévalo', 3102345678, 'Avenida 30 #95-60', NULL),
(36, 'Emilio', 'Lara', 3128765432, 'Carrera 40 #5-70', NULL),
(37, 'Daniela', 'Quintero', 3229876543, 'Calle 6 #15-80', NULL),
(38, 'Miguel', 'Quintero', 3116543210, 'Avenida 12 #25-90', NULL),
(39, 'Ángel', 'Fernández', 3181234567, 'Calle 16 #35-20', NULL),
(40, 'Sara', 'González', 3109876543, 'Carrera 60 #45-30', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_acarreo`
--

CREATE TABLE `estado_acarreo` (
  `id_estado_acarreo` int(75) NOT NULL,
  `estado_acarreo` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estado_acarreo`
--

INSERT INTO `estado_acarreo` (`id_estado_acarreo`, `estado_acarreo`) VALUES
(1, 'Pendiente'),
(2, 'Completado'),
(3, 'Asignado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_conductor`
--

CREATE TABLE `estado_conductor` (
  `id_conductor` int(75) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `localidad`
--

CREATE TABLE `localidad` (
  `id_localidad` int(75) NOT NULL,
  `localidad` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `localidad`
--

INSERT INTO `localidad` (`id_localidad`, `localidad`) VALUES
(1, 'Usaquén'),
(2, 'Chapinero'),
(3, 'Santa Fe'),
(4, 'San Cristóbal'),
(5, 'Usme'),
(6, 'Tunjuelito'),
(7, 'Bosa'),
(8, 'Kennedy'),
(9, 'Fontibón'),
(10, 'Engativá'),
(11, 'Suba'),
(12, 'Barrios Unidos'),
(13, 'Teusaquillo'),
(14, 'Los Mártires'),
(15, 'Antonio Nariño'),
(16, 'Puente Aranda'),
(17, 'La Candelaria'),
(18, 'Rafael Uribe Uribe'),
(19, 'Ciudad Bolívar'),
(20, 'Sumapaz');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `id_factura` int(75) NOT NULL,
  `num_factura` int(75) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `precio` bigint(20) DEFAULT NULL,
  `id_usuario` int(75) DEFAULT NULL,
  `id_solicitud_acarreo` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_acarreo`
--

CREATE TABLE `solicitud_acarreo` (
  `id_solicitud_acarreo` int(75) NOT NULL,
  `direccion_origen` varchar(63) DEFAULT NULL,
  `direccion_destino` varchar(63) DEFAULT NULL,
  `localidad_origen` int(75) DEFAULT NULL,
  `localidad_destino` int(75) DEFAULT NULL,
  `fecha_acarreo` date DEFAULT NULL,
  `hora_acarreo` time DEFAULT NULL,
  `descripcion_origen` varchar(100) DEFAULT NULL,
  `descripcion_destino` varchar(100) DEFAULT NULL,
  `fecha_llegada` date DEFAULT NULL,
  `hora_llegada` time DEFAULT NULL,
  `tipo_vehiculo` varchar(50) DEFAULT NULL,
  `id_usuario` int(75) DEFAULT NULL,
  `estado_acarreo` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(75) NOT NULL,
  `nombre` varchar(57) DEFAULT NULL,
  `apellido` varchar(57) DEFAULT NULL,
  `telefono` bigint(10) DEFAULT NULL,
  `direccion` varchar(63) DEFAULT NULL,
  `numero_documento` int(12) DEFAULT NULL,
  `correo` varchar(70) DEFAULT NULL,
  `contraseña` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `telefono`, `direccion`, `numero_documento`, `correo`, `contraseña`) VALUES
(1, 'Juan Alberto', 'Jimenez Gonzales', 320854796, 'calle 75 #33', 1020365487, 'Alberto001@gmail.com', 'AlbertEte'),
(2, 'Juan', 'Pérez', 3201234567, 'Calle 10 #5-20', 1012345678, 'juan.perez@gmail.com', 'jperez2024'),
(3, 'María', 'Gómez', 3117654321, 'Carrera 12 #8-30', 1023456789, 'maria.gomez@hotmail.com', 'mariaG123'),
(4, 'Luis', 'Rodríguez', 3229876543, 'Avenida 15 #23-45', 1034567890, 'luis.rodriguez@yahoo.com', 'luis2024Rodr'),
(5, 'Ana', 'López', 3148765432, 'Transversal 25 #10-15', 1045678901, 'ana.lopez@gmail.com', 'alopez456'),
(6, 'Carlos', 'Martínez', 3176543210, 'Diagonal 9 #6-80', 1056789012, 'carlos.martinez@outlook.com', 'cmartinez789'),
(7, 'Laura', 'Hernández', 3192345678, 'Calle 45 #8-20', 1067890123, 'laura.hernandez@gmail.com', 'lh123Laura'),
(8, 'Pedro', 'García', 3139876543, 'Carrera 20 #5-35', 1078901234, 'pedro.garcia@hotmail.com', 'pgarcia654'),
(9, 'Sofía', 'Ramírez', 3212345678, 'Avenida 8 #14-10', 1089012345, 'sofia.ramirez@yahoo.com', 'sofiaR789'),
(10, 'Andrés', 'Torres', 3158765432, 'Calle 60 #30-50', 1090123456, 'andres.torres@gmail.com', 'atorres456'),
(11, 'Mónica', 'Moreno', 3121234567, 'Carrera 18 #12-25', 1101234567, 'monica.moreno@outlook.com', 'morenom123'),
(12, 'Jorge', 'Vargas', 3109876543, 'Calle 70 #22-40', 1112345678, 'jorge.vargas@gmail.com', 'jvargas321'),
(13, 'Clara', 'Paredes', 3206543210, 'Avenida 16 #4-30', 1123456789, 'clara.paredes@hotmail.com', 'cparedes789'),
(14, 'Héctor', 'Navarro', 3145678901, 'Transversal 3 #18-90', 1134567890, 'hector.navarro@yahoo.com', 'navarro2024'),
(15, 'Paula', 'Rojas', 3162345678, 'Carrera 25 #10-12', 1145678901, 'paula.rojas@gmail.com', 'projas654'),
(16, 'Santiago', 'Silva', 3198765432, 'Calle 11 #15-35', 1156789012, 'santiago.silva@outlook.com', 'ssilva123'),
(17, 'Valeria', 'Méndez', 3113456789, 'Diagonal 20 #8-60', 1167890123, 'valeria.mendez@gmail.com', 'vmendez789'),
(18, 'Ricardo', 'Cárdenas', 3221234567, 'Avenida 30 #5-15', 1178901234, 'ricardo.cardenas@hotmail.com', 'rcardenas456'),
(19, 'Camila', 'Ortiz', 3177654321, 'Carrera 14 #6-80', 1189012345, 'camila.ortiz@yahoo.com', 'cortiz2024'),
(20, 'Daniel', 'Jiménez', 3123456789, 'Calle 80 #22-10', 1190123456, 'daniel.jimenez@gmail.com', 'djimenez654'),
(21, 'Luisa', 'Castro', 3189876543, 'Carrera 10 #9-15', 1201234567, 'luisa.castro@outlook.com', 'lcastro789'),
(22, 'Tomás', 'Pérez', 3208765432, 'Transversal 7 #4-25', 1212345678, 'tomas.perez@gmail.com', 'tperez123'),
(23, 'Diana', 'Santos', 3112345678, 'Avenida 40 #30-10', 1223456789, 'diana.santos@hotmail.com', 'dsantos654'),
(24, 'Mateo', 'Álvarez', 3227654321, 'Diagonal 12 #6-45', 1234567890, 'mateo.alvarez@yahoo.com', 'malvarez789'),
(25, 'Isabela', 'Núñez', 3193456789, 'Carrera 16 #5-35', 1245678901, 'isabela.nunez@gmail.com', 'inunez2024'),
(26, 'David', 'Guerrero', 3151234567, 'Calle 35 #10-50', 1256789012, 'david.guerrero@outlook.com', 'dguerrero456'),
(27, 'Mariana', 'Luna', 3172345678, 'Carrera 9 #12-80', 1267890123, 'mariana.luna@gmail.com', 'mluna654'),
(28, 'Emilio', 'Salazar', 3138765432, 'Avenida 18 #6-20', 1278901234, 'emilio.salazar@hotmail.com', 'esalazar321'),
(29, 'Alejandra', 'Peña', 3119876543, 'Calle 28 #4-15', 1289012345, 'alejandra.pena@yahoo.com', 'apena2024'),
(30, 'Pablo', 'Rico', 3206543210, 'Carrera 40 #18-25', 1290123456, 'pablo.rico@gmail.com', 'prico456'),
(31, 'Catalina', 'Vallejo', 3198765432, 'Diagonal 22 #14-50', 1301234567, 'catalina.vallejo@hotmail.com', 'cvallejo789'),
(32, 'Felipe', 'Guzmán', 3123456789, 'Calle 15 #5-35', 1312345678, 'felipe.guzman@yahoo.com', 'fguzman123'),
(33, 'Sara', 'Palacios', 3147654321, 'Avenida 70 #22-15', 1323456789, 'sara.palacios@gmail.com', 'spalacios654'),
(34, 'Adriana', 'Montoya', 3139876543, 'Carrera 28 #10-30', 1334567890, 'adriana.montoya@hotmail.com', 'amontoya321'),
(35, 'Leonardo', 'Suárez', 3161234567, 'Transversal 5 #9-80', 1345678901, 'leonardo.suarez@yahoo.com', 'lsuarez456'),
(36, 'Manuela', 'Cruz', 3217654321, 'Diagonal 18 #30-25', 1356789012, 'manuela.cruz@gmail.com', 'mcruz123'),
(37, 'Gabriel', 'Mejía', 3102345678, 'Carrera 50 #12-90', 1367890123, 'gabriel.mejia@outlook.com', 'gmejia654'),
(38, 'Nicole', 'Arévalo', 3128765432, 'Calle 18 #8-10', 1378901234, 'nicole.arevalo@hotmail.com', 'narevalo321'),
(39, 'Sebastián', 'Lara', 3229876543, 'Avenida 50 #6-35', 1389012345, 'sebastian.lara@yahoo.com', 'slara456'),
(40, 'Daniela', 'Quintero', 3116543210, 'Carrera 22 #5-50', 1390123456, 'daniela.quintero@gmail.com', 'dquintero123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehiculo`
--

CREATE TABLE `vehiculo` (
  `id_vehiculo` int(75) NOT NULL,
  `placa` varchar(10) DEFAULT NULL,
  `marca` varchar(30) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `id_conductor` int(75) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `vehiculo`
--

INSERT INTO `vehiculo` (`id_vehiculo`, `placa`, `marca`, `modelo`, `color`, `id_conductor`) VALUES
(1, 'ABC123', 'Toyota', '2020', 'Blanco', 1),
(2, 'DEF456', 'Honda', '2019', 'Negro', 2),
(3, 'GHI789', 'Chevrolet', '2021', 'Rojo', 3),
(4, 'JKL012', 'Mazda', '2018', 'Azul', 4),
(5, 'MNO345', 'Nissan', '2022', 'Gris', 5),
(6, 'PQR678', 'Ford', '2020', 'Blanco', 6),
(7, 'STU901', 'Kia', '2021', 'Negro', 7),
(8, 'VWX234', 'Hyundai', '2019', 'Rojo', 8),
(9, 'YZA567', 'Volkswagen', '2023', 'Azul', 9),
(10, 'BCD890', 'Renault', '2022', 'Gris', 10),
(11, 'EFG123', 'Peugeot', '2020', 'Blanco', 11),
(12, 'HIJ456', 'Subaru', '2021', 'Negro', 12),
(13, 'KLM789', 'Jeep', '2018', 'Rojo', 13),
(14, 'NOP012', 'Suzuki', '2020', 'Azul', 14),
(15, 'QRS345', 'BMW', '2021', 'Gris', 15),
(16, 'TUV678', 'Mercedes-Benz', '2019', 'Blanco', 16),
(17, 'WXY901', 'Audi', '2022', 'Negro', 17),
(18, 'ZAB234', 'Volvo', '2021', 'Rojo', 18),
(19, 'CDE567', 'Fiat', '2018', 'Azul', 19),
(20, 'FGH890', 'Mitsubishi', '2023', 'Gris', 20),
(21, 'IJK123', 'Tesla', '2020', 'Azul', 21),
(22, 'LMN456', 'Ferrari', '2022', 'Rojo', 22),
(23, 'OPQ789', 'Lamborghini', '2021', 'Amarillo', 23),
(24, 'RST012', 'Porsche', '2019', 'Blanco', 24),
(25, 'UVW345', 'Jaguar', '2020', 'Negro', 25),
(26, 'XYZ678', 'Land Rover', '2021', 'Gris', 26),
(27, 'ABD901', 'Alfa Romeo', '2018', 'Rojo', 27),
(28, 'CEF234', 'Cadillac', '2023', 'Blanco', 28),
(29, 'GHI567', 'Dodge', '2022', 'Negro', 29),
(30, 'JKL890', 'Chrysler', '2021', 'Azul', 30),
(31, 'MNO123', 'Infinity', '2019', 'Blanco', 31),
(32, 'PQR456', 'Acura', '2020', 'Negro', 32),
(33, 'STU789', 'Buick', '2021', 'Gris', 33),
(34, 'VWX012', 'Mini', '2023', 'Rojo', 34),
(35, 'YZA345', 'GMC', '2022', 'Blanco', 35),
(36, 'BCD678', 'Lincoln', '2018', 'Negro', 36),
(37, 'EFG901', 'Ram', '2020', 'Azul', 37),
(38, 'HIJ234', 'Genesis', '2021', 'Rojo', 38),
(39, 'KLM567', 'Bentley', '2019', 'Negro', 39),
(40, 'NOP890', 'Rolls-Royce', '2023', 'Blanco', 40);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admin`),
  ADD UNIQUE KEY `correo_admin` (`correo_admin`);

--
-- Indices de la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD KEY `id_conductor` (`id_conductor`,`id_solicitud_acarreo`),
  ADD KEY `id_solicitud_acarreo` (`id_solicitud_acarreo`);

--
-- Indices de la tabla `comentario_conductor`
--
ALTER TABLE `comentario_conductor`
  ADD PRIMARY KEY (`id_comentario_conductor`),
  ADD KEY `id_conductor` (`id_conductor`);

--
-- Indices de la tabla `comentario_usuario`
--
ALTER TABLE `comentario_usuario`
  ADD PRIMARY KEY (`id_comentario_usuario`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_usuario_2` (`id_usuario`);

--
-- Indices de la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD PRIMARY KEY (`id_conductor`),
  ADD KEY `localidad_ubica` (`localidad_ubica`);

--
-- Indices de la tabla `estado_acarreo`
--
ALTER TABLE `estado_acarreo`
  ADD PRIMARY KEY (`id_estado_acarreo`);

--
-- Indices de la tabla `estado_conductor`
--
ALTER TABLE `estado_conductor`
  ADD UNIQUE KEY `id_conductor` (`id_conductor`);

--
-- Indices de la tabla `localidad`
--
ALTER TABLE `localidad`
  ADD PRIMARY KEY (`id_localidad`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`id_factura`),
  ADD KEY `id_solicitud_acarreo` (`id_solicitud_acarreo`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_usuario_2` (`id_usuario`);

--
-- Indices de la tabla `solicitud_acarreo`
--
ALTER TABLE `solicitud_acarreo`
  ADD PRIMARY KEY (`id_solicitud_acarreo`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `estado_acarreo` (`estado_acarreo`),
  ADD KEY `localidad_origen` (`localidad_origen`,`localidad_destino`),
  ADD KEY `localidad_destino` (`localidad_destino`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD PRIMARY KEY (`id_vehiculo`),
  ADD KEY `id_conductor` (`id_conductor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_admin` int(75) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `comentario_conductor`
--
ALTER TABLE `comentario_conductor`
  MODIFY `id_comentario_conductor` int(75) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pago`
--
ALTER TABLE `pago`
  MODIFY `id_factura` int(75) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  MODIFY `id_vehiculo` int(75) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignacion`
--
ALTER TABLE `asignacion`
  ADD CONSTRAINT `asignacion_ibfk_1` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`id_conductor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `asignacion_ibfk_2` FOREIGN KEY (`id_solicitud_acarreo`) REFERENCES `solicitud_acarreo` (`id_solicitud_acarreo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentario_conductor`
--
ALTER TABLE `comentario_conductor`
  ADD CONSTRAINT `comentario_conductor_ibfk_1` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`id_conductor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentario_usuario`
--
ALTER TABLE `comentario_usuario`
  ADD CONSTRAINT `comentario_usuario_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `conductor`
--
ALTER TABLE `conductor`
  ADD CONSTRAINT `conductor_ibfk_1` FOREIGN KEY (`localidad_ubica`) REFERENCES `localidad` (`id_localidad`);

--
-- Filtros para la tabla `estado_conductor`
--
ALTER TABLE `estado_conductor`
  ADD CONSTRAINT `estado_conductor_ibfk_1` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`id_conductor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pago`
--
ALTER TABLE `pago`
  ADD CONSTRAINT `id_solicitud_acarreo` FOREIGN KEY (`id_solicitud_acarreo`) REFERENCES `solicitud_acarreo` (`id_solicitud_acarreo`),
  ADD CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `solicitud_acarreo`
--
ALTER TABLE `solicitud_acarreo`
  ADD CONSTRAINT `estado_acarreo` FOREIGN KEY (`estado_acarreo`) REFERENCES `estado_acarreo` (`id_estado_acarreo`),
  ADD CONSTRAINT `id_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `solicitud_acarreo_ibfk_1` FOREIGN KEY (`localidad_origen`) REFERENCES `localidad` (`id_localidad`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `solicitud_acarreo_ibfk_2` FOREIGN KEY (`localidad_destino`) REFERENCES `localidad` (`id_localidad`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vehiculo`
--
ALTER TABLE `vehiculo`
  ADD CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`id_conductor`) REFERENCES `conductor` (`id_conductor`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
