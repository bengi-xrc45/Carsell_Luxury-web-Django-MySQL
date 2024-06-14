CREATE DATABASE  IF NOT EXISTS `carsell_luxury` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `carsell_luxury`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: carsell_luxury
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add carro',7,'add_carro'),(26,'Can change carro',7,'change_carro'),(27,'Can delete carro',7,'delete_carro'),(28,'Can view carro',7,'view_carro'),(29,'Can add imagen carro',8,'add_imagencarro'),(30,'Can change imagen carro',8,'change_imagencarro'),(31,'Can delete imagen carro',8,'delete_imagencarro'),(32,'Can view imagen carro',8,'view_imagencarro'),(33,'Can add opinion',9,'add_opinion'),(34,'Can change opinion',9,'change_opinion'),(35,'Can delete opinion',9,'delete_opinion'),(36,'Can view opinion',9,'view_opinion');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$SGtUUOayDA55TgEpGkeRs1$5xBZv2xlhv1iYwUopak2SXJIGw66TqmfERcjple+6us=','2024-06-11 11:20:02.948134',1,'benji','','','ben.rodriguez15@outlook.es',1,1,'2024-06-03 03:27:25.559388'),(2,'pbkdf2_sha256$720000$D6UkssT76vbTxnjK0xTAkU$J/Mwio2eSX5IAhqVc7gXMI6mX9Ux4cKjBdD4KFK2T1M=','2024-06-10 17:51:19.262662',0,'n','','','',0,1,'2024-06-10 17:23:25.377513'),(3,'pbkdf2_sha256$720000$7qe4qQSErQFjLxYuRL9wrU$4cu8rxngBAmM2veuz9TklVeymXZftxjv2LP7AR80OEI=','2024-06-11 02:47:41.930284',0,'javier10','','','',0,1,'2024-06-11 02:47:40.662049'),(4,'pbkdf2_sha256$720000$opwsCuuM9WtCRNcfwfhw5r$5YmL7/tUwZMQisbmZOWoZnWyrqUqjcgPzKk7J0hoQ1M=','2024-06-11 06:53:26.155625',0,'Gomez80','','','',0,1,'2024-06-11 06:53:24.833507'),(5,'pbkdf2_sha256$720000$LjilfXwRubYP1QQhziFajS$t2gdxDXR+Yqg63ilAZ+CBO8tVgEBRmiZBYZsitSdh/U=','2024-06-11 11:51:15.122904',0,'Brayan2000','','','',0,1,'2024-06-11 11:51:13.834443'),(6,'pbkdf2_sha256$720000$ockffdgpptKp3BSZ9vlVSH$8fUmaMXoX91+zsaDJEEJOHT0pj24iW5G4Za3sKNWSPY=','2024-06-11 11:52:15.875143',0,'lucasmcgregor','','','',0,1,'2024-06-11 11:52:14.474071'),(7,'pbkdf2_sha256$720000$bzCzTJLgATnRlyGgBz1dnT$mqqfbBWCDmj3/G6pEnnhWmNXOttQ+dCI1M1QRZaBrnk=','2024-06-11 11:52:37.294454',0,'lope000','','','',0,1,'2024-06-11 11:52:36.020823'),(8,'pbkdf2_sha256$720000$viyU1qj2Q9NUUUHTqzivT5$wnYk8Y+JIhdmSP3vFQeKOoPyeRzM3HWi2Fn4vpmZzMs=','2024-06-11 11:52:57.468940',0,'connormc','','','',0,1,'2024-06-11 11:52:56.198560'),(9,'pbkdf2_sha256$720000$Q6A45K45I1bZZSYMFCYrZa$CVjDfYiX52h2R4/0AgwGFHHxN+5bf9FFH2NS9yKKDOE=','2024-06-11 11:53:21.416364',0,'mateo1000','','','',0,1,'2024-06-11 11:53:20.144848'),(10,'pbkdf2_sha256$720000$xv2jbd7N2jtCISWTlwxS7I$IkVp2fdMtwdXGkxSBdWr4lRQMJhQ3CRTVWeQKhKJDqc=','2024-06-11 11:53:57.961754',0,'kaka','','','',0,1,'2024-06-11 11:53:56.741384');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carro`
--

DROP TABLE IF EXISTS `carro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(100) NOT NULL,
  `motor` varchar(50) NOT NULL,
  `cilindros` varchar(50) NOT NULL,
  `valvulas` varchar(20) NOT NULL,
  `potencia` varchar(50) NOT NULL,
  `kilometraje` int(11) NOT NULL,
  `año` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` longtext NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `color` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `fecha_publicacion` datetime(6) NOT NULL,
  `num_puertas` int(11) NOT NULL,
  `transmision` varchar(50) NOT NULL,
  `num_asientos` int(11) NOT NULL,
  `combustible` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carro`
--

LOCK TABLES `carro` WRITE;
/*!40000 ALTER TABLE `carro` DISABLE KEYS */;
INSERT INTO `carro` VALUES (1,'BMW','M4 COMPETITION COUPE','S58','6 cilindros','24','503 caballos de fuerza',0,2022,650000000,'El BMW M4 Competition Coupé 2022 es una obra maestra de elegancia y rendimiento, fusionando un diseño exterior audaz con un interior lujoso y funcional. Equipado con un motor S58 de seis cilindros en línea, doble turbocompresor, y una potencia de 503 caballos de fuerza, este vehículo ofrece una experiencia de conducción emocionante, capaz de acelerar de 0 a 100 km/h en aproximadamente 3.8 segundos. Su tecnología avanzada, que incluye un sistema de infoentretenimiento iDrive 7.0 y una transmisión automática de 8 velocidades M Steptronic, garantiza un viaje sofisticado y conectado, mientras que su diseño aerodinámico y agresivo establece un estándar en el mundo de los deportivos de alta gama.','lujo','blanco','generator/images/bmwm41.png','2024-06-03 03:37:36.390799',2,'automatico',4,'gasolina'),(2,'Ford','Mustang GT Premium','V8 de 5.0 litros','8 en V','32','460 caballos de fuerza',0,2019,250000000,'El Ford Mustang  GT Premium encarna la esencia del legendario pony car americano con un toque de lujo y rendimiento excepcional. Con su motor V8 de 5.0 litros, que produce 460 caballos de fuerza, ofrece una experiencia de conducción emocionante y potente. Su diseño exterior combina líneas musculosas y detalles modernos, mientras que el interior presenta una cabina refinada con materiales de alta calidad y tecnología avanzada, como el panel de instrumentos digital de 12 pulgadas y el sistema de infoentretenimiento SYNC 3. Este icónico automóvil deportivo ofrece tanto estilo como rendimiento, haciendo honor a su legado como uno de los favoritos entre los entusiastas del automovilismo.','lujo','rojo','generator/images/mustang1.jpeg','2024-06-03 03:41:39.038107',2,'automatico',4,'gasolina'),(3,'Chevrolet','Camaro ZL1','V8 SFI','8','16','650 caballos de fuerza',0,2023,330000000,'El Chevrolet Camaro ZL1 es una obra maestra de potencia y rendimiento que encarna la esencia del muscle car americano. Con su diseño agresivo y aerodinámico, el ZL1 presenta líneas musculosas y detalles aerodinámicos que no solo mejoran su apariencia, sino también su rendimiento en carretera. Bajo el capó, alberga un poderoso motor V8 supercargado que proporciona una experiencia de conducción emocionante con una potencia impresionante, capaz de desatar una fuerza inigualable en el asfalto. El interior del Camaro ZL1 está diseñado para combinar comodidad con deportividad, con asientos deportivos y tecnología avanzada que ofrece al conductor un control total sobre esta máquina de alto rendimiento. Con su legado de velocidad y su carácter intrépido, el Chevrolet Camaro ZL1 continúa desafiando los límites y llevando la emoción de la conducción a nuevas alturas.','lujo','blanco','generator/images/camarozl11.jpg','2024-06-03 03:49:27.155712',2,'automatico',4,'gasolina'),(4,'Ferrari','458 Italia','V8 atmosférico','8','32','570 caballos de fuerza',20000,2010,1300000000,'El Ferrari 458 Italia es un superdeportivo de alto rendimiento que ha cautivado a entusiastas y críticos por igual con su combinación de elegancia italiana y tecnología de vanguardia. Este automóvil presenta un diseño aerodinámico impresionante, con líneas fluidas y detalles agresivos que no solo mejoran su apariencia, sino que también optimizan su rendimiento en pista. Bajo el capó, alberga un motor V8 atmosférico de 4.5 litros que produce una potencia deslumbrante y un sonido distintivo que evoca la pasión y la emoción de la conducción deportiva. El interior del 458 Italia está diseñado para combinar lujo con funcionalidad, con materiales de primera calidad y tecnología de última generación que ofrecen una experiencia de conducción excepcional. Con su excepcional rendimiento en carretera y su estatus como uno de los superdeportivos más emblemáticos de Ferrari, el 458 Italia continúa siendo una obra maestra de la ingeniería automotriz y un símbolo de excelencia en el mundo del automovilismo de alto rendimiento.','lujo','blanco','generator/images/ferrari4581.png','2024-06-03 03:57:45.987534',2,'automatico',2,'gasolina'),(5,'Range Over','Evoque S','Ingenium turboalimentado de 2.0 litros','4','14','300 caballos de fuerza',0,2023,356000000,'La Range Rover Evoque S se sitúa como una opción intermedia en la alineación de modelos Evoque, ofreciendo un equilibrio entre elegancia, tecnología y capacidad. Este modelo presenta un diseño exterior moderno y aerodinámico, con detalles distintivos que reflejan la sofisticación característica de la marca Range Rover. Su interior combina materiales de alta calidad con tecnología avanzada, proporcionando una experiencia de conducción refinada y cómoda para los ocupantes. Equipada con un motor turboalimentado de 2.0 litros, la Evoque S ofrece un rendimiento sólido y eficiente, mientras que su sistema de tracción a las cuatro ruedas garantiza una excelente capacidad tanto en carretera como fuera de ella. Con características como asientos de cuero, sistema de infoentretenimiento de última generación y asistentes de conducción avanzados, la Range Rover Evoque S ofrece un equilibrio perfecto entre lujo y practicidad para aquellos que buscan una SUV premium compacta.','lujo','blanca','generator/images/evoque1.jpg','2024-06-03 04:08:57.480183',4,'automatico',4,'gasolina'),(6,'Cadillac','Scalade','V8','8','16','420 caballos de fuerza',10000,2022,870000000,'El Cadillac Escalade es una verdadera declaración de estilo y sofisticación en el segmento de los SUV de lujo. Con su diseño exterior imponente, que incluye una parrilla distintiva y líneas musculosas, el Escalade atrae las miradas donde quiera que vaya. Su interior ofrece un oasis de lujo, con materiales de alta calidad, asientos cómodos y espaciosos, y una variedad de características de conveniencia y entretenimiento de última generación. Bajo el capó, el Escalade suele estar equipado con un motor V8 potente y suave que proporciona una gran cantidad de potencia para mover este vehículo de gran tamaño con facilidad. La experiencia de conducción se ve complementada por características como la suspensión adaptativa, que proporciona una conducción suave y cómoda en una variedad de condiciones de la carretera.','lujo','blanco','generator/images/cadillac1.jpg','2024-06-03 04:15:48.813602',5,'automatico',6,'gasolina'),(7,'Audi','R8','V10','10','40','600  caballos de fuerza',14000,2017,850000000,'El Audi R8 es un superdeportivo emblemático que combina un diseño impresionante con un rendimiento excepcional. Este vehículo de alta gama destaca por su diseño aerodinámico y elegante, con líneas esculpidas que reflejan su carácter deportivo. El R8 ofrece una experiencia de conducción inigualable gracias a su potente motor V10 atmosférico y su avanzado sistema de tracción total quattro. Su interior es una mezcla de lujo y tecnología, con materiales de alta calidad y un enfoque en el conductor, ofreciendo un ambiente envolvente y sofisticado. El Audi R8 es sinónimo de velocidad, precisión y estilo, consolidándose como uno de los superdeportivos más deseados en el mercado.','lujo','azul','generator/images/audir81.jpg','2024-06-06 21:09:53.488787',2,'automatico',2,'gasolina'),(8,'Nissan','GTR -R 3.8 Premium AT','V6','6','24','565 caballos de fuerza',32000,2017,830000000,'El Nissan GT-R 3.8 Premium AT es un superdeportivo legendario conocido por su impresionante rendimiento y avanzada tecnología. Apodado cariñosamente como \"Godzilla\" en el mundo automotriz, el GT-R combina una estética agresiva con un motor poderoso y un sistema de tracción total que ofrece una experiencia de conducción electrizante. Su diseño exterior es audaz y aerodinámico, destacando sus líneas musculosas y detalles deportivos. En el interior, el GT-R ofrece una cabina enfocada en el conductor, con materiales de alta calidad y una tecnología de vanguardia que incluye un sistema de infoentretenimiento avanzado y múltiples ayudas para el conductor. Este vehículo es sinónimo de velocidad, precisión y fiabilidad, manteniendo su estatus como uno de los superdeportivos más emblemáticos del mundo.','lujo','blanco','generator/images/nissangtr1.jpg','2024-06-06 21:16:45.767588',2,'automatico',2,'gasolina'),(9,'Porsche','911 2p Carrera GT3 Coupe','Bóxer H6 atmosférico','6','24','502 caballos de fuerza',12000,2019,1094000000,'El Porsche 911 Carrera GT3 Coupé es una obra maestra de ingeniería que personifica el espíritu de la competencia en cada detalle. Con un diseño que combina elegancia y aerodinámica, el 911 GT3 se distingue por su enfoque en el rendimiento y la precisión. Equipado con un motor atmosférico de altas revoluciones y una transmisión PDK de doble embrague, este automóvil ofrece una experiencia de conducción inigualable tanto en la carretera como en la pista. Su interior está diseñado para el conductor, con asientos deportivos, materiales de alta calidad y una interfaz tecnológica avanzada que incluye un sistema de infoentretenimiento intuitivo y controles optimizados para la conducción de alto rendimiento. El Porsche 911 GT3 no solo es un símbolo de la herencia de carreras de Porsche, sino también un referente en el segmento de los superdeportivos.','lujo','negro','generator/images/porshe4.jpeg','2024-06-06 21:23:27.302583',2,'automatico',2,'gasolina'),(10,'Mercedes','Benza ClaseG Mansory','V8','8','32','850 caballos de fuerza',25000,2019,1050000000,'El Mercedes-Benz Clase G Mansory Gronos es una versión exclusiva y altamente modificada del icónico SUV de lujo Clase G. Transformado por el renombrado tuner Mansory, el Gronos lleva el diseño y el rendimiento del Clase G a un nivel completamente nuevo. Este vehículo combina la robustez y la capacidad todoterreno del Clase G con una estética audaz y agresiva, gracias a los cambios exteriores que incluyen un kit de carrocería de fibra de carbono, llantas personalizadas y un interior lujosamente renovado. Bajo el capó, el Mansory Gronos no solo mejora en términos de apariencia, sino que también ofrece una potencia significativamente aumentada, proporcionando una experiencia de conducción emocionante tanto en carretera como fuera de ella. Con un interior que presenta materiales exquisitos y tecnología avanzada, el Mansory Gronos redefine lo que significa el lujo y la exclusividad en el mundo de los SUV de alto rendimiento.','lujo','verde','generator/images/mercedesbenztuningclasegmansorygronos.jpg','2024-06-06 21:30:14.276435',5,'automatico',5,'gasolina'),(11,'Ferrari','458 Italia','V8 atmosférico','8','32','570 caballos de fuerza',10000,2015,1200000000,'El Ferrari 458 Italia es un superdeportivo emblemático que encarna la esencia de la ingeniería y el diseño italianos. Presentado por primera vez en 2009, el 458 Italia combina un rendimiento impresionante con una estética aerodinámica y elegante. Su diseño exterior, creado por Pininfarina, presenta líneas fluidas y agresivas que optimizan el flujo de aire y mejoran la estabilidad a altas velocidades. En el corazón del 458 Italia se encuentra un motor V8 atmosférico de alta revolución, que proporciona una experiencia de conducción emocionante y un sonido distintivo que evoca la pasión por la conducción. El interior del 458 Italia es igualmente impresionante, con una cabina orientada al conductor, materiales de alta calidad y una disposición ergonómica que ofrece comodidad y control. Este superdeportivo no solo destaca por su belleza y rendimiento, sino también por su avanzada tecnología y su herencia en el automovilismo.','lujo','rojo','generator/images/ferrari458italiarojo1_ovYYljG.png','2024-06-06 21:34:39.547485',2,'automatico',2,'gasolina'),(12,'Lamborghini','Huracan','V10','10','40','670  caballos de fuerza',7000,2021,1950000000,'El Lamborghini Huracán es una joya de la ingeniería italiana, combinando un diseño audaz y elegante con un rendimiento sin igual. Equipado con un motor V10 atmosférico de 5.2 litros, el Huracán produce hasta 631 caballos de fuerza, lo que le permite acelerar de 0 a 100 km/h en tan solo 2.9 segundos. La transmisión automática de doble embrague de 7 velocidades proporciona cambios de marcha ultra rápidos y suaves, maximizando tanto el rendimiento como la eficiencia. Con opciones de tracción en las cuatro ruedas y tracción trasera, el Huracán ofrece una versatilidad impresionante en términos de manejo y control. Su interior lujoso y tecnológicamente avanzado incluye características como el sistema de infotainment Lamborghini Infotainment System II y acabados de alta calidad que envuelven a los ocupantes en una experiencia de conducción premium. El diseño exterior, con líneas agresivas y aerodinámicas, refleja la herencia de Lamborghini de crear autos deportivos que no solo son rápidos, sino también visualmente impactantes. El Huracán es más que un automóvil; es una declaración de estilo y un símbolo de excelencia automotriz.','lujo','rojo','generator/images/lamborghinihuracanamarillo.jpg','2024-06-06 21:40:17.230599',2,'automatico',2,'gasolina'),(13,'Nissan','Sentra','2.0 litros','4','16','149 caballos de fuerza',15000,2021,102000000,'El Nissan Sentra 2021 es un sedán compacto que combina un diseño elegante con un rendimiento confiable. Equipado con un motor de gasolina de 2.0 litros, este vehículo ofrece una conducción suave y eficiente tanto en carretera como en ciudad. Sus 16 válvulas y 4 cilindros garantizan una respuesta ágil y un rendimiento equilibrado en diversas condiciones de conducción, desde viajes diarios hasta aventuras en carretera. Con una potencia máxima de 149 caballos de fuerza a 6,400 rpm, el Sentra ofrece una experiencia de conducción emocionante y ágil, ideal para quienes buscan un vehículo versátil y divertido de conducir. Además, su diseño aerodinámico no solo mejora su eficiencia en combustible, sino que también le otorga una apariencia sofisticada y moderna que no pasa desapercibida en la carretera. En su interior, el Sentra ofrece un espacio cómodo y bien equipado, con asientos de calidad y tecnología intuitiva que brinda comodidad y conveniencia a conductores y pasajeros por igual. Con el Nissan Sentra 2021, disfrutarás de un viaje placentero y lleno de estilo en cada trayecto.','variado','gris','generator/images/nissansentra20211.jpg','2024-06-11 09:20:23.599565',4,'manual',5,'gasolina'),(14,'Mazda','CX-30','Skyactiv-G 2,0L','4','16','153 caballos de fuerza',0,2024,130000000,'El Mazda CX-30 es un SUV compacto que incorpora el distintivo diseño Kodo de Mazda y una experiencia de conducción centrada en el ser humano. Con un motor de gasolina de 2.5 litros en línea de cuatro cilindros, el CX-30 ofrece un equilibrio excepcional entre rendimiento y eficiencia. Sus 16 válvulas y disposición de cuatro cilindros garantizan una respuesta suave y poderosa en una amplia gama de condiciones de conducción, desde carreteras urbanas hasta aventuras fuera de la ciudad. Con una potencia máxima de 186 caballos de fuerza a 6,000 rpm, el CX-30 proporciona una experiencia de conducción emocionante y ágil que se adapta a las necesidades del conductor moderno. Además de su rendimiento impresionante, el CX-30 ofrece un interior lujoso y bien equipado, con materiales de alta calidad y tecnología avanzada que brindan comodidad y conveniencia en cada viaje. Con el Mazda CX-30, disfrutarás de un SUV que combina estilo, rendimiento y practicidad de manera excepcional.','variado','rojo','generator/images/mazdacx30rojo1.jpeg','2024-06-11 09:25:39.567732',4,'automatico',5,'gasolina'),(15,'Mercedes','AMG Clase G 63 4MATIC','Combustión','8','32','577 caballos de fuerza',0,2024,1400000000,'El Mercedes-AMG Clase G está diseñado para ofrecer un rendimiento excepcional en carretera y una capacidad todoterreno impresionante. Con su motor V8 biturbo, este vehículo puede alcanzar velocidades impresionantes mientras proporciona una experiencia de conducción lujosa y emocionante. Su diseño robusto y su interior lujoso hacen del Clase G un símbolo de estatus y rendimiento en el mundo automotriz de lujo.El Mercedes-AMG Clase G es una obra maestra de la ingeniería automotriz que combina a la perfección lujo, rendimiento y capacidad todoterreno. Desde su icónico diseño exterior, con líneas robustas y una presencia imponente, hasta su lujoso interior, repleto de tecnología de vanguardia y materiales de alta calidad, el Clase G es una declaración de estilo y prestigio en la carretera.','lujo','negro','generator/images/gwagon1.png','2024-06-11 09:30:39.055320',5,'automatico',5,'gasolina'),(16,'Porshe','911 Carrera Cabriolet','Boxer','6','24','500 caballos de fuerza',17000,2020,830000000,'El Porsche 911 Carrera es conocido por su distintivo diseño de carrocería coupé de dos puertas, aunque también está disponible en configuraciones descapotable. Su estilo elegante y deportivo se combina con un rendimiento excepcional, gracias a su motor montado en la parte trasera y su tracción trasera (o tracción integral en algunos modelos). El 911 Carrera ofrece una experiencia de conducción emocionante y ágil, con una aceleración impresionante y una maniobrabilidad precisa. En cuanto al interior, el Porsche 911 Carrera ofrece un habitáculo centrado en el conductor, con materiales de alta calidad, tecnología avanzada y un diseño ergonómico que enfatiza la experiencia de conducción deportiva. A pesar de su naturaleza deportiva, el 911 Carrera todavía ofrece cierto grado de comodidad y conveniencia para los ocupantes, con características como asientos cómodos y un sistema de infoentretenimiento intuitivo.','lujo','negro','generator/images/porshe3.jpeg','2024-06-11 09:36:22.162995',2,'automatico',2,'gasolina'),(17,'Mercedes-Benz','AMG C 63','V8 biturbo','8','32','503 caballos de fuerza',68000,2013,160000000,'El Mercedes-AMG C 63 es conocido por su potente motor V8 biturbo, que proporciona una aceleración impresionante y un rendimiento excepcional. Su diseño exterior deportivo y su lujoso interior lo hacen destacar entre la multitud. El Mercedes-AMG C 63 representa la fusión perfecta entre lujo y rendimiento deportivo. Impulsado por un potente motor V8 biturbo de 4.0 litros, este automóvil ofrece una experiencia de conducción emocionante y dinámica. Con hasta 503 caballos de fuerza bajo el capó, el C 63 es capaz de acelerar de 0 a 100 km/h en poco tiempo, brindando una sensación de potencia inigualable en cada pisada del acelerador. Su diseño exterior agresivo, con detalles aerodinámicos y llantas de aleación de alto rendimiento, refleja su naturaleza deportiva y su linaje de competición de alta gama.','lujo','blanco','generator/images/mercedesclasecamgc63.jpg','2024-06-11 09:44:28.360025',2,'automatico',4,'gasolina'),(18,'Mercedes-Benz','GLS 450 MATIC','Híbrido No Enchufable','4','24','362 caballos de fuerza',0,2024,510000000,'El Mercedes-Benz GLS es la personificación del lujo y la elegancia en el mundo de los SUV de tamaño completo. Con un diseño exterior imponente y una presencia majestuosa en la carretera, el GLS cautiva a primera vista. Su interior es un oasis de comodidad y refinamiento, con materiales de primera calidad, artesanía meticulosa y espacio generoso para hasta siete ocupantes. Cada detalle del GLS está diseñado para brindar una experiencia de conducción de primera clase, desde los asientos de cuero exquisitamente diseñados hasta las tecnologías avanzadas de infoentretenimiento y seguridad que mantienen a los pasajeros conectados y protegidos en todo momento. Ya sea en un viaje familiar por carretera o en un paseo urbano, el Mercedes-Benz GLS ofrece un nivel incomparable de lujo, rendimiento y prestigio que eleva cada trayecto a una experiencia verdaderamente excepcional.','lujo','blanco','generator/images/mercedesgls2_mpwo7i9.png','2024-06-11 09:50:22.801773',4,'automatico',5,'hibrido'),(19,'Ferrari','F8 Spider','V8 3.9L','8','32','720 caballos de fuerza',4000,2023,1980000000,'El Ferrari F8 Tributo es una obra maestra de ingeniería y diseño italiano. Desde su aerodinámica elegante hasta su interior lujoso y su rendimiento asombroso, este superdeportivo encarna la pasión y la excelencia que son sinónimos de la marca Ferrari. Cada aspecto de este automóvil está diseñado para ofrecer una experiencia de conducción emocionante y envolvente, ya sea en la pista o en la carretera. Con su combinación de potencia desenfrenada, manejo preciso y un estilo incomparable, el Ferrari F8 Tributo sigue siendo un icono en el mundo de los automóviles deportivos de alto rendimiento. El Ferrari F8 Tributo no solo impresiona con su desempeño sobresaliente, sino que también cautiva con su diseño aerodinámico y su artesanía meticulosa. Cada línea y detalle están diseñados con precisión para mejorar la eficiencia aerodinámica y la estabilidad a altas velocidades. Desde el frente agresivo hasta la distintiva toma de aire lateral y el elegante perfil trasero, el F8 Tributo exuda una estética que combina elegancia con una agresividad controlada. Su interior refleja la misma atención al detalle, con materiales de alta calidad y una disposición ergonómica que coloca al conductor en el centro de la experiencia de conducción. Cada aspecto de este automóvil está imbuido con el espíritu de la competición de Ferrari, brindando una experiencia de conducción que es tanto emocionante como gratificante, haciendo del Ferrari F8 Tributo un verdadero tributo a la pasión por la automoción.','lujo','amarillo','generator/images/f8_4e2sbVU.png','2024-06-11 10:15:28.153482',2,'automatico',2,'gasolina'),(20,'Ferrari','SF90 Spider','V8 biturbo','8','32','720 caballos de fuerza',0,2024,2140000000,'El Ferrari SF90 Spider lleva la experiencia de conducción al aire libre a nuevas alturas de emoción y rendimiento. Equipado con el mismo motor híbrido enchufable V8 biturbo de 4.0 litros y tres motores eléctricos que su contraparte coupé, el SF90 Stradale, este descapotable combina la potencia desenfrenada con la sensación de libertad que solo un techo abierto puede ofrecer. Con más de 1,000 caballos de fuerza a su disposición, el SF90 Spider acelera con autoridad, entregando una experiencia de conducción envolvente y electrizante. Su diseño aerodinámico, elegante y sofisticado, se complementa perfectamente con la tecnología avanzada que se encuentra bajo su capó, convirtiéndolo en un verdadero icono de rendimiento y estilo. Con el SF90 Spider, Ferrari continúa redefiniendo los límites de lo que es posible en el mundo de los superdeportivos, combinando la emoción pura de la conducción a cielo abierto con la vanguardia tecnológica y el rendimiento de alto nivel que han hecho de la marca una leyenda en el mundo del automovilismo.','lujo','rojo','generator/images/ferrarisf90spiderrojo1.jpg','2024-06-11 10:25:49.435148',2,'automatico',2,'hibrido'),(21,'Ferrari','SF90 Stradale','V8 biturbo','8','32','720 caballos de fuerza',8000,2022,2110000000,'El Ferrari SF90 Stradale marca un hito significativo en la evolución de Ferrari, ya que es el primer superdeportivo híbrido enchufable de la marca. Este modelo revolucionario combina un motor V8 biturbo de 4.0 litros con tres motores eléctricos, lo que resulta en una potencia combinada extraordinaria de más de 1,000 caballos de fuerza. Uno de los motores eléctricos está ubicado entre el motor y la caja de cambios, mientras que los otros dos se encuentran en el eje delantero, proporcionando tracción en las cuatro ruedas y una capacidad de conducción completamente eléctrica. Además de su impresionante rendimiento, el SF90 Stradale presenta un diseño aerodinámico y elegante, con líneas agresivas y una cabina futurista que refleja su enfoque vanguardista hacia la tecnología y la ingeniería automotriz. Este superdeportivo representa la visión innovadora de Ferrari hacia el futuro de la movilidad, combinando la emoción de la conducción deportiva con una eficiencia sin precedentes y un rendimiento excepcional.','lujo','gris','generator/images/ferrarisf90stradalerojo1.jpg','2024-06-11 10:29:31.483964',2,'automatico',2,'hibrido'),(22,'BMW','M3 Competition coupe','doble turbo, de 3.0 L','6','24','510 caballos de fuerza',11000,2002,630000000,'El BMW M3 Competition es una expresión audaz de potencia y rendimiento en el mundo de los automóviles deportivos de alto rendimiento. Equipado con un motor de seis cilindros en línea y doble turbo de 3.0 litros, este vehículo entrega una potencia impresionante de hasta 510 caballos de fuerza y un par motor sustancial. La tecnología de gestión del motor y la respuesta del acelerador están finamente ajustadas para ofrecer una experiencia de conducción emocionante y controlable en todo momento. Con su tracción trasera y una transmisión automática de ocho velocidades especialmente adaptada para un rendimiento óptimo, el M3 Competition ofrece una aceleración impresionante y una experiencia de conducción dinámica. Las válvulas del motor del BMW M3 Competition, al igual que en otros motores de alta gama de BMW, son piezas de ingeniería precisas que garantizan una eficiente admisión y expulsión de gases. Esto contribuye a la potencia, la eficiencia y la respuesta del motor, brindando una experiencia de conducción que se siente conectada y emocionante.','lujo','verde','generator/images/bmwm31.jpg','2024-06-11 10:34:01.581931',2,'automatico',4,'gasolina'),(23,'Tesla','Model S','Motor electrico','-','-','700 caballos de fuerza',0,2024,600000000,'El Tesla Model S es una obra maestra de la ingeniería eléctrica y la innovación automotriz. Con su diseño elegante y aerodinámico, este sedán eléctrico de lujo redefine lo que significa conducir un automóvil en el siglo XXI. Equipado con tecnología de vanguardia y un rendimiento impresionante, el Model S ofrece una experiencia de conducción emocionante y sostenible. Su interior espacioso y futurista está lleno de características de última generación, desde su enorme pantalla táctil central hasta su piloto automático avanzado. Con una autonomía líder en su clase y la capacidad de recargar rápidamente en la red de supercargadores de Tesla, el Model S es más que un automóvil, es un símbolo del futuro de la movilidad eléctrica.','variado','blanco','generator/images/teslamodels1.jpg','2024-06-11 10:38:51.369015',4,'automatico',4,'electrico'),(24,'Tesla','Model S Plaid','Motor electrico','-','-','700 caballos de fuerza',3000,2023,650000000,'El Tesla Model S es una obra maestra de la ingeniería eléctrica y la innovación automotriz. Con su diseño elegante y aerodinámico, este sedán eléctrico de lujo redefine lo que significa conducir un automóvil en el siglo XXI. Equipado con tecnología de vanguardia y un rendimiento impresionante, el Model S ofrece una experiencia de conducción emocionante y sostenible. Su interior espacioso y futurista está lleno de características de última generación, desde su enorme pantalla táctil central hasta su piloto automático avanzado. Con una autonomía líder en su clase y la capacidad de recargar rápidamente en la red de supercargadores de Tesla, el Model S es más que un automóvil, es un símbolo del futuro de la movilidad eléctrica.','variado','negro','generator/images/teslamodels2.jpg','2024-06-11 10:41:57.586578',4,'automatico',4,'electrico'),(25,'Tesla','Model  X','Motor electrico','-','-','700 caballos de fuera',5000,2023,610000000,'El Tesla Model X es una maravilla de la ingeniería eléctrica y el diseño moderno. Este SUV eléctrico ofrece un rendimiento emocionante, combinado con el lujo y la comodidad característicos de la marca Tesla. Con su distintiva puerta trasera de apertura vertical y su amplio espacio interior, el Model X es tanto práctico como llamativo. Equipado con tecnología de vanguardia y características innovadoras, como el modo Ludicrous que permite una aceleración impresionante, el Model X ofrece una experiencia de conducción incomparable. Con una autonomía líder en su clase y la red de carga global de Tesla, este SUV eléctrico es una opción atractiva para aquellos que buscan un vehículo con un rendimiento excepcional y una conciencia ambiental.','variado','negro','generator/images/teslamodelx2.jpg','2024-06-11 10:46:02.250791',4,'automatico',4,'electrico'),(26,'Toyota','Fortuner','Diésel de 2.8 L','4','16','200 caballos de fuerza',40000,2022,220000000,'El Toyota Fortuner  es una combinación perfecta de robustez, rendimiento y comodidad diseñada para adaptarse a una variedad de terrenos y condiciones de conducción. Con su potente motor y su capacidad de tracción en las cuatro ruedas, el Fortuner ofrece un rendimiento excepcional tanto en carreteras pavimentadas como en caminos todoterreno. Su diseño exterior imponente refleja su naturaleza aventurera, mientras que su interior espacioso y bien equipado proporciona comodidad y conveniencia para todos los ocupantes. Equipado con características de seguridad avanzadas y la legendaria confiabilidad de Toyota, el Fortuner es una opción popular para aquellos que buscan un vehículo versátil y confiable que pueda enfrentar cualquier desafío con estilo y confianza.','variado','blanco','generator/images/toyotafortunesw420171.png','2024-06-11 10:52:34.744791',4,'automatico',5,'diesel'),(27,'Toyota','Land Cruiser','Diesel','4','16','268 caballos de fuerza',12000,2023,640000000,'El Toyota Land Cruiser es una verdadera maravilla de la ingeniería moderna, combinando décadas de legado todoterreno con la última tecnología automotriz. Equipado con un potente motor diésel de 3.3 litros, este SUV de lujo ofrece 305 caballos de fuerza y un impresionante torque de 700 Nm, asegurando un rendimiento formidable tanto en carreteras pavimentadas como en terrenos más desafiantes. La nueva transmisión automática de 10 velocidades mejora la eficiencia de combustible y proporciona una experiencia de conducción suave y refinada. Con su tracción en las cuatro ruedas permanente y una caja de transferencia de dos velocidades, el Land Cruiser 2023 está diseñado para conquistar cualquier terreno con facilidad. Además, su interior lujoso y bien equipado, repleto de tecnología avanzada y características de seguridad de vanguardia, asegura que todos los ocupantes viajen con la máxima comodidad y protección. El Land Cruiser 2023 no solo representa la durabilidad y confiabilidad icónicas de Toyota, sino que también eleva el estándar en el segmento de los SUV de lujo todoterreno.','lujo','blanco','generator/images/toyotalandcruiser2.jpg','2024-06-11 10:56:44.486297',4,'automatico',5,'gasolina');
/*!40000 ALTER TABLE `carro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-06-03 03:37:36.393817','1','Carro object (1)',1,'[{\"added\": {}}]',7,1),(2,'2024-06-03 03:41:39.041106','2','Carro object (2)',1,'[{\"added\": {}}]',7,1),(3,'2024-06-03 03:49:27.157697','3','Carro object (3)',1,'[{\"added\": {}}]',7,1),(4,'2024-06-03 03:57:45.989534','4','Carro object (4)',1,'[{\"added\": {}}]',7,1),(5,'2024-06-03 04:08:57.482180','5','Carro object (5)',1,'[{\"added\": {}}]',7,1),(6,'2024-06-03 04:15:48.815601','6','Carro object (6)',1,'[{\"added\": {}}]',7,1),(7,'2024-06-03 19:00:14.283479','4','Carro object (4)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(8,'2024-06-03 19:00:28.664005','5','Carro object (5)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(9,'2024-06-06 21:01:18.192541','6','Carro object (6)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(10,'2024-06-06 21:01:18.310472','6','Carro object (6)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(11,'2024-06-06 21:01:35.220203','1','Carro object (1)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(12,'2024-06-06 21:01:47.967819','2','Carro object (2)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(13,'2024-06-06 21:01:59.437416','3','Carro object (3)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(14,'2024-06-06 21:02:15.230556','4','Carro object (4)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(15,'2024-06-06 21:02:28.950826','5','Carro object (5)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(16,'2024-06-06 21:09:53.490789','7','Carro object (7)',1,'[{\"added\": {}}]',7,1),(17,'2024-06-06 21:16:45.770587','8','Carro object (8)',1,'[{\"added\": {}}]',7,1),(18,'2024-06-06 21:23:27.308580','9','Carro object (9)',1,'[{\"added\": {}}]',7,1),(19,'2024-06-06 21:30:14.281436','10','Carro object (10)',1,'[{\"added\": {}}]',7,1),(20,'2024-06-06 21:34:39.554485','11','Carro object (11)',1,'[{\"added\": {}}]',7,1),(21,'2024-06-06 21:40:17.234602','12','Carro object (12)',1,'[{\"added\": {}}]',7,1),(22,'2024-06-06 21:45:11.099081','7','Carro object (7)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(23,'2024-06-06 21:49:03.968760','12','Carro object (12)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(24,'2024-06-06 21:55:06.387091','12','Carro object (12)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(25,'2024-06-06 21:55:19.861723','11','Carro object (11)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(26,'2024-06-06 21:55:35.064017','8','Carro object (8)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(27,'2024-06-06 21:55:45.022432','1','Carro object (1)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(28,'2024-06-06 21:56:38.307746','2','Carro object (2)',2,'[]',7,1),(29,'2024-06-06 21:57:26.045993','7','Carro object (7)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(30,'2024-06-06 21:57:55.274289','2','Carro object (2)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(31,'2024-06-06 21:58:13.667148','3','Carro object (3)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(32,'2024-06-06 21:58:34.076020','4','Carro object (4)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(33,'2024-06-06 21:58:52.255654','6','Carro object (6)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(34,'2024-06-06 21:59:29.845141','8','Carro object (8)',2,'[]',7,1),(35,'2024-06-06 21:59:55.112739','9','Carro object (9)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(36,'2024-06-06 22:00:06.250870','10','Carro object (10)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(37,'2024-06-06 22:00:20.718305','5','Carro object (5)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(38,'2024-06-06 22:02:58.210831','12','Carro object (12)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(39,'2024-06-10 19:07:18.405951','1','Primer opinion- by n',1,'[{\"added\": {}}]',9,1),(40,'2024-06-10 19:07:23.382527','1','Primer opinion- by n',2,'[]',9,1),(41,'2024-06-10 22:34:10.253396','2','mi segunda opinionddedeedeeded- by benji',2,'[]',9,1),(42,'2024-06-11 09:12:30.792985','12','Carro object (12)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(43,'2024-06-11 09:14:30.502757','11','Ferrari 458 Italia',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(44,'2024-06-11 09:20:23.600990','13','Nissan Sentra',1,'[{\"added\": {}}]',7,1),(45,'2024-06-11 09:25:39.572418','14','Mazda CX-30',1,'[{\"added\": {}}]',7,1),(46,'2024-06-11 09:30:39.062351','15','Mercedes AMG Clase G 63 4MATIC',1,'[{\"added\": {}}]',7,1),(47,'2024-06-11 09:36:22.193455','16','Porshe 911 Carrera Cabriolet',1,'[{\"added\": {}}]',7,1),(48,'2024-06-11 09:44:28.362122','17','Mercedes-Benz AMG C 63',1,'[{\"added\": {}}]',7,1),(49,'2024-06-11 09:50:22.807538','18','Mercedes-Benz GLS 450 MATIC',1,'[{\"added\": {}}]',7,1),(50,'2024-06-11 10:15:28.155584','19','Ferrari F8',1,'[{\"added\": {}}]',7,1),(51,'2024-06-11 10:19:52.883788','19','Ferrari F8',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(52,'2024-06-11 10:21:13.561775','19','Ferrari F8',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(53,'2024-06-11 10:21:48.107307','19','Ferrari F8 Spider',2,'[{\"changed\": {\"fields\": [\"Modelo\"]}}]',7,1),(54,'2024-06-11 10:25:49.436181','20','Ferrari SF90 Spider',1,'[{\"added\": {}}]',7,1),(55,'2024-06-11 10:26:45.460240','20','Ferrari SF90 Spider',2,'[{\"changed\": {\"fields\": [\"Descripcion\"]}}]',7,1),(56,'2024-06-11 10:29:31.487116','21','Ferrari SF90 Stradale',1,'[{\"added\": {}}]',7,1),(57,'2024-06-11 10:29:43.020705','20','Ferrari SF90 Spider',2,'[{\"changed\": {\"fields\": [\"Potencia\"]}}]',7,1),(58,'2024-06-11 10:34:01.583931','22','BMW M3 Competition coupe',1,'[{\"added\": {}}]',7,1),(59,'2024-06-11 10:38:51.395841','23','Tesla Model S Plaid',1,'[{\"added\": {}}, {\"added\": {\"name\": \"imagen carro\", \"object\": \"ImagenCarro object (1)\"}}]',7,1),(60,'2024-06-11 10:41:57.589577','24','Tesla Model S Plaid',1,'[{\"added\": {}}]',7,1),(61,'2024-06-11 10:42:03.472598','23','Tesla Model S',2,'[{\"changed\": {\"fields\": [\"Modelo\"]}}]',7,1),(62,'2024-06-11 10:46:02.251492','25','Tesla Model  X',1,'[{\"added\": {}}]',7,1),(63,'2024-06-11 10:52:34.745598','26','Toyota Fortuner',1,'[{\"added\": {}}]',7,1),(64,'2024-06-11 10:56:44.488296','27','Toyota Land Cruiser',1,'[{\"added\": {}}]',7,1),(65,'2024-06-11 10:58:52.591922','9','Porsche 911 2p Carrera GT3 Coupe',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(66,'2024-06-11 11:00:04.832672','18','Mercedes-Benz GLS 450 MATIC',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(67,'2024-06-11 11:04:28.805204','12','Lamborghini Huracan',2,'[{\"changed\": {\"fields\": [\"Modelo\", \"Motor\", \"Cilindros\", \"Valvulas\", \"Potencia\", \"Kilometraje\", \"A\\u00f1o\", \"Precio\", \"Descripcion\", \"Image\"]}}]',7,1),(68,'2024-06-11 11:05:33.216192','19','Ferrari F8 Spider',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(69,'2024-06-11 11:06:52.820203','19','Ferrari F8 Spider',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1),(70,'2024-06-11 11:07:26.786818','19','Ferrari F8 Spider',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(7,'generator','carro'),(8,'generator','imagencarro'),(9,'generator','opinion'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-06-03 03:26:25.224235'),(2,'auth','0001_initial','2024-06-03 03:26:26.538551'),(3,'admin','0001_initial','2024-06-03 03:26:26.725534'),(4,'admin','0002_logentry_remove_auto_add','2024-06-03 03:26:26.748257'),(5,'admin','0003_logentry_add_action_flag_choices','2024-06-03 03:26:26.792015'),(6,'contenttypes','0002_remove_content_type_name','2024-06-03 03:26:26.897995'),(7,'auth','0002_alter_permission_name_max_length','2024-06-03 03:26:26.995038'),(8,'auth','0003_alter_user_email_max_length','2024-06-03 03:26:27.045194'),(9,'auth','0004_alter_user_username_opts','2024-06-03 03:26:27.063184'),(10,'auth','0005_alter_user_last_login_null','2024-06-03 03:26:27.149286'),(11,'auth','0006_require_contenttypes_0002','2024-06-03 03:26:27.156285'),(12,'auth','0007_alter_validators_add_error_messages','2024-06-03 03:26:27.174277'),(13,'auth','0008_alter_user_username_max_length','2024-06-03 03:26:27.213250'),(14,'auth','0009_alter_user_last_name_max_length','2024-06-03 03:26:27.252569'),(15,'auth','0010_alter_group_name_max_length','2024-06-03 03:26:27.283725'),(16,'auth','0011_update_proxy_permissions','2024-06-03 03:26:27.343245'),(17,'auth','0012_alter_user_first_name_max_length','2024-06-03 03:26:27.443489'),(18,'generator','0001_initial','2024-06-03 03:26:28.115521'),(19,'generator','0002_alter_carro_modelo','2024-06-03 03:26:28.317330'),(20,'sessions','0001_initial','2024-06-03 03:26:28.370561'),(21,'generator','0003_opinion','2024-06-10 18:51:54.757988');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('57fqb22yco1cp62x0xtb062m1vhvap47','.eJxVjEEOwiAQRe_C2hCgQItL956BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4kzgLLU6_WwJ8cN0B3aHemsRW12VOclfkQbu8NuLn5XD_Dgr08q3tYNWE6DKOhDRmVkaFkB3YyWFS3gfjk2dDihNQRuP8ELQFstoZzFa8P_AjOC8:1sGxI4:ww1YyvttXlMDhXF6yi7dmT8sEbBUqJ-6_VNeqr4NIko','2024-06-25 08:55:40.512921'),('5yl5lblmvzraklvi4gxq7u1urcprkbta','.eJxVjEEOwiAQRe_C2hCgQItL956BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4kzgLLU6_WwJ8cN0B3aHemsRW12VOclfkQbu8NuLn5XD_Dgr08q3tYNWE6DKOhDRmVkaFkB3YyWFS3gfjk2dDihNQRuP8ELQFstoZzFa8P_AjOC8:1sEBoN:wr1E1R5f5iGQ90gXEKqeZ463aSzkKzxEh51yWHlM7BE','2024-06-17 17:49:35.382639'),('7fatnrtw027jwkd8uzi2k5577y1dd19c','.eJxVjEEOwiAQRe_C2hAZpgVcuu8ZyMAMUjVtUtqV8e7apAvd_vfef6lI21rj1mSJI6uLAnX63RLlh0w74DtNt1nneVqXMeld0QdtephZntfD_Tuo1Oq3Tj16RqEM0p3Bd2CTKUiuiEcX2CMH0wNysuJCQYFinbHZB0lkgax6fwDjbjfh:1sGjAt:pUsOg_JilgTORKzX5Kr1gbSSQ8Z8jyovmSpdqeNult0','2024-06-24 17:51:19.278684'),('m4cdjha2uy8ffxai5c3qi22x0yqpycin','.eJxVjEEOwiAQRe_C2hCgQItL956BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4kzgLLU6_WwJ8cN0B3aHemsRW12VOclfkQbu8NuLn5XD_Dgr08q3tYNWE6DKOhDRmVkaFkB3YyWFS3gfjk2dDihNQRuP8ELQFstoZzFa8P_AjOC8:1sDyMM:ml04b6bEFk9cNQmprE6cbTWIxHz3HlER1q-FBPAXmNw','2024-06-17 03:27:46.312288'),('tekp9ylop2reqecvl8vw75q15kmsz874','.eJxVjEEOwiAQRe_C2hAZpgVcuu8ZyMAMUjVtUtqV8e7apAvd_vfef6lI21rj1mSJI6uLAnX63RLlh0w74DtNt1nneVqXMeld0QdtephZntfD_Tuo1Oq3Tj16RqEM0p3Bd2CTKUiuiEcX2CMH0wNysuJCQYFinbHZB0lkgax6fwDjbjfh:1sGijv:dvhFZP6sK_nang8iPGCCo_1UkaI7YJUk9NCA3XSEjjo','2024-06-24 17:23:27.265875'),('vmsgf49heghjpdfrdp8e00az2pvm6my0','.eJxVjEEOwiAQRe_C2hCgQItL956BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4kzgLLU6_WwJ8cN0B3aHemsRW12VOclfkQbu8NuLn5XD_Dgr08q3tYNWE6DKOhDRmVkaFkB3YyWFS3gfjk2dDihNQRuP8ELQFstoZzFa8P_AjOC8:1sG3Jm:cq3Cux8dwLffzjyoHU6gKPWu__l4FjQo56f2sgQHZR4','2024-06-22 21:09:42.514395'),('xf0wgwye5s2lajijx3xxllvjag6wci9l','.eJxVjEEOwiAQRe_C2hCgQItL956BDDODVA0kpV0Z765NutDtf-_9l4iwrSVunZc4kzgLLU6_WwJ8cN0B3aHemsRW12VOclfkQbu8NuLn5XD_Dgr08q3tYNWE6DKOhDRmVkaFkB3YyWFS3gfjk2dDihNQRuP8ELQFstoZzFa8P_AjOC8:1sFixC:GYL-H096AjzPepJeECHlcfyiH-_ap3Y-TLEVafK-8VU','2024-06-21 23:25:02.121261');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generator_opinion`
--

DROP TABLE IF EXISTS `generator_opinion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `generator_opinion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `calificacion` int(10) unsigned NOT NULL CHECK (`calificacion` >= 0),
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `generator_opinion_user_id_44b16a6c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `generator_opinion_user_id_44b16a6c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generator_opinion`
--

LOCK TABLES `generator_opinion` WRITE;
/*!40000 ALTER TABLE `generator_opinion` DISABLE KEYS */;
INSERT INTO `generator_opinion` VALUES (1,'Primer opinion','priimer opinion','2024-06-10 19:07:18.404951',5,2),(2,'Best Company of cars','son los mejores','2024-06-10 22:28:51.276953',5,1),(6,'Insuperables','best company','2024-06-10 22:42:45.205092',4,1),(7,'Mejores carros del pais','solo en Carsell','2024-06-11 11:11:50.621429',5,1),(8,'MI tienda favoritade carros','los mejores','2024-06-11 11:26:26.501552',5,1);
/*!40000 ALTER TABLE `generator_opinion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagencarro`
--

DROP TABLE IF EXISTS `imagencarro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagencarro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) DEFAULT NULL,
  `carro_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ImagenCarro_carro_id_8fb4584c_fk_Carro_id` (`carro_id`),
  CONSTRAINT `ImagenCarro_carro_id_8fb4584c_fk_Carro_id` FOREIGN KEY (`carro_id`) REFERENCES `carro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagencarro`
--

LOCK TABLES `imagencarro` WRITE;
/*!40000 ALTER TABLE `imagencarro` DISABLE KEYS */;
INSERT INTO `imagencarro` VALUES (1,'generator/images/fordraptorranger1.jpg',23);
/*!40000 ALTER TABLE `imagencarro` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-11  7:05:07
