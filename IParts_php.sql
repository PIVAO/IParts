-- Script do banco para rodar em php


-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Jun-2022 às 03:25
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `EAP_5S`
--

-- --------------------------------------------------------
BEGIN;
	CREATE TABLE `cliente` (
		`codcli` int(5) NOT NULL,
		`nome` varchar(255) NOT NULL,
		`cpf` character(14) NOT NULL,
		`rg` character(15) NOT NULL,
		`ufrg` character(2),
		`endereco` character(60),
		`num_endereco` int(5),
		`complemento` character (60),
		`cidade` character(40),
		`uf` character(2),
		`cep` character(8),
		`fone` character(20),
		`celular` character(20),
		`email` character(100)
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

BEGIN;
	INSERT INTO `cliente` (`codcli`, `nome`, `cpf`, `rg`, `ufrg`, `endereco`, `num_endereco`, `complemento`, `cidade`, `uf`, `cep`, `fone`, `celular`, `email`) VALUES
	(1, 'Piva', 25463598488, 105672541, 'PR', 'Rua das Ruas', 67, 'Casa', 'Maringá', 'PR', 14472651, 4432678426, 44997516842, 'lucaspiva@gmail.com'),
	(2, 'Irineu', 23469598288, 104372741, 'PR', 'Rua das Orelhas', 37, '', 'Maringá', 'PR', 14679651, 4136674526, 41987566442, 'irineu@gmail.com'),
	(3, 'Carlos', 24463798788, 115642561, 'SP', 'Avenida Europa', 235, 'Prédio', 'São Paulo', 'SP', 14872751, 1132678426, 11937514842, 'carlos@gmail.com'),
	(4, 'Jabuticaba', 25863294488, 116632541, 'PR', 'Rua linda de mais', 5741, '', 'Maringá', 'PR', 14572351, 4436677423, 44991513845, 'jabuticaba@gmail.com');
COMMIT;

-- --------------------------------------------------------

BEGIN;
	CREATE TABLE `pedido` (
		`codped` INT NOT NULL,
		`codcli` INT NOT NULL,
		`data_movmento` VARCHAR(255) NOT NULL,
		`valor_total` INT
	) ENGINE=InnoDB DEFAULT CHARSET=latin1;;
COMMIT;

BEGIN;
	INSERT INTO `pedido` (`codped`, `codcli`, `data_movmento`, `valor_total`) VALUES
	(1, 1, 02052022, 2415),
	(2, 2, 07102021, 57412),
	(3, 3, 03042022, 154);
COMMIT;


----------------------------------------------------------
/*
--
-- Estrutura da tabela `requisicoes`
--

CREATE TABLE `requisicoes` (
  `codigo` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `cadastrado_em` datetime NOT NULL,
  `atualizado_em` datetime NOT NULL,
  `analista` varchar(255) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `desconto_soliticado` int(11) DEFAULT NULL,
  `desconto_concedido` int(11) DEFAULT NULL,
  `codigo_confirmacao` int(11) DEFAULT NULL,
  `id_cadastro_tipo` int(11) NOT NULL,
  `proprietario_nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `requisicoes`
--

INSERT INTO `requisicoes` (`codigo`, `email`, `cadastrado_em`, `atualizado_em`, `analista`, `status`, `desconto_soliticado`, `desconto_concedido`, `codigo_confirmacao`, `id_cadastro_tipo`, `proprietario_nome`) VALUES
(1, 'eduardobona@vivaweb.net', '2022-05-01 00:00:00', '2022-05-31 00:00:00', 'Cleber Machado', 'finalizado', 19, 17, 1234, 1, 'Eduardo H R Bona'),
(2, 'marcello.bonfim@unicesumar.edu.br', '2022-06-15 00:00:00', '2022-06-30 00:00:00', 'Wilson Matos', 'aprovado', 15, 12, 12345, 1, 'Marcello Bonfim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisitos`
--

CREATE TABLE `requisitos` (
  `id` int(11) NOT NULL,
  `requisito` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `requisitos`
--

INSERT INTO `requisitos` (`id`, `requisito`) VALUES
(1, 'Reaproveiameno de Água'),
(2, 'Energia Solar para Água'),
(3, 'Energia Solar para Energia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `requisitos_solicitados`
--

CREATE TABLE `requisitos_solicitados` (
  `requisicao` int(11) NOT NULL,
  `requisito` int(11) NOT NULL,
  `desconto_solicitado` int(11) NOT NULL,
  `desconto_concedido` int(11) DEFAULT NULL,
  `observacoes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `requisitos_solicitados`
--

INSERT INTO `requisitos_solicitados` (`requisicao`, `requisito`, `desconto_solicitado`, `desconto_concedido`, `observacoes`) VALUES
(1, 1, 3, NULL, NULL),
(1, 2, 5, NULL, NULL),
(2, 1, 5, 0, NULL),
(2, 2, 5, 3, NULL),
(2, 3, 5, 3, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro_tipos`
--
ALTER TABLE `cadastro_tipos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `prerequisitos`
--
ALTER TABLE `prerequisitos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `requisicoes`
--
ALTER TABLE `requisicoes`
  ADD PRIMARY KEY (`codigo`);

--
-- Índices para tabela `requisitos`
--
ALTER TABLE `requisitos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `requisitos_solicitados`
--
ALTER TABLE `requisitos_solicitados`
  ADD PRIMARY KEY (`requisicao`,`requisito`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro_tipos`
--
ALTER TABLE `cadastro_tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `prerequisitos`
--
ALTER TABLE `prerequisitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `requisicoes`
--
ALTER TABLE `requisicoes`
  MODIFY `codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `requisitos`
--
ALTER TABLE `requisitos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
