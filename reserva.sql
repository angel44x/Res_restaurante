-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2020 a las 23:47:44
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `img` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `estilo` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `ruta`, `img`, `titulo1`, `titulo2`, `titulo3`, `estilo`, `fecha`) VALUES
(1, 'sin-categoria', 'vistas/img/banner/banner.png', '{\r\n	\"texto\": \"OFERTAS ESPECIALES\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n	\"texto\": \"50% off\",\r\n	\"color\": \"#fff\"\r\n}', '{\r\n	\"texto\": \"Termina el 31 de Octubre\",\r\n	\"color\": \"#fff\"\r\n}', 'textoIzq', '2020-06-30 18:26:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `ruta`, `fecha`) VALUES
(1, 'MENUS', 'menus', '0000-00-00 00:00:00'),
(2, 'EXTRAS', 'extras', '0000-00-00 00:00:00'),
(3, 'COMIDA RAPIDA', 'comida-rapida', '0000-00-00 00:00:00'),
(4, 'BEBIDAS', 'bebidas', '0000-00-00 00:00:00'),
(5, 'POSTRES', 'postres', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `calificacion` float NOT NULL,
  `comentario` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_usuario`, `id_producto`, `calificacion`, `comentario`, `fecha`) VALUES
(1, 2, 500, 0, '', '2018-06-14 16:50:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercio`
--

CREATE TABLE `comercio` (
  `id` int(11) NOT NULL,
  `impuesto` float NOT NULL,
  `envioNacional` float NOT NULL,
  `envioInternacional` float NOT NULL,
  `tasaMinimaNal` float NOT NULL,
  `tasaMinimaInt` float NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `clienteIdPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `llaveSecretaPaypal` text COLLATE utf8_spanish_ci NOT NULL,
  `modoPayu` text COLLATE utf8_spanish_ci NOT NULL,
  `merchantIdPayu` int(11) NOT NULL,
  `accountIdPayu` int(11) NOT NULL,
  `apiKeyPayu` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `comercio`
--

INSERT INTO `comercio` (`id`, `impuesto`, `envioNacional`, `envioInternacional`, `tasaMinimaNal`, `tasaMinimaInt`, `pais`, `modoPaypal`, `clienteIdPaypal`, `llaveSecretaPaypal`, `modoPayu`, `merchantIdPayu`, `accountIdPayu`, `apiKeyPayu`) VALUES
(1, 19, 1, 2, 10, 15, 'CO', 'sandbox', 'AecffvSZfOgj6g1MkrVmz12ACMES2-InggmWCpU5CblR-z5WwkYBYjmLsh9yPRLuRape1ahjqpcJet4N', 'EAx1SVMHGV6MJKwl-pnOSzaJASlAINZdYRdS--wkgaPYLevcGw88V0PU_W_rg00xLkBknybCjsO_xzA0', 'sandbox', 508029, 512323, '4Vj8eK4rloUd272L48hsrarnUA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `envio` int(11) NOT NULL,
  `metodo` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `direccion` text COLLATE utf8_spanish_ci NOT NULL,
  `pais` text COLLATE utf8_spanish_ci NOT NULL,
  `cantidad` int(11) NOT NULL,
  `detalle` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `pago` text COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`id`, `id_usuario`, `id_producto`, `envio`, `metodo`, `email`, `direccion`, `pais`, `cantidad`, `detalle`, `pago`, `fecha`) VALUES
(12, 2, 496, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, '', '', '2017-11-02 20:46:59'),
(13, 2, 464, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, '', '', '2017-11-02 20:47:00'),
(14, 2, 497, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, '', '', '2017-11-02 21:34:05'),
(15, 2, 500, 0, 'payu', 'correo@test.com', '', '', 0, '', '', '2017-11-03 19:33:54'),
(16, 2, 184, 0, 'payu', 'correo@test.com', '', '', 0, '', '', '2017-11-03 19:33:54'),
(17, 2, 499, 0, 'payu', 'ejemplo@test.com', '', '', 0, '', '', '2017-11-03 20:00:52'),
(18, 2, 500, 0, 'paypal', 'tutorialesatualcance-buyer@hotmail.com', '1 Main St, San Jose, CA, 95131', 'US', 0, '', '', '2018-06-14 16:50:09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `deseos`
--

CREATE TABLE `deseos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `deseos`
--

INSERT INTO `deseos` (`id`, `id_usuario`, `id_producto`, `fecha`) VALUES
(1, 8, 4, '2020-07-01 03:47:17'),
(2, 8, 3, '2020-07-01 03:47:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plantilla`
--

CREATE TABLE `plantilla` (
  `id` int(11) NOT NULL,
  `barraSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `textoSuperior` text COLLATE utf8_spanish_ci NOT NULL,
  `colorFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `colorTexto` text COLLATE utf8_spanish_ci NOT NULL,
  `logo` text COLLATE utf8_spanish_ci NOT NULL,
  `icono` text COLLATE utf8_spanish_ci NOT NULL,
  `redesSociales` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plantilla`
--

INSERT INTO `plantilla` (`id`, `barraSuperior`, `textoSuperior`, `colorFondo`, `colorTexto`, `logo`, `icono`, `redesSociales`, `fecha`) VALUES
(1, '#000000', '#ffffff', '#47bac1', '#ffffff', 'vistas/img/plantilla/logo1.jpg', 'vistas/img/plantilla/icono.png', '[{\r\n		\"red\": \"fa-facebook\",\r\n		\"estilo\": \"facebookBlanco\",\r\n		\"url\": \"http://facebook.com/\"\r\n	}, {\r\n		\"red\": \"fa-instagram\",\r\n		\"estilo\": \"instagramBlanco\",\r\n		\"url\": \"http://instagram.com/\"\r\n	}\r\n\r\n]', '2020-07-01 16:47:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `id_subcategoria` int(11) NOT NULL,
  `tipo` text COLLATE utf8_spanish_ci NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo` text COLLATE utf8_spanish_ci NOT NULL,
  `titular` text COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `multimedia` text COLLATE utf8_spanish_ci NOT NULL,
  `detalles` text COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL,
  `portada` text COLLATE utf8_spanish_ci NOT NULL,
  `vistas` int(11) NOT NULL,
  `ventas` int(11) NOT NULL,
  `vistasGratis` int(11) NOT NULL,
  `ventasGratis` int(11) NOT NULL,
  `ofertadoPorCategoria` int(11) NOT NULL,
  `ofertadoPorSubCategoria` int(11) NOT NULL,
  `oferta` int(11) NOT NULL,
  `precioOferta` float NOT NULL,
  `descuentoOferta` int(11) NOT NULL,
  `imgOferta` text COLLATE utf8_spanish_ci NOT NULL,
  `finOferta` datetime NOT NULL,
  `nuevo` int(11) NOT NULL,
  `peso` float NOT NULL,
  `entrega` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `id_categoria`, `id_subcategoria`, `tipo`, `ruta`, `titulo`, `titular`, `descripcion`, `multimedia`, `detalles`, `precio`, `portada`, `vistas`, `ventas`, `vistasGratis`, `ventasGratis`, `ofertadoPorCategoria`, `ofertadoPorSubCategoria`, `oferta`, `precioOferta`, `descuentoOferta`, `imgOferta`, `finOferta`, `nuevo`, `peso`, `entrega`, `fecha`) VALUES
(1, 1, 1, 'fisico', 'arroz-con-pollo-1', 'Arroz con pollo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/arrozpollo.png\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 29, 'vistas/img/productos/menu/menu01.jpg', 0, 404, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/arrozpollo.png', '0000-00-00 00:00:00', 1, 0, 10, '2020-07-07 23:07:48'),
(2, 1, 1, 'fisico', 'lomo-saltado-1', 'Lomo saltado', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/menu02.jpg\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 29, 'vistas/img/productos/menu/menu02.jpg', 0, 403, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/menu02.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-07-01 16:59:23'),
(3, 2, 1, 'fisico', 'ceviche-de-trucha-1', 'Ceviche de trucha', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/extra01.jpg\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 29, 'vistas/img/productos/extra/extra01.jpg', 0, 402, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/extra01.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-07-01 16:59:27'),
(4, 2, 3, 'fisico', 'chicharron-de-trucha-1', 'Chicharron de trucha', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/extra02.jpg\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 29, 'vistas/img/productos/extra/extra02.jpg', 0, 401, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/extra02.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-07-01 16:59:31'),
(5, 3, 6, 'fisico', 'pizza-peperoni-1', 'Pizza-peperoni', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/pizza01.jpg\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 45, 'vistas/img/productos/pizza/pizza01.jpg', 0, 400, 0, 0, 0, 1, 1, 22, 50, 'vistas/img/ofertas/pizza01.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-07-01 16:59:38'),
(6, 3, 7, 'fisico', 'pizza-americana-1', 'Pizza-americana', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/pizza02.jpg\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 55, 'vistas/img/productos/pizza/pizza02.jpg', 0, 399, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/pizza02.jpg', '0000-00-00 00:00:00', 1, 1, 10, '2020-07-01 16:59:42'),
(7, 4, 6, 'fisico', 'malteada-de-chocolate-1', 'Malteada de chocolate', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-01.jpg\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 0, 'vistas/img/productos/bebidas/bebida01.jpg', 0, 398, 0, 0, 0, 1, 1, 22, 50, 'vistas/img/ofertas/bebida01.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-07-01 16:59:47'),
(8, 4, 7, 'fisico', 'jugo-de-fresa-1', 'Jugo de fresa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-02.jpg\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 55, 'vistas/img/productos/bebidas/bebida02.jpg', 0, 397, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/bebida02.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-07-01 16:59:54'),
(9, 5, 7, 'fisico', 'ensalada-de-frutas-1', 'Ensalada de frutas', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/postre01.jpeg\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 55, 'vistas/img/productos/postres/postre01.jpeg', 0, 396, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/postre01.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-07-01 16:59:59'),
(10, 5, 7, 'fisico', 'crema-volteada-1', 'Crema-volteada', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/postre02.jpg\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 45, 'vistas/img/productos/postres/postre02.jpg', 0, 395, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/postre02.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-07-01 17:00:07'),
(11, 4, 4, 'fisico', 'jugo-de-papaya-1', 'Jugo de papaya', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/bebida-03.jpg\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 55, 'vistas/img/productos/bebidas/bebida03.jpg', 0, 397, 0, 0, 0, 0, 0, 0, 0, 'vistas/img/ofertas/bebida03.jpg', '0000-00-00 00:00:00', 0, 1, 10, '2020-07-01 17:00:15'),
(12, 1, 1, 'fisico', 'seco-de-pollo-1', 'Seco de Pollo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate minus, consectetur beatae fugit odio iure repudiandae quia distinctio, id ducimus molestiae. Obcaecati, unde. Illo molestiae dolorum, saepe nisi enim iusto.', '[{\"foto\":\"vistas/img/multimedia/batidos-malteada/menu03.jpg\"}]', '{\"Hora\": [\"12:00\",\"13:00\",\"14:00\",\"15:00\",\"16:00\",\"17:00\",\"18:00\"],\"Servicio\": [\"Reserva\",\"Recojo\"]}', 29, 'vistas/img/productos/menu/menu03.jpg', 0, 404, 0, 0, 0, 1, 1, 11, 40, 'vistas/img/ofertas/menu03.jpg', '0000-00-00 00:00:00', 1, 1, 10, '2020-07-01 17:00:20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `slide`
--

CREATE TABLE `slide` (
  `id` int(11) NOT NULL,
  `imgFondo` text COLLATE utf8_spanish_ci NOT NULL,
  `tipoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `imgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloImgProducto` text COLLATE utf8_spanish_ci NOT NULL,
  `estiloTextoSlide` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo1` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo2` text COLLATE utf8_spanish_ci NOT NULL,
  `titulo3` text COLLATE utf8_spanish_ci NOT NULL,
  `boton` text COLLATE utf8_spanish_ci NOT NULL,
  `url` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `slide`
--

INSERT INTO `slide` (`id`, `imgFondo`, `tipoSlide`, `imgProducto`, `estiloImgProducto`, `estiloTextoSlide`, `titulo1`, `titulo2`, `titulo3`, `boton`, `url`, `fecha`) VALUES
(1, 'vistas/img/slide/default/slideuno.png', 'slideOpcion1', 'vistas/img/slide/slide1/1.jpg', '{\"top\": \"15%\" ,\"right\": \"10%\" ,\"width\": \"35%\", \"left\":\"\"}', '{\"top\": \"20%\" ,\"right\": \"\" ,\"width\": \"40%\", \"left\":\"10%\"}', '{\"texto\": \"Lorem Ipsum\" ,\"color\": \"#333\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#777\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#888\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-06-30 17:29:22'),
(2, 'vistas/img/slide/default/slidedos.png', 'slideOpcion2', 'vistas/img/slide/slide2/2.jpg', '{\r\n	\"width\": \"30%\",\r\n	\"top\": \"5%\",\r\n	\"left\": \"15%\", \"right\":\"\"\r\n}', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"15%\",\r\n	\"left\": \"\",\r\n	\"right\": \"15%\"\r\n}', '{\"texto\": \"Lorem Ipsum\" ,\"color\": \"#333\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#777\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#888\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-06-30 17:28:47'),
(3, 'vistas/img/slide/default/slidetres.png', 'slideOpcion2', 'vistas/img/slide/slide3/arrozpollo.png', '{\r\n	\"width\": \"35%\",\r\n	\"top\": \"5%\",\r\n	\"left\": \"15%\",\r\n	\"right\": \"\"\r\n}', '{\r\n	\"width\": \"40%\",\r\n	\"top\": \"15%\",\r\n	\"left\": \"\",\r\n	\"right\": \"15%\"\r\n}', '{\"texto\": \"Lorem Ipsum\" ,\"color\": \"#eee\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#ccc\"}', '{\"texto\": \"Lorem ipsum dolor sit\" ,\"color\": \"#aaa\"}', '<button class=\"btn btn-default backColor text-uppercase\">\r\n\r\n							VER PRODUCTO <span class=\"fa fa-chevron-right\"></span>\r\n\r\n							</button>', '#', '2020-06-30 17:29:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategorias`
--

CREATE TABLE `subcategorias` (
  `id` int(11) NOT NULL,
  `subcategoria` text COLLATE utf8_spanish_ci NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `ruta` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `subcategorias`
--

INSERT INTO `subcategorias` (`id`, `subcategoria`, `id_categoria`, `ruta`, `fecha`) VALUES
(1, 'Menu ejecutivo', 1, 'tradicional', '0000-00-00 00:00:00'),
(2, 'Menu especial', 1, 'pollo', '0000-00-00 00:00:00'),
(3, 'Platos tipicos', 1, 'res', '0000-00-00 00:00:00'),
(4, 'Platos de fondo', 1, 'doble', '0000-00-00 00:00:00'),
(5, 'Platos con trucha', 2, 'hawaiana', '0000-00-00 00:00:00'),
(6, 'Platos con pescado', 2, 'pepperoni', '0000-00-00 00:00:00'),
(7, 'Menu marino', 2, 'americana', '0000-00-00 00:00:00'),
(8, 'Parrillas', 2, 'coca-cola', '0000-00-00 00:00:00'),
(9, 'Pizza', 3, 'pepsi', '0000-00-00 00:00:00'),
(10, 'Hamburguesa', 3, 'cielo', '0000-00-00 00:00:00'),
(11, 'Salchipapa', 3, 'san-luis', '0000-00-00 00:00:00'),
(12, 'Gaseosas', 4, 'lomo-saltado', '0000-00-00 00:00:00'),
(13, 'Agua mineral', 4, 'pollo-al-horno', '0000-00-00 00:00:00'),
(14, 'Yogurt', 4, 'lentejas', '0000-00-00 00:00:00'),
(15, 'Mazarmorras', 5, 'arroz-con-pollo', '0000-00-00 00:00:00'),
(16, 'Kekes', 5, 'arroz-con-leche', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  `password` text COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci NOT NULL,
  `modo` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  `verificacion` int(11) NOT NULL,
  `emailEncriptado` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `email`, `modo`, `foto`, `verificacion`, `emailEncriptado`, `fecha`) VALUES
(2, 'Francisco gomez', '$2a$07$asxx54ahjppf45sd87a5auxq/SS293XhTEeizKWMnfhnpfay0AALe', 'pepe@gmail.com', 'directo', 'vistas/img/usuarios/2/104.jpg', 0, '6b0becddecd5a06042b3f8078c97f2e0', '2017-10-27 15:55:02'),
(11, 'erick', '$2a$07$asxx54ahjppf45sd87a5auGZEtGHuyZwm.Ur.FJvWLCql3nmsMbXy', 'erick@gmail.com', 'directo', '', 0, '10ef013c978968b8be23a648801548cb', '2020-07-08 20:52:56');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comercio`
--
ALTER TABLE `comercio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `deseos`
--
ALTER TABLE `deseos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `comercio`
--
ALTER TABLE `comercio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `deseos`
--
ALTER TABLE `deseos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `plantilla`
--
ALTER TABLE `plantilla`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=501;

--
-- AUTO_INCREMENT de la tabla `slide`
--
ALTER TABLE `slide`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `subcategorias`
--
ALTER TABLE `subcategorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
