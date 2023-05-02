-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: truonghoc
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE IF NOT EXISTS `truonghoc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `truonghoc`;
--
-- Table structure for table `PHONG_GD`
--

DROP TABLE IF EXISTS `PHONG_GD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PHONG_GD` (
  `MA_PGD` char(10) NOT NULL,
  `TEN_PHG` Nvarchar(50) DEFAULT NULL,
  PRIMARY KEY (`MA_PGD`)
  ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Table structure for table `LOAI_TRUONG`
--

DROP TABLE IF EXISTS `LOAI_TRUONG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOAI_TRUONG` (
  `MA_LT` char(10) NOT NULL,
  `TEN_LT` Nvarchar(100) NOT NULL,
  PRIMARY KEY (`MA_LT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Table structure for table `LOAI_HINH`
--

DROP TABLE IF EXISTS `LOAI_HINH`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LOAI_HINH` (
  `MA_LH` char(10) NOT NULL,
  `TEN_LH` char(20) DEFAULT NULL,
  PRIMARY KEY (`MA_LH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `BAC`
--

DROP TABLE IF EXISTS `BAC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BAC` (
  `MA_BAC` char(10) NOT NULL,
  `TEN_BAC` Nvarchar(50) NOT NULL,
  PRIMARY KEY (`MA_BAC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `DSTRUONG`
--

DROP TABLE IF EXISTS `DSTRUONG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DSTRUONG` (
  `MA_TRG` Nvarchar(15) NOT NULL,
  `TEN_TRG` Nvarchar(100) NOT NULL,
  `MA_BAC` char(10) NOT NULL,
  `MA_LT` char(10) DEFAULT NULL,
  `MA_PGD` char(10) DEFAULT NULL,
  `MA_LH` char(10) DEFAULT NULL,
  `DIACHI` Nvarchar(200) DEFAULT NULL,
  PRIMARY KEY (`MA_TRG`),
  CONSTRAINT FOREIGN KEY (`MA_BAC`) REFERENCES `BAC` (`MA_BAC`),
  CONSTRAINT FOREIGN KEY (`MA_LT`) REFERENCES `LOAI_TRUONG` (`MA_LT`),
  CONSTRAINT FOREIGN KEY (`MA_PGD`) REFERENCES `PHONG_GD` (`MA_PGD`),
  CONSTRAINT FOREIGN KEY (`MA_LH`) REFERENCES `LOAI_HINH` (`MA_LH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-05 11:57:50
