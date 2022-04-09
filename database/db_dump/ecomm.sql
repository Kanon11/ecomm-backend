/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 10.4.8-MariaDB : Database - ecomm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ecomm` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ecomm`;

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(555) DEFAULT NULL,
  `file_path` varchar(555) DEFAULT NULL,
  `description` varchar(1026) DEFAULT NULL,
  `price` varchar(55) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`file_path`,`description`,`price`,`created_at`,`updated_at`) values 
(1,'table computer','products/B6j73nlXDnWIfPjZASYIoPVsNKF7ZrKkIb8kkmYn.jpg','reading table','5000','2022-04-05 17:02:43','2022-04-09 10:31:05'),
(2,'Stapler','products/O3KY0EdsObNWXlNIm55KK4wJs4PVZcoHWeWqkoHv.png','Matador Small size Stapler','60','2022-04-05 17:08:13','2022-04-05 17:08:13'),
(4,'reading table','products/ZDMKfCPifdCiF6OOoGIm2WPFJCwzMotCH9uRxRLM.jpg','partext Reading table','10000','2022-04-06 14:36:35','2022-04-08 17:06:27'),
(9,'new p','products/Z5AVYELNSmvMbZFQwhv9JtHGsfUKGcjvLif7GLh0.jpg','wooden table','5000','2022-04-09 07:33:58','2022-04-09 07:33:58'),
(10,'product 7','products/LBqfNYkeXn1auevTb2S0tpAQvkOlsVYiBAziXmyU.jpg','book self premium','7000','2022-04-09 10:09:08','2022-04-09 10:09:08'),
(11,'product 11','products/u7FiqP7j2W94Ks2tnEJuCeHIxj5eOCOwP8oSYzN5.jpg','signature ink','500','2022-04-09 10:30:44','2022-04-09 10:30:44');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`password`,`email`) values 
(1,'kanon','$2y$10$ORehYSg5PCD8UbEf2ZYvSui0meAHbzQ10glzd6og6NGk5vqk/gJ5W','kanoncuetcse11@gmail.com'),
(2,'mukti','$2y$10$OHH6SkXi/bXojeubPjGDF.PQ7nj84KuzM6nU3SgSN7P2ko6uTmuA6','muktinsrc11@gmail.com'),
(12,'a','$2y$10$JhZvgfrXHs.4YPgohzCKWuG7EggSGlBW6djw/4k4V8y80hA7ulFJK','a'),
(13,'abc','$2y$10$4myHG25U1dtdHGueoK.2yeTixEdBnBd7ifWfEOnaSAYiVch4qzDIe','abc@123.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
