CREATE DATABASE  IF NOT EXISTS `csrs1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `csrs1`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: csrs1
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_Cliente` int NOT NULL AUTO_INCREMENT,
  `Cod_Cliente` int DEFAULT NULL,
  `Status_Cliente` enum('Ativo','Inativo') DEFAULT NULL,
  `Nome_Cliente` varchar(255) NOT NULL,
  `Apelido_Cliente` varchar(50) DEFAULT NULL,
  `Celular` varchar(14) NOT NULL,
  `Whatsapp` varchar(14) DEFAULT NULL,
  `Data_Nasc` varchar(10) DEFAULT NULL,
  `Estado_Civil` varchar(45) DEFAULT NULL,
  `Nome_Mae` varchar(255) DEFAULT NULL,
  `Nome_Pai` varchar(255) DEFAULT NULL,
  `Obs` varchar(255) DEFAULT NULL,
  `CPF_Cliente` varchar(14) DEFAULT NULL,
  `RG_Cliente` varchar(14) DEFAULT NULL,
  `Cartao_Sus` varchar(20) DEFAULT NULL,
  `Titulo_Eleitoral` varchar(20) DEFAULT NULL,
  `Secao_Eleitoral` varchar(5) DEFAULT NULL,
  `Zona_Eleitoral` varchar(5) DEFAULT NULL,
  `Data_Cadastro` varchar(10) DEFAULT NULL,
  `id_endereco` int DEFAULT NULL,
  PRIMARY KEY (`id_Cliente`),
  KEY `id_endereco` (`id_endereco`),
  CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id_endereco`) REFERENCES `endereco` (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (12,1,'Ativo','Rubinho Cruz','Binho','081.9633-5654','081.9633-3354','1975-12-25','Casado','Maria dos Ajos','PAOLO RIBEIRO SILVA','Pendente de documentação','223.675.134-25','45.623.109-7','543.424.559-86','235.282.262.769','254','010','2023-05-18',1),(13,2,'Ativo','Thiago Xavier de Carrara','thi','081.9364-5247','081.99295-6141','2012-04-25','Casado','Rute Valéria Espinoza de Mendonça','Camilo Ayrton Burgos Filho','Autorizado','186241966-39','34.424.453-2','76313048237','066157580876','190','010','2023-04-21',2),(14,3,'Inativo','Jenny Sara Benites de Faro','Ny','081.92481-6638','081.92396-4361','2011-03-01','Solteira','Flaviana Corona de Grego','Benjamin Leo Bonilha Neto','','151367805-17','27.370.729-2','92515566448','545065830868','255','010','2023-02-12',3),(15,4,'Ativo','Alisson Correia Sobrinho','PA','081.93375-8532','081.93816-5438','2005-04-13','Casado','Ana Luzinete Casanova Ramires','Alan Plínio Neves Sobrinho','','387307906-20','13.010.222-2','77284275120','217386480825','183','010','2023-06-25',4),(16,5,'Inativo','Paulo Esteves da Rocha','Branco','081.92611-4665','081.93441-9374','1980-06-21','Viuvo','Tábata Taís Galindo','Noel Max de Escobar Neto','','380858943-43','12.775.472-6','25073114795','662687330876','190','010','2023-06-10',5),(17,6,'Ativo','Hugo Junior de Ferminiano','JR','081.93297-1965','081.93591-6512','1990-10-15','Casado','Samanta Dominato de Magalhães','Rodrigo Marinho de Alvarenga','','826438322-05','11.607.755-4','23790261815','516817850809','255','010','2023-08-21',6),(18,7,'Inativo','Mariana Assunção de Corona','Mari','081.93159-0653','081.93413-8975','2012-11-05','Solteira','Mayra Mirian Batista Gil','Rodrigo Jonathas de Faro','','567237872-26','26.743.592-7','42426223090','135216000817','183','010','2023-08-01',7),(19,8,'Ativo','Olímpia Benites Cordeiro','Oli','081.92606-0422','081.93668-1153','2018-09-08','Viuva','Ivete Galvão de Ortiz','Estevão Silvair Mendonça Filho','','234156704-57','25.688.356-7','81873647506','483883173006','190','010','2023-11-18',8),(20,9,'Ativo','Eduardo Joaquim Bittencourt','Bit','081.92353-7816','081.93255-0133','2000-10-13','Casado','Charlene Lozano','Luigi Raul Madeira Filho','','305671305-68','40.365.066-5','54342455986','985282262473','255','010','2023-05-10',9),(21,10,'Inativo','Edilene Mirian Barreto Godói','Gordo','081.92795-8849','081.92713-4836','1975-01-13','Solteira','Giovana Sabrina Lacerda','Chico Bonilha de Uchoa','','177847535-35','19.098.199-4','75735961896','134187000884','183','010','2023-03-17',10),(22,11,'Ativo','Lois West','Cost','081.1653-5004','081.99633-3354','1980-12-08','Casado','Maria dos Ajos','PAOLO RIBEIRO SILVA','223.675.134-25','45.623.109-7','543.424.559-86','','235.282.262.769','254','010','2023-05-18',1);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id_endereco` int NOT NULL AUTO_INCREMENT,
  `Endereco` varchar(150) NOT NULL,
  `Complemento` varchar(100) DEFAULT NULL,
  `Bairro` varchar(100) NOT NULL,
  `Cidade` varchar(100) NOT NULL,
  `UF` char(2) NOT NULL DEFAULT 'PE',
  `CEP` varchar(10) NOT NULL DEFAULT '53.000-000',
  PRIMARY KEY (`id_endereco`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'Rua Franco Alameda, 25','Sitio do Picapau','Motriz','Recife','PE','52.071-520'),(2,'6ª Travessa Beijamim, 1123',' ','Fragoso','Jaboatão dos Guararapes','PE','53.402-016'),(3,'Rua Real 790',' ','Jardim São Paulo','Paulista','PE','50.910-090'),(4,'Rua Aurelina Dias do Nascimento 125','Ladeira do ceu','COHAB Massangano','Olinda','PE','56.310-500'),(5,'Travessa Severino Rodrigues de Vasconcelos 523','Apt 1450 bloco d','Bairro Novo do Carmelo','Camaragibe','PE','54.762-341'),(6,'Rua Sessenta Seis, 85','Jardim de Lins','Jardim Atlântico','Olinda','PE','53.000.000'),(7,'Av. Tiradentes, 1290',' ',' Rio Doce','Olinda','PE','53.000.000'),(8,'Av 21 de Abril, 123','Centro','Casa Amarela','Recife','PE','52.245-450'),(9,'Av 17 de Agosto, 3058','Centro','Casa Forte','Recife','PE','52.071-680'),(10,'Rua Manoel Joaquim de Almeida 1906',' Casa de Baixo','Iputinga','Recife','PE','50.670-370');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `Nome_Usuario` varchar(45) DEFAULT NULL,
  `Senha_Usuario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'Kelly','12345rs'),(2,'Rubinho','zyz'),(3,'Pedro','2009-03-17');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-26 14:21:26
