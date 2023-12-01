-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 01-12-2023 a las 13:18:21
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
-- Base de datos: `dwes_t3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `correo_electronico` varchar(255) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `correo_electronico`, `telefono`, `nombre`, `direccion`) VALUES
(1, 'mario_bros@example.com', '555-0101', 'Mario', 'Reino Champiñón 1'),
(2, 'luigi_green@example.com', '555-0102', 'Luigi', 'Reino Champiñón 2'),
(3, 'peach_castle@example.com', '555-0103', 'Peach', 'Castillo de Peach'),
(4, 'toad_mushroom@example.com', '555-0104', 'Toad', 'Casa de Toad'),
(5, 'yoshi_dino@example.com', '555-0105', 'Yoshi', 'Isla de Yoshi'),
(6, 'bowser_king@example.com', '555-0106', 'Bowser', 'Castillo de Bowser'),
(7, 'daisy_flower@example.com', '555-0107', 'Daisy', 'Reino de Sarasaland'),
(8, 'wario_gold@example.com', '555-0108', 'Wario', 'Mansión de Wario'),
(9, 'waluigi_tricky@example.com', '555-0109', 'Waluigi', 'Apartamento de Waluigi'),
(10, 'donkeykong_banana@example.com', '555-0110', 'Donkey Kong', 'Jungla DK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha_pedido` datetime DEFAULT NULL,
  `detalle_pedido` text DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_cliente`, `fecha_pedido`, `detalle_pedido`, `total`) VALUES
(1, 1, '2023-11-01 18:00:00', '1, 4, 8', 19.99),
(2, 2, '2023-11-01 18:15:00', '3, 8, 2', 10.99),
(3, 3, '2023-11-01 18:30:00', '1, 2, 7', 11.99),
(4, 4, '2023-11-01 19:00:00', '6, 8, 9', 9.99),
(5, 5, '2023-11-02 17:45:00', '2, 3', 12.99),
(6, 6, '2023-11-02 18:05:00', '8', 13.99),
(7, 7, '2023-11-02 18:20:00', '5, 9', 14.99),
(8, 8, '2023-11-02 18:40:00', '2, 5, 8', 11.99),
(9, 9, '2023-11-02 19:00:00', '3, 8, 9', 12.99),
(10, 10, '2023-11-03 18:00:00', '1, 8, 10', 9.99),
(11, 9, '2023-11-01 18:00:00', '2, 4', 19.99),
(12, 8, '2023-11-01 18:15:00', '3', 10.99),
(13, 7, '2023-11-01 18:30:00', '3, 9', 11.99),
(14, 7, '2023-11-01 19:00:00', '1, 8', 9.99),
(15, 6, '2023-11-02 17:45:00', '5', 12.99),
(16, 4, '2023-11-02 18:05:00', '4, 7', 13.99),
(17, 7, '2023-11-02 18:20:00', '8', 14.99),
(18, 8, '2023-11-02 18:40:00', '1, 9', 11.99),
(19, 9, '2023-11-02 19:00:00', '7, 8, 9', 12.99),
(20, 8, '2023-11-03 18:00:00', '8, 6', 9.99);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pizzas`
--

CREATE TABLE `pizzas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `coste` decimal(6,2) NOT NULL,
  `precio` decimal(6,2) NOT NULL,
  `ingredientes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `pizzas`
--

INSERT INTO `pizzas` (`id`, `nombre`, `coste`, `precio`, `ingredientes`) VALUES
(1, 'Margherita', 3.00, 8.00, 'Tomate, Mozzarella, Albahaca'),
(2, 'Pepperoni', 3.50, 9.00, 'Tomate, Mozzarella, Pepperoni'),
(3, 'Hawaiana', 4.00, 10.00, 'Tomate, Mozzarella, Jamón, Piña'),
(4, 'Cuatro Quesos', 4.50, 11.00, 'Mozzarella, Queso Azul, Queso de Cabra, Parmesano'),
(5, 'Vegetariana', 3.80, 9.50, 'Tomate, Mozzarella, Pimiento, Cebolla, Champiñones, Aceitunas'),
(6, 'BBQ Chicken', 4.50, 11.00, 'Salsa BBQ, Pollo, Cebolla, Mozzarella'),
(7, 'Mexicana', 4.00, 10.50, 'Tomate, Mozzarella, Jalapeños, Carne Picada, Cebolla'),
(8, 'Marinara', 2.50, 7.50, 'Tomate, Ajo, Orégano'),
(9, 'Quattro Stagioni', 4.50, 11.50, 'Tomate, Mozzarella, Jamón, Champiñones, Alcachofas, Aceitunas'),
(10, 'Carbonara', 4.00, 10.00, 'Nata, Mozzarella, Panceta, Cebolla');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo_electronico` (`correo_electronico`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Indices de la tabla `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
