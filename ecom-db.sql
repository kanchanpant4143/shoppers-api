/*
SQLyog Community Edition- MySQL GUI v8.13 
MySQL - 8.0.26 : Database - shoppers_db
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shoppers_db` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `shoppers_db`;

/*Table structure for table `product_tbl` */

DROP TABLE IF EXISTS `product_tbl`;

CREATE TABLE `product_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKtjufcp0bwuify9meyo4eec0xr` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb3;

/*Data for the table `product_tbl` */

insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (1,'Girlds','Babies','BG-419110951');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (2,'Girlds','Babies','BG-419110952');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (3,'Girlds','Babies','BG-419110953');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (4,'Babyom','Babies','BB-2144746855');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (5,'Babyom','Babies','BB-2144746856');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (6,'Babyom','Babies','BB-2144746857');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (7,'Mommers','Babies','BM-1173639537');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (8,'Mommers','Babies','BM-1173639538');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (9,'Mommers','Babies','BM-1173639539');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (10,'Childer','Babies','BC-989301223');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (11,'Childer','Babies','BC-989301224');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (12,'Childer','Babies','BC-989301225');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (13,'Milkcask','Milk','MM-749337358');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (14,'Milkcask','Milk','MM-749337359');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (15,'Milkcask','Milk','MM-749337360');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (16,'Juice','Milk','MJ-373746709');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (17,'Juice','Milk','MJ-373746710');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (18,'Juice','Milk','MJ-373746711');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (19,'Dairylounge','Milk','MD-543564695');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (20,'Dairylounge','Milk','MD-543564696');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (21,'Dairylounge','Milk','MD-543564697');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (22,'Berrycow','Milk','MB-2093193397');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (23,'Berrycow','Milk','MB-2093193398');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (24,'Berrycow','Milk','MB-2093193399');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (25,'Trand','Sports','ST-348265157');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (26,'Trand','Sports','ST-348265158');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (27,'Trand','Sports','ST-348265159');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (28,'Ballshop','Sports','SB-51995577');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (29,'Ballshop','Sports','SB-51995578');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (30,'Ballshop','Sports','SB-51995579');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (31,'Crumyard','Sports','SC-860550237');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (32,'Crumyard','Sports','SC-860550238');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (33,'Crumyard','Sports','SC-860550239');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (34,'Sportf','Sports','SS-1529984359');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (35,'Sportf','Sports','SS-1529984360');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (36,'Sportf','Sports','SS-1529984361');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (37,'Veganoid','Vegan','VV-1280808854');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (38,'Veganoid','Vegan','VV-1280808855');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (39,'Veganoid','Vegan','VV-1280808856');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (40,'Tarcrop','Vegan','VT-246442909');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (41,'Tarcrop','Vegan','VT-246442910');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (42,'Tarcrop','Vegan','VT-246442911');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (43,'Beanut','Vegan','VB-1890577306');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (44,'Beanut','Vegan','VB-1890577307');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (45,'Beanut','Vegan','VB-1890577308');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (46,'Avocadow','Vegan','VA-1329167330');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (47,'Avocadow','Vegan','VA-1329167331');
insert  into `product_tbl`(`id`,`brand`,`category`,`product_id`) values (48,'Avocadow','Vegan','VA-1329167332');

/*Table structure for table `shelf_tbl` */

DROP TABLE IF EXISTS `shelf_tbl`;

CREATE TABLE `shelf_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `relevancy_score` double DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `shopper_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbfn95va4nxj4xpobufdjfl3ek` (`product_id`),
  KEY `FKs9gljn1majllw2oc3gspphl64` (`shopper_id`),
  CONSTRAINT `FKbfn95va4nxj4xpobufdjfl3ek` FOREIGN KEY (`product_id`) REFERENCES `product_tbl` (`product_id`),
  CONSTRAINT `FKs9gljn1majllw2oc3gspphl64` FOREIGN KEY (`shopper_id`) REFERENCES `shopper_tbl` (`shopper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;

/*Data for the table `shelf_tbl` */

insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (1,31.089209569320897,'MB-2093193398','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (2,55.16626010671777,'VV-1280808856','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (3,73.01492966268303,'MD-543564697','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (4,4.465418091552332,'BB-2144746855','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (5,81.86596372052234,'MB-2093193397','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (6,80.39179367642213,'SC-860550238','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (7,17.06951788069343,'BG-419110952','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (8,67.02308880778921,'BM-1173639537','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (9,5.732323263667915,'MJ-373746710','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (10,82.6173683756812,'SS-1529984359','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (11,83.6325837366619,'MJ-373746711','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (12,6.778058627746741,'BC-989301224','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (13,85.39314011525776,'BB-2144746857','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (14,67.76365858050977,'VA-1329167330','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (15,46.014451739635916,'SB-51995577','S-1000');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (16,64.9399444667783,'MD-543564695','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (17,53.57797793220851,'BB-2144746857','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (18,21.288534107744482,'VT-246442909','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (19,27.014437875539265,'VA-1329167330','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (20,62.1324134409292,'SS-1529984359','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (21,44.137367556050236,'BM-1173639539','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (22,6.856912727184749,'MM-749337360','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (23,39.775934624141605,'ST-348265157','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (24,96.8131613220743,'VB-1890577308','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (25,4.430050876459301,'BG-419110953','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (26,99.38024632323383,'VT-246442911','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (27,2.4611321887394677,'VV-1280808854','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (28,24.346224227541345,'MM-749337358','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (29,58.574240950900524,'MM-749337359','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (30,37.505474308360355,'MD-543564696','S-1001');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (31,19.492734899351294,'VA-1329167330','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (32,52.970581137195005,'BB-2144746855','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (33,71.96790001671006,'SB-51995577','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (34,43.95637045922845,'SC-860550238','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (35,63.53588332610439,'ST-348265158','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (36,28.318408103977355,'VB-1890577306','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (37,96.8270084353957,'MD-543564697','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (38,9.605985097277658,'VV-1280808855','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (39,51.47881070494537,'MM-749337358','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (40,97.79320043226103,'MB-2093193399','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (41,22.951332705537688,'BC-989301223','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (42,42.45475417967195,'BG-419110953','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (43,81.82907115868066,'MD-543564695','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (44,20.116106438128845,'SS-1529984359','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (45,91.64193020313606,'MB-2093193398','S-1002');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (46,9.285784508856453,'MM-749337359','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (47,42.69865877013647,'VB-1890577308','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (48,51.652597645133206,'BB-2144746855','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (49,53.549240984667016,'VB-1890577306','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (50,60.062975207288915,'BG-419110952','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (51,63.844337249273266,'BM-1173639539','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (52,12.045177782886729,'SC-860550238','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (53,62.348573774809225,'MM-749337360','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (54,19.421445338673916,'VT-246442911','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (55,50.23350517638963,'SB-51995578','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (56,76.10965733312545,'BC-989301225','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (57,3.668377020508895,'BB-2144746856','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (58,65.53309644268158,'BM-1173639537','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (59,99.01865852867185,'MM-749337358','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (60,1.0846539140113576,'BC-989301223','S-1003');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (61,87.44404516029063,'BM-1173639537','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (62,82.79179867042755,'VB-1890577307','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (63,73.9644416081247,'VT-246442909','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (64,69.42747936618181,'BB-2144746855','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (65,25.81144046082404,'VB-1890577308','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (66,80.35799873926712,'ST-348265157','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (67,38.30020871138008,'MB-2093193397','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (68,53.008430263420216,'MD-543564696','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (69,38.108616670630326,'MJ-373746709','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (70,31.61708483693215,'VA-1329167332','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (71,36.0226464541305,'SS-1529984359','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (72,66.72664648565359,'MB-2093193399','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (73,2.5494342826014704,'BC-989301225','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (74,91.11862453341534,'MD-543564695','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (75,18.570109269156355,'SC-860550237','S-1004');
insert  into `shelf_tbl`(`id`,`relevancy_score`,`product_id`,`shopper_id`) values (76,30.737805376096695,'SC-860550237','S-1004');

/*Table structure for table `shopper_tbl` */

DROP TABLE IF EXISTS `shopper_tbl`;

CREATE TABLE `shopper_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `shopper_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKpml1dkhgdctcd5h7ncx7b1mq8` (`shopper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

/*Data for the table `shopper_tbl` */

insert  into `shopper_tbl`(`id`,`shopper_id`) values (1,'S-1000');
insert  into `shopper_tbl`(`id`,`shopper_id`) values (2,'S-1001');
insert  into `shopper_tbl`(`id`,`shopper_id`) values (3,'S-1002');
insert  into `shopper_tbl`(`id`,`shopper_id`) values (4,'S-1003');
insert  into `shopper_tbl`(`id`,`shopper_id`) values (5,'S-1004');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
