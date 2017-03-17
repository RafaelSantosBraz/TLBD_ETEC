/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.16-log : Database - empresa
*********************************************************************
Server version : 5.5.16-log
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `empresa`;

USE `empresa`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `departamentos` */

DROP TABLE IF EXISTS `departamentos`;

CREATE TABLE `departamentos` (
  `Cod_Departamento` int(4) NOT NULL AUTO_INCREMENT,
  `Nome_Departamento` varchar(30) DEFAULT NULL,
  `Localizacao_Departamento` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Cod_Departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `departamentos` */

insert  into `departamentos`(`Cod_Departamento`,`Nome_Departamento`,`Localizacao_Departamento`) values (1,'Recursos Humanos','Rua dos Bobos'),(2,'Administração','Paris'),(3,'Limpeza','Dubai'),(4,'Finanças','Azerbaijão'),(5,'Programação','Índia');

/*Table structure for table `funcionaros` */

DROP TABLE IF EXISTS `funcionaros`;

CREATE TABLE `funcionaros` (
  `Cod_Funcionario` int(4) NOT NULL AUTO_INCREMENT,
  `Cod_Departamento` int(4) NOT NULL,
  `Nome_Funcionario` varchar(30) DEFAULT NULL,
  `Salario_Funcionario` double DEFAULT NULL,
  PRIMARY KEY (`Cod_Funcionario`),
  KEY `Funcionaros_LigacaoDepartamento` (`Cod_Departamento`),
  CONSTRAINT `LigacaoDepartamentos` FOREIGN KEY (`Cod_Departamento`) REFERENCES `departamentos` (`Cod_Departamento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `funcionaros` */

insert  into `funcionaros`(`Cod_Funcionario`,`Cod_Departamento`,`Nome_Funcionario`,`Salario_Funcionario`) values (1,1,'Rafael dos Santos Braz',15555),(2,2,'Matheus Henrique Sampaio Carva',7830),(3,3,'Bianca Leandro Vicente',4590),(4,4,'Zelda Merda',666),(5,5,'Abapuru',8765);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
