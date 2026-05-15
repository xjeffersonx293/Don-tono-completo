-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2026 at 12:26 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_dontono`
--

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `categoria` varchar(50) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `categoria`, `stock`, `imagen`, `imagen2`) VALUES
(1, 'Martillo', 'Martillo de acero resistente', 20.00, 'Herramientas', 20, 'hammer.png', NULL),
(2, 'Tornillo', 'Tornillo para madera', 0.25, 'Construcción', 200, 'screw.png', NULL),
(3, 'Llave Spanner', 'Llave ajustable', 15.00, 'Herramientas', 15, 'spanner.png', NULL),
(4, 'Woodburning Pen', 'Herramienta para grabado en madera', 25.00, 'Herramientas', 10, 'woodburning pen.png', NULL),
(5, 'Llave Wrench', 'Llave inglesa resistente', 18.00, 'Herramientas', 12, 'wrench.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sucursales`
--

CREATE TABLE `sucursales` (
  `sucursal_id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `imagen2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sucursales`
--

INSERT INTO `sucursales` (`sucursal_id`, `nombre`, `descripcion`, `ubicacion`, `imagen`, `imagen2`) VALUES
(1, 'Ferreteria El Chele', 'Tu mejor aliado', 'San Miguel', 'sucursal1.jpeg', NULL),
(2, 'Ferreteria Señor de Muruhuay', 'Donde encuentra de todo', 'Sonsonate', 'sucursal2.jpg', NULL),
(3, 'Ferreteria Dorado', 'Todo a un buen precio', 'Cojutepeque', 'sucursal3.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `correo` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('admin','usuario') DEFAULT 'usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `nombre`, `correo`, `password`, `rol`) VALUES
(8, 'Jefferson Garcia', 'jefferson@gmail.com', '$2y$10$seZSIDUb6LoVGOF/IGp2aeNn9QUp2JediuUSp2xXCUuc0hOM86yNy', 'usuario'),
(9, 'Admin Ferreteria Don Toño', 'admin@gmail.com', '$2y$10$seZSIDUb6LoVGOF/IGp2aeNn9QUp2JediuUSp2xXCUuc0hOM86yNy', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`sucursal_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `sucursal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
