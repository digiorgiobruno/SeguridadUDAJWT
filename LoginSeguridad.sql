-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-10-2020 a las 00:04:49
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mendumy`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth`
--

CREATE TABLE `auth` (
  `id_auth` int(10) UNSIGNED NOT NULL,
  `idusr` int(10) UNSIGNED NOT NULL,
  `last_auth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth`
--

INSERT INTO `auth` (`id_auth`, `idusr`, `last_auth`) VALUES
(537, 2, '2020-10-02'),
(551, 18, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(30, 'Notarweb'),
(31, 'Edufisic');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `commentscourse`
--

CREATE TABLE `commentscourse` (
  `id` int(10) UNSIGNED NOT NULL,
  `idvideo` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `comment` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `commentdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `course`
--

CREATE TABLE `course` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` float DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `category` int(10) UNSIGNED DEFAULT NULL,
  `creationdate` datetime NOT NULL,
  `modificationdate` datetime DEFAULT NULL,
  `imgname` varchar(100) COLLATE utf8_spanish_ci DEFAULT 'default.jpg',
  `subcategory` int(10) UNSIGNED NOT NULL,
  `credentialid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `course`
--

INSERT INTO `course` (`id`, `price`, `name`, `description`, `category`, `creationdate`, `modificationdate`, `imgname`, `subcategory`, `credentialid`) VALUES
(122, 0, '15', '123', 30, '2020-08-28 19:17:33', '2020-09-22 13:44:23', '6f7504a02e4c7f15c971c9b73088af1f.png', 18, 1),
(126, 0, '14', 'un curso de mapas conceptuales', 30, '2020-08-30 23:27:35', '2020-09-22 13:44:11', 'd06b856be09a382d02fabb991157cd43.png', 18, 1),
(127, 12, '13', '', 30, '2020-08-30 23:52:35', '2020-09-22 13:43:59', '2c98a87b3e72f07ef9cd39261d17a50b.jpeg', 18, 1),
(131, 0, '12', 'a', 30, '2020-09-22 00:11:47', '2020-09-22 13:43:47', '822a7224b5e529f10db0638263b7d793.jpeg', 18, 2),
(132, 0, '11', 'a', 30, '2020-09-22 00:11:56', '2020-09-22 13:43:33', 'cf96bc9effa134ed5a02b07897c61ebd.jpeg', 18, 2),
(133, 0, '10', 'a', 30, '2020-09-22 00:12:03', '2020-09-22 13:43:23', '37cb34a00aaddcae2d20bec2607ce4c1.png', 18, 2),
(134, 0, '9', 'a', 30, '2020-09-22 00:12:10', '2020-09-22 13:43:15', '9c86c280d91316f0e12862967db3c273.png', 18, 2),
(135, 0, '8', 'a', 30, '2020-09-22 00:25:17', '2020-09-22 13:43:08', '8e6f58e4c1a7254a88ab20ee906f0a8c.png', 18, 1),
(136, 0, '7', 'a', 30, '2020-09-22 00:25:24', '2020-09-22 13:42:45', '45f06079334837f81870758325209a39.png', 18, 1),
(137, 0, '6', 'a', 30, '2020-09-22 00:25:27', '2020-09-22 13:42:38', '24fc539a6a8210729becff7374a941c8.png', 18, 1),
(138, 0, '5', 'a', 30, '2020-09-22 00:25:29', '2020-09-22 13:42:30', '512ed73372c0f948792857736ef1f7ed.png', 18, 1),
(139, 0, '4', 'a', 30, '2020-09-22 00:25:32', '2020-09-22 13:42:21', '27f37d2370b8e48615c8d272d0f6d0ce.png', 18, 1),
(140, 0, '3', '', 30, '2020-09-22 01:57:03', '2020-09-22 13:42:10', 'f0ec1f3201fc1c9ab4e4e83c617fa164.png', 18, 1),
(141, 0, '2', '', 30, '2020-09-22 01:57:07', '2020-09-22 13:42:01', 'fe3fc36c2223c48aa7aaf2e767eadf5e.png', 18, 1),
(142, 0, '1', '', 30, '2020-09-22 01:57:10', '2020-09-22 13:41:55', '79d15ecde14c7ec35eb36953d9c78e48.png', 18, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `courseuser`
--

CREATE TABLE `courseuser` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcourse` int(10) UNSIGNED DEFAULT NULL,
  `iduser` int(10) UNSIGNED DEFAULT NULL,
  `saledate` datetime DEFAULT NULL,
  `paid` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `courseuser`
--

INSERT INTO `courseuser` (`id`, `idcourse`, `iduser`, `saledate`, `paid`) VALUES
(1362, 122, 4, '2020-09-05 15:44:46', 0),
(1363, 126, 4, '2020-09-05 15:48:17', 0),
(1364, 126, 2, '2020-09-05 15:53:40', 0),
(1366, 122, 2, '2020-09-16 11:52:02', 1),
(1374, 127, 2, '2020-09-20 14:04:54', 0),
(1376, 139, 2, '2020-09-22 00:51:58', 0),
(1377, 131, 2, '2020-09-22 01:51:01', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `credentials`
--

CREATE TABLE `credentials` (
  `id` int(11) NOT NULL,
  `credential` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `modificationdate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `credentials`
--

INSERT INTO `credentials` (`id`, `credential`, `name`, `modificationdate`) VALUES
(1, 'APP_USR-2242931866985656-051120-c6aa618ca1695edb68ff8b1d5b4a2276-566667855', 'Sandbox', '2020-07-20 17:05:28'),
(2, 'APP_USR-8032873146845911-021319-999c3a72233fc67a25d325d517c6bf88-164497255', 'producción bruno', '2020-07-20 17:05:27'),
(25, 'APP_USR-2242931866985656-051120-c6aa618ca1695edb68ff8b1d5b4a2276-566667855', 'produccion user test', '2020-07-20 19:43:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `idvideo` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `uploaddate` datetime NOT NULL,
  `idcourse` int(10) UNSIGNED NOT NULL,
  `filename` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesion`
--

CREATE TABLE `profesion` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `profesion`
--

INSERT INTO `profesion` (`id`, `nombre`) VALUES
(1, 'Estudiante de Derecho'),
(2, 'Abogado'),
(3, 'Escribano'),
(4, 'Escribano Novel'),
(5, 'Otros');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recover`
--

CREATE TABLE `recover` (
  `id_recover` int(10) UNSIGNED NOT NULL,
  `idusr` int(10) UNSIGNED NOT NULL,
  `password_request` tinyint(10) NOT NULL DEFAULT 0,
  `token_password` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `last_modification` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `recover`
--

INSERT INTO `recover` (`id_recover`, `idusr`, `password_request`, `token_password`, `last_modification`) VALUES
(14, 18, 0, '31daf9c7242c42a6d3a6a2cd690c7990', '2020-10-05 03:37:21');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `idcategory` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `idcategory`) VALUES
(12, 'Fisica', 31),
(18, 'cat1', 30);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcourse` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `themes`
--

INSERT INTO `themes` (`id`, `idcourse`, `name`, `description`) VALUES
(71, 122, 'a', NULL),
(73, 122, 'b', NULL),
(74, 126, 't1', NULL),
(75, 126, 't2', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(100) UNSIGNED NOT NULL,
  `rol` int(11) DEFAULT 1,
  `name` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lastname` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idprofesion` int(10) UNSIGNED NOT NULL,
  `dni` varchar(11) COLLATE utf8_spanish_ci DEFAULT NULL,
  `active` tinyint(4) DEFAULT 0,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `creation_date` datetime NOT NULL,
  `date_birth` date DEFAULT NULL,
  `token` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `rol`, `name`, `lastname`, `idprofesion`, `dni`, `active`, `password`, `username`, `creation_date`, `date_birth`, `token`) VALUES
(2, 0, 'Bruno', 'Di Giorgio', 2, '1321', 1, '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 'digiorgiobruno92@gmail.com', '2020-08-30 00:42:20', '2020-08-28', 'eddcc22dcb643b70ac1cde16061b15bb'),
(4, 1, 'Raul', 'Vera', 2, '1245', 0, '1234567', 'raul@gmail.com', '2020-08-02 00:00:00', '2020-08-18', '123'),
(5, 1, 'Rogelio', 'Garcia', 2, '1245', 0, '1234567', 'roge@gmail.com', '2020-08-02 00:00:00', '2020-08-18', '123'),
(18, 1, 'luca', 'Di Giorgio', 1, '1234567', 1, '8bb0cf6eb9b17d0f7d22b456f121257dc1254e1f01665370476383ea776df414', 'brunobocalomejor@gmail.com', '2020-10-05 03:33:03', '2020-10-05', '995bca5c5612e4b97f3ecb44279bdf1a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videoscourse`
--

CREATE TABLE `videoscourse` (
  `id` int(10) UNSIGNED NOT NULL,
  `idcourse` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `uploaddate` datetime DEFAULT NULL,
  `modificationdate` datetime DEFAULT NULL,
  `idtheme` int(10) UNSIGNED NOT NULL,
  `description` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `videoscourse`
--

INSERT INTO `videoscourse` (`id`, `idcourse`, `name`, `title`, `uploaddate`, `modificationdate`, `idtheme`, `description`) VALUES
(198, 122, '76979871', 'video1', '2020-08-29 20:06:00', '2020-08-30 10:44:15', 71, ''),
(199, 122, '76979871', 'video2', '2020-08-29 23:03:58', '2020-08-30 10:44:51', 71, ''),
(200, 122, '279994397', 'video3', '2020-08-30 23:26:52', NULL, 73, 'video de vimeo'),
(201, 126, '279994397', 'Tema 1 mapas conceptuales', '2020-08-30 23:28:15', NULL, 74, ''),
(204, 126, '279994397', 'introduccion', '2020-08-30 23:29:13', NULL, 74, ''),
(206, 126, '279994397', 'avanzado', '2020-08-30 23:29:53', NULL, 75, ''),
(207, 126, '279994397', 'avanzado 2', '2020-08-30 23:30:32', NULL, 75, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `views`
--

CREATE TABLE `views` (
  `id` int(100) NOT NULL,
  `videoid` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `created` datetime NOT NULL,
  `active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `views`
--

INSERT INTO `views` (`id`, `videoid`, `userid`, `created`, `active`) VALUES
(0, 198, 4, '2020-08-29 21:32:36', 1),
(3, 198, 5, '2020-08-30 01:14:33', 1),
(4, 199, 5, '2020-08-30 10:15:07', 1),
(7, 198, 2, '2020-08-30 23:24:49', 1),
(8, 199, 4, '2020-08-30 23:24:53', 1),
(9, 199, 2, '2020-08-30 23:25:20', 1),
(10, 200, 2, '2020-08-30 23:26:56', 1),
(11, 201, 2, '2020-08-30 23:30:49', 1),
(12, 207, 2, '2020-08-30 23:30:51', 1),
(13, 202, 2, '2020-08-30 23:30:54', 1),
(14, 208, 2, '2020-08-30 23:30:56', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id_auth`) USING BTREE,
  ADD KEY `idusr` (`idusr`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `commentscourse`
--
ALTER TABLE `commentscourse`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_ibfk_1` (`category`),
  ADD KEY `subcategory` (`subcategory`),
  ADD KEY `course_ibfk_3` (`credentialid`);

--
-- Indices de la tabla `courseuser`
--
ALTER TABLE `courseuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcourse` (`idcourse`),
  ADD KEY `iduser` (`iduser`);

--
-- Indices de la tabla `credentials`
--
ALTER TABLE `credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcourse` (`idcourse`),
  ADD KEY `files_ibfk_2` (`idvideo`);

--
-- Indices de la tabla `profesion`
--
ALTER TABLE `profesion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recover`
--
ALTER TABLE `recover`
  ADD PRIMARY KEY (`id_recover`),
  ADD KEY `idusr` (`idusr`);

--
-- Indices de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcategory` (`idcategory`);

--
-- Indices de la tabla `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcourse` (`idcourse`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `videoscourse`
--
ALTER TABLE `videoscourse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idcourse` (`idcourse`);

--
-- Indices de la tabla `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `views_ibfk_1` (`userid`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth`
--
ALTER TABLE `auth`
  MODIFY `id_auth` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=552;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `commentscourse`
--
ALTER TABLE `commentscourse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `course`
--
ALTER TABLE `course`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT de la tabla `courseuser`
--
ALTER TABLE `courseuser`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1378;

--
-- AUTO_INCREMENT de la tabla `credentials`
--
ALTER TABLE `credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT de la tabla `profesion`
--
ALTER TABLE `profesion`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `recover`
--
ALTER TABLE `recover`
  MODIFY `id_recover` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `videoscourse`
--
ALTER TABLE `videoscourse`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT de la tabla `views`
--
ALTER TABLE `views`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth`
--
ALTER TABLE `auth`
  ADD CONSTRAINT `auth_ibfk_1` FOREIGN KEY (`idusr`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `course_ibfk_2` FOREIGN KEY (`subcategory`) REFERENCES `subcategories` (`id`),
  ADD CONSTRAINT `course_ibfk_3` FOREIGN KEY (`credentialid`) REFERENCES `credentials` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Filtros para la tabla `courseuser`
--
ALTER TABLE `courseuser`
  ADD CONSTRAINT `courseuser_ibfk_2` FOREIGN KEY (`idcourse`) REFERENCES `course` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courseuser_ibfk_3` FOREIGN KEY (`iduser`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`idcourse`) REFERENCES `course` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_ibfk_2` FOREIGN KEY (`idvideo`) REFERENCES `videoscourse` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `recover`
--
ALTER TABLE `recover`
  ADD CONSTRAINT `recover_ibfk_1` FOREIGN KEY (`idusr`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`idcategory`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `themes`
--
ALTER TABLE `themes`
  ADD CONSTRAINT `themes_ibfk_1` FOREIGN KEY (`idcourse`) REFERENCES `course` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `videoscourse`
--
ALTER TABLE `videoscourse`
  ADD CONSTRAINT `videoscourse_ibfk_1` FOREIGN KEY (`idcourse`) REFERENCES `course` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `views`
--
ALTER TABLE `views`
  ADD CONSTRAINT `views_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
