/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.27-MariaDB : Database - retailapp_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`retailapp_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `retailapp_db`;

/*Table structure for table `client` */

DROP TABLE IF EXISTS `client`;

CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `locationid` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK26to3dfoput9fuu3h7jmv2f70` (`locationid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `client` */

insert  into `client`(`id`,`details`,`email`,`full_name`,`locationid`,`phone`) values 
(6,'','kl2@gmail.com','Klijent 2 Prezime 2',4,'061-0001-110'),
(1,'IZMENA klijenta','client1@gmail.com','Klijent 1 Prezime 1',2,'060-0000-011');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `contact` */

insert  into `contact`(`id`,`email`,`firstname`,`lastname`,`phone`,`remarks`) values 
(2,'fiorajeans@gmail.com','Husein','Jahic','064-3334-334','Potencijalni dobavljac za famerice brenda FIORA, Novi Pazar.');

/*Table structure for table `country` */

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `capital` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `country` */

insert  into `country`(`id`,`capital`,`code`,`name`) values 
(4,'Valjevo','+381/014','Kolubarski okrug'),
(3,'Pancevo','+381/013','Juznbanatski okrug'),
(2,'Smederevo','+381/026','Podunavski okrug'),
(1,'Beograd','+381/011','Srbija'),
(5,'Kraljevo','+381/020','Raski okrug');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `countryid` int(11) DEFAULT NULL,
  `date_of_birth` datetime DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `jmbg` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `locationid` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `employeetypeid` int(11) DEFAULT NULL,
  `hire_date` datetime DEFAULT NULL,
  `jobtitleid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9hga8iyrt1lh8ofyic3lb0792` (`countryid`),
  KEY `FK188lhqauay3adwo21w5mxrap8` (`locationid`),
  KEY `FKe1h4f2i4kb3hdr67guoeyg16h` (`employeetypeid`),
  KEY `FKod9tsamp0p54ko9vk9fwusrig` (`jobtitleid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employee` */

insert  into `employee`(`id`,`countryid`,`date_of_birth`,`email`,`firstname`,`jmbg`,`lastname`,`locationid`,`nickname`,`phone`,`photo`,`employeetypeid`,`hire_date`,`jobtitleid`,`username`) values 
(17,2,'2023-02-04 23:00:00','miki@gmail.com','Mileva','12347890','Stojanovic',1,'Miksii','060-0311-552','default.jpg',2,'2023-02-04 23:00:00',2,'milevka'),
(7,2,'2023-02-06 23:00:00','rasa@gmail.com','Radmilo','1234567891011','Stojanovic',1,'Rasa','060-0000-001','1.jpg',1,'2023-02-06 23:00:00',2,'radmilo'),
(1,2,'1971-11-02 23:00:00','grujicBiljana@gmail.com','Biljana','1311971000016','Grujic',1,'Biljkaaa','060-0113-116','avatar-2.jpg',1,'1996-12-21 23:00:00',3,'biljana'),
(9,2,'2023-02-03 23:00:00','brane@gmail.com','Branko','1230957688','Brankovic',1,'Brane','063-1933-320','avatar-4.jpg',2,'2023-02-03 23:00:00',4,NULL),
(6,2,'2023-02-09 23:00:00','zeljanagrujic2199@gmail.com','Srecko','123','Grujic',1,'Sreki','0600323058','avatar-3.jpg',1,'2023-02-14 23:00:00',1,'srecko');

/*Table structure for table `employee_type` */

DROP TABLE IF EXISTS `employee_type`;

CREATE TABLE `employee_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `employee_type` */

insert  into `employee_type`(`id`,`description`,`details`) values 
(1,'Puno radno vreme','Podrazumeva rad u I(8-14h) ili II(14-16) smeni, u trajanju od 8 sati. Ukupno radno vreme na nedeljnom nivou je izmedju 38 i 40 sati, a plata je fiksna.'),
(4,'Zaposleni po ugovoru','Zaposleni odradjuje odredjeni broj sati (menja odredjenog zaposlenog na odsustvu) ili moze biti angazovan za realizovanje jednokratnog projekta. Visina plate se obracunava u zavisnosti od broja radnih sati i/ili tezine projekta'),
(3,'Zaposleni na odredjeno vreme','Zaposleni moze raditi sa punim ili nepunim radnim vremenom, plata se obracunava prema broju odradjenih sati, kao i prema tezini posla koji se obavlja'),
(2,'Nepuno radno vreme','Podrazumeva rad u I ili II smeni, prosecna duzina trajanja smene je 7 sati dnevno. Ukupno radno vreme na nedeljnom nivou je manje od 38 sati, a plata se obracunava prema broju odradjenih sati');

/*Table structure for table `invoice_buying` */

DROP TABLE IF EXISTS `invoice_buying`;

CREATE TABLE `invoice_buying` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_date` datetime DEFAULT NULL,
  `invoicestatusid` int(11) DEFAULT NULL,
  `special_remarks` varchar(255) DEFAULT NULL,
  `supplierid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8581wb1e39ilxsta9q11ipvit` (`invoicestatusid`),
  KEY `FK4udflk9tj1gxcfoifq6ya3gud` (`supplierid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `invoice_buying` */

insert  into `invoice_buying`(`id`,`invoice_date`,`invoicestatusid`,`special_remarks`,`supplierid`) values 
(11,'2023-02-21 23:00:00',1,'Pozvati da potvrdis licno pre nego sto zvanicno posaljes nalog. Srecko Grujic',3),
(12,'2023-02-10 23:00:00',2,'Serija pantalona, boja: teget, jedinstveni broj Cr23RtW',2),
(13,'2023-02-11 23:00:00',2,'Naruceno i preuzeto 2 serije pantalona',5);

/*Table structure for table `invoice_item` */

DROP TABLE IF EXISTS `invoice_item`;

CREATE TABLE `invoice_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoicesellingid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `textileid` int(11) DEFAULT NULL,
  `total_cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5mwtlb9ofw6ab91o8ugnsfskv` (`invoicesellingid`),
  KEY `FKbu1jhoggae4i7tgai3b591ojl` (`textileid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `invoice_item` */

insert  into `invoice_item`(`id`,`invoicesellingid`,`quantity`,`textileid`,`total_cost`) values 
(1,3,2,25,20000),
(2,3,2,26,18000);

/*Table structure for table `invoice_selling` */

DROP TABLE IF EXISTS `invoice_selling`;

CREATE TABLE `invoice_selling` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clientid` int(11) DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `invoicestatusid` int(11) DEFAULT NULL,
  `special_remarks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjfas4pvtowqs3ivpevj4t5pcm` (`clientid`),
  KEY `FKrydr2asqmqp96611tpq1n2w5h` (`invoicestatusid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `invoice_selling` */

insert  into `invoice_selling`(`id`,`clientid`,`invoice_date`,`invoicestatusid`,`special_remarks`) values 
(3,1,'2023-02-09 23:00:00',1,'Hitna posiljka 20 komada odela'),
(4,6,'2023-02-15 23:00:00',2,'Posiljka 50 majica dugih rukava. Licno proveriti da li je to stiglo.');

/*Table structure for table `invoice_status` */

DROP TABLE IF EXISTS `invoice_status`;

CREATE TABLE `invoice_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `invoice_status` */

insert  into `invoice_status`(`id`,`description`,`details`) values 
(1,'Obradjena','Izabrati ovaj tip statusa ukoliko je faktura za klijente uradjena/poslata ili ako je faktura za dobavljace uradjena/poslata'),
(2,'Neobradjena','Izabrati ovaj status fakture ako faktura za klijente jos nije uradjena/poslata ili ako faktura za dobavljace jos nije uradjena/poslata');

/*Table structure for table `invoiceb_item` */

DROP TABLE IF EXISTS `invoiceb_item`;

CREATE TABLE `invoiceb_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoicebuyingid` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `textileid` int(11) DEFAULT NULL,
  `total_cost` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1yxvipkntwxma9jpt3e3o9tp0` (`invoicebuyingid`),
  KEY `FK6dt5aug7r5nwwnudiag4xxehw` (`textileid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `invoiceb_item` */

insert  into `invoiceb_item`(`id`,`invoicebuyingid`,`quantity`,`textileid`,`total_cost`) values 
(1,11,10,16,12000);

/*Table structure for table `invoices_textile` */

/*Table structure for table `job_title` */

DROP TABLE IF EXISTS `job_title`;

CREATE TABLE `job_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `job_title` */

insert  into `job_title`(`id`,`description`,`details`) values 
(1,'Izvrsni direktor','Glavni nadredjeni za sve poslove. Tata Srecko'),
(2,'Izvrsni asistent','Pronalazi nove klijente i dobavljace. Organizuje nabavku i isporuku robe. Podnosi izvestaje izvrsnom direktoru'),
(3,'Saradnik u prodaji','Brine se o urednosti robe i objekta. Prati status prozivoda i podnosi izvestaj izvrsnom asistentu. Resava probleme kupaca i vodi racuna o tome da su svi kupci zadovoljni.'),
(4,'Knjigovodja/racunovodja','Obavlja administrativne poslove. Vodi knjige i knjizi sve poslovne dokumentacije u skladu sa racunovodstvenim propisima'),
(5,'Programer','Angazovanje za izradu administrativnog sistema');

/*Table structure for table `location` */

DROP TABLE IF EXISTS `location`;

CREATE TABLE `location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `countryid` int(11) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKs7swryq3x80exyw5x7q9exk4` (`countryid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `location` */

insert  into `location`(`id`,`address`,`city`,`countryid`,`details`) values 
(1,'I srpskog ustanka 29a','Smederevska Palanka',2,'Lokacija butika BILVA'),
(2,'Ulica Bore Stankovica 12','Pancevo',3,'Lokacija gde se nalazi veleprodaja kosulja'),
(3,'Ulica Bore Stankovica 32','Pancevo',3,'Lokacija gde se nalazi veleprodaja farmerica G-star'),
(4,'Stevana Nemanje 21a','Novi Pazar',5,'Nabavka farmerica');

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `role` */

insert  into `role`(`id`,`description`,`details`) values 
(1,'SYSTEM_USER','Ima pristup svim rutama!'),
(4,'USER','Ima pristup samo pocetnoj stranici i kategorijama odece (gornji delovi i donji delovi)');

/*Table structure for table `suplier` */

DROP TABLE IF EXISTS `suplier`;

CREATE TABLE `suplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `locationid` int(11) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKt8u3rjkmjflxsy6wvoh60dryc` (`locationid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `suplier` */

insert  into `suplier`(`id`,`company_name`,`details`,`email`,`full_name`,`locationid`,`phone`) values 
(2,'ESBI','Farmerice za mlade, marke ESBI. Radno vreme ponedeljak 9-17, sreda-petak 9-17, vikendom ne primaju narudzbine!','farmericef@gmail.com','Faris Faric123',4,'062-0222-111'),
(3,'SELTEX','Za nabavku farmerica i kosulja..','seltex@yahoo.com','Sneza T.',2,'063-3333-222'),
(5,'t','novi detalj','t@t','test1123',1,'123');

/*Table structure for table `textile` */

DROP TABLE IF EXISTS `textile`;

CREATE TABLE `textile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acquisition_date` datetime DEFAULT NULL,
  `available_quantity` int(11) NOT NULL,
  `employeeid` int(11) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `piece_price` int(11) NOT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `special_description` varchar(255) DEFAULT NULL,
  `supplierid` int(11) DEFAULT NULL,
  `textilemakeid` int(11) DEFAULT NULL,
  `textilemodelid` int(11) DEFAULT NULL,
  `textilestatusid` int(11) DEFAULT NULL,
  `textiletypeid` int(11) DEFAULT NULL,
  `unique_code` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6nh2ducalvyubf6avumeexerf` (`employeeid`),
  KEY `FKnk65o8cxpml6ghv93qxr27krl` (`supplierid`),
  KEY `FKrt709wk06tuilij9prl3ieedb` (`textilemodelid`),
  KEY `FK5s91h9u6t7440ja6cj38mh646` (`textilestatusid`),
  KEY `FKshv54lyd76vnah4xrtnod54nl` (`textiletypeid`),
  KEY `FKqswl4gbog0wkxgdh824fx55lq` (`textilemakeid`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `textile` */

insert  into `textile`(`id`,`acquisition_date`,`available_quantity`,`employeeid`,`photo`,`piece_price`,`purpose`,`special_description`,`supplierid`,`textilemakeid`,`textilemodelid`,`textilestatusid`,`textiletypeid`,`unique_code`) values 
(16,'2023-01-29 23:00:00',120,1,'t-shirt.jpg',1200,'Gornji deo','ne za sad',2,1,1,1,1,'as234ERtz'),
(18,'2023-02-02 23:00:00',120,1,'sweatshirt-zipp.jpg',1200,'Gornji deo','izmena23',3,2,1,1,3,'as234EEE'),
(19,'2023-01-30 23:00:00',50,1,'jeans.jpg',1200,'Donji deo','izmena',2,1,2,2,8,'as234'),
(23,'2023-01-26 23:00:00',45,7,'sweatshirt.jpg',1700,'Gornji deo','',3,2,2,3,4,'Fr45tTyI'),
(24,'2023-01-21 23:00:00',20,6,'long-sleeve-shirt.jpg',1500,'Gornji deo','Uskoro je potrebno izvrsiti nabavku',3,2,4,3,2,'wE37oO'),
(25,'2022-12-01 23:00:00',50,1,'suit-icon.jpg',12000,'Gornji deo','',3,2,1,2,9,'123Zzz'),
(26,'2023-02-09 23:00:00',20,7,'coat.jpg',7500,'Gornji deo','',2,1,2,3,11,'QeStzI12');

/*Table structure for table `textile_make` */

DROP TABLE IF EXISTS `textile_make`;

CREATE TABLE `textile_make` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `textile_make` */

insert  into `textile_make`(`id`,`description`,`details`) values 
(1,'ESBI','Skuplja marka, za mladje'),
(2,'G-Star','Po nekada se ne moze nabaviti na trzistu');

/*Table structure for table `textile_model` */

DROP TABLE IF EXISTS `textile_model`;

CREATE TABLE `textile_model` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `textile_model` */

insert  into `textile_model`(`id`,`description`,`details`) values 
(1,'Slim fit','Model poprilicno uskog kroja'),
(2,'Regular fit','Modeli normalnog kroja'),
(3,'Baggy fit','Model opustenog kroja'),
(4,'Straight fit','Model ravno secenog kroja');

/*Table structure for table `textile_status` */

DROP TABLE IF EXISTS `textile_status`;

CREATE TABLE `textile_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `textile_status` */

insert  into `textile_status`(`id`,`description`,`details`) values 
(1,'Dovoljna kolicina prozivoda','Nije potrebno uskoro narucivanje. Broj dostupnih proizvoda izmedju 70-130 komada'),
(2,'Kriticna kolicina proizvoda','Uskoro ce biti potrebno naruciti nove serije. Broj dostupnih proizvoda izmedju 10-60 '),
(3,'Nedovoljne kolicina proizvoda','Potrebno je naruciti nove serije proizvoda. Broj dostupnih proizvoda manje od 10 komada'),
(4,'Hitno porucivanje','Za slucaj velike potraznje, ili porudzbine bitnog klijenta');

/*Table structure for table `textile_type` */

DROP TABLE IF EXISTS `textile_type`;

CREATE TABLE `textile_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `textile_type` */

insert  into `textile_type`(`id`,`description`,`details`) values 
(1,'Majica - kratak rukav','Kolekcija prolece/leto, jesen/zima, raspolozive velicine u seriji S, M, L, XL, 2XL, 3XL, 4XL'),
(2,'Majica - dug rukav','Kolekcija prolece/jesen/zima, raspolozive velicine u seriji S, M, L, XL'),
(3,'Dukserica - zip','Kolekcija jesen/zima, raspolozive velicine u seriji S, M, L, XL'),
(4,'Dukserica - sa kapuljacom','Kolekcija jesen/zima, raspolozive velicine u seriji S, M, L, XL, 2XL'),
(5,'Kosulja','Raspolozive velicine u seriji XS, S, M, L, XL'),
(6,'Majica - batal','Raspolozive velicine u seriji od XL do 6XL'),
(7,'Pantalone','Raspolozive velicine u seriji 28, 30, 32, 34, 36, 38, 40'),
(8,'Farmerice','Raspolozive velicine u seriji 28, 30, 32, 34, 36, 38, 40'),
(9,'Odelo','Raspolozive velicine u seriji 48, 50, 52, 56, 58, 60, 62'),
(10,'Punjena jakna','Kolekcija jesen/zima, raspolozive velicine u seriji S, M, L, XL, 2XL'),
(11,'Kaput','Kolekcija prolece/jesen/zima, raspolozive velicine u seriji S, M, L, XL');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user` */

insert  into `user`(`id`,`firstname`,`lastname`,`password`,`username`) values 
(1,'Srecko','Grujic','sreki','srecko'),
(2,'Biljana','Grujic','bilja','biljana'),
(3,'Radmilo','Stojanovic','rasa','radmilo'),
(4,'Zeljana','Grujic','zeljana','zeljana'),
(5,'Zeljko','Grujic','gruja','zeki'),
(6,'Vladimir','Vidic','vlaki','vlaki'),
(8,'Mileva','Stojanovic','milevka','milevka'),
(9,'Branko','Brankovic','brane','brane'),
(10,'Biljana','Garic','123biljaa','bilja');

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKa68196081fvovjhkek5m97n3y` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `user_role` */

insert  into `user_role`(`user_id`,`role_id`) values 
(1,1),
(10,4);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
