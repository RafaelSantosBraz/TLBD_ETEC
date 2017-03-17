/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.16-log : Database - escola
*********************************************************************
Server version : 5.5.16-log
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `escola`;

USE `escola`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `aluno` */

DROP TABLE IF EXISTS `aluno`;

CREATE TABLE `aluno` (
  `Cod_Aluno` int(4) NOT NULL AUTO_INCREMENT,
  `Nome_Aluno` varchar(30) NOT NULL,
  PRIMARY KEY (`Cod_Aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `aluno` */

insert  into `aluno`(`Cod_Aluno`,`Nome_Aluno`) values (1,'Rafael'),(2,'Matheus'),(3,'Emersom'),(4,'Oliver'),(5,'Manjula'),(6,'Apu'),(7,'Bartolomeu'),(8,'Edgar'),(9,'Ivancris'),(10,'Edilâine'),(11,'Elvética'),(12,'Morgana'),(13,'Jurema'),(14,'Nino'),(15,'Pedro'),(16,'Ernesto'),(17,'Tobias'),(18,'Steve Gates'),(19,'Jélington'),(20,'Thompson');

/*Table structure for table `matricula` */

DROP TABLE IF EXISTS `matricula`;

CREATE TABLE `matricula` (
  `Cod_Matricula` int(4) NOT NULL AUTO_INCREMENT,
  `Cod_Aluno` int(4) NOT NULL,
  `Cod_Turma` int(4) NOT NULL,
  PRIMARY KEY (`Cod_Matricula`),
  KEY `Ligacao_Aluno` (`Cod_Aluno`),
  KEY `Ligacao_Turma` (`Cod_Turma`),
  CONSTRAINT `Ligacao_Turma` FOREIGN KEY (`Cod_Turma`) REFERENCES `turma` (`Cod_Turma`),
  CONSTRAINT `Ligacao_Aluno` FOREIGN KEY (`Cod_Aluno`) REFERENCES `aluno` (`Cod_Aluno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `matricula` */

insert  into `matricula`(`Cod_Matricula`,`Cod_Aluno`,`Cod_Turma`) values (1,1,5),(2,4,3),(3,2,3),(4,5,1),(5,7,1),(6,8,3),(7,6,10),(8,6,5),(9,8,3),(10,9,2),(11,6,7),(12,11,3);

/*Table structure for table `turma` */

DROP TABLE IF EXISTS `turma`;

CREATE TABLE `turma` (
  `Cod_Turma` int(4) NOT NULL AUTO_INCREMENT,
  `Curso_Turma` varchar(30) NOT NULL,
  PRIMARY KEY (`Cod_Turma`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `turma` */

insert  into `turma`(`Cod_Turma`,`Curso_Turma`) values (1,'Formigologia'),(2,'Física Quântica'),(3,'Informática'),(4,'Agropecuária'),(5,'Sociologia Química'),(6,'Paraquedismo'),(7,'Digitação'),(8,'Psicologia'),(9,'Farmácia'),(10,'Alquimia');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
