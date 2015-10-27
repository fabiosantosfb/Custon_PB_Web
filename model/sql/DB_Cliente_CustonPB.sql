-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 22/10/2015 às 14:52:03
-- Versão do Servidor: 5.5.44
-- Versão do PHP: 5.4.45-0+deb7u1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `DB_Cliente_CustonPB`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

DROP TABLE IF EXISTS `loja`;
CREATE TABLE IF NOT EXISTS `loja` (
  `nome_loja` varchar(100) COLLATE armscii8_bin NOT NULL,
  `endereco` varchar(150) COLLATE armscii8_bin NOT NULL,
  `cidade` varchar(100) COLLATE armscii8_bin NOT NULL,
  `estado` varchar(100) COLLATE armscii8_bin NOT NULL,
  `u_id_loja` int(11) NOT NULL,
  PRIMARY KEY (`u_id_loja`)
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

--
-- Extraindo dados da tabela `loja`
--

INSERT DELAYED IGNORE INTO `loja` (`nome_loja`, `endereco`, `cidade`, `estado`, `u_id_loja`) VALUES
('car rent', 'av epitacio pessoa 212', 'joao pessoa', 'paraiba', 1),
('car express', 'rua joao pereira 12', 'campina grande', 'paraiba', 2),
('car auto', 'av almirante 256', 'bayer', 'paraiba', 3),
('car lilo', 'rua joao bisquim 52', 'cabedelo', 'paraiba', 4),
('cascasta car', 'av pessoa 2125', 'recife', 'pernanbuco', 5),
('som car', 'rua queroz 127', 'recife', 'pernabuco', 6),
('velho car', 'av pipino 2144', 'baya', 'salvador', 7),
('carango motor', 'rua butiquim 458', 'joao pessoa', 'paraiba', 8),
('matos car', 'av matarutaca 456', 'joao pessoa', 'paraiba', 9),
('bisgui car', 'rua kiui 950', 'joao pessoa', 'paraiba', 10),
('matos car', 'av matarutaca 456', 'joao pessoa', 'paraiba', 11),
('bisgui car', 'rua kiui 950', 'joao pessoa', 'paraiba', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

DROP TABLE IF EXISTS `produto`;
CREATE TABLE IF NOT EXISTS `produto` (
  `u_id_produto` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) COLLATE armscii8_bin NOT NULL,
  `nome_produto` varchar(100) COLLATE armscii8_bin NOT NULL,
  `preco` decimal(10,0) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `u_id_loja` int(11) NOT NULL,
  PRIMARY KEY (`u_id_produto`),
  KEY `u_id_loja` (`u_id_loja`)
) ENGINE=InnoDB  DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin AUTO_INCREMENT=30 ;

--
-- Extraindo dados da tabela `produto`
--

INSERT DELAYED IGNORE INTO `produto` (`u_id_produto`, `categoria`, `nome_produto`, `preco`, `quantidade`, `u_id_loja`) VALUES
(5, 'carro', 'freio abs', 200, 5, 1),
(6, 'carro', 'pneu', 250, 10, 2),
(13, 'carro', 'pneu', 250, 10, 3),
(14, 'carro', 'radiador', 300, 10, 4),
(15, 'moto', 'freio abs', 200, 5, 5),
(16, 'moto', 'pneu', 90, 10, 6),
(17, 'moto', 'guidown', 50, 5, 7),
(18, 'moto', 'carburador', 150, 10, 8),
(19, 'moto', 'pneu', 101, 10, 9),
(20, 'moto', 'pneu', 100, 10, 10),
(21, 'moto', 'pneu', 100, 5, 11),
(22, 'moto', 'pneu', 151, 10, 12),
(27, 'carro', 'pneu', 600, 5, 1),
(28, 'carro', 'aro 20', 2000, 16, 1),
(29, 'carro', 'aro 22', 5000, 8, 1);

--
-- Restrições para as tabelas dumpadas
--

--
-- Restrições para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`u_id_loja`) REFERENCES `loja` (`u_id_loja`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
