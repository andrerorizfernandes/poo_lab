-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.6.22-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win32
-- HeidiSQL Versão:              11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para poo_lab
DROP DATABASE IF EXISTS `poo_lab`;
CREATE DATABASE IF NOT EXISTS `poo_lab` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `poo_lab`;

-- Copiando estrutura para tabela poo_lab.cliente
DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `IdCliente` int(11) NOT NULL AUTO_INCREMENT,
  `IdFuncionario` int(11) NOT NULL,
  `CartaoFidelidade` varchar(30) NOT NULL,
  PRIMARY KEY (`IdCliente`),
  KEY `FK_cliente_funcionario` (`IdFuncionario`),
  CONSTRAINT `FK_cliente_funcionario` FOREIGN KEY (`IdFuncionario`) REFERENCES `funcionario` (`IdFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela poo_lab.diretor
DROP TABLE IF EXISTS `diretor`;
CREATE TABLE IF NOT EXISTS `diretor` (
  `IdDiretor` int(11) NOT NULL AUTO_INCREMENT,
  `IdFuncionario` int(11) NOT NULL,
  `NumeroCTPS` varchar(25) NOT NULL,
  PRIMARY KEY (`IdDiretor`),
  KEY `FK_diretor_funcionario` (`IdFuncionario`),
  CONSTRAINT `FK_diretor_funcionario` FOREIGN KEY (`IdFuncionario`) REFERENCES `funcionario` (`IdFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela poo_lab.engenheiro
DROP TABLE IF EXISTS `engenheiro`;
CREATE TABLE IF NOT EXISTS `engenheiro` (
  `IdEngenheiro` int(11) NOT NULL AUTO_INCREMENT,
  `IdFuncionario` int(11) NOT NULL,
  `RegistroCREA` varchar(20) NOT NULL,
  PRIMARY KEY (`IdEngenheiro`),
  KEY `FK_engenheiro_funcionario` (`IdFuncionario`),
  CONSTRAINT `FK_engenheiro_funcionario` FOREIGN KEY (`IdFuncionario`) REFERENCES `funcionario` (`IdFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela poo_lab.funcionario
DROP TABLE IF EXISTS `funcionario`;
CREATE TABLE IF NOT EXISTS `funcionario` (
  `IdFuncionario` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(60) NOT NULL,
  `Sexo` varchar(1) NOT NULL,
  `Cpf` varchar(11) NOT NULL,
  `Identidade` varchar(25) NOT NULL,
  PRIMARY KEY (`IdFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela poo_lab.gerente
DROP TABLE IF EXISTS `gerente`;
CREATE TABLE IF NOT EXISTS `gerente` (
  `IdGerente` int(11) NOT NULL AUTO_INCREMENT,
  `IdFuncionario` int(11) NOT NULL,
  `NumeroCTPS` varchar(25) NOT NULL,
  `Setor` varchar(30) NOT NULL,
  PRIMARY KEY (`IdGerente`),
  KEY `FK_gerente_funcionario` (`IdFuncionario`),
  CONSTRAINT `FK_gerente_funcionario` FOREIGN KEY (`IdFuncionario`) REFERENCES `funcionario` (`IdFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

-- Copiando estrutura para tabela poo_lab.secretario
DROP TABLE IF EXISTS `secretario`;
CREATE TABLE IF NOT EXISTS `secretario` (
  `IdSecretario` int(11) NOT NULL AUTO_INCREMENT,
  `IdFuncionario` int(11) NOT NULL,
  `Setor` varchar(30) NOT NULL,
  PRIMARY KEY (`IdSecretario`),
  KEY `FK__funcionario` (`IdFuncionario`),
  CONSTRAINT `FK__funcionario` FOREIGN KEY (`IdFuncionario`) REFERENCES `funcionario` (`IdFuncionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Exportação de dados foi desmarcado.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
