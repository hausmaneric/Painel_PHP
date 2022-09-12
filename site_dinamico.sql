-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Set-2022 às 21:33
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `site_dinamico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.agenda`
--

CREATE TABLE `tb_admin.agenda` (
  `id` int(11) NOT NULL,
  `tarefa` text NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.agenda`
--

INSERT INTO `tb_admin.agenda` (`id`, `tarefa`, `data`) VALUES
(1, 'Ir ao médico', '2022-08-29'),
(2, 'Malhar', '2022-08-29'),
(3, 'Correr', '2022-08-29'),
(4, 'Comer', '2022-08-29'),
(5, 'Malhar', '2022-08-29'),
(6, 'Ir ao médico', '2022-08-29'),
(7, 'Malhar', '2022-08-29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.chat`
--

CREATE TABLE `tb_admin.chat` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.chat`
--

INSERT INTO `tb_admin.chat` (`id`, `user_id`, `mensagem`) VALUES
(1, 1, ''),
(2, 1, 'Olá'),
(3, 1, 'Como você está?');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.clientes`
--

CREATE TABLE `tb_admin.clientes` (
  `id` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `cpf_cnpj` varchar(255) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.clientes`
--

INSERT INTO `tb_admin.clientes` (`id`, `Nome`, `Email`, `tipo`, `cpf_cnpj`, `imagem`) VALUES
(4, 'ERIC HAUSMAN DE MORAIS', 'eric.hausman.m@gmail.com', 'fisico', '147.312.737-81', ''),
(5, 'Eric Hausman', 'eric.hausman.m@gmail.com', 'fisico', '147.312.737-81', ''),
(6, 'Eric Hausman', 'eric.hausman.m@gmail.com', 'fisico', '147.312.737-81', ''),
(7, 'Eric Hausman', 'eric.hausman.m@gmail.com', 'fisico', '147.312.737-81', ''),
(9, 'Eric Hausman', 'eric.hausman.m@gmail.com', 'fisico', '147.312.737-81', ''),
(11, 'Fabricio', 'hausman.info@gmail.com', 'juridico', '05.902.829/0001-01', '6310f5526531a.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.contatos`
--

CREATE TABLE `tb_admin.contatos` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lista_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.contatos`
--

INSERT INTO `tb_admin.contatos` (`id`, `email`, `lista_id`) VALUES
(1, 'eric.hausman.m@gmail.com', 2),
(2, 'hausman.info@gmail.com', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.empreendimentos`
--

CREATE TABLE `tb_admin.empreendimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.empreendimentos`
--

INSERT INTO `tb_admin.empreendimentos` (`id`, `nome`, `tipo`, `preco`, `imagem`, `slug`, `order_id`) VALUES
(3, 'Empreendimento 2', 'residencial', '0.00', '6307a7739c527.jpeg', 'empreendimento-2', 1),
(4, 'Empreendimento 3', 'residencial', '0.00', '6307a77e19973.jpg', 'empreendimento-3', 2),
(5, 'Teste', 'residencial', '744.00', '6308f2a0eb9d8.jpeg', 'teste', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.estoque`
--

CREATE TABLE `tb_admin.estoque` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `largura` int(11) NOT NULL,
  `altura` int(11) NOT NULL,
  `comprimento` int(11) NOT NULL,
  `peso` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.estoque`
--

INSERT INTO `tb_admin.estoque` (`id`, `nome`, `descricao`, `largura`, `altura`, `comprimento`, `peso`, `quantidade`, `preco`) VALUES
(6, 'Camisa', 'descrição__', 2, 2, 2, 2, 3, '199.00'),
(7, 'Camisa Preta', 'Camisa Preta', 30, 40, 70, 110, 75, '75.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.estoque_imagens`
--

CREATE TABLE `tb_admin.estoque_imagens` (
  `id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.estoque_imagens`
--

INSERT INTO `tb_admin.estoque_imagens` (`id`, `produto_id`, `imagem`) VALUES
(9, 6, '63077a59921c9.jpg'),
(10, 6, '6307874fa3927.jpg'),
(11, 7, '630f8828af3d1.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.financeiro`
--

CREATE TABLE `tb_admin.financeiro` (
  `id` int(11) NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `valor` varchar(255) NOT NULL,
  `vencimento` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.financeiro`
--

INSERT INTO `tb_admin.financeiro` (`id`, `cliente_id`, `nome`, `valor`, `vencimento`, `status`) VALUES
(30, 4, 'Conta', '9.500,00', '2022-08-25', 1),
(31, 4, 'Conta', '9.500,00', '2022-09-24', 1),
(32, 4, 'Conta', '9.500,00', '2022-10-24', 0),
(33, 4, 'Conta', '9.500,00', '2022-11-23', 0),
(34, 4, 'Conta', '9.500,00', '2022-12-23', 0),
(35, 4, 'Conta', '9.500,00', '2023-01-22', 0),
(36, 4, 'Conta', '9.500,00', '2023-02-21', 0),
(37, 4, 'Conta', '9.500,00', '2023-03-23', 0),
(38, 4, 'Conta', '9.500,00', '2023-04-22', 0),
(39, 4, 'Conta', '9.500,00', '2023-05-22', 0),
(40, 4, 'Conta', '9.500,00', '2023-06-21', 0),
(41, 4, 'Conta', '9.500,00', '2023-07-21', 0),
(42, 11, 'Tá devendo em!', '1.000.000,00', '2022-09-02', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.imagens_imoveis`
--

CREATE TABLE `tb_admin.imagens_imoveis` (
  `id` int(11) NOT NULL,
  `imovel_id` int(11) NOT NULL,
  `imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.imagens_imoveis`
--

INSERT INTO `tb_admin.imagens_imoveis` (`id`, `imovel_id`, `imagem`) VALUES
(1, 1, '6307c6adc2a67.jpg'),
(2, 1, '6307c6adc2bd4.jpg'),
(3, 1, '6307c6adc2d5f.jpg'),
(4, 1, '6307c6adc2f24.jpg'),
(5, 1, '6307c6adc30b1.jpg'),
(6, 1, '6307c6adc323a.jpg'),
(7, 2, '63090c6e8b8ba.jpg'),
(8, 3, '63090c8db6e76.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.imoveis`
--

CREATE TABLE `tb_admin.imoveis` (
  `id` int(11) NOT NULL,
  `empreend_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` varchar(255) NOT NULL,
  `area` int(11) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.imoveis`
--

INSERT INTO `tb_admin.imoveis` (`id`, `empreend_id`, `nome`, `preco`, `area`, `order_id`) VALUES
(1, 3, 'Casa', '1.500.000,00', 355, 0),
(2, 4, 'Imovel 2', '5000000.00', 755, 0),
(3, 5, 'Imovel 3', '10000000.00', 1000, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.listas_email`
--

CREATE TABLE `tb_admin.listas_email` (
  `id` int(11) NOT NULL,
  `nome_lista` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.listas_email`
--

INSERT INTO `tb_admin.listas_email` (`id`, `nome_lista`) VALUES
(2, 'marketing digital'),
(3, 'Televenda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.online`
--

CREATE TABLE `tb_admin.online` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `ultima_acao` datetime NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.pedidos`
--

CREATE TABLE `tb_admin.pedidos` (
  `id` int(11) NOT NULL,
  `reference_id` int(11) NOT NULL,
  `produto_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.usuarios`
--

CREATE TABLE `tb_admin.usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.usuarios`
--

INSERT INTO `tb_admin.usuarios` (`id`, `user`, `password`, `img`, `nome`, `cargo`) VALUES
(1, 'admin', 'admin', 'eric.jpg', 'Eric Hausman', 2),
(2, 'aaa', 'admin', '62f3b32dbd9f2.jpg', 'Eric Hausman', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.visitas`
--

CREATE TABLE `tb_admin.visitas` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `dia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_admin.visitas`
--

INSERT INTO `tb_admin.visitas` (`id`, `ip`, `dia`) VALUES
(1, '127.0.0.1', '2022-08-08'),
(2, '192.168.15.7', '2022-08-10'),
(3, '192.168.15.4', '2022-08-10'),
(4, '127.0.0.1', '2022-08-16'),
(5, '127.0.0.1', '2022-08-23'),
(6, '127.0.0.1', '2022-08-30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.categorias`
--

CREATE TABLE `tb_site.categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.categorias`
--

INSERT INTO `tb_site.categorias` (`id`, `nome`, `slug`, `order_id`) VALUES
(4, 'Saúde', 'saude', 4),
(5, 'Esportes', 'esportes', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.comentarios`
--

CREATE TABLE `tb_site.comentarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `comentario` text NOT NULL,
  `noticia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.comentarios`
--

INSERT INTO `tb_site.comentarios` (`id`, `nome`, `comentario`, `noticia_id`) VALUES
(1, 'Eric Hausman', 'teste', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.config`
--

CREATE TABLE `tb_site.config` (
  `titulo` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `icone1` varchar(255) NOT NULL,
  `descricao1` text NOT NULL,
  `icone2` varchar(255) NOT NULL,
  `descricao2` text NOT NULL,
  `icone3` varchar(255) NOT NULL,
  `descricao3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.config`
--

INSERT INTO `tb_site.config` (`titulo`, `nome`, `descricao`, `icone1`, `descricao1`, `icone2`, `descricao2`, `icone3`, `descricao3`) VALUES
('teste', 'Eric Hausman', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.', 'fa-brands fa-css3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'fa-brands fa-html5', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'fa-brands fa-js', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.depoimentos`
--

CREATE TABLE `tb_site.depoimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `depoimento` text NOT NULL,
  `data` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.depoimentos`
--

INSERT INTO `tb_site.depoimentos` (`id`, `nome`, `depoimento`, `data`, `order_id`) VALUES
(9, 'Eric', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '09/08/2022', 9),
(10, 'Pedro', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '09/08/2022', 10),
(11, 'Rafael', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '09/08/2022', 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.noticias`
--

CREATE TABLE `tb_site.noticias` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `capa` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.noticias`
--

INSERT INTO `tb_site.noticias` (`id`, `categoria_id`, `data`, `titulo`, `conteudo`, `capa`, `slug`, `order_id`) VALUES
(4, 5, '2022-08-10', 'Fla atinge feito inédito na Libertadores e consolida poderio financeiro', '<p style=\"margin: 0px 0px 0.8em; font-size: 1.385em; line-height: 1.8; color: #1d2228; font-family: \'Yahoo Sans\', YahooSans, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Quando iniciou seu projeto de austeridade, ainda na gest&atilde;o de Eduardo Bandeira de Mello, o discurso era o de se fortalecer ao ponto de n&atilde;o s&oacute; chegar &agrave; Copa Libertadores esporadicamente como tamb&eacute;m se consolidar e estar sempre disputando o t&iacute;tulo. &Agrave; &eacute;poca, isso se tornava at&eacute; ris&iacute;vel, mas passado os anos de \"freio de m&atilde;o puxado\" e a chegada da bonan&ccedil;a, o Flamengo se v&ecirc; na realidade in&eacute;dita de chegar &agrave; terceira semifinal da competi&ccedil;&atilde;o nos &uacute;ltimos quatro anos, feito n&atilde;o alcan&ccedil;ado nem nos &aacute;ureos tempos de Zico e cia.</p>\r\n<p style=\"margin: 0px 0px 0.8em; font-size: 1.385em; line-height: 1.8; color: #1d2228; font-family: \'Yahoo Sans\', YahooSans, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">O clube at&eacute; atingiu patamar similar chegando a essa fase tr&ecirc;s vezes em 81, 82 e 84, mas o regulamento da competi&ccedil;&atilde;o era um pouco mais generoso. Em 82, o Fla, ent&atilde;o campe&atilde;o, j&aacute; entrou na fase de grupos da pen&uacute;ltima etapa. Na ocasi&atilde;o, os vencedores de duas chaves de tr&ecirc;s faziam a final&iacute;ssima.</p>\r\n<p style=\"margin: 0px 0px 0.8em; font-size: 1.385em; line-height: 1.8; color: #1d2228; font-family: \'Yahoo Sans\', YahooSans, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Com o faturamento na casa de R$ 1 bilh&atilde;o em 2021 e contando com estrelas do calibre de Gabigol, Arrascaeta, Vidal, David Luiz, Filipe Lu&iacute;s, Pedro, Everton Cebolinha, entre tantos outros, o Rubro-Negro tem solidificado sua for&ccedil;a no futebol brasileiro, e vai agora em busca da poss&iacute;vel terceira final do torneio continental nas &uacute;ltimas quatro temporadas.</p>\r\n<div class=\"caas-da\" style=\"margin: 0px 0px 10px; text-align: center; color: #1d2228; font-family: \'Yahoo Sans\', YahooSans, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 13px;\">\r\n<div id=\"sda-INARTICLE\">&nbsp;</div>\r\n</div>\r\n<p style=\"margin: 0px 0px 0.8em; font-size: 1.385em; line-height: 1.8; color: #1d2228; font-family: \'Yahoo Sans\', YahooSans, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">\"Sim [meta de estar sempre disputando]. Estamos muito felizes por isso, de em quatro anos disputar tr&ecirc;s semifinais de Libertadores. Acho que nem nos tempos &aacute;ureos isso foi poss&iacute;vel. Vamos poder ter a felicidade de decidir em casa essa semifinal, isso &eacute; importante, estar perto dessa arquibancada maravilhosa, essa torcida maravilhosa. Vamos ver se a gente vai para mais uma final de Libertadores, que &eacute; o que a gente deseja. Vai dar tudo certo, se Deus quiser\", declarou ao UOL Esporte o vice de futebol do Flamengo, Marcos Braz.</p>\r\n<p style=\"margin: 0px 0px 0.8em; font-size: 1.385em; line-height: 1.8; color: #1d2228; font-family: \'Yahoo Sans\', YahooSans, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Autor do gol da vit&oacute;ria rubro-negra ontem sobre o Corinthians por 1 a 0, que confirmou a classifica&ccedil;&atilde;o da equipe, Pedro ressaltou que no elenco n&atilde;o h&aacute; espa&ccedil;o para comodismo.</p>\r\n<div class=\"caas-readmore caas-readmore-collapse\" style=\"display: inline-block; margin: -75px 0px 10px; width: 750.609px; color: #1d2228; font-family: \'Yahoo Sans\', YahooSans, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 13px;\">&nbsp;</div>\r\n<p style=\"margin: 0px 0px 0.8em; font-size: 1.385em; letter-spacing: normal; line-height: 1.8; color: #1d2228; font-family: \'Yahoo Sans\', YahooSans, \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;\">\"&Eacute; uma marca muito boa [terceira semifinal desde 2019]. Mostra que o grupo est&aacute; sempre querendo mais, que quer chegar &agrave;s finais, e mostra a qualidade do elenco. &Eacute; um grupo que n&atilde;o relaxa, que n&atilde;o tira o p&eacute; para nada. Gra&ccedil;as a Deus, pudemos vencer, fizemos um bom segundo tempo e conseguimos essa marca. Esperamos fazer uma boa semifinal para chegarmos &agrave; terceira final\", disse o atacante, que &eacute; o artilheiro da Libertadores, com oito gols.</p>', '62f4351d13155.jpg', 'fla-atinge-feito-inedito-na-libertadores-e-consolida-poderio-financeiro', 4),
(5, 5, '2022-08-10', 'Flamengo', '<p><span style=\"font-family: Yantramanav, serif; font-size: 22px; text-align: justify;\">O Meng&atilde;o j&aacute; garantiu a contrata&ccedil;&atilde;o de dois nomes de peso como refor&ccedil;o. Arturo Vidal e Cebolinha se tornaram realidades no elenco Rubro-Negro e agora, a expectativa &eacute; que Oscar assine contrato. O jogador j&aacute; est&aacute; no Brasil, mas precisa ser liberado pelo Shanghai Port, da China. Caso a transa&ccedil;&atilde;o avance, o meio-campista chegar&aacute; na&nbsp;</span><span style=\"font-family: Yantramanav, serif; font-weight: bolder; font-size: 22px; text-align: justify;\"><a style=\"background-color: transparent; color: #d8122f; text-decoration-line: none;\" href=\"https://br.bolavip.com/flamengo/Gabigol-vira-empresario-e-ajuda-parca-de-Selecao-a-se-transferir-para-rival-do-Flamengo-Ele-falou-20220810-0137.html\" target=\"_blank\" rel=\"noopener\">G&aacute;vea</a></span><span style=\"font-family: Yantramanav, serif; font-size: 22px; text-align: justify;\">&nbsp;por empr&eacute;stimo.</span></p>', '62f43550b6050.jpg', 'flamengo', 5),
(6, 5, '2022-08-10', 'Narrador surpreende e coloca jogador do Palmeiras acima de Arrascaeta: ‘mais completo’', '<p><span style=\"color: #333333; font-family: \'Public Sans\', system-ui, sans-serif; font-size: 16px;\">Arrascaeta vive uma das suas melhores fases com a camisa do Flamengo</span><span style=\"color: #333333; font-family: \'Public Sans\', system-ui, sans-serif; font-size: 16px;\">. Desde 2019 o uruguaio &eacute; um dos principais jogadores do time e pe&ccedil;a fundamental nos t&iacute;tulos conquistados durante esse tempo. &iacute;dolo da torcida, o camisa 14 &eacute; considerado o melhor jogador do pa&iacute;s, mas n&atilde;o para o narrador Nilson C&eacute;sar.</span></p>', '62f435883f4cc.jpg', 'narrador-surpreende-e-coloca-jogador-do-palmeiras-acima-de-arrascaeta:-‘mais-completo’', 6),
(7, 5, '2022-08-10', 'Atuações do Flamengo: Pedro, Arrasca e Léo Pereira encontram soluções para vitória', '<p><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: var(--font-weight-bold); font-stretch: inherit; font-size: 20px; line-height: inherit; font-family: glbOpenSans, \'Open Sans\', Inter, -apple-system, BlinkMacSystemFont, \'Avenir Next\', Avenir, \'Helvetica Neue\', Helvetica, Ubuntu, Roboto, Noto, \'Segoe UI\', Arial, sans-serif; vertical-align: initial; color: #333333; letter-spacing: -0.6px;\">Pedro&nbsp;</span><span style=\"color: #333333; font-family: glbOpenSans, \'Open Sans\', Inter, -apple-system, BlinkMacSystemFont, \'Avenir Next\', Avenir, \'Helvetica Neue\', Helvetica, Ubuntu, Roboto, Noto, \'Segoe UI\', Arial, sans-serif; font-size: 20px; letter-spacing: -0.6px;\">- Artilheiro da Libertadores e decisivo mais uma vez. Teve duas chances: quase marcou um gola&ccedil;o de bicicleta e deixou o seu ap&oacute;s linda assist&ecirc;ncia de Pedro -&nbsp;</span><span style=\"box-sizing: inherit; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-weight: var(--font-weight-bold); font-stretch: inherit; font-size: 20px; line-height: inherit; font-family: glbOpenSans, \'Open Sans\', Inter, -apple-system, BlinkMacSystemFont, \'Avenir Next\', Avenir, \'Helvetica Neue\', Helvetica, Ubuntu, Roboto, Noto, \'Segoe UI\', Arial, sans-serif; vertical-align: initial; color: #333333; letter-spacing: -0.6px;\">7.5</span></p>', '62f435bc9d177.jpg', 'atuacoes-do-flamengo:-pedro--arrasca-e-leo-pereira-encontram-solucoes-para-vitoria', 7),
(8, 4, '2022-08-11', 'Varíola dos macacos: comitê de emergência do Ministério da Saúde fixa nível máximo de alerta no Brasil', '<p><span style=\"font-family: ReadingSerifFont; font-size: 20px;\">O Centro de Opera&ccedil;&otilde;es de Emerg&ecirc;ncia (COE Monkeypox), criado pelo Minist&eacute;rio da Sa&uacute;de para monitorar o avan&ccedil;o da doen&ccedil;a no pa&iacute;s, classificou a var&iacute;ola dos macacos com n&iacute;vel m&aacute;ximo de emerg&ecirc;ncia no territ&oacute;rio nacional. O n&iacute;vel III &eacute; estabelecido em cen&aacute;rios de \"excepcional gravidade\" e admite que a situa&ccedil;&atilde;o pode culminar em declara&ccedil;&atilde;o de Emerg&ecirc;ncia em Sa&uacute;de P&uacute;blica de Import&acirc;ncia Nacional (Espin). A classifica&ccedil;&atilde;o est&aacute; no Plano de Conting&ecirc;ncia Nacional para Monkeypox ao qual O GLOBO teve acesso. Os n&iacute;veis de emerg&ecirc;ncia variam de I a III.</span></p>', '62f50e11eaad0.jpg', 'variola-dos-macacos:-comite-de-emergencia-do-ministerio-da-saude-fixa-nivel-maximo-de-alerta-no-brasil', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.resposta_comentarios`
--

CREATE TABLE `tb_site.resposta_comentarios` (
  `id` int(11) NOT NULL,
  `comentario_id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.resposta_comentarios`
--

INSERT INTO `tb_site.resposta_comentarios` (`id`, `comentario_id`, `nome`, `comentario`) VALUES
(1, 1, 'teste', '1'),
(2, 1, 'Eric Hausman', 'tes'),
(3, 1, 'Eric Hausman', 'Olá, meu nome é Eric Hausman');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.servicos`
--

CREATE TABLE `tb_site.servicos` (
  `id` int(11) NOT NULL,
  `servico` text NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.servicos`
--

INSERT INTO `tb_site.servicos` (`id`, `servico`, `order_id`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including ', 4),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 2),
(3, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 1),
(5, 'asdasdasdas', 5),
(6, 'sdasdasdas', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.slides`
--

CREATE TABLE `tb_site.slides` (
  `id` int(11) NOT NULL,
  `nome` varchar(155) NOT NULL,
  `slide` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_site.slides`
--

INSERT INTO `tb_site.slides` (`id`, `nome`, `slide`, `order_id`) VALUES
(3, 'slide #7', '62f2c6e99b610.jpg', 3),
(4, 'Slide#4', '62f2c07eb1ddc.jpg', 4),
(5, 'Slide#5', '62f2c086b73f9.jpg', 5),
(6, 'Eric Hausman', '62f5014d44590.jpg', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site_slides`
--

CREATE TABLE `tb_site_slides` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slide` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_admin.agenda`
--
ALTER TABLE `tb_admin.agenda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.chat`
--
ALTER TABLE `tb_admin.chat`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.clientes`
--
ALTER TABLE `tb_admin.clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.contatos`
--
ALTER TABLE `tb_admin.contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.empreendimentos`
--
ALTER TABLE `tb_admin.empreendimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.estoque`
--
ALTER TABLE `tb_admin.estoque`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.estoque_imagens`
--
ALTER TABLE `tb_admin.estoque_imagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.financeiro`
--
ALTER TABLE `tb_admin.financeiro`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.imagens_imoveis`
--
ALTER TABLE `tb_admin.imagens_imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.imoveis`
--
ALTER TABLE `tb_admin.imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.listas_email`
--
ALTER TABLE `tb_admin.listas_email`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.pedidos`
--
ALTER TABLE `tb_admin.pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.categorias`
--
ALTER TABLE `tb_site.categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.comentarios`
--
ALTER TABLE `tb_site.comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.noticias`
--
ALTER TABLE `tb_site.noticias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.resposta_comentarios`
--
ALTER TABLE `tb_site.resposta_comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_site_slides`
--
ALTER TABLE `tb_site_slides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_admin.agenda`
--
ALTER TABLE `tb_admin.agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_admin.chat`
--
ALTER TABLE `tb_admin.chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_admin.clientes`
--
ALTER TABLE `tb_admin.clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tb_admin.contatos`
--
ALTER TABLE `tb_admin.contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_admin.empreendimentos`
--
ALTER TABLE `tb_admin.empreendimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_admin.estoque`
--
ALTER TABLE `tb_admin.estoque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_admin.estoque_imagens`
--
ALTER TABLE `tb_admin.estoque_imagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tb_admin.financeiro`
--
ALTER TABLE `tb_admin.financeiro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `tb_admin.imagens_imoveis`
--
ALTER TABLE `tb_admin.imagens_imoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_admin.imoveis`
--
ALTER TABLE `tb_admin.imoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_admin.listas_email`
--
ALTER TABLE `tb_admin.listas_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `tb_admin.pedidos`
--
ALTER TABLE `tb_admin.pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_site.categorias`
--
ALTER TABLE `tb_site.categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_site.comentarios`
--
ALTER TABLE `tb_site.comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tb_site.noticias`
--
ALTER TABLE `tb_site.noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `tb_site.resposta_comentarios`
--
ALTER TABLE `tb_site.resposta_comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tb_site_slides`
--
ALTER TABLE `tb_site_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
