-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 25-Mar-2021 às 09:15
-- Versão do servidor: 5.7.23-23
-- versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `paran961_novodelivery`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairros_delivery`
--

CREATE TABLE `bairros_delivery` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `bairro` varchar(150) NOT NULL,
  `taxa` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bairros_delivery`
--

INSERT INTO `bairros_delivery` (`id`, `user_id`, `uf`, `cidade`, `bairro`, `taxa`) VALUES
(44, 22, '', '', 'Centro ', 1.00),
(45, 24, '', '', 'Jardim São Pedro ', 5.00),
(46, 24, '', '', 'Vila Suissa ', 6.00),
(47, 24, '', '', 'Socorro ', 8.00),
(48, 24, '', '', 'Butujuru ', 10.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner_promocional`
--

CREATE TABLE `banner_promocional` (
  `id_banner` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `confirma_banner` int(11) NOT NULL,
  `img_banner` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banner_promocional`
--

INSERT INTO `banner_promocional` (`id_banner`, `user_id`, `confirma_banner`, `img_banner`) VALUES
(3, 1, 1, 'images/2021/03/hamburgers-with-beef-tomato-red-onion-lettuce.jpg'),
(4, 22, 1, 'images/2021/03/thincrust-pizza-500x270.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `configuracoes_site`
--

CREATE TABLE `configuracoes_site` (
  `id_config` int(11) NOT NULL,
  `nome_site` varchar(100) NOT NULL,
  `titulo_site` varchar(250) NOT NULL,
  `descricao_site` varchar(250) NOT NULL,
  `palavas_chaves` varchar(500) NOT NULL,
  `tel_adm` varchar(100) NOT NULL,
  `tel_financeiro` varchar(100) NOT NULL,
  `email_suporte` varchar(250) NOT NULL,
  `h_suporte` varchar(250) NOT NULL,
  `btn_link_youtube` varchar(250) NOT NULL,
  `link_do_face` varchar(500) NOT NULL,
  `link_do_insta` varchar(500) NOT NULL,
  `link_do_youtube` varchar(500) NOT NULL,
  `nome_plano_um` varchar(100) NOT NULL,
  `v_plano_um` int(11) NOT NULL,
  `dias_plano_um` int(11) NOT NULL,
  `nome_plano_dois` varchar(100) NOT NULL,
  `v_plano_dois` int(11) NOT NULL,
  `dias_plano_dois` int(11) NOT NULL,
  `nome_plano_tres` varchar(100) NOT NULL,
  `v_plano_tres` int(11) NOT NULL,
  `dias_plano_tres` int(11) NOT NULL,
  `dias_testes` int(11) NOT NULL,
  `public_key_mp` varchar(500) NOT NULL,
  `access_token_mp` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `configuracoes_site`
--

INSERT INTO `configuracoes_site` (`id_config`, `nome_site`, `titulo_site`, `descricao_site`, `palavas_chaves`, `tel_adm`, `tel_financeiro`, `email_suporte`, `h_suporte`, `btn_link_youtube`, `link_do_face`, `link_do_insta`, `link_do_youtube`, `nome_plano_um`, `v_plano_um`, `dias_plano_um`, `nome_plano_dois`, `v_plano_dois`, `dias_plano_dois`, `nome_plano_tres`, `v_plano_tres`, `dias_plano_tres`, `dias_testes`, `public_key_mp`, `access_token_mp`) VALUES
(1, 'Minha Plataforma Delivery', 'Delivery online via WhatsApp integrado com Mercadopago.', 'Crie um cardápio online atraente que inspire o apetite.', 'pizza, delivery food, fast food, sushi, take away, chinese, italian food', '41992440825', '41992440825', 'contato@seusiteaqui.com.br', '09:00hs ás 18:00hs', 'https://www.youtube.com', 'facebook', 'instagram', 'youtube', 'PLANO MENSAL', 50, 30, 'PLANO TRIMESTRAL', 160, 90, 'PLANO ANUAL', 390, 365, 5, 'SUA PRIMEIRA KEY AQUI', 'SUA SEGUNDA KEY AQUI');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cupom_desconto`
--

CREATE TABLE `cupom_desconto` (
  `id_cupom` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ativacao` varchar(50) NOT NULL,
  `type_discount` tinyint(4) NOT NULL,
  `porcentagem` int(11) NOT NULL,
  `fixed_value` decimal(10,2) NOT NULL,
  `data_validade` date NOT NULL,
  `total_vezes` int(11) NOT NULL,
  `mostrar_site` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cupom_desconto`
--

INSERT INTO `cupom_desconto` (`id_cupom`, `user_id`, `ativacao`, `type_discount`, `porcentagem`, `fixed_value`, `data_validade`, `total_vezes`, `mostrar_site`) VALUES
(14, 1, 'DESCONTO50', 2, 0, 50.00, '2021-12-31', 997, 0),
(15, 1, 'CUPOMFIXO', 2, 0, 10.00, '2021-03-31', 71, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `views`
--

CREATE TABLE `views` (
  `id_views` int(11) NOT NULL,
  `contar` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `views`
--

INSERT INTO `views` (`id_views`, `contar`, `user_id`) VALUES
(21, 387, 1),
(25, 12, 22),
(27, 32, 24);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_adicionais_cat`
--

CREATE TABLE `ws_adicionais_cat` (
  `id` int(11) NOT NULL,
  `id_itens` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `name_adicionais_cat` varchar(30) NOT NULL,
  `amount` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `img_cat` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ws_adicionais_cat`
--

INSERT INTO `ws_adicionais_cat` (`id`, `id_itens`, `user_id`, `id_cat`, `name_adicionais_cat`, `amount`, `pay`, `img_cat`) VALUES
(78, 150, 1, 113, 'Coberturas', 1, 0, 'catchup.png'),
(76, 148, 1, 113, 'Coberturas', 1, 0, 'catchup.png'),
(75, 150, 1, 113, 'Toppings', 3, 0, 'ice-cream.png'),
(74, 148, 1, 113, 'Toppings', 3, 0, 'ice-cream.png'),
(72, 150, 1, 113, 'Frutas', 3, 0, 'frutas.png'),
(73, 149, 1, 113, 'Toppings', 3, 0, 'ice-cream.png'),
(71, 149, 1, 113, 'Frutas', 3, 0, 'frutas.png'),
(69, 146, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(77, 149, 1, 113, 'Coberturas', 1, 0, 'catchup.png'),
(68, 145, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(65, 146, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(64, 145, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(63, 144, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(70, 148, 1, 113, 'Frutas', 3, 0, 'frutas.png'),
(62, 143, 1, 44, 'Adicionais Pagos', -1, 1, 'adicionar.jpg'),
(66, 143, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(67, 144, 1, 44, 'Adicionais Grátis', 3, 0, 'adicionar.jpg'),
(79, 154, 18, 115, 'Sabores', 2, 1, 'img-header.png'),
(80, 154, 18, 115, 'frutas', 1, 1, 'img-header.png'),
(81, 154, 18, 115, 'coberturas', 1, 1, ''),
(83, 155, 19, 116, 'Toppings', 5, 0, ''),
(84, 156, 19, 116, 'Toppings', 5, 0, ''),
(85, 158, 1, 118, 'Adicionais', -1, 1, 'adicionar.jpg'),
(86, 159, 1, 118, 'Adicionais', -1, 1, 'adicionar.jpg'),
(87, 158, 1, 118, 'Adicionais Grátis', 2, 0, 'adicionar.jpg'),
(88, 159, 1, 118, 'Adicionais Grátis', 2, 0, 'adicionar.jpg'),
(89, 161, 22, 120, 'Pimentão', -1, 0, 'hot-dog.png'),
(90, 148, 1, 113, 'frutas', 4, 0, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_adicionais_itens`
--

CREATE TABLE `ws_adicionais_itens` (
  `id_adicionais` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `categorias_adicional` varchar(1000) NOT NULL,
  `nome_adicional` varchar(250) NOT NULL,
  `valor_adicional` decimal(10,2) NOT NULL,
  `medida_adicional` varchar(10) NOT NULL,
  `status_adicional` int(1) NOT NULL,
  `id_adicionais_cat` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_adicionais_itens`
--

INSERT INTO `ws_adicionais_itens` (`id_adicionais`, `user_id`, `categorias_adicional`, `nome_adicional`, `valor_adicional`, `medida_adicional`, `status_adicional`, `id_adicionais_cat`) VALUES
(204, 1, '44', 'Hamburger 150g', 5.00, 'UN', 1, 63),
(205, 1, '44', 'Hamburger 150g', 5.00, 'UN', 1, 62),
(201, 1, '44', 'Queijo Mussrela', 1.00, 'UN', 1, 62),
(202, 1, '44', 'Hamburger 150g', 5.00, 'UN', 1, 65),
(203, 1, '44', 'Hamburger 150g', 5.00, 'UN', 1, 64),
(209, 1, '44', 'Catupiry', 1.50, 'UN', 1, 62),
(208, 1, '44', 'Catupiry', 1.50, 'UN', 1, 63),
(207, 1, '44', 'Catupiry', 1.50, 'UN', 1, 64),
(206, 1, '44', 'Catupiry', 1.50, 'UN', 1, 65),
(200, 1, '44', 'Queijo Mussrela', 1.00, 'UN', 1, 63),
(199, 1, '44', 'Queijo Mussrela', 1.00, 'UN', 1, 64),
(198, 1, '44', 'Queijo Mussrela', 1.00, 'UN', 1, 65),
(197, 1, '44', 'Cheddar', 1.00, 'UN', 1, 62),
(193, 1, '44', 'Bacon', 2.50, 'UN', 1, 62),
(194, 1, '44', 'Cheddar', 1.00, 'UN', 1, 65),
(195, 1, '44', 'Cheddar', 1.00, 'UN', 1, 64),
(196, 1, '44', 'Cheddar', 1.00, 'UN', 1, 63),
(192, 1, '44', 'Bacon', 2.50, 'UN', 1, 63),
(191, 1, '44', 'Bacon', 2.50, 'UN', 1, 64),
(190, 1, '44', 'Bacon', 2.50, 'UN', 1, 65),
(215, 1, '118', 'Bacon', 2.00, 'UN', 1, 85),
(216, 1, '118', 'Bacon', 2.00, 'UN', 1, 86),
(217, 1, '118', 'Ovo', 1.00, 'UN', 1, 85),
(218, 1, '118', 'Ovo', 1.00, 'UN', 1, 86),
(219, 1, '44', 'teste', 1.00, 'UN', 1, 62),
(220, 1, '44', 'teste', 1.00, 'UN', 1, 63),
(221, 1, '44', 'teste', 1.00, 'UN', 1, 64),
(222, 1, '44', 'teste', 1.00, 'UN', 1, 65),
(223, 1, '44', 'TESTE 2', 1.00, 'UN', 1, 62),
(224, 1, '44', 'TESTE 2', 1.00, 'UN', 1, 63),
(225, 1, '44', 'TESTE 2', 1.00, 'UN', 1, 64),
(226, 1, '44', 'TESTE 2', 1.00, 'UN', 1, 65);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_adicionais_itens_gratis`
--

CREATE TABLE `ws_adicionais_itens_gratis` (
  `id_adicional_gratis` int(11) NOT NULL,
  `nome_adicional_gratis` varchar(250) NOT NULL,
  `categorias_adicional_gratis` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_adicional_gratis` int(11) NOT NULL,
  `id_adicionais_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_adicionais_itens_gratis`
--

INSERT INTO `ws_adicionais_itens_gratis` (`id_adicional_gratis`, `nome_adicional_gratis`, `categorias_adicional_gratis`, `user_id`, `status_adicional_gratis`, `id_adicionais_cat`) VALUES
(40, 'Catchup', '44', 1, 1, 69),
(41, 'Catchup', '44', 1, 1, 68),
(42, 'Catchup', '44', 1, 1, 66),
(43, 'Catchup', '44', 1, 1, 67),
(44, 'Maionese', '44', 1, 1, 69),
(45, 'Maionese', '44', 1, 1, 68),
(46, 'Maionese', '44', 1, 1, 66),
(47, 'Maionese', '44', 1, 1, 67),
(48, 'Milho', '44', 1, 1, 69),
(49, 'Milho', '44', 1, 1, 68),
(50, 'Milho', '44', 1, 1, 67),
(51, 'Milho', '44', 1, 1, 66),
(52, 'Azeitona', '44', 1, 1, 69),
(53, 'Azeitona', '44', 1, 1, 68),
(54, 'Azeitona', '44', 1, 1, 66),
(55, 'Azeitona', '44', 1, 1, 67),
(56, 'Ovo de Codorna', '44', 1, 1, 69),
(57, 'Ovo de Codorna', '44', 1, 1, 68),
(58, 'Ovo de Codorna', '44', 1, 1, 66),
(59, 'Ovo de Codorna', '44', 1, 1, 67),
(60, 'Fruta Morango', '113', 1, 1, 71),
(61, 'Fruta Morango', '113', 1, 1, 70),
(62, 'Fruta Morango', '113', 1, 1, 72),
(63, 'Fruta Banana', '113', 1, 1, 70),
(64, 'Fruta Banana', '113', 1, 1, 71),
(65, 'Fruta Banana', '113', 1, 1, 72),
(66, 'Fruta Manga', '113', 1, 1, 70),
(67, 'Fruta Manga', '113', 1, 1, 71),
(68, 'Fruta Manga', '113', 1, 1, 72),
(69, 'Fruta Uva', '113', 1, 1, 70),
(70, 'Fruta Uva', '113', 1, 1, 71),
(71, 'Fruta Uva', '113', 1, 1, 72),
(72, 'Fruta Pêssego', '113', 1, 1, 70),
(73, 'Fruta Pêssego', '113', 1, 1, 71),
(74, 'Fruta Pêssego', '113', 1, 1, 72),
(75, 'Leite em Pó', '113', 1, 1, 73),
(76, 'Leite em Pó', '113', 1, 1, 74),
(77, 'Leite em Pó', '113', 1, 1, 75),
(78, 'Granola', '113', 1, 1, 73),
(79, 'Granola', '113', 1, 1, 74),
(80, 'Granola', '113', 1, 1, 75),
(81, 'Paçoca', '113', 1, 1, 74),
(82, 'Paçoca', '113', 1, 1, 75),
(83, 'Paçoca', '113', 1, 1, 73),
(84, 'Amendoim', '113', 1, 1, 73),
(85, 'Amendoim', '113', 1, 1, 74),
(86, 'Amendoim', '113', 1, 1, 75),
(87, 'Chocolate em Confeti', '113', 1, 1, 75),
(88, 'Chocolate em Confeti', '113', 1, 1, 74),
(89, 'Chocolate em Confeti', '113', 1, 1, 73),
(90, 'Granulado', '113', 1, 1, 73),
(91, 'Granulado', '113', 1, 1, 74),
(92, 'Granulado', '113', 1, 1, 75),
(93, 'Nutela', '113', 1, 1, 73),
(94, 'Nutela', '113', 1, 1, 74),
(95, 'Nutela', '113', 1, 1, 75),
(96, 'Chocoball', '113', 1, 1, 73),
(97, 'Chocoball', '113', 1, 1, 74),
(98, 'Chocoball', '113', 1, 1, 75),
(99, 'Leite Condensado', '113', 1, 1, 78),
(100, 'Leite Condensado', '113', 1, 1, 76),
(101, 'Leite Condensado', '113', 1, 1, 77),
(102, 'Morango', '113', 1, 1, 78),
(103, 'Morango', '113', 1, 1, 76),
(104, 'Morango', '113', 1, 1, 77),
(105, 'Chocolate', '113', 1, 1, 78),
(106, 'Chocolate', '113', 1, 1, 76),
(107, 'Chocolate', '113', 1, 1, 77),
(108, 'Kiwi', '113', 1, 1, 78),
(109, 'Kiwi', '113', 1, 1, 76),
(110, 'Kiwi', '113', 1, 1, 77),
(115, 'Maionese Caseira', '118', 1, 1, 87),
(116, 'Maionese Caseira', '118', 1, 1, 88),
(117, 'Catchup', '118', 1, 1, 87),
(118, 'Catchup', '118', 1, 1, 88),
(119, 'Azeitona', '118', 1, 1, 87),
(120, 'Azeitona', '118', 1, 1, 88);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_admin`
--

CREATE TABLE `ws_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `admin_senha` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `admin_ultimoacesso` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `admin_level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_admin`
--

INSERT INTO `ws_admin` (`admin_id`, `admin_email`, `admin_senha`, `admin_ultimoacesso`, `admin_level`) VALUES
(2, 'willamycostatw@gmail.com', '64e1b8d34f425d19e1ee2ea7236d3028', '', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_cat`
--

CREATE TABLE `ws_cat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nome_cat` varchar(250) NOT NULL,
  `desc_cat` varchar(500) NOT NULL,
  `icon_cat` varchar(500) NOT NULL,
  `dias_semana` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_cat`
--

INSERT INTO `ws_cat` (`id`, `user_id`, `nome_cat`, `desc_cat`, `icon_cat`, `dias_semana`) VALUES
(44, 1, 'MODELO PARA HAMBURGUERIAS', 'Veja esse exemplo de cardápio para hamburguerias', 'img/burger.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(113, 1, 'MODELO PARA AÇAITERIA', 'null', 'img/acai.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(114, 1, 'MODELO PARA PIZZARIAS', 'null', 'img/pizza.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(118, 1, 'MODELO PARA HOT-DOGS', 'null', 'img/hot-dog.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(120, 22, 'Pizza', 'Pizza', 'img/hot-dog.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(121, 1, 'FERRAMENTA', 'Todos os tipo de ferramentas para o seu carro', 'null', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(122, 24, 'Pizza', 'null', 'img/pizza.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(123, 24, 'Lanches', 'null', 'img/burger.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(124, 24, 'Açaí', 'null', 'img/acai.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(125, 24, 'Refrigerantes', 'null', 'img/refrigerantes.png', 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado'),
(126, 24, 'Refeições', 'Marmitex', 'img/breakfast.png', 'Segunda,Terça,Quarta,Quinta,Sexta,Sabado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_datas_close`
--

CREATE TABLE `ws_datas_close` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `data` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_datas_close`
--

INSERT INTO `ws_datas_close` (`id`, `user_id`, `data`) VALUES
(18, 1, '14/01/2019'),
(20, 1, '12/01/2019'),
(22, 1, '03/05/2020'),
(24, 1, '16/05/2020');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_empresa`
--

CREATE TABLE `ws_empresa` (
  `id_empresa` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nome_empresa` varchar(250) NOT NULL,
  `descricao_empresa` varchar(200) NOT NULL,
  `nome_empresa_link` varchar(250) NOT NULL,
  `cnpj_empresa` varchar(250) NOT NULL,
  `email_empresa` varchar(250) NOT NULL,
  `telefone_empresa` varchar(250) NOT NULL,
  `end_rua_n_empresa` varchar(250) NOT NULL,
  `end_bairro_empresa` varchar(250) NOT NULL,
  `cidade_empresa` varchar(250) NOT NULL,
  `end_uf_empresa` varchar(250) NOT NULL,
  `cep_empresa` varchar(250) NOT NULL,
  `img_logo` varchar(300) NOT NULL,
  `img_header` varchar(400) NOT NULL,
  `facebook_status` int(11) NOT NULL,
  `twitter_status` int(11) NOT NULL,
  `instagram_status` int(11) NOT NULL,
  `facebook_empresa` varchar(600) NOT NULL,
  `instagram_empresa` varchar(600) NOT NULL,
  `twitter_empresa` varchar(600) NOT NULL,
  `genero_empresa` varchar(255) NOT NULL,
  `config_segunda` varchar(250) NOT NULL,
  `config_terca` varchar(250) NOT NULL,
  `config_quarta` varchar(250) NOT NULL,
  `config_quinta` varchar(250) NOT NULL,
  `config_sexta` varchar(250) NOT NULL,
  `config_sabado` varchar(250) NOT NULL,
  `config_domingo` varchar(250) NOT NULL,
  `config_segundaa` varchar(50) NOT NULL,
  `config_tercaa` varchar(50) NOT NULL,
  `config_quartaa` varchar(50) NOT NULL,
  `config_quintaa` varchar(50) NOT NULL,
  `config_sextaa` varchar(50) NOT NULL,
  `config_sabadoo` varchar(50) NOT NULL,
  `config_domingoo` varchar(50) NOT NULL,
  `segunda_manha_de` varchar(250) NOT NULL,
  `segunda_manha_ate` varchar(250) NOT NULL,
  `segunda_tarde_de` varchar(250) NOT NULL,
  `segunda_tarde_ate` varchar(250) NOT NULL,
  `terca_manha_de` varchar(250) NOT NULL,
  `terca_manha_ate` varchar(250) NOT NULL,
  `terca_tarde_de` varchar(250) NOT NULL,
  `terca_tarde_ate` varchar(250) NOT NULL,
  `quarta_manha_de` varchar(250) NOT NULL,
  `quarta_manha_ate` varchar(250) NOT NULL,
  `quarta_tarde_de` varchar(250) NOT NULL,
  `quarta_tarde_ate` varchar(250) NOT NULL,
  `quinta_manha_de` varchar(250) NOT NULL,
  `quinta_manha_ate` varchar(250) NOT NULL,
  `quinta_tarde_de` varchar(250) NOT NULL,
  `quinta_tarde_ate` varchar(250) NOT NULL,
  `sexta_manha_de` varchar(250) NOT NULL,
  `sexta_manha_ate` varchar(250) NOT NULL,
  `sexta_tarde_de` varchar(250) NOT NULL,
  `sexta_tarde_ate` varchar(250) NOT NULL,
  `sabado_manha_de` varchar(250) NOT NULL,
  `sabado_manha_ate` varchar(250) NOT NULL,
  `sabado_tarde_de` varchar(250) NOT NULL,
  `sabado_tarde_ate` varchar(250) NOT NULL,
  `domingo_manha_de` varchar(250) NOT NULL,
  `domingo_manha_ate` varchar(250) NOT NULL,
  `domingo_tarde_de` varchar(250) NOT NULL,
  `domingo_tarde_ate` varchar(250) NOT NULL,
  `config_delivery` decimal(10,2) NOT NULL,
  `config_delivery_free` decimal(10,2) NOT NULL,
  `op_entrar_btn` int(11) NOT NULL,
  `empresa_data_renovacao` date NOT NULL,
  `msg_tempo_delivery` varchar(150) NOT NULL,
  `msg_tempo_buscar` varchar(150) NOT NULL,
  `minimo_delivery` decimal(10,2) NOT NULL,
  `confirm_delivery` varchar(20) NOT NULL,
  `confirm_balcao` varchar(20) NOT NULL,
  `confirm_mesa` varchar(20) NOT NULL,
  `cor_topo` varchar(250) NOT NULL,
  `cor_loading` varchar(250) NOT NULL,
  `cor_titulo_produtos` varchar(250) NOT NULL,
  `type_pay` tinyint(4) NOT NULL,
  `access_token_mp` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_empresa`
--

INSERT INTO `ws_empresa` (`id_empresa`, `user_id`, `nome_empresa`, `descricao_empresa`, `nome_empresa_link`, `cnpj_empresa`, `email_empresa`, `telefone_empresa`, `end_rua_n_empresa`, `end_bairro_empresa`, `cidade_empresa`, `end_uf_empresa`, `cep_empresa`, `img_logo`, `img_header`, `facebook_status`, `twitter_status`, `instagram_status`, `facebook_empresa`, `instagram_empresa`, `twitter_empresa`, `genero_empresa`, `config_segunda`, `config_terca`, `config_quarta`, `config_quinta`, `config_sexta`, `config_sabado`, `config_domingo`, `config_segundaa`, `config_tercaa`, `config_quartaa`, `config_quintaa`, `config_sextaa`, `config_sabadoo`, `config_domingoo`, `segunda_manha_de`, `segunda_manha_ate`, `segunda_tarde_de`, `segunda_tarde_ate`, `terca_manha_de`, `terca_manha_ate`, `terca_tarde_de`, `terca_tarde_ate`, `quarta_manha_de`, `quarta_manha_ate`, `quarta_tarde_de`, `quarta_tarde_ate`, `quinta_manha_de`, `quinta_manha_ate`, `quinta_tarde_de`, `quinta_tarde_ate`, `sexta_manha_de`, `sexta_manha_ate`, `sexta_tarde_de`, `sexta_tarde_ate`, `sabado_manha_de`, `sabado_manha_ate`, `sabado_tarde_de`, `sabado_tarde_ate`, `domingo_manha_de`, `domingo_manha_ate`, `domingo_tarde_de`, `domingo_tarde_ate`, `config_delivery`, `config_delivery_free`, `op_entrar_btn`, `empresa_data_renovacao`, `msg_tempo_delivery`, `msg_tempo_buscar`, `minimo_delivery`, `confirm_delivery`, `confirm_balcao`, `confirm_mesa`, `cor_topo`, `cor_loading`, `cor_titulo_produtos`, `type_pay`, `access_token_mp`) VALUES
(21, 1, 'DEMONSTRAÇÃO', 'Desde 2020 entregando os lanches mais sinistros da cidade!', 'Demo', '', 'admin@admin.com', '41992440825', 'Rua do Centro / 276', 'Centro', 'Paranaguá', 'PR', '08200-030', 'images/2021/03/logoppp.png', 'images/2021/03/img-img-burger.png', 2, 2, 2, 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.facebook.com/', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', '00:00', '12:00', '12:00', '00:00', '00:00', '12:00', '12:00', '00:00', '00:00', '12:00', '12:00', '00:00', '00:00', '12:00', '12:00', '00:00', '00:00', '12:00', '12:00', '00:00', '00:00', '12:00', '12:00', '00:00', '00:00', '12:00', '12:00', '00:00', 0.00, 50.00, 1, '2021-12-10', 'Entre 30 e 60 minutos.', 'Em 30 minutos.', 0.00, 'true', 'true', 'true', '#00b893', '#00b893', '#ffffff', 0, 'APP_USR-516722338860568-122218-68e34635cf4e45f0e8bf147533a58293-336388890'),
(46, 22, 'pizzago', '', 'pizzago', '', 'yasmingual@gmail.com', '11777777777', 'Rua Oratório, 3174', 'Parque Oratório', 'Santo André', 'SP', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0, '2021-03-27', '', '', 0.00, '', '', '', '', '', '', 0, ''),
(47, 23, 'Lojao', '', 'lojas', '', 'joao@silva.com', '88998877665', 'Rua A', 'Jurema', 'Caucaia', 'CE', '', '', '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0.00, 0.00, 0, '2021-03-29', '', '', 0.00, '', '', '', '', '', '', 0, ''),
(48, 24, 'FEOLI', 'FEOLI', 'Feoli', '', 'agenciafeoli@gmail.com', '11997960167', 'Rua Doutor Rômulo Pasqualini,94', 'Jardim São Pedro', 'Mogi das Cruzes', 'SP', '', 'images/2021/03/logo.jpg', '', 1, 1, 1, '', '', '', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'false', 'false', 'false', 'false', 'false', 'false', 'false', '08:00', '23:00', '00:00', '00:00', '08:00', '23:00', '00:00', '00:00', '08:00', '23:00', '00:00', '00:00', '08:00', '23:00', '00:00', '00:00', '08:00', '23:00', '00:00', '00:00', '08:00', '23:00', '00:00', '00:00', '08:00', '23:00', '00:00', '00:00', 3.00, 0.00, 0, '2021-03-29', 'Entre 30 e 60 minutos.', 'Em 30 minutos.', 10.00, 'true', 'true', 'true', '#000ecc', '#131daa', '#d9a820', 0, 'TEST-2320325674035371-032422-b5a6bc40f2589e44953944a0e391a491-182989978');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_formas_pagamento`
--

CREATE TABLE `ws_formas_pagamento` (
  `id_f_pagamento` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_pagamento` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_formas_pagamento`
--

INSERT INTO `ws_formas_pagamento` (`id_f_pagamento`, `user_id`, `f_pagamento`) VALUES
(12, 1, 'Pix - 00990468909'),
(13, 1, 'Dinheiro'),
(15, 1, 'Cartão de Débito (Online)'),
(16, 1, 'Cartão de Crédito (Na entrega)'),
(17, 1, 'Cartão de Débito (Na entrega)'),
(18, 22, 'Pix'),
(19, 24, 'Dinheiro'),
(20, 24, 'Cartão de débito'),
(21, 24, 'Cartão de débito online');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_fuso_horario`
--

CREATE TABLE `ws_fuso_horario` (
  `id_fuso` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fuso_horario` varchar(150) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_fuso_horario`
--

INSERT INTO `ws_fuso_horario` (`id_fuso`, `user_id`, `fuso_horario`) VALUES
(1, 1, 'America/Fortaleza'),
(2, 16, 'America/Sao_Paulo'),
(3, 22, 'America/Sao_Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_impressora`
--

CREATE TABLE `ws_impressora` (
  `id_impressora` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `nome_impressora` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_impressora`
--

INSERT INTO `ws_impressora` (`id_impressora`, `user_id`, `nome_impressora`) VALUES
(1, 1, 'COM6');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_itens`
--

CREATE TABLE `ws_itens` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `img_item` varchar(500) NOT NULL,
  `nome_item` varchar(250) NOT NULL,
  `descricao_item` varchar(500) NOT NULL,
  `preco_item` decimal(10,2) NOT NULL,
  `config_total_s` int(11) NOT NULL,
  `disponivel` int(11) NOT NULL,
  `dia_semana` varchar(500) NOT NULL,
  `number_adicional` int(11) NOT NULL,
  `number_adicional_pago` int(11) NOT NULL,
  `posicao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_itens`
--

INSERT INTO `ws_itens` (`id`, `user_id`, `id_cat`, `img_item`, `nome_item`, `descricao_item`, `preco_item`, `config_total_s`, `disponivel`, `dia_semana`, `number_adicional`, `number_adicional_pago`, `posicao`) VALUES
(143, 1, 44, 'images/2021/03/mercadopago-1-e1566506704359-770x570.jpg', 'Mercadopago Burger', 'Teste para o módulo de pagamento online do Mercadopago. Após realizar o pagamento você será redirecionado para uma página do Whatsapp Web para finalizar o pedido.', 1.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 3),
(144, 1, 44, 'images/2021/03/296.jpg', 'Texas Burger', 'Pão Branco, Burger 180g, Cheddar, Queijo Monterey, Jack Empanado, Alface, Cebola Roxa e Tomate', 10.00, 0, 0, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(145, 1, 44, 'images/2021/03/242-1615752946.jpg', 'Seatle Burger', 'Pão Branco, Burger 180g, Cheddar, Queijo Monterey, Jack Empanado, Alface, Cebola Roxa e Tomate', 15.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 2),
(146, 1, 44, 'images/2021/03/270-1615752989.jpg', 'Chicago Burger', 'Pão Branco, Burger 180g, Cheddar, Queijo Monterey, Jack Empanado, Alface, Cebola Roxa e Tomate', 20.00, 0, 0, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 1),
(148, 1, 113, 'images/2021/03/252.jpg', 'Copo de Açaí', 'Açaí com leite, banana e morango', 0.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(149, 1, 113, 'images/2021/03/221.jpg', 'Copo de Açaí Tropical', 'Açaí com leite, banana e morango', 0.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(150, 1, 113, 'images/2021/03/255.jpg', 'Copo de Açaí Frozen', 'Açaí com leite, banana e morango', 0.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(151, 1, 114, 'images/2021/03/pizza-meio-a-meio.png', 'Pizza Americana', 'Pizza Americana, com Frango e Catupiry', 45.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(152, 1, 114, 'images/2021/03/797.jpg', 'Pizza Brasileiro', 'Pizza Americana, com Frango e Catupiry', 100.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(153, 1, 114, 'images/2021/03/808.jpg', 'Pizza Autraliana', 'Pizza Americana, com Frango e Catupiry', 87.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(158, 1, 118, 'false', 'HOT-DOG TRADICIONAL', 'teste', 8.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(159, 1, 118, 'false', 'HOT-DOG AMERICANO', 'teste232', 10.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(161, 22, 120, 'images/2021/03/thincrust-pizza-500x270-1616389260.png', 'Calabresa', 'Calabresa', 10.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(162, 1, 121, 'images/2021/03/download.jpg', 'ALICATE', 'XXX XXX XXX XXX', 100.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(163, 24, 122, 'false', 'Pizza mussarela', 'Molho mussarela e oregano', 30.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 1, 2),
(165, 24, 122, 'false', 'Pizza Frango 1', 'Frango e catupiry', 30.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 1, 1),
(166, 24, 122, 'false', 'PIZZA 1', 'TESTE 1', 25.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0),
(167, 24, 125, 'false', 'Refrigerante teste 1', 'Teste', 1.00, 0, 1, 'Domingo,Segunda,Terça,Quarta,Quinta,Sexta,Sabado', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_motoboys`
--

CREATE TABLE `ws_motoboys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `deliveryman_name` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `deliveryman_phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `ws_motoboys`
--

INSERT INTO `ws_motoboys` (`id`, `user_id`, `deliveryman_name`, `deliveryman_phone_number`) VALUES
(8, 1, 'Sonic', '(41) 99244-0825'),
(9, 1, 'Ligeirinho', '(41) 87878-7878'),
(10, 1, 'Canela Fina', '(41) 57454-7454'),
(11, 22, 'Joao', '(11) 77777-7777'),
(13, 24, 'Motoboy 1', '(11) 99796-0167');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_observacoes`
--

CREATE TABLE `ws_observacoes` (
  `id_obs` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `nome_observacao` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_opcao_complemento`
--

CREATE TABLE `ws_opcao_complemento` (
  `id_opcao_complemento` int(11) NOT NULL,
  `nome_opcao_complemento` varchar(100) NOT NULL,
  `categorias_adicional_opcao_complemento` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status_opcao_complemento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_opcao_complemento`
--

INSERT INTO `ws_opcao_complemento` (`id_opcao_complemento`, `nome_opcao_complemento`, `categorias_adicional_opcao_complemento`, `user_id`, `status_opcao_complemento`) VALUES
(5, 'Hamburger Mal Passado', '44', 1, 1),
(6, 'Hamburger Ao Ponto', '44', 1, 1),
(7, 'Hamburger Bem Passado', '44', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_opcoes_itens`
--

CREATE TABLE `ws_opcoes_itens` (
  `id_option` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `nome_option` varchar(250) NOT NULL,
  `valor_tamanho` decimal(10,2) NOT NULL,
  `meio_a_meio` varchar(50) NOT NULL,
  `meio_a_meio_tipo` int(11) NOT NULL,
  `total_qtd_itens` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_opcoes_itens`
--

INSERT INTO `ws_opcoes_itens` (`id_option`, `user_id`, `id_tipo`, `nome_option`, `valor_tamanho`, `meio_a_meio`, `meio_a_meio_tipo`, `total_qtd_itens`) VALUES
(83, 1, 57, '250 ml', 15.00, 'null', 1, 'null'),
(84, 1, 57, '500 ml', 20.00, 'null', 1, 'null'),
(85, 1, 57, '1 L', 35.00, 'null', 1, 'null'),
(86, 1, 58, 'Meio a Meio', 0.00, 'true', 3, '2'),
(87, 24, 62, 'Meio a meio', 0.00, 'true', 1, '3'),
(88, 24, 63, 'Grande', 20.00, 'null', 1, 'null'),
(89, 24, 63, 'Médio', 15.00, 'null', 1, 'null'),
(90, 24, 63, 'Pequeno', 10.00, 'null', 1, 'null');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_pedidos`
--

CREATE TABLE `ws_pedidos` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `codigo_pedido` varchar(150) NOT NULL,
  `data` datetime NOT NULL,
  `data_chart` varchar(100) NOT NULL,
  `data_chart2` date NOT NULL,
  `resumo_pedidos` longtext NOT NULL,
  `forma_pagamento` varchar(150) NOT NULL,
  `valor_troco` decimal(10,2) NOT NULL,
  `opcao_delivery` varchar(50) NOT NULL,
  `valor_taxa` decimal(10,2) NOT NULL,
  `telefone_empresa` varchar(200) NOT NULL,
  `adicionais` varchar(250) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `telefone` varchar(150) NOT NULL,
  `rua` varchar(250) NOT NULL,
  `unidade` int(11) NOT NULL,
  `bairro` varchar(150) NOT NULL,
  `cidade` varchar(150) NOT NULL,
  `uf` varchar(10) NOT NULL,
  `complemento` varchar(250) NOT NULL,
  `observacao` varchar(250) NOT NULL,
  `name_observacao_mesa` varchar(250) NOT NULL,
  `status` varchar(150) NOT NULL,
  `mes` varchar(5) NOT NULL,
  `ano` varchar(5) NOT NULL,
  `view` int(11) NOT NULL,
  `desconto` int(11) NOT NULL,
  `confirm_whatsapp` varchar(50) NOT NULL,
  `msg_delivery_false` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_pedidos`
--

INSERT INTO `ws_pedidos` (`id`, `user_id`, `codigo_pedido`, `data`, `data_chart`, `data_chart2`, `resumo_pedidos`, `forma_pagamento`, `valor_troco`, `opcao_delivery`, `valor_taxa`, `telefone_empresa`, `adicionais`, `sub_total`, `total`, `nome`, `telefone`, `rua`, `unidade`, `bairro`, `cidade`, `uf`, `complemento`, `observacao`, `name_observacao_mesa`, `status`, `mes`, `ano`, `view`, `desconto`, `confirm_whatsapp`, `msg_delivery_false`) VALUES
(68, 1, 'PED0321-1', '2021-03-14 20:21:41', '2021-03', '2021-03-14', '<b>Qtd:</b> 1x Chicago Burger<br /><b>Valor:</b> R$ 20,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Crédito (Online)', 0.00, 'true', 0.00, '41992440825', '0', 20.00, 20.00, 'VINICIUS%20ALBERTO', '15981172295', 'Rua Rio turvo, 75', 25, 'Ggvh', 'Barra do Turvo', 'SP', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 1, 0, 'true', ''),
(69, 1, 'PED0321-2', '2021-03-14 23:33:23', '2021-03', '2021-03-14', '<b>Qtd:</b> 1x Copo de Açaí >> 1 L<br /><b>Adicionais grátis:</b><br />Leite Condensado, Leite em Pó, Granola, Paçoca, Fruta Morango, Fruta Banana, Fruta Manga<br /><b>Valor:</b> R$ 35,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Crédito (Online)', 0.00, 'true', 0.00, '41992440825', '0', 35.00, 35.00, 'Jeanjean', '41999999999', 'Tal', 334, 'Centrao', 'Arapiraca', 'AL', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 1, 0, 'true', ''),
(70, 1, 'PED0321-3', '2021-03-16 08:59:17', '2021-03', '2021-03-16', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Adicionais grátis:</b><br />Catchup, Maionese, Milho<br /><b>Adicionais pagos:</b><br />Hamburger 150g, <br /><b>Opção:</b> Hamburger Mal Passado<br /><b>Valor:</b> R$ 6,00<br /><b>OBS:</b> Não<br /><br />', 'Pix - 00990468909', 0.00, 'true', 0.00, '41992440825', '5', 6.00, -4.00, 'FERNANDA%20ALDRYA%20RODRIGUES', '11940590180', 'Rua João do Dico', 239, 'Jardim Santo Antônio', 'Embu das Artes', 'São Paulo', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 10, 'true', ''),
(71, 1, 'PED0321-4', '2021-03-16 09:08:21', '2021-03', '2021-03-16', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Adicionais grátis:</b><br />Maionese, Azeitona<br /><b>Adicionais pagos:</b><br />Catupiry, <br /><b>Opção:</b> Hamburger Mal Passado<br /><b>Valor:</b> R$ 2,50<br /><b>OBS:</b> Não<br /><br />', 'Pix - 00990468909', 0.00, 'true', 0.00, '41992440825', '1.5', 2.50, 2.50, 'Carlos', '11940590180', 'Rua João do Dico', 2, 'Jardim Santo Antônio', 'Paranaguá', 'PR', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(72, 1, 'PED0321-5', '2021-03-19 00:02:34', '2021-03', '2021-03-19', '<b>Qtd:</b> 1x PAGAMENTO PELO MERCADO PAGO<br /><b>Valor:</b> R$ 1,00...', 'Cartão', 0.00, 'true', 0.00, '41992440825', '0', 1.00, 0.00, 'Rony', '66999792141', 'Teste', 123, 'Jd. Botânic', 'Paranaguá', 'PR', 'Vazio', 'Vazio', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(73, 1, 'PED0321-6', '2021-03-19 00:04:20', '2021-03', '2021-03-19', '<b>Qtd:</b> 1x Texas Burger<br /><b>Adicionais grátis:</b><br />Catchup, Maionese, Milho<br /><b>Adicionais pagos:</b><br />Hamburger 150g, Catupiry, Queijo Mussrela, Cheddar, Bacon, <br /><b>Valor:</b> R$ 21,00<br /><b>OBS:</b> Não<br /><br />', 'Dinheiro', 100.00, 'true', 0.00, '41992440825', '11', 21.00, 21.00, 'Jeanjean', '41999999999', 'Tal', 334, 'Centrao', 'Paranaguá', 'PR', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(74, 1, 'PED0321-7', '2021-03-19 01:30:25', '2021-03', '2021-03-19', '<b>Qtd:</b> 1x Chicago Burger<br /><b>Valor:</b> R$ 20,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Crédito (Online)', 0.00, 'true', 0.00, '41992440825', '0', 20.00, 20.00, 'RICARDO%20CESAR%20GONDIM', '85999044222', 'Av Pontes Vieirs 84, 84', 167, 'Aldeota', 'Fortaleza', 'CE', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(75, 1, 'PED0321-8', '2021-03-19 21:29:59', '2021-03', '2021-03-19', '<b>Qtd:</b> 2x Mercadopago Burger<br /><b>Adicionais grátis:</b><br />Maionese, Milho<br /><b>Adicionais pagos:</b><br />Queijo Mussrela, <br /><b>Opção:</b> Hamburger Mal Passado<br /><b>Valor:</b> R$ 4,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Crédito (Na entrega)', 0.00, 'true', 0.00, '41992440825', '2', 4.00, 4.00, 'Ivanildo%20Ferreira', '91984552602', 'TRAVESSA BARAO DO TRIUNFO, 907', 907, 'Águas lindas', 'BELEM', 'PA', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(78, 1, 'PED0321-9', '2021-03-22 01:49:31', '2021-03', '2021-03-22', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Valor:</b> R$ 1,00<br /><b>OBS:</b> Não<br /><br />', 'Selecione...', 0.00, 'true', 0.00, '41992440825', '0', 1.00, 1.00, 'EU', '71986737377', 'FDS', 4, 'PERPERI', 'Paranaguá', 'PR', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(79, 1, 'PED0321-10', '2021-03-22 01:50:49', '2021-03', '2021-03-22', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Valor:</b> R$ 1,00<br /><b>OBS:</b> Não<br /><br />', 'Selecione...', 0.00, 'true', 0.00, '41992440825', '0', 1.00, 1.00, 'EU', '71986737377', 'FDS', 4, 'PERPERI', 'Paranaguá', 'PR', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(80, 1, 'PED0321-11', '2021-03-22 01:52:27', '2021-03', '2021-03-22', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Valor:</b> R$ 1,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Crédito (Online)', 0.00, 'true', 0.00, '41992440825', '0', 1.00, 1.00, 'EU', '71986737377', 'FDS', 4, 'PERPERI', 'Paranaguá', 'PR', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 1, 0, 'true', ''),
(81, 1, 'PED0321-12', '2021-03-22 20:25:34', '2021-03', '2021-03-22', '<b>Qtd:</b> 1x Copo de Açaí Frozen >> 500 ml<br /><b>Valor:</b> R$ 20,00<br /><b>OBS:</b> Não<br /><br />', '', 0.00, 'false', 0.00, '41992440825', '0', 20.00, 20.00, '4545454545454', '55454545454', '', 0, '', '', '', '*Não informado*', '*Não informado*', '454', 'Aberto', '03', '21', 0, 0, 'true', 'Mesa: 45454545<br />Pessoas: 4545454'),
(82, 1, 'PED0321-13', '2021-03-23 11:50:12', '2021-03', '2021-03-23', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Adicionais grátis:</b><br />Ovo de Codorna<br /><b>Adicionais pagos:</b><br />Queijo Mussrela, <br /><b>Opção:</b> Hamburger Ao Ponto<br /><b>Valor:</b> R$ 2,00<br /><b>OBS:</b> Não<br /><br />', '', 0.00, 'false', 0.00, '41992440825', '1', 2.00, 2.00, 'Posto%20de%20gasolina', '99999999999', '', 0, '', '', '', '*Não informado*', '*Não informado*', 'Nenhumadfdfdfd', 'Aberto', '03', '21', 0, 0, 'true', 'Mesa: 7777777<br />Pessoas: 777'),
(83, 1, 'PED0321-14', '2021-03-23 11:51:17', '2021-03', '2021-03-23', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Adicionais grátis:</b><br />Ovo de Codorna<br /><b>Adicionais pagos:</b><br />Queijo Mussrela, <br /><b>Opção:</b> Hamburger Ao Ponto<br /><b>Valor:</b> R$ 2,00<br /><b>OBS:</b> Não<br /><br />', '', 0.00, 'false', 0.00, '41992440825', '1', 2.00, 2.00, 'Sfsdfs', '35435477777', '', 0, '', '', '', '*Não informado*', '*Não informado*', 'Nenhuma34543', 'Aberto', '03', '21', 0, 0, 'true', 'Mesa: 4354<br />Pessoas: 344'),
(84, 1, 'PED0321-15', '2021-03-23 16:50:54', '2021-03', '2021-03-23', '<b>Qtd:</b> 1x HOT-DOG TRADICIONAL<br /><b>Adicionais grátis:</b><br />Maionese Caseira<br /><b>Adicionais pagos:</b><br />Bacon, <br /><b>Valor:</b> R$ 10,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Débito (Online)', 0.00, 'false', 0.00, '41992440825', '2', 10.00, 10.00, 'Fulano%20de%20Tal', '99999999999', '', 0, '', '', '', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', 'Retirada no Balcão'),
(85, 1, 'PED0321-16', '2021-03-23 19:07:51', '2021-03', '2021-03-23', '<b>Qtd:</b> 3x Mercadopago Burger<br /><b>Adicionais grátis:</b><br />Catchup<br /><b>Adicionais pagos:</b><br />Hamburger 150g, <br /><b>Valor:</b> R$ 18,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Débito (Online)', 0.00, 'false', 0.00, '41992440825', '15', 18.00, 18.00, 'Teste', '99999999999', '', 0, '', '', '', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', 'Retirada no Balcão'),
(86, 1, 'PED0321-17', '2021-03-23 19:08:27', '2021-03', '2021-03-23', '', 'Cartão de Débito (Online)', 0.00, 'false', 0.00, '41992440825', '0', 18.00, 0.00, 'Teste', '99999999999', '', 0, '', '', '', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', 'Retirada no Balcão'),
(87, 1, 'PED0321-18', '2021-03-23 19:58:57', '2021-03', '2021-03-23', '<b>Qtd:</b> 1x Seatle Burger<br /><b>Valor:</b> R$ 15,00<br /><b>OBS:</b> Não<br /><br />', 'Dinheiro', 20.00, 'true', 0.00, '41992440825', '0', 15.00, 15.00, 'Pops%20lanches%20Meia%20Praia%20Lanches%20Meia', '47999222823', 'sasasas', 1011, 'tal', 'RIO', 'Santa Cata', 'Casa', 'raç', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(88, 1, 'PED0321-19', '2021-03-23 20:12:47', '2021-03', '2021-03-23', '<b>Qtd:</b> 1x Pizza Americana >> Meio a Meio<br /><b>Valor:</b> R$ 45,00<br /><b>OBS:</b> Não<br /><br />', 'Pix - 00990468909', 100.00, 'true', 0.00, '41992440825', '0', 45.00, 45.00, 'Aragão', '91984151812', 'Avenida Senador Lemos', 888, 'Telegrafo', 'Belém', 'PA', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(89, 1, 'PED0321-20', '2021-03-23 21:03:26', '2021-03', '2021-03-23', '<b>Qtd:</b> 2x Pizza Americana + Pizza Brasileiro >> Meio a Meio<br /><b>Valor:</b> R$ 145,00<br /><b>OBS:</b> Não<br /><br />', 'Pix - 00990468909', 0.00, 'true', 0.00, '41992440825', '0', 145.00, 145.00, 'AragãoAragão', '91984151812', 'Avenida Senador Lemos', 888, 'Xxd', 'Belém', 'PA', '*Não informado*', '*Não informado*', '', 'Finalizado', '03', '21', 1, 0, 'true', ''),
(90, 1, 'PED0321-21', '2021-03-24 09:04:24', '2021-03', '2021-03-24', '<b>Qtd:</b> 1x Mercadopago Burger<br /><b>Adicionais grátis:</b><br />Milho<br /><b>Adicionais pagos:</b><br />TESTE 2, <br /><b>Valor:</b> R$ 2,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Débito (Online)', 0.00, 'true', 0.00, '41992440825', '1', 2.00, 2.00, 'Asdsad', '11111111111', 'asdsad', 1123, 'sadas', 'Paranaguá', 'PR', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(91, 1, 'PED0321-22', '2021-03-24 13:51:36', '2021-03', '2021-03-24', '<b>Qtd:</b> 2x Pizza Americana + Pizza Brasileiro >> Meio a Meio<br /><b>Valor:</b> R$ 145,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Crédito (Na entrega)', 0.00, 'true', 0.00, '41992440825', '0', 145.00, 145.00, 'Paola', '19999167879', 'testeq', 1998, 'jashdau', 'Paranaguá', 'PR', 'paioi', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(92, 24, 'PED0321-1', '2021-03-24 20:15:23', '2021-03', '2021-03-24', '<b>Qtd:</b> 1x PIZZA 1<br /><b>Valor:</b> R$ 25,00<br /><b>OBS:</b> Não<br /><br />', 'Dinheiro', 100.00, 'true', 3.00, '11997960167', '0', 25.00, 28.00, 'EDUARDO', '11997960167', 'Rua Umbelina Batista Amorim', 75, 'Jardim São Pedro', 'Mogi das Cruzes', 'SP', '*Não informado*', '*Não informado*', '', 'Finalizado', '03', '21', 1, 0, 'true', ''),
(93, 24, 'PED0321-2', '2021-03-24 20:32:46', '2021-03', '2021-03-24', '<b>Qtd:</b> 1x Refrigerante teste 1<br /><b>Valor:</b> R$ 1,00<br /><b>OBS:</b> Não<br /><br />', 'Dinheiro', 10.00, 'false', 0.00, '11997960167', '0', 1.00, 1.00, 'EDUARDO', '11997960167', '', 0, '', '', '', '*Não informado*', '*Não informado*', '', 'Finalizado', '03', '21', 1, 0, 'true', 'Retirada no Balcão'),
(94, 24, 'PED0321-3', '2021-03-24 21:00:50', '2021-03', '2021-03-24', '<b>Qtd:</b> 1x Refrigerante teste 1<br /><b>Valor:</b> R$ 1,00<br /><b>OBS:</b> Não<br /><br />', 'Dinheiro', 5.00, 'false', 0.00, '11997960167', '0', 1.00, 1.00, 'EDUARDO', '11997960167', '', 0, '', '', '', '*Não informado*', '*Não informado*', '', 'Em Andamento', '03', '21', 1, 0, 'true', 'Retirada no Balcão'),
(95, 24, 'PED0321-4', '2021-03-24 21:06:05', '2021-03', '2021-03-24', '<b>Qtd:</b> 1x Refrigerante teste 1<br /><b>Valor:</b> R$ 1,00<br /><b>OBS:</b> Não<br /><br /><b>Qtd:</b> 2x PIZZA 1<br /><b>Valor:</b> R$ 50,00<br /><b>OBS:</b> Não<br /><br /><b>Qtd:</b> 1x Pizza mussarela + Pizza Frango 1 >> Meio a meio<br /><b>Valor:</b> R$ 30,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de débito', 0.00, 'true', 3.00, '11997960167', '0', 81.00, 84.00, 'EDUARDO', '11997960167', 'Rua Umbelina Batista Amorim', 75, 'Jardim São Pedro', 'Mogi das Cruzes', 'SP', '*Não informado*', '*Não informado*', '', 'Em Andamento', '03', '21', 1, 0, 'false', ''),
(96, 24, 'PED0321-5', '2021-03-24 21:23:28', '2021-03', '2021-03-24', '<b>Qtd:</b> 2x PIZZA 1<br /><b>Valor:</b> R$ 50,00<br /><b>OBS:</b> Não<br /><br /><b>Qtd:</b> 5x Refrigerante teste 1<br /><b>Valor:</b> R$ 5,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de débito', 0.00, 'true', 5.00, '11997960167', '0', 55.00, 60.00, 'EDUARDO', '11997960167', 'Rua Umbelina Batista Amorim', 75, 'Jardim São Pedro', 'Mogi das cruzes', 'Sao Paulo', '*Não informado*', '*Não informado*', '', 'Em Andamento', '03', '21', 1, 0, 'false', ''),
(97, 1, 'PED0321-23', '2021-03-25 01:04:42', '2021-03', '2021-03-25', '<b>Qtd:</b> 2x Mercadopago Burger<br /><b>Valor:</b> R$ 2,00<br /><b>OBS:</b> Não<br /><br /><b>Qtd:</b> 1x Seatle Burger<br /><b>Valor:</b> R$ 15,00<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Débito (Online)', 0.00, 'true', 0.00, '41992440825', '0', 17.00, 17.00, 'Juca', '99999999999', 'Rua C-20, 242', 67, 'Centro', 'São Paulo', 'SP', '*Não informado*', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', ''),
(98, 1, 'PED0321-24', '2021-03-25 01:30:15', '2021-03', '2021-03-25', '<b>Qtd:</b> 1x Pizza Americana + Pizza Brasileiro >> Meio a Meio<br /><b>Valor:</b> R$ 72,50<br /><b>OBS:</b> Não<br /><br />', 'Cartão de Débito (Online)', 0.00, 'true', 0.00, '41992440825', '0', 72.50, 72.50, 'Pietro%20Danilo', '99999999999', 'Rua Rua 11, Rua Rua 11', 11, 'Centro', 'Formosa', 'GO', 'Casa', '*Não informado*', '', 'Aberto', '03', '21', 0, 0, 'true', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_pedidos_itens`
--

CREATE TABLE `ws_pedidos_itens` (
  `ID_TABELA` int(11) NOT NULL,
  `ID_WS_PEDIDOS` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `CODIGO_PEDIDO` varchar(100) NOT NULL,
  `ID_PRODUTO` int(11) NOT NULL,
  `QTDE` int(11) NOT NULL,
  `VALOR` decimal(10,2) NOT NULL,
  `ADICIONAIS` varchar(250) NOT NULL,
  `OBS` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_pedidos_itens`
--

INSERT INTO `ws_pedidos_itens` (`ID_TABELA`, `ID_WS_PEDIDOS`, `USER_ID`, `CODIGO_PEDIDO`, `ID_PRODUTO`, `QTDE`, `VALOR`, `ADICIONAIS`, `OBS`) VALUES
(69, 68, 1, 'PED0321-1', 146, 1, 20.00, '', 'Não'),
(70, 69, 1, 'PED0321-2', 148, 1, 35.00, '', 'Não'),
(71, 70, 1, 'PED0321-3', 143, 1, 6.00, 'Hamburger 150g, ', 'Não'),
(72, 71, 1, 'PED0321-4', 143, 1, 2.50, 'Catupiry, ', 'Não'),
(73, 73, 1, 'PED0321-6', 144, 1, 21.00, 'Hamburger 150g, Catupiry, Queijo Mussrela, Cheddar, Bacon, ', 'Não'),
(74, 74, 1, 'PED0321-7', 146, 1, 20.00, '', 'Não'),
(75, 75, 1, 'PED0321-8', 143, 2, 4.00, 'Queijo Mussrela, ', 'Não'),
(77, 78, 1, 'PED0321-9', 143, 1, 1.00, '', 'Não'),
(78, 79, 1, 'PED0321-10', 143, 1, 1.00, '', 'Não'),
(79, 80, 1, 'PED0321-11', 143, 1, 1.00, '', 'Não'),
(80, 81, 1, 'PED0321-12', 150, 1, 20.00, '', 'Não'),
(81, 82, 1, 'PED0321-13', 143, 1, 2.00, 'Queijo Mussrela, ', 'Não'),
(82, 83, 1, 'PED0321-14', 143, 1, 2.00, 'Queijo Mussrela, ', 'Não'),
(83, 84, 1, 'PED0321-15', 158, 1, 10.00, 'Bacon, ', 'Não'),
(84, 85, 1, 'PED0321-16', 143, 3, 18.00, 'Hamburger 150g, ', 'Não'),
(85, 87, 1, 'PED0321-18', 145, 1, 15.00, '', 'Não'),
(86, 88, 1, 'PED0321-19', 151, 1, 45.00, '', 'Não'),
(87, 89, 1, 'PED0321-20', 151, 2, 145.00, '', 'Não'),
(88, 90, 1, 'PED0321-21', 143, 1, 2.00, 'TESTE 2, ', 'Não'),
(89, 91, 1, 'PED0321-22', 151, 2, 145.00, '', 'Não'),
(90, 92, 24, 'PED0321-1', 166, 1, 25.00, '', 'Não'),
(91, 93, 24, 'PED0321-2', 167, 1, 1.00, '', 'Não'),
(92, 94, 24, 'PED0321-3', 167, 1, 1.00, '', 'Não'),
(93, 95, 24, 'PED0321-4', 167, 1, 1.00, '', 'Não'),
(94, 95, 24, 'PED0321-4', 166, 2, 50.00, '', 'Não'),
(95, 95, 24, 'PED0321-4', 165, 1, 30.00, '', 'Não'),
(96, 96, 24, 'PED0321-5', 166, 2, 50.00, '', 'Não'),
(97, 96, 24, 'PED0321-5', 167, 5, 5.00, '', 'Não'),
(98, 97, 1, 'PED0321-23', 143, 2, 2.00, '', 'Não'),
(99, 97, 1, 'PED0321-23', 145, 1, 15.00, '', 'Não'),
(100, 98, 1, 'PED0321-24', 151, 1, 72.50, '', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_relacao_tamanho`
--

CREATE TABLE `ws_relacao_tamanho` (
  `id_relacao` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_tamanho` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_relacao_tamanho`
--

INSERT INTO `ws_relacao_tamanho` (`id_relacao`, `id_user`, `id_item`, `id_tipo`, `id_tamanho`) VALUES
(9, 1, 139, 56, '82,81,80'),
(10, 1, 140, 56, '82,81,80'),
(11, 1, 141, 56, '82,81,80'),
(12, 1, 142, 56, '82,81,80'),
(14, 1, 148, 57, '85,84,83'),
(15, 1, 149, 57, '85,84,83'),
(16, 1, 150, 57, '85,84,83'),
(17, 1, 151, 58, '86'),
(18, 1, 152, 58, '86'),
(19, 1, 153, 58, '86'),
(20, 24, 163, 62, '87'),
(22, 24, 165, 62, '87');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_tipo_produto`
--

CREATE TABLE `ws_tipo_produto` (
  `id_tipo_produto` int(11) NOT NULL,
  `nome_tipo_produto` varchar(250) NOT NULL,
  `user_tipo_produto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_tipo_produto`
--

INSERT INTO `ws_tipo_produto` (`id_tipo_produto`, `nome_tipo_produto`, `user_tipo_produto`) VALUES
(57, 'Copo de Açai', 1),
(58, 'Meio a Meio', 1),
(61, 'P', 1),
(62, 'Pizza', 24),
(63, 'Açaí', 24);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ws_users`
--

CREATE TABLE `ws_users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_lastname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_cpf` varchar(250) NOT NULL,
  `user_telefone` varchar(250) NOT NULL,
  `user_img_perfil` varchar(250) NOT NULL,
  `user_password` varchar(255) CHARACTER SET latin1 NOT NULL,
  `user_registration` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_ultimoacesso` varchar(255) NOT NULL,
  `user_level` int(11) NOT NULL DEFAULT '1',
  `user_plano` int(1) NOT NULL,
  `user_status` varchar(255) NOT NULL,
  `user_cont` int(11) NOT NULL,
  `user_nome_plano` varchar(300) NOT NULL,
  `user_dias_plano` int(11) NOT NULL,
  `status_assinatura_plano` varchar(300) NOT NULL,
  `codigo_assinante` varchar(60) NOT NULL,
  `user_data_renova` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `ws_users`
--

INSERT INTO `ws_users` (`user_id`, `user_name`, `user_lastname`, `user_email`, `user_cpf`, `user_telefone`, `user_img_perfil`, `user_password`, `user_registration`, `user_ultimoacesso`, `user_level`, `user_plano`, `user_status`, `user_cont`, `user_nome_plano`, `user_dias_plano`, `status_assinatura_plano`, `codigo_assinante`, `user_data_renova`) VALUES
(1, 'Jean', 'Ferreira', 'demo@demo.com', '217.745.568-55', '(79).9124.6346', 'images/2018/07/cd-img-3.png', '53444f91e698c0c7caa2dbc3bdbf93fc', '2014-02-11 16:14:04', ' Último acesso em: 25/03/2021 01:15 IP: 189.36.239.3 ', 3, 1, '', 0, '', 0, '', '', '0000-00-00'),
(22, 'Jose', 'Silva', 'yasmingual@gmail.com', '430.511.520-48', '(11) 77777-7777', '', 'e4553ecc2cc9e4f86a357ddb05a89705', '2021-03-22 04:54:11', '', 3, 1, '', 0, '', 0, '', '', '0000-00-00'),
(23, 'Joao', 'Silva', 'joao@silva.com', '675.014.230-32', '(88) 99887-7665', '', '9c10666ba816d8e066d1e0aec35d73cd', '2021-03-24 17:50:48', ' Último acesso em: 24/03/2021 14:53 IP: 170.150.206.127 ', 3, 1, '', 0, '', 0, '', '', '0000-00-00'),
(24, 'Eduardo', 'Oliveira', 'agenciafeoli@gmail.com', '254.313.388-70', '(11) 99796-0167', '', '83699a545c8d151084d3498e9ebb94cd', '2021-03-24 18:47:00', ' Último acesso em: 24/03/2021 21:30 IP: 45.233.182.11 ', 3, 1, '', 0, '', 0, '', '', '0000-00-00');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `bairros_delivery`
--
ALTER TABLE `bairros_delivery`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banner_promocional`
--
ALTER TABLE `banner_promocional`
  ADD PRIMARY KEY (`id_banner`);

--
-- Índices para tabela `configuracoes_site`
--
ALTER TABLE `configuracoes_site`
  ADD PRIMARY KEY (`id_config`);

--
-- Índices para tabela `cupom_desconto`
--
ALTER TABLE `cupom_desconto`
  ADD PRIMARY KEY (`id_cupom`);

--
-- Índices para tabela `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id_views`);

--
-- Índices para tabela `ws_adicionais_cat`
--
ALTER TABLE `ws_adicionais_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_adicionais_itens`
--
ALTER TABLE `ws_adicionais_itens`
  ADD PRIMARY KEY (`id_adicionais`);

--
-- Índices para tabela `ws_adicionais_itens_gratis`
--
ALTER TABLE `ws_adicionais_itens_gratis`
  ADD PRIMARY KEY (`id_adicional_gratis`);

--
-- Índices para tabela `ws_admin`
--
ALTER TABLE `ws_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Índices para tabela `ws_cat`
--
ALTER TABLE `ws_cat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_datas_close`
--
ALTER TABLE `ws_datas_close`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_empresa`
--
ALTER TABLE `ws_empresa`
  ADD PRIMARY KEY (`id_empresa`);

--
-- Índices para tabela `ws_formas_pagamento`
--
ALTER TABLE `ws_formas_pagamento`
  ADD PRIMARY KEY (`id_f_pagamento`);

--
-- Índices para tabela `ws_fuso_horario`
--
ALTER TABLE `ws_fuso_horario`
  ADD PRIMARY KEY (`id_fuso`);

--
-- Índices para tabela `ws_impressora`
--
ALTER TABLE `ws_impressora`
  ADD PRIMARY KEY (`id_impressora`);

--
-- Índices para tabela `ws_itens`
--
ALTER TABLE `ws_itens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_motoboys`
--
ALTER TABLE `ws_motoboys`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_observacoes`
--
ALTER TABLE `ws_observacoes`
  ADD PRIMARY KEY (`id_obs`);

--
-- Índices para tabela `ws_opcao_complemento`
--
ALTER TABLE `ws_opcao_complemento`
  ADD PRIMARY KEY (`id_opcao_complemento`);

--
-- Índices para tabela `ws_opcoes_itens`
--
ALTER TABLE `ws_opcoes_itens`
  ADD PRIMARY KEY (`id_option`);

--
-- Índices para tabela `ws_pedidos`
--
ALTER TABLE `ws_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `ws_pedidos_itens`
--
ALTER TABLE `ws_pedidos_itens`
  ADD PRIMARY KEY (`ID_TABELA`);

--
-- Índices para tabela `ws_relacao_tamanho`
--
ALTER TABLE `ws_relacao_tamanho`
  ADD PRIMARY KEY (`id_relacao`);

--
-- Índices para tabela `ws_tipo_produto`
--
ALTER TABLE `ws_tipo_produto`
  ADD PRIMARY KEY (`id_tipo_produto`);

--
-- Índices para tabela `ws_users`
--
ALTER TABLE `ws_users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `bairros_delivery`
--
ALTER TABLE `bairros_delivery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `banner_promocional`
--
ALTER TABLE `banner_promocional`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `configuracoes_site`
--
ALTER TABLE `configuracoes_site`
  MODIFY `id_config` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `cupom_desconto`
--
ALTER TABLE `cupom_desconto`
  MODIFY `id_cupom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `views`
--
ALTER TABLE `views`
  MODIFY `id_views` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `ws_adicionais_cat`
--
ALTER TABLE `ws_adicionais_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `ws_adicionais_itens`
--
ALTER TABLE `ws_adicionais_itens`
  MODIFY `id_adicionais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT de tabela `ws_adicionais_itens_gratis`
--
ALTER TABLE `ws_adicionais_itens_gratis`
  MODIFY `id_adicional_gratis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de tabela `ws_admin`
--
ALTER TABLE `ws_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ws_cat`
--
ALTER TABLE `ws_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de tabela `ws_datas_close`
--
ALTER TABLE `ws_datas_close`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `ws_empresa`
--
ALTER TABLE `ws_empresa`
  MODIFY `id_empresa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `ws_formas_pagamento`
--
ALTER TABLE `ws_formas_pagamento`
  MODIFY `id_f_pagamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `ws_fuso_horario`
--
ALTER TABLE `ws_fuso_horario`
  MODIFY `id_fuso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `ws_impressora`
--
ALTER TABLE `ws_impressora`
  MODIFY `id_impressora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `ws_itens`
--
ALTER TABLE `ws_itens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT de tabela `ws_motoboys`
--
ALTER TABLE `ws_motoboys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `ws_observacoes`
--
ALTER TABLE `ws_observacoes`
  MODIFY `id_obs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `ws_opcao_complemento`
--
ALTER TABLE `ws_opcao_complemento`
  MODIFY `id_opcao_complemento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `ws_opcoes_itens`
--
ALTER TABLE `ws_opcoes_itens`
  MODIFY `id_option` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT de tabela `ws_pedidos`
--
ALTER TABLE `ws_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de tabela `ws_pedidos_itens`
--
ALTER TABLE `ws_pedidos_itens`
  MODIFY `ID_TABELA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de tabela `ws_relacao_tamanho`
--
ALTER TABLE `ws_relacao_tamanho`
  MODIFY `id_relacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `ws_tipo_produto`
--
ALTER TABLE `ws_tipo_produto`
  MODIFY `id_tipo_produto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT de tabela `ws_users`
--
ALTER TABLE `ws_users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
