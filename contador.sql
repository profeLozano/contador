-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-09-2021 a las 22:04:50
-- Versión del servidor: 10.6.3-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `itlf`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contador`
--

CREATE TABLE `contador` (
  `id` int(11) NOT NULL,
  `local` varchar(60) NOT NULL,
  `tipo` varchar(10) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contador`
--

INSERT INTO `contador` (`id`, `local`, `tipo`, `fecha`) VALUES
(1, 'prueba', 'ingreso', '2021-08-26 20:24:05'),
(2, 'prueba', 'egreso', '2021-08-26 20:30:42'),
(3, 'prueba', 'ingreso', '2021-08-26 20:31:40'),
(4, 'prueba', 'ingreso', '2021-08-26 20:31:40'),
(5, 'prueba', 'ingreso', '2021-08-26 20:31:40'),
(6, 'prueba', 'ingreso', '2021-08-26 20:31:41'),
(7, 'prueba', 'ingreso', '2021-08-26 20:31:41'),
(8, 'prueba', 'egreso', '2021-08-26 20:31:41'),
(9, 'prueba', 'egreso', '2021-08-26 20:31:41'),
(10, 'prueba', 'ingreso', '2021-08-26 20:31:42'),
(11, 'prueba', 'ingreso', '2021-08-26 20:31:42'),
(12, 'prueba', 'ingreso', '2021-08-26 20:31:42'),
(13, 'prueba', 'egreso', '2021-08-26 20:31:43'),
(14, 'prueba', 'egreso', '2021-08-26 20:31:43'),
(15, 'prueba', 'egreso', '2021-08-26 20:31:43'),
(16, 'prueba', 'egreso', '2021-08-26 20:31:43'),
(17, 'prueba', 'ingreso', '2021-08-26 20:31:44'),
(18, 'prueba', 'ingreso', '2021-08-26 20:31:44'),
(19, 'prueba', 'ingreso', '2021-08-26 20:31:44'),
(20, 'prueba', 'ingreso', '2021-08-26 20:31:44'),
(21, 'prueba', 'ingreso', '2021-08-26 20:31:45'),
(22, 'prueba', 'ingreso', '2021-08-26 20:31:45'),
(23, 'prueba', 'ingreso', '2021-08-26 20:31:45'),
(24, 'prueba', 'ingreso', '2021-08-26 20:31:45'),
(25, 'prueba', 'egreso', '2021-08-26 20:31:46'),
(26, 'prueba', 'egreso', '2021-08-26 20:31:46'),
(27, 'prueba', 'egreso', '2021-08-26 20:31:46'),
(28, 'prueba', 'ingreso', '2021-08-26 20:31:47'),
(29, 'prueba', 'ingreso', '2021-08-26 20:31:47'),
(30, 'prueba', 'ingreso', '2021-08-26 20:31:47'),
(31, 'prueba', 'ingreso', '2021-08-26 20:31:47'),
(32, 'prueba', 'ingreso', '2021-08-26 20:31:48'),
(33, 'prueba', 'ingreso', '2021-08-26 20:31:48'),
(34, 'prueba', 'ingreso', '2021-08-26 20:31:48'),
(35, 'prueba', 'egreso', '2021-08-26 20:31:48'),
(36, 'prueba', 'egreso', '2021-08-26 20:31:49'),
(37, 'prueba', 'egreso', '2021-08-26 20:31:49'),
(38, 'prueba', 'egreso', '2021-08-26 20:31:49'),
(39, 'prueba', 'ingreso', '2021-08-26 20:31:49'),
(40, 'prueba', 'ingreso', '2021-08-26 20:31:49'),
(41, 'prueba', 'ingreso', '2021-08-26 20:31:50'),
(42, 'prueba', 'ingreso', '2021-08-26 20:31:50'),
(43, 'prueba', 'egreso', '2021-08-26 20:31:51'),
(44, 'prueba', 'egreso', '2021-08-26 20:31:51'),
(45, 'prueba', 'egreso', '2021-08-26 20:31:51'),
(46, 'prueba', 'egreso', '2021-08-26 20:31:51'),
(47, 'prueba', 'ingreso', '2021-08-26 20:31:51'),
(48, 'prueba', 'ingreso', '2021-08-26 20:31:52'),
(49, 'prueba', 'ingreso', '2021-08-26 20:31:52'),
(50, 'prueba', 'ingreso', '2021-08-26 20:31:52'),
(51, 'prueba', 'egreso', '2021-08-26 20:31:52'),
(52, 'prueba', 'egreso', '2021-08-26 20:31:53'),
(53, 'prueba', 'egreso', '2021-08-26 20:31:53'),
(54, 'prueba', 'ingreso', '2021-08-26 20:31:53'),
(55, 'prueba', 'egreso', '2021-08-26 20:31:54'),
(56, 'prueba', 'ingreso', '2021-08-26 20:31:54'),
(57, 'prueba', 'egreso', '2021-08-26 20:31:54'),
(58, 'prueba', 'ingreso', '2021-08-26 20:31:54'),
(59, 'prueba', 'ingreso', '2021-08-26 20:31:55'),
(60, 'prueba', 'ingreso', '2021-08-26 20:31:55'),
(61, 'prueba', 'ingreso', '2021-08-26 20:31:55'),
(62, 'prueba', 'egreso', '2021-08-26 20:31:55'),
(63, 'prueba', 'egreso', '2021-08-26 20:31:56'),
(64, 'prueba', 'egreso', '2021-08-26 20:31:56'),
(65, 'prueba', 'egreso', '2021-08-26 20:31:56'),
(66, 'prueba', 'egreso', '2021-08-26 20:31:56'),
(67, 'prueba', 'egreso', '2021-08-26 20:31:56'),
(68, 'prueba', 'ingreso', '2021-08-26 20:31:57'),
(69, 'prueba', 'ingreso', '2021-08-26 20:31:57'),
(70, 'prueba', 'ingreso', '2021-08-26 20:31:57'),
(71, 'prueba', 'egreso', '2021-08-26 20:31:57'),
(72, 'prueba', 'egreso', '2021-08-26 20:31:57'),
(73, 'prueba', 'egreso', '2021-08-26 20:31:58'),
(74, 'prueba', 'egreso', '2021-08-26 20:31:58'),
(75, 'prueba', 'ingreso', '2021-08-26 20:31:58'),
(76, 'prueba', 'ingreso', '2021-08-26 20:31:58'),
(77, 'prueba', 'ingreso', '2021-08-26 20:31:59'),
(78, 'prueba', 'egreso', '2021-08-26 20:31:59'),
(79, 'prueba', 'egreso', '2021-08-26 20:31:59'),
(80, 'prueba', 'egreso', '2021-08-26 20:31:59'),
(81, 'prueba', 'egreso', '2021-08-26 20:31:59'),
(82, 'prueba', 'egreso', '2021-08-26 20:32:00'),
(83, 'prueba', 'ingreso', '2021-08-26 20:32:00'),
(84, 'prueba', 'egreso', '2021-08-26 20:32:00'),
(85, 'prueba', 'egreso', '2021-08-26 20:32:01'),
(86, 'prueba', 'egreso', '2021-08-26 20:32:01'),
(87, 'prueba', 'ingreso', '2021-08-26 20:32:01'),
(88, 'prueba', 'egreso', '2021-08-26 20:32:02'),
(89, 'prueba', 'egreso', '2021-08-26 20:32:02'),
(90, 'prueba', 'egreso', '2021-08-26 20:32:02'),
(91, 'prueba', 'ingreso', '2021-08-26 20:32:02'),
(92, 'prueba', 'egreso', '2021-08-26 20:32:03'),
(93, 'prueba', 'egreso', '2021-08-26 20:32:03'),
(94, 'prueba', 'egreso', '2021-08-26 20:32:04'),
(95, 'prueba', 'ingreso', '2021-08-26 21:14:47'),
(96, 'prueba', 'ingreso', '2021-08-26 21:36:30'),
(97, 'prueba', 'ingreso', '2021-08-26 21:36:31'),
(98, 'prueba', 'ingreso', '2021-08-26 21:36:31'),
(99, 'prueba', 'egreso', '2021-08-26 21:36:31'),
(100, 'prueba', 'egreso', '2021-08-26 21:36:32'),
(101, 'prueba', 'egreso', '2021-08-26 21:36:32'),
(102, 'prueba', 'ingreso', '2021-08-26 21:36:32'),
(103, 'prueba', 'egreso', '2021-08-26 21:36:32'),
(104, 'prueba', 'ingreso', '2021-08-26 21:36:33'),
(105, 'prueba', 'ingreso', '2021-08-26 21:36:33'),
(106, 'prueba', 'ingreso', '2021-08-26 21:36:33'),
(107, 'prueba', 'ingreso', '2021-08-26 21:36:33'),
(108, 'prueba', 'egreso', '2021-08-26 21:36:34'),
(109, 'prueba', 'egreso', '2021-08-26 21:36:34'),
(110, 'prueba', 'egreso', '2021-08-26 21:36:34'),
(111, 'prueba', 'ingreso', '2021-08-26 21:36:34'),
(112, 'prueba', 'egreso', '2021-08-26 21:36:35'),
(113, 'prueba', 'ingreso', '2021-08-26 21:36:35'),
(114, 'prueba', 'ingreso', '2021-08-26 21:36:35'),
(115, 'prueba', 'ingreso', '2021-08-26 21:36:35'),
(116, 'prueba', 'egreso', '2021-08-26 21:36:36'),
(117, 'prueba', 'egreso', '2021-08-26 21:36:36'),
(118, 'prueba', 'ingreso', '2021-09-02 19:42:14'),
(119, 'prueba', 'egreso', '2021-09-02 19:42:15'),
(120, 'prueba', 'ingreso', '2021-09-02 19:42:16'),
(121, 'prueba', 'egreso', '2021-09-02 19:42:17'),
(122, 'prueba', 'ingreso', '2021-09-02 19:42:18'),
(123, 'prueba', 'ingreso', '2021-09-02 19:42:18'),
(124, 'prueba', 'ingreso', '2021-09-02 19:42:18'),
(125, 'prueba', 'ingreso', '2021-09-02 19:42:18'),
(126, 'prueba', 'ingreso', '2021-09-02 19:42:19'),
(127, 'prueba', 'egreso', '2021-09-02 19:42:19'),
(128, 'prueba', 'egreso', '2021-09-02 19:42:19'),
(129, 'prueba', 'egreso', '2021-09-02 19:42:19'),
(130, 'prueba', 'egreso', '2021-09-02 19:42:20'),
(131, 'prueba', 'ingreso', '2021-09-02 19:42:20'),
(132, 'prueba', 'ingreso', '2021-09-02 19:42:20'),
(133, 'prueba', 'ingreso', '2021-09-02 19:42:21'),
(134, 'prueba', 'ingreso', '2021-09-02 19:42:21'),
(135, 'prueba', 'ingreso', '2021-09-02 19:42:21'),
(136, 'prueba', 'ingreso', '2021-09-02 19:42:21'),
(137, 'prueba', 'ingreso', '2021-09-02 19:42:21'),
(138, 'prueba', 'egreso', '2021-09-02 19:42:22'),
(139, 'prueba', 'egreso', '2021-09-02 19:42:22'),
(140, 'prueba', 'egreso', '2021-09-02 19:42:22'),
(141, 'prueba', 'ingreso', '2021-09-02 20:05:36'),
(142, 'prueba', 'ingreso', '2021-09-02 20:05:36'),
(143, 'prueba', 'ingreso', '2021-09-02 20:05:37'),
(144, 'prueba', 'egreso', '2021-09-02 20:05:37'),
(145, 'prueba', 'egreso', '2021-09-02 20:05:37'),
(146, 'prueba', 'egreso', '2021-09-02 20:05:37'),
(147, 'prueba', 'egreso', '2021-09-02 20:05:38'),
(148, 'prueba', 'egreso', '2021-09-02 20:05:38'),
(149, 'prueba', 'ingreso', '2021-09-02 20:05:39'),
(150, 'prueba', 'egreso', '2021-09-02 20:05:39'),
(151, 'prueba', 'egreso', '2021-09-02 20:05:39'),
(152, 'prueba', 'egreso', '2021-09-02 20:05:39'),
(153, 'prueba', 'egreso', '2021-09-02 20:05:40'),
(154, 'prueba', 'ingreso', '2021-09-02 21:21:19'),
(155, 'prueba', 'ingreso', '2021-09-02 21:30:10'),
(156, 'prueba', 'ingreso', '2021-09-02 21:30:14'),
(157, 'prueba', 'ingreso', '2021-09-02 21:39:47'),
(158, 'prueba', 'egreso', '2021-09-02 21:39:49');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contador`
--
ALTER TABLE `contador`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contador`
--
ALTER TABLE `contador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
