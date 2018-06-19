-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19-Jun-2018 às 03:36
-- Versão do servidor: 5.5.21
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agenciaturismo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(11) NOT NULL,
  `NomeCompleto` varchar(45) NOT NULL,
  `EnderecoCompleto` varchar(256) NOT NULL,
  `Telefone` varchar(11) NOT NULL,
  `RG` varchar(13) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `DataNascimento` varchar(10) NOT NULL,
  `IdUsuario` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`IdCliente`, `NomeCompleto`, `EnderecoCompleto`, `Telefone`, `RG`, `CPF`, `DataNascimento`, `IdUsuario`) VALUES
(1, 'Paulo Eduardo Gomes Cabral', 'Rua Oscar Raposo, 181 Prado - Recife', '81991983193', '9999999', '99999999999', '0000-00-00', 1),
(3, 'Sibele Vicente', 'Rua pombal2', '65745', '456547', '456456', '2018-06-02', 22),
(4, 'Welligton Cesar', 'rua x', '213242355', '34534654', '45654654654', '2018-06-03', 33),
(5, 'Raiza Milena', 'Rua pombal', '2343252', '325435634', '2343423412', '2018-06-04', 35),
(6, 'Marcela Se Garante', 'Rua pombal3', '3534534', '435324', '213243', '2018-06-01', 36);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `IdUsuario` int(11) NOT NULL,
  `Login` varchar(256) NOT NULL,
  `Senha` varchar(32) NOT NULL,
  `Tipo` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`IdUsuario`, `Login`, `Senha`, `Tipo`) VALUES
(1, 'paulo@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(36, 'marcela@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(22, 'sibele@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(33, 'wellington@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(35, 'raiza@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `viagem`
--

CREATE TABLE `viagem` (
  `IdViagem` int(11) NOT NULL,
  `Estado` varchar(45) NOT NULL,
  `Transporte` varchar(25) NOT NULL,
  `Estrelas` int(1) NOT NULL,
  `Translado` int(1) NOT NULL,
  `Passeio` varchar(256) NOT NULL,
  `Preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `viagem`
--

INSERT INTO `viagem` (`IdViagem`, `Estado`, `Transporte`, `Estrelas`, `Translado`, `Passeio`, `Preco`) VALUES
(1, 'Pernambuco', 'Avião', 5, 1, 'Passeio deslumbrante pelas praias do Recife', 115),
(2, 'Rio Grande do Norte', 'Avião', 4, 0, 'As dunas mais fascinante que você já viu, com passeio de bug', 300.55);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`IdUsuario`);

--
-- Indexes for table `viagem`
--
ALTER TABLE `viagem`
  ADD PRIMARY KEY (`IdViagem`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `viagem`
--
ALTER TABLE `viagem`
  MODIFY `IdViagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
