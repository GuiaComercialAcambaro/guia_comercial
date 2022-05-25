-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2022 a las 14:58:32
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `guia_comercial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `idAnuncio` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `url_imagen` varchar(200) DEFAULT 'uploads/images/mi_negocio.jpg',
  `municipio` varchar(50) NOT NULL DEFAULT 'Acámbaro',
  `estado` varchar(20) NOT NULL DEFAULT 'Guanajuato',
  `calle` varchar(100) NOT NULL,
  `colonia` varchar(20) NOT NULL,
  `cp` varchar(5) DEFAULT NULL,
  `telefono` varchar(50) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `facebook` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `youtube` varchar(200) DEFAULT NULL,
  `sitio` varchar(200) DEFAULT NULL,
  `google_maps` varchar(500) DEFAULT NULL,
  `descripcion` longtext NOT NULL,
  `primer_dia_sem` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo') DEFAULT NULL,
  `ultimo_dia_sem` enum('Lunes','Martes','Miércoles','Jueves','Viernes','Sábado','Domingo') DEFAULT NULL,
  `entrada` varchar(20) NOT NULL,
  `cierre` varchar(20) NOT NULL,
  `estatus_anuncio` enum('Publicado','Borrador','Inactivo') NOT NULL DEFAULT 'Borrador',
  `keywords` varchar(500) DEFAULT NULL,
  `fecha_publicacion` date DEFAULT NULL,
  `destacado` enum('Sí','No') NOT NULL DEFAULT 'No',
  `idSolicitud` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `nombre`, `descripcion`) VALUES
(1, 'Sin clasificación', 'Negocios que por el momento no se les ha asignado una clasificación'),
(2, 'Abarrotes', 'Clasificación para negocios de Abarrotes'),
(3, 'Abogados', 'Clasificación para negocios de Abogados'),
(4, 'Academia de belleza', 'Clasificación para negocios de Academia de belleza'),
(5, 'Accesorios para baño y cocina', 'Clasificación para negocios de Accesorios para baño y cocina'),
(6, 'Acuarios', 'Clasificación para negocios de Acuarios'),
(8, 'Agencia de viajes', 'Clasificación para negocios de Agencia de viajes'),
(9, 'Artesanías', 'Clasificación para negocios de Artesanías'),
(10, 'Productos de limpieza', 'Clasificación para negocios de Productos de Limpieza'),
(12, 'Alarmas', 'Clasificación para negocios de Alarmas'),
(13, 'Alfombras y tapetes', 'Clasificación para negocios de Alfombras y tapetes'),
(14, 'Alimentos para animales', 'Clasificación para negocios de Alimentos para animales'),
(15, 'Alineación y balanceo', 'Clasificación para negocios de Alineación y balanceo'),
(16, 'Alquiler de sillas', 'Clasificación para negocios de Alquiler de sillas'),
(17, 'Aluminio', 'Clasificación para negocios de Aluminio'),
(18, 'Anuncios', 'Clasificación para negocios de Anuncios'),
(19, 'Aparatos e implantes', 'Clasificación para negocios de Aparatos e implantes'),
(20, 'Aparatos eléctricos', 'Clasificación para negocios de Aparatos eléctricos'),
(21, 'Aparatos electrodomésticos', 'Clasificación para negocios de Aparatos electrodomésticos'),
(22, 'Arquitectos', 'Clasificación para negocios de Arquitectos'),
(24, 'Artículos fotográficos', 'Clasificación para negocios de Artículos fotográficos'),
(25, 'Artículos para el hogar', 'Clasificación para negocios de Artículos para el hogar'),
(26, 'Artículos religiosos', 'Clasificación para negocios de Artículos religiosos'),
(27, 'Automóviles', 'Clasificación para negocios de Automóviles'),
(30, 'Balnearios', 'Clasificación para negocios de Balnearios'),
(31, 'Bancos de sangre', 'Clasificación para negocios de Bancos de sangre'),
(32, 'Banquetes', 'Clasificación para negocios de Banquetes'),
(33, 'Bares', 'Clasificación para negocios de Bares'),
(36, 'Bicicletas', 'Clasificación para negocios de Bicicletas'),
(37, 'Bodegas', 'Clasificación para negocios de Bodegas'),
(38, 'Reposterías', 'Clasificación para negocios de Reposterías'),
(40, 'Bonetería', 'Clasificación para negocios de Bonetería'),
(41, 'Botanas', 'Clasificación para negocios de Botanas'),
(42, 'Boutiques', 'Clasificación para negocios de Boutiques'),
(43, 'Buffet jurídico', 'Clasificación para negocios de Buffet jurídico'),
(44, 'Cantinas y bares', 'Clasificación para negocios de Cantinas y bares'),
(45, 'Carnicerías', 'Clasificación para negocios de Carnicerías'),
(46, 'Carnitas carpinterías', 'Clasificación para negocios de Carnitas carpinterías'),
(47, 'Casas de cambio', 'Clasificación para negocios de Casas de cambio'),
(48, 'Casas y terrenos compra venta', 'Clasificación para negocios de Casas y terrenos compra venta'),
(49, 'Cemento', 'Clasificación para negocios de Cemento'),
(50, 'Centro de diversiones', 'Clasificación para negocios de Centro de diversiones'),
(51, 'Cerámica', 'Clasificación para negocios de Cerámica'),
(52, 'Cerrajería', 'Clasificación para negocios de Cerrajería'),
(53, 'Cervezas depósitos y expendios', 'Clasificación para negocios de Cervezas depósitos y expendios'),
(55, 'Chocolates fabricas', 'Clasificación para negocios de Chocolates fabricas'),
(56, 'Cines', 'Clasificación para negocios de Cines'),
(57, 'Clínicas Médicas', 'Clasificación para negocios de Clínicas medicas de diagnostico'),
(58, 'Cocinas integrales', 'Clasificación para negocios de Cocinas integrales'),
(59, 'Bebes', 'Clasificación para bebes'),
(60, 'Colchas', 'Clasificación para negocios de Colchas'),
(61, 'Colchones y colchonetas', 'Clasificación para negocios de Colchones y colchonetas'),
(62, 'Combustibles', 'Clasificación para negocios de Combustibles'),
(63, 'Comida', 'Clasificación para negocios de Comida para llevar'),
(64, 'Comisión federal de electricidad', 'Clasificación para negocios de Comisión federal de electricidad'),
(66, 'Computación ', 'Clasificación para negocios de Computación accesorios y equipo'),
(67, 'Computación alquiler', 'Clasificación para negocios de Computación alquiler'),
(68, 'Productos de equipo de cómputo y servicios técnico', 'Clasificación para negocios de Computación servicio'),
(69, 'Concreto', 'Clasificación para negocios de Concreto'),
(70, 'Construcciones de casas', 'Clasificación para negocios de Construcciones de casas'),
(71, 'Construcciones en general', 'Clasificación para negocios de Construcciones en general'),
(72, 'Contabilidades y asuntos fiscales', 'Clasificación para negocios de Contabilidades y asuntos fiscales'),
(74, 'Decoradores de casa', 'Clasificación para negocios de Decoradores de casa'),
(75, 'Dentistas', 'Clasificación para negocios de Dentistas'),
(76, 'Deportes', 'Clasificación para negocios de Deportes'),
(77, 'Deshidratadotas', 'Clasificación para negocios de Deshidratadotas'),
(78, 'Discotecas', 'Clasificación para negocios de Discotecas'),
(79, 'Dulcerías', 'Clasificación para negocios de Dulcerías'),
(80, 'Electrónica', 'Clasificación para negocios de Electrónica'),
(81, 'Embotelladoras', 'Clasificación para negocios de Embotelladoras'),
(82, 'Equipos de oficina', 'Clasificación para negocios de Equipos de oficina'),
(83, 'Escuelas de enseñanza abierta', 'Clasificación para negocios de Escuelas de enseñanza abierta'),
(84, 'Escuelas de manejo de autos', 'Clasificación para negocios de Escuelas de manejo de autos'),
(85, 'Escuelas e instituciones de computación', 'Clasificación para negocios de Escuelas e instituciones de computación'),
(86, 'Escuelas', 'Clasificación para negocios de Escuelas e institutos y universidades'),
(87, 'Estacionamientos para autos', 'Clasificación para negocios de Estacionamientos para autos'),
(88, 'Estilistas', 'Clasificación para negocios de Estilistas'),
(89, 'Estopas', 'Clasificación para negocios de Estopas'),
(90, 'Farmacias', 'Clasificación para negocios de Farmacias boticas'),
(91, 'Farmacias veterinarias', 'Clasificación para negocios de Farmacias veterinarias'),
(92, 'Ferreterías', 'Clasificación para negocios de Ferreterías'),
(93, 'Fertilizantes', 'Clasificación para negocios de Fertilizantes'),
(94, 'Fianzas', 'Clasificación para negocios de Fianzas'),
(95, 'Fierro y acero', 'Clasificación para negocios de Fierro y acero'),
(96, 'Filmaciones', 'Clasificación para negocios de Filmaciones'),
(97, 'Florería', 'Clasificación para negocios de Florería'),
(98, 'Flores y plantas naturales', 'Clasificación para negocios de Flores y plantas naturales'),
(99, 'Forrajes y depósitos', 'Clasificación para negocios de Forrajes y depósitos'),
(100, 'Fotografía', 'Clasificación para negocios de Fotografía'),
(101, 'Fotografo', 'Clasificación para negocios de Fotografo'),
(102, 'Fruterías', 'Clasificación para negocios de Frutas'),
(103, 'Fundiciones en general', 'Clasificación para negocios de Fundiciones en general'),
(104, 'Funerarias', 'Clasificación para negocios de Funerarias'),
(105, 'Fumigadores', 'Categorías para Fumigadores'),
(106, 'Gaseras', 'Clasificación para negocios de Gaseras'),
(107, 'Gasolinerías', 'Clasificación para negocios de Gasolinerías'),
(108, 'Gimnasia aeróbica', 'Clasificación para negocios de Gimnasia aeróbica'),
(109, 'Gimnasios', 'Clasificación para negocios de Gimnasios'),
(110, 'Grave y piedra', 'Clasificación para negocios de Grave y piedra'),
(111, ' Servicio de Grúas', 'Clasificación para negocios de Grúas servicio'),
(112, 'Grupos musicales', 'Clasificación para negocios de Grupos musicales'),
(113, 'Herrería', 'Clasificación para negocios de Herrería'),
(114, 'Hielo fabricas', 'Clasificación para negocios de Hielo fabricas'),
(115, 'Hospitales sanatorios clínicas', 'Clasificación para negocios de Hospitales sanatorios clínicas'),
(116, 'Hoteles', 'Clasificación para negocios de Hoteles'),
(117, 'Huevo', 'Clasificación para negocios de Huevo'),
(118, 'Iglesias y templos', 'Clasificación para negocios de Iglesias y templos'),
(119, 'Imprentas y encuadernaciones', 'Clasificación para negocios de Imprentas y encuadernaciones'),
(120, 'Ingenieros', 'Clasificación para negocios de Ingenieros'),
(121, 'Inmobiliarias', 'Clasificación para negocios de Inmobiliarias'),
(122, 'Insecticidas', 'Clasificación para negocios de Insecticidas'),
(123, 'Instrumentos musicales', 'Clasificación para negocios de Instrumentos musicales'),
(124, 'Internet', 'Clasificación para negocios de Internet'),
(125, 'Jarcería', 'Clasificación para negocios de Jarcería'),
(126, 'Jardines de niños', 'Clasificación para negocios de Jardines de niños'),
(127, 'Joyería talleres', 'Clasificación para negocios de Joyería talleres'),
(128, 'Jugos de fruta', 'Clasificación para negocios de Jugos de fruta'),
(129, 'Juguetes educativos', 'Clasificación para negocios de Juguetes educativos'),
(130, 'Laboratorio clínico y farmacéutico', 'Clasificación para negocios de Laboratorio clínico y farmacéutico'),
(131, 'Laboratorio de diagnostico clínico', 'Clasificación para negocios de Laboratorio de diagnostico clínico'),
(132, 'Laboratorios de inyección diesel', 'Clasificación para negocios de Laboratorios de inyección diesel'),
(133, 'Laboratorios dentales', 'Clasificación para negocios de Laboratorios dentales'),
(134, 'Largas distancias', 'Clasificación para negocios de Largas distancias'),
(135, 'Lavado y engrasado', 'Clasificación para negocios de Lavado y engrasado'),
(136, 'Legumbres', 'Clasificación para negocios de Legumbres'),
(137, 'Libros y revistas', 'Clasificación para negocios de Libros y revistas'),
(138, 'Llantas cámaras para autos', 'Clasificación para negocios de Llantas cámaras para autos'),
(139, 'Losetas', 'Clasificación para negocios de Losetas'),
(140, 'Lubricantes', 'Clasificación para negocios de Lubricantes'),
(141, 'Luz y fuerza motriz', 'Clasificación para negocios de Luz y fuerza motriz'),
(142, 'Madereras y aserraderos', 'Clasificación para negocios de Madereras y aserraderos'),
(143, 'Mangueras industriales', 'Clasificación para negocios de Mangueras industriales'),
(144, 'Maquinaria agrícola', 'Clasificación para negocios de Maquinaria agrícola'),
(145, 'Maquinaria para construcción', 'Clasificación para negocios de Maquinaria para construcción'),
(146, 'Maquinaria para panadería', 'Clasificación para negocios de Maquinaria para panadería'),
(147, 'Mariscos', 'Clasificación para negocios de Mariscos'),
(148, 'Material eléctrico', 'Clasificación para negocios de Material eléctrico'),
(149, 'Materiales para construcción', 'Clasificación para negocios de Materiales para construcción'),
(151, 'Estéticas', 'Clasificación para negocios Estéticas'),
(152, 'Médicos cirujanos', 'Clasificación para negocios de Médicos cirujanos'),
(153, 'Médicos cirujanos pediatras', 'Clasificación para negocios de Médicos cirujanos pediatras'),
(154, 'Médicos dermatólogos', 'Clasificación para negocios de Médicos dermatólogos'),
(155, 'Médicos especialistas en medicina familiar', 'Clasificación para negocios de Médicos especialistas en medicina familiar'),
(156, 'Médicos especialistas física y rehabilitación', 'Clasificación para negocios de Médicos especialistas física y rehabilitación'),
(157, 'Médicos gastroenterólogos', 'Clasificación para negocios de Médicos gastroenterólogos'),
(158, 'Médicos generales', 'Clasificación para negocios de Médicos generales'),
(159, 'Médicos gineco obstetras', 'Clasificación para negocios de Médicos gineco obstetras'),
(160, 'Médicos internistas', 'Clasificación para negocios de Médicos internistas'),
(161, 'Médicos naturistas', 'Clasificación para negocios de Médicos naturistas'),
(162, 'Médicos neonatólogos', 'Clasificación para negocios de Médicos neonatólogos'),
(163, 'Médicos oculistas', 'Clasificación para negocios de Médicos oculistas'),
(164, 'Médicos otorrinolaringólogos', 'Clasificación para negocios de Médicos otorrinolaringólogos'),
(165, 'Médicos patólogos', 'Clasificación para negocios de Médicos patólogos'),
(166, 'Médicos pediatras', 'Clasificación para negocios de Médicos pediatras'),
(167, 'Médicos quiroprácticos', 'Clasificación para negocios de Médicos quiroprácticos'),
(168, 'Médicos radiólogos', 'Clasificación para negocios de Médicos radiólogos'),
(169, 'Médicos siquiatras', 'Clasificación para negocios de Médicos siquiatras'),
(170, 'Médicos traumatólogos', 'Clasificación para negocios de Médicos traumatólogos'),
(171, 'Médicos urólogos', 'Clasificación para negocios de Médicos urólogos'),
(172, 'Médicos veterinarios', 'Clasificación para negocios de Médicos veterinarios'),
(173, 'Mercerías', 'Clasificación para negocios de Mercerías'),
(174, 'Metales tratamiento', 'Clasificación para negocios de Metales tratamiento'),
(175, 'Misceláneas', 'Clasificación para negocios de Misceláneas'),
(176, 'Molino para trigo y arroz', 'Clasificación para negocios de Molino para trigo y arroz'),
(177, 'Molinos para nistamal', 'Clasificación para negocios de Molinos para nistamal'),
(178, 'Motocicletas refacciones', 'Clasificación para negocios de Motocicletas refacciones'),
(179, 'Motocicletas - motonetas - motos', 'Clasificación para negocios de Motocicletas- motonetas y motos'),
(180, 'Mueblerías', 'Clasificación para negocios de Mueblerías'),
(181, 'Muebles para el hogar', 'Clasificación para negocios de Muebles para el hogar'),
(182, 'Muebles para oficinas', 'Clasificación para negocios de Muebles para oficinas'),
(183, 'Muebles sobre diseño', 'Clasificación para negocios de Muebles sobre diseño'),
(184, 'Muelles para automóviles', 'Clasificación para negocios de Muelles para automóviles'),
(185, 'Nieves y helados fabricas', 'Clasificación para negocios de Nieves y helados fabricas'),
(186, 'Nieves y helados maquinas', 'Clasificación para negocios de Nieves y helados maquinas'),
(187, 'Notarios', 'Clasificación para negocios de Notarios'),
(188, 'Novias vestidos y equipos', 'Clasificación para negocios de Novias vestidos y equipos'),
(189, 'Ópticas', 'Clasificación para negocios de Ópticas'),
(190, 'Paleterías', 'Clasificación para negocios de Paleterías'),
(191, 'Panadería proveedores', 'Clasificación para negocios de Panadería proveedores'),
(192, 'Panaderías y bizcocherías', 'Clasificación para negocios de Panaderías y bizcocherías'),
(193, 'Panteones', 'Clasificación para negocios de Panteones'),
(194, 'Papel distribuidores', 'Clasificación para negocios de Papel distribuidores'),
(195, 'Papelería', 'Clasificación para negocios de Papelería'),
(196, 'Papelería para oficina', 'Clasificación para negocios de Papelería para oficina'),
(197, 'Pastelerías', 'Clasificación para negocios de Pastelerías'),
(198, 'Peluquerías', 'Clasificación para negocios de Peluquerías'),
(200, 'Periódicos y revistas', 'Clasificación para negocios de Periódicos y revistas'),
(201, 'Pescaderías', 'Clasificación para negocios de Pescaderías'),
(202, 'Pieles en general', 'Clasificación para negocios de Pieles en general'),
(203, 'Pinturas barnices y esmaltes', 'Clasificación para negocios de Pinturas barnices y esmaltes'),
(204, 'Pisos y azulejos', 'Clasificación para negocios de Pisos de cerámica'),
(205, 'Pizzerías', 'Clasificación para negocios de Pizza elaboración'),
(206, 'Plantas deshidratadotas', 'Clasificación para negocios de Plantas deshidratadotas'),
(208, 'Plásticos para empaque y envoltura', 'Clasificación para negocios de Plásticos para empaque y envoltura'),
(209, 'Pollerías', 'Clasificación para negocios de Pollerías'),
(210, 'Productores agrícolas', 'Clasificación para negocios de Productores agrícolas'),
(211, 'Publicidad', 'Clasificación para negocios de Publicidad'),
(212, 'Radiadores fabricas y reparaciones', 'Clasificación para negocios de Radiadores fabricas y reparaciones'),
(213, 'Radio estaciones difusoras', 'Clasificación para negocios de Radio estaciones difusoras'),
(214, 'Radios aparatos accesorios e instalaciones', 'Clasificación para negocios de Radios aparatos accesorios e instalaciones'),
(215, 'Rectificación automotriz', 'Clasificación para negocios de Rectificación automotriz'),
(216, 'Refacciones para bicicletas', 'Clasificación para negocios de Refacciones para bicicletas'),
(217, 'Refacciones y accesorios para aparatos domésticos', 'Clasificación para negocios de Refacciones y accesorios para aparatos domésticos'),
(218, 'Refacciones y accesorios para automóviles', 'Clasificación para negocios de Refacciones y accesorios para automóviles'),
(219, 'Refrescos', 'Clasificación para negocios de Refrescos'),
(220, 'Refrigeración', 'Clasificación para negocios de Refrigeración'),
(221, 'Refrigeración compresora', 'Clasificación para negocios de Refrigeración compresora'),
(222, 'Reparación y servicio técnico', 'Clasificación para negocios  servicio técnico'),
(223, 'Regalos envolturas bases y accesorios', 'Clasificación para negocios de Regalos envolturas bases y accesorios'),
(224, 'Restaurantes y bares', 'Clasificación para negocios de Restaurantes y bares'),
(225, 'Riego sistema y equipo', 'Clasificación para negocios de Riego sistema y equipo'),
(228, 'Ropa para damas', 'Clasificación para negocios de Ropa para damas'),
(229, 'Ropa para niños y niñas', 'Clasificación para negocios de Ropa para niños y niñas'),
(230, 'Rosticerías', 'Clasificación para negocios de Rosticerías'),
(231, 'Salchichonerías', 'Clasificación para negocios de Salchichonerías'),
(232, 'Salones de belleza', 'Clasificación para negocios de Salones de belleza'),
(233, 'Salones de belleza equipo', 'Clasificación para negocios de Salones de belleza equipo'),
(234, 'Salones para fiesta', 'Clasificación para negocios de Salones para fiesta'),
(235, 'Seguros en general', 'Clasificación para negocios de Seguros en general'),
(236, 'Semillas', 'Clasificación para negocios de Semillas en general compra venta'),
(237, 'Seminarios', 'Clasificación para negocios de Seminarios'),
(238, 'Serigrafía material y equipo', 'Clasificación para negocios de Serigrafía material y equipo'),
(239, 'Sitios de automóviles', 'Clasificación para negocios de Sitios de automóviles'),
(240, 'Sociedades de ahorro y préstamo', 'Clasificación para negocios de Sociedades de ahorro y préstamo'),
(241, 'Sonido y imagen aparatos sistemas y accesorios', 'Clasificación para negocios de Sonido y imagen aparatos sistemas y accesorios'),
(242, 'Talleres de electricidad', 'Clasificación para negocios de Talleres de electricidad'),
(243, 'Talleres de hojalatería y pintura', 'Clasificación para negocios de Talleres de hojalatería y pintura'),
(244, 'Talleres electromecánicos', 'Clasificación para negocios de Talleres electromecánicos'),
(245, 'Talleres mecánicos', 'Clasificación para negocios de Talleres mecanismo'),
(246, 'Tapiceros artículos', 'Clasificación para negocios de Tapiceros artículos'),
(247, 'Tapices', 'Clasificación para negocios de Tapices'),
(248, 'Taquerías', 'Clasificación para negocios de Taquerías'),
(249, 'Tarjetas telefónicas', 'Clasificación para negocios de Tarjetas telefónicas'),
(250, 'Tarot y lectura de cartas', 'Clasificación para negocios de Tarot y lectura de cartas'),
(251, 'Telas tiendas', 'Clasificación para negocios de Telas tiendas'),
(252, 'Renta de transportes', 'Clasificación para negocios de Transportes'),
(253, 'Celulares ', 'Clasificación para negocios de Telefonía celular equipo y accesorios'),
(254, 'Televisión por cable', 'Clasificación para negocios de Televisión por cable'),
(255, 'Televisores aparatos accesorios e instalaciones', 'Clasificación para negocios de Televisores aparatos accesorios e instalaciones'),
(256, 'Textiles', 'Clasificación para negocios de Textiles'),
(257, 'Tiendas de autoservicio y descuento', 'Clasificación para negocios de Tiendas de autoservicio y descuento'),
(258, 'Tinacos', 'Clasificación para negocios de Tinacos'),
(259, 'Tintorerías- planchadurías- y lavanderías', 'Clasificación para negocios de Tintorerías- planchadurías- y lavanderías'),
(260, 'Tlapalerías', 'Clasificación para negocios de Tlapalerías'),
(261, 'Tornillos y tuercas fabricas', 'Clasificación para negocios de Tornillos y tuercas fabricas'),
(262, 'Tortilladoras automáticas y mecánicas', 'Clasificación para negocios de Tortilladoras automáticas y mecánicas'),
(263, 'Tortillas expendios', 'Clasificación para negocios de Tortillas expendios'),
(264, 'Tubos de concreto', 'Clasificación para negocios de Tubos de concreto'),
(265, 'Uniformes ', 'Clasificación para negocios de Uniformes '),
(266, 'Uniformes industriales', 'Clasificación para negocios de Uniformes industriales'),
(267, 'Video club', 'Clasificación para negocios de Video club'),
(268, 'Videocasetes alquiler y filmación', 'Clasificación para negocios de Videocasetes alquiler y filmación'),
(269, 'Vidrios y cristales', 'Clasificación para negocios de Vidrios y cristales'),
(270, 'Vinos y licores', 'Clasificación para negocios de Vinos y licores'),
(271, 'Vulcanizadotas', 'Clasificación para negocios de Vulcanizadotas'),
(272, 'Zapaterías', 'Clasificación para negocios de Zapaterías'),
(273, 'Restaurantes', 'Restaurantes'),
(274, 'Instrumentos musicales', 'Categoría  instrumentos musicales accesorios reparaciones'),
(276, 'Purificadoras de agua', 'Clasificación para purificadoras de agua'),
(277, 'Ventas por catálogo', 'Clasificación para ventas por catálogo'),
(278, 'Centro recreativos', 'Clasificación para Centro recreativos'),
(279, 'Repartidores', 'Clasificación para Repartidores'),
(280, 'Auto Lavados', 'Clasificación para Auto Lavados'),
(281, 'Carpiterías', 'Clasificación para Carpiterías'),
(282, 'Barberías', 'Clasificación para Barberías'),
(283, 'Belleza y cuidado personal', 'Categoría para cuidado personal'),
(284, 'Podólogos', 'Categoría para podologos'),
(285, 'Ópticas', 'Clasificación para ópticas'),
(286, 'Representaciones Artísticas ', 'Representaciones artísticas'),
(287, 'Uñas y cosméticos ', 'uñas y cosmeticos'),
(288, 'Reciclajes', 'Reciclajes'),
(289, 'Esoterismo ', 'Esoterismo'),
(290, 'Terapias y masajes', 'Categoría para Terapias y masajes'),
(291, 'Materias primas', 'Categoría para Materias primas'),
(292, 'Ópticas', 'Ópticas'),
(293, 'Productos Gourmet', 'productos gourmet'),
(294, 'Souvenirs', 'souvenirs'),
(295, 'Manualidades', 'manualidades\r\n'),
(296, 'Ropa', 'Ropa'),
(297, 'Joyería y Accesorios', 'joyería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `idComentario` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `idAnuncio` int(11) NOT NULL,
  `ranking` int(11) DEFAULT NULL,
  `textoComentario` varchar(200) DEFAULT NULL,
  `publicado` enum('Sí','No') NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `idContacto` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `empresa` varchar(45) DEFAULT NULL,
  `asunto` varchar(50) NOT NULL,
  `textMensaje` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `idRol` int(11) NOT NULL,
  `rol` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`idRol`, `rol`, `descripcion`) VALUES
(1, 'Administrador', 'Control y acceso total a todos los módulos de la plataforma'),
(2, 'Colaborador', 'Permisos para gestionar los módulos de Publicación de Anuncios, Clasificaciones, Solicitudes de Anuncios y Comentarios.'),
(3, 'Suscriptor', 'Permisos para Registrarse en el sitio, realizar solicitudes de anuncio, puntuar y comentar anuncios publicados en el sitio.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `idSolicitud` int(11) NOT NULL,
  `nombre_negocio` varchar(100) NOT NULL,
  `url_imagen` varchar(200) NOT NULL,
  `rfc` varchar(20) DEFAULT NULL,
  `tel` varchar(20) NOT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `calle` varchar(200) NOT NULL,
  `colonia` varchar(50) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `municipio` varchar(50) NOT NULL DEFAULT 'Acámbaro',
  `estado` varchar(50) NOT NULL DEFAULT 'Guanajuato',
  `estatus_solicitud` enum('En proceso','Aceptada','Rechazada','Publicada') NOT NULL DEFAULT 'En proceso',
  `fecha_solicitud` date NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `observaciones` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(120) NOT NULL,
  `estatus` enum('Activo','Inactivo') NOT NULL DEFAULT 'Activo',
  `token` varchar(200) NOT NULL,
  `idRol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`idUsuario`, `nombre`, `apellido`, `email`, `password`, `estatus`, `token`, `idRol`) VALUES
(1, 'Administrador', 'MiAcambaro', 'admin@miacambaro.mx', '91887091bb22e75a0c8a1c64d0629983', 'Activo', '390d30279176b331e95ea5c36900645e', 1),
(2, 'Colaborador', 'MiAcambaro', 'ventas@miacambaro.mx', '0e51b4d39d1869e68883860f165e5232', 'Activo', '5b024ff815b98e44e1bf7de43d93ef0c', 2);

--
-- Disparadores `usuarios`
--
DELIMITER $$
CREATE TRIGGER `usuarios_AFTER_DELETE` AFTER DELETE ON `usuarios` FOR EACH ROW BEGIN

END
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`idAnuncio`),
  ADD KEY `idCategoria_idx` (`idCategoria`),
  ADD KEY `idSolicitud_idx` (`idSolicitud`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`idComentario`),
  ADD KEY `idUsuario_idx` (`idUsuario`) USING BTREE,
  ADD KEY `idAnuncio_idx` (`idAnuncio`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`idContacto`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRol`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`idSolicitud`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`idUsuario`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `idRol_idx` (`idRol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `idAnuncio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `idComentario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `idContacto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `idRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `idSolicitud` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD CONSTRAINT `idCategoria` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idSolicitud_idx` FOREIGN KEY (`idSolicitud`) REFERENCES `solicitudes` (`idSolicitud`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `idAnuncio_idx` FOREIGN KEY (`idAnuncio`) REFERENCES `anuncios` (`idAnuncio`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `idRol_idx` FOREIGN KEY (`idRol`) REFERENCES `roles` (`idRol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
