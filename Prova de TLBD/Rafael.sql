/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.16-log : Database - rafael
*********************************************************************
Server version : 5.5.16-log
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `rafael`;

USE `rafael`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `instrutor` */

DROP TABLE IF EXISTS `instrutor`;

CREATE TABLE `instrutor` (
  `Cod_Instrutor` int(4) NOT NULL AUTO_INCREMENT,
  `Nome_Instrutor` varchar(30) NOT NULL,
  `RG_Instrutor` varchar(9) NOT NULL,
  `Data_Nascimento_Instrutor` date NOT NULL,
  `Titulacao_Instrutor` varchar(35) NOT NULL,
  `Rua_Instrutor` varchar(30) NOT NULL,
  `CEP_Instrutor` varchar(8) NOT NULL,
  `Bairro_Instrutor` varchar(30) NOT NULL,
  `Cidade_Instrutor` varchar(30) NOT NULL,
  PRIMARY KEY (`Cod_Instrutor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `instrutor` */

insert  into `instrutor`(`Cod_Instrutor`,`Nome_Instrutor`,`RG_Instrutor`,`Data_Nascimento_Instrutor`,`Titulacao_Instrutor`,`Rua_Instrutor`,`CEP_Instrutor`,`Bairro_Instrutor`,`Cidade_Instrutor`) values (1,'Rafael','393934287','2014-01-01','Título','Rua dos Bobos','17123000','Centro','Domélia'),(2,'Matheus','123456789','2014-01-01','Mestre','Rua XV de Novembro','12345678','Industrial','Duartina'),(3,'Bianca','987654321','2014-01-01','Sem Título','Rua sem Nome','12367890','Popular','Cabrália');

/*Table structure for table `turma` */

DROP TABLE IF EXISTS `turma`;

CREATE TABLE `turma` (
  `Cod_Turma` int(4) NOT NULL AUTO_INCREMENT,
  `Cod_Instrutor` int(4) NOT NULL,
  `Horario_Aula` time NOT NULL,
  `Duracao_Aula` time NOT NULL,
  `Data_Inicial_Turma` date NOT NULL,
  `Date_Final_Turma` date NOT NULL,
  `Tipo_Atividade_Turma` varchar(30) NOT NULL,
  PRIMARY KEY (`Cod_Turma`),
  KEY `FK_turma` (`Cod_Instrutor`),
  CONSTRAINT `FK_turma` FOREIGN KEY (`Cod_Instrutor`) REFERENCES `instrutor` (`Cod_Instrutor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `turma` */

insert  into `turma`(`Cod_Turma`,`Cod_Instrutor`,`Horario_Aula`,`Duracao_Aula`,`Data_Inicial_Turma`,`Date_Final_Turma`,`Tipo_Atividade_Turma`) values (1,1,'12:00:00','00:50:00','2014-01-01','2014-01-01','Programação'),(2,2,'23:59:00','00:01:00','2014-01-01','2014-01-01','Agropecuaria'),(3,3,'00:00:00','24:00:00','2014-01-01','2014-01-01','Química'),(4,1,'12:34:56','00:00:00','2014-01-01','2014-01-01','Açucar e Ácool'),(5,2,'09:09:09','22:22:22','2014-01-01','2014-01-01','Veterinária');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
