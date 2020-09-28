-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2020 a las 14:49:33
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yii2basic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `descripcion` varchar(60) NOT NULL,
  `id_prove` varchar(20) NOT NULL,
  `existencia` varchar(80) NOT NULL,
  `precio_venta` varchar(60) NOT NULL,
  `autorizado` varchar(80) NOT NULL,
  `IVA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `producto`, `descripcion`, `id_prove`, `existencia`, `precio_venta`, `autorizado`, `IVA`) VALUES
(13, 'mango', 'comestible', '45', 'si', '30', 'yes', '2'),
(16, 'acetaminofen', 'pepas', '12', 'sisa', '2000', 'si', '2'),
(17, 'maracyua', 'jugo', '2', 'si', '2000', 'si', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(250) NOT NULL,
  `authKey` varchar(250) NOT NULL,
  `accessToken` varchar(250) NOT NULL,
  `activate` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `authKey`, `accessToken`, `activate`) VALUES
(9, '12345678', 'dawinalmanza09@gmail.com', 'fsbqobwqC.aMo', '84cc88da4c4c74f468aa8066a2de241646e0808622d7dc0d1e80e3f03f29be4f64dc92207fd77f751ef67bedccc14a839af52f68cfe1f28c9f7f2f27963c2a987b8f9f5652963f061dfd1f325d8538c647a191636a1669c37390a737482e075ff845ee4f', '2ec344d9bddf52552e1640fb3e11015ad801526255a36f020323e231818619a5852eee166cb7ac6fbf5604fc50d51c613d4d13bc897003cb2ab871ae30caaed6262701e05bf8987e9157eafd26bdf39102e96affada4534db16dfbd7d4912c4b6c23b75c', 0),
(10, '12345679', 'eltormento56@hotmail.com', 'fsbqobwqC.aMo', 'b392f7c54ca50cfd9d6c67b11184ddb9c3d6935acb600c2bbd43e5ab549fd247b55539b84be197e701ba520a90d067a13714a144f3256efc8c6a099bb5818bb876525b91dec5480c89b9cc3f351a28841afd92e24b18812e5310c021ce69e905268d5153', 'db431e0949b451763b799692ac2ae1bcda197646e4aeb37fec1bfbcc5e21d34c36ef58f16c8374bbe5b305feb86f08e4d4ab54c7df638689ac2b15362a428463fa302f5be609998c41bb6dd22629f3ac9660ddc0aced9ffd3c8cff0a72635f01eeb71f68', 0),
(11, '1234567899', 'danieldiazcuello@gmail.com', 'fsbqobwqC.aMo', 'ff24642d0c0f9ab0ac85e23d67abe73ae13db756875d2e49210c9dfd5c1fdd7d331c80294fb10c4a4d9b132224faab0b7fce7937fcc7b201aeea20f57e6fafcbc2d3c66419f758ecd9f2af90c7df4650f87d30204414ae409f285b3bd819119014599f40', '9a7084b90e146ae4f130a79e581b4e0a98fd3aac3b7beb5334a9c638b38371f4e8846d1228e4348563efaaa89ff54286ecdbe0f0eea87a7fffcfc9e58798328e9a9fe643a7a1a185d7712a319564d7d1ba0a95925f23387217eda89e831260915a5e3de0', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
