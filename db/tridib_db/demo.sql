-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: localhost    Database: demo
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

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

--
-- Table structure for table `demo_category`
--

DROP TABLE IF EXISTS `demo_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `parent_cat_id` int(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_by` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(200) NOT NULL,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo_category`
--

LOCK TABLES `demo_category` WRITE;
/*!40000 ALTER TABLE `demo_category` DISABLE KEYS */;
INSERT INTO `demo_category` VALUES (1,'Factory & industrial ',0,1,'','2019-07-08 06:28:21','','2019-07-08 06:28:21'),(2,'Event Mng.',0,1,'','2019-07-08 07:17:15','','2019-07-08 07:17:15'),(3,'E-Commerce',0,1,'','2019-07-08 07:17:15','','2019-07-08 07:17:15'),(4,'Gift Shop',3,1,'','2019-07-08 07:18:12','','2019-07-08 07:18:12'),(5,'Meat, Vegetable',3,1,'','2019-07-08 07:18:12','','2019-07-08 07:18:12'),(6,'Flower',3,1,'','2019-07-08 07:18:51','','2019-07-08 07:18:51'),(7,'Electronics',3,1,'','2019-07-08 07:18:51','','2019-07-08 07:18:51'),(8,'Fashion',3,1,'','2019-07-08 07:19:23','','2019-07-08 07:19:23'),(9,'Musical Instruments',3,1,'','2019-07-08 07:19:23','','2019-07-08 07:19:23'),(10,'Services',0,1,'','2019-07-08 07:19:45','','2019-07-08 07:19:45'),(11,'Car Rental',10,1,'','2019-07-08 07:20:56','','2019-07-08 07:20:56'),(12,'Car Parts',10,1,'','2019-07-08 07:20:56','','2019-07-08 07:20:56'),(13,'Transportation',10,1,'','2019-07-08 07:21:53','','2019-07-08 07:21:53'),(14,'Car Dealer',10,1,'','2019-07-08 07:21:53','','2019-07-08 07:21:53'),(15,'Plumbing',10,1,'','2019-07-08 07:22:35','','2019-07-08 07:22:35'),(16,'Car Repair',10,1,'','2019-07-08 07:22:35','','2019-07-08 07:22:35'),(17,'Education',0,1,'','2019-07-08 07:22:50','','2019-07-08 07:22:50'),(18,'Training Centers',17,1,'','2019-07-08 07:23:32','','2019-07-08 07:23:32'),(19,'School',17,1,'','2019-07-08 07:23:32','','2019-07-08 07:23:32'),(20,'LMS',17,1,'','2019-07-08 07:23:54','','2019-07-08 07:23:54'),(21,'Kindergarten',17,1,'','2019-07-08 07:23:54','','2019-07-08 07:23:54'),(22,'Hotel & Restaurent',0,1,'','2019-07-08 07:24:08','','2019-07-08 07:24:08'),(23,'Hotel Booking',22,1,'','2019-07-08 07:24:48','','2019-07-08 07:24:48'),(24,'Rastaurant, Bar',22,1,'','2019-07-08 07:24:48','','2019-07-08 07:24:48'),(25,'Cafe',22,1,'','2019-07-08 07:25:12','','2019-07-08 07:25:12'),(26,'Chef',22,1,'','2019-07-08 07:25:12','','2019-07-08 07:25:12'),(27,'Travel Agency',0,1,'','2019-07-08 07:25:35','','2019-07-08 07:25:35'),(28,'Tour and Travel',27,1,'','2019-07-08 07:26:05','','2019-07-08 07:26:05'),(29,'Photography',0,1,'','2019-07-08 07:26:21','','2019-07-08 07:26:21'),(30,'Health Care',0,1,'','2019-07-08 07:27:40','','2019-07-08 07:27:40'),(31,'Gym',30,1,'','2019-07-08 07:28:43','','2019-07-08 07:28:43'),(32,'Doctor, Hospital',30,1,'','2019-07-08 07:28:43','','2019-07-08 07:28:43'),(33,'Construction',0,1,'','2019-07-08 07:29:19','','2019-07-08 07:29:19'),(34,'Inetrior',0,1,'','2019-07-08 07:29:45','','2019-07-08 07:29:45'),(35,'Furniture',34,1,'','2019-07-08 07:30:16','','2019-07-08 07:30:16'),(36,'Real Estate',0,1,'','2019-07-08 07:30:30','','2019-07-08 07:30:30'),(37,'Rental',36,1,'','2019-07-08 07:30:57','','2019-07-08 07:30:57'),(38,'Sports',0,1,'','2019-07-08 07:31:31','','2019-07-08 07:31:31'),(39,'Law',0,1,'','2019-07-08 07:31:31','','2019-07-08 07:31:31');
/*!40000 ALTER TABLE `demo_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `demo_listing`
--

DROP TABLE IF EXISTS `demo_listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `demo_listing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `demo_name` varchar(100) NOT NULL,
  `demo_image` varchar(200) NOT NULL,
  `demo_link` varchar(200) NOT NULL,
  `categories` varchar(500) NOT NULL,
  `demo_descriptions` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=234 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `demo_listing`
--

LOCK TABLES `demo_listing` WRITE;
/*!40000 ALTER TABLE `demo_listing` DISABLE KEYS */;
INSERT INTO `demo_listing` VALUES (1,'Classic','classic.jpg','http://themes.semicolonweb.com/html/canvas/index.html','10,17,18,','A classic design layout for website to setup a basic website layout'),(2,'Real Estate','real-estate2.jpg','http://themes.semicolonweb.com/html/canvas/demo-real-estate-3.html','36,33','Design to create a Real Estate site. It contains each and every possible aspect that a website has.'),(3,'CoWorking','coworking.jpg','http://themes.semicolonweb.com/html/canvas/demo-coworking.html','10','It a simple website design to create a website having purpose in mind to create a site of Coworkers.'),(4,'Recipes','recipes.jpg','http://themes.semicolonweb.com/html/canvas/demo-recipes.html','5,30','This web template is basically for designing a website of Cookery, where recipies can be added accordingly from user\'s end.'),(5,'Movers','movers.jpg','http://themes.semicolonweb.com/html/canvas/demo-movers.html','3,10','It is a web template mainly designed for packers and movers, who want to run their business online.'),(6,'Conference','conference.jpg','http://themes.semicolonweb.com/html/canvas/demo-conference.html','1','Its a corporate layout for designing any official website of any company. Visit this page to see all of its features.'),(7,'Non-Profit','nonprofit.jpg','http://themes.semicolonweb.com/html/canvas/demo-nonprofit.html','','It is a non-profit website, designed for organizations which are willing to work with no profit. Visit to know more.'),(8,'SEO','seo.jpg','http://themes.semicolonweb.com/html/canvas/demo-seo.html','','It is a SEO specialist website for any indivisual or organization who want to chowcase their skills, online in a very creative mannar. Visit now to see all of it\'s features.'),(9,'Articles','article.jpg','http://themes.semicolonweb.com/html/canvas/demo-articles.html','','This is blog website layout design. Designed specially for bloggers. Visit us to see more.'),(10,'Course','course.jpg','http://themes.semicolonweb.com/html/canvas/demo-course.html','17,18,19,20,21','This layout is designed for institutions, training centers for showcasing their services online.'),(11,'Shop','shop.jpg','http://themes.semicolonweb.com/html/canvas/demo-shop.html','3,22,23,24,25','A eCommerce web layout designed for all vendors who want to run their business online. It includes aditional cart options, add to wishlist and many more. Visit now to find them all.'),(12,'News/Magazine','news.jpg','http://themes.semicolonweb.com/html/canvas/demo-news.html','10','Its a web layout designed for news media industry and publishers. It contains all the feaures of media industry and publishers like, trending news or top selling magazines. Visit us to find more.'),(13,'Hosting','hosting.jpg','http://themes.semicolonweb.com/html/canvas/demo-hosting.html','','This is a hosting layout designed for those who want to provide hosting service to their customers. Visit now to see all features of it.'),(14,'Bike','bike.jpg','http://themes.semicolonweb.com/html/canvas/demo-bike.html','38','This website layout has a wide range of persons like bike dealers, race organizers, auctioners of bike and many more. Please visit now to find all the features.'),(15,'Photographer','photographer.jpg','http://themes.semicolonweb.com/html/canvas/demo-photographer.html','29','This web layout is designed for photograpy purpose. It is for who want to showcase photography content whether it is products or services. Visit now to find all of its features.'),(16,'Headphones','headphones.jpg','http://themes.semicolonweb.com/html/canvas/demo-headphones.html','7,9','A website layout for creating website which has main content sound. Visit now to find more.'),(17,'Gym','gym.jpg','http://themes.semicolonweb.com/html/canvas/demo-gym.html','30,31,38','When building a fitness website, you do not really need to start from scratch anymore. On top of that, you do not need to hire someone to do it for you nor spend big bucks to make it happen. In fact, you need to pay nothing and you need to invest a small amount of time and energy to realize the desired web space.'),(18,'Modern Blog','modern-blog.jpg','http://themes.semicolonweb.com/html/canvas/demo-modern-blog.html','17','If you are looking for a free simple blog website template, Modern Blog is one of the best solutions you can find on the market today. Clean, minimal, mobile-ready and entirely responsive web design!'),(19,'Business','business.jpg','http://themes.semicolonweb.com/html/canvas/demo-business.html','1','As a professional business company, one of your greatest challenges is how to present a professional face to your clients. So we bring you our new template Business to enhance your presentation!'),(20,'Car','car.jpg','http://themes.semicolonweb.com/html/canvas/demo-car.html','11,12,14,16,27,28,38','Modern and exactly to the point automotive template Car comes with three diverse homepage for three different businesses. It is the clean and customizable template which can be used for car dent, car wash and general car service businesses and keeping these three businesses in mind the template is designed. However, the template can also be used for other business purposes which include selling car accessories with blogging support and more.'),(21,'Construction','construction.jpg','http://themes.semicolonweb.com/html/canvas/demo-construction.html','1,33','Bringing a business online is a must in today’s world. Adding your website to the online local business list, helps you to grow your business and get more new customers easily. Having a website for your business is a part of your business strategy. Building a construction website is a pain to implement every posible way of showcasing your business. So, we bring our Construction web template.'),(22,'Travel','travel.jpg','http://themes.semicolonweb.com/html/canvas/demo-travel.html','13,27,28',' As a travel agency or a tours organizer, Travel is here to take care of your web space with a great collection of handy features. You will have a lot of fun using it since Taxa is user-friendly and structured smartly and conveniently. Sure, the basic knowledge is necessary but other than that that’s all you need to work with Travel.'),(23,'Medical','medical.jpg','http://themes.semicolonweb.com/html/canvas/demo-medical.html','30,32','Create a strong and lasting first impression on your potential clients with this template, a medical website template. Present all your services, doctors and other information on the web in the best possible light.'),(24,'App Landing','app-landing.jpg','http://themes.semicolonweb.com/html/canvas/demo-app-landing.html','3',''),(25,'Restaurant','restaurant.jpg','http://themes.semicolonweb.com/html/canvas/demo-restaurant.html','22,23,24,25,26,27,28',''),(26,'Barber','barber.jpg','http://themes.semicolonweb.com/html/canvas/demo-barber.html','',''),(27,'eCommerce','ecommerce.jpg','http://themes.semicolonweb.com/html/canvas/demo-ecommerce.html','3',''),(28,'Pet','pet.jpg','http://themes.semicolonweb.com/html/canvas/demo-pet.html','30',''),(29,'Resume','resume.jpg','http://themes.semicolonweb.com/html/canvas/demo-resume.html','',''),(30,'Photography','photography.jpg','http://themes.semicolonweb.com/html/canvas/demo-photography.html','29',''),(31,'Interior Design','interior-design.jpg','http://themes.semicolonweb.com/html/canvas/demo-interior-design.html','34',''),(32,'Writer','writer.jpg','http://themes.semicolonweb.com/html/canvas/demo-writer.html','',''),(33,'Cafe','cafe.jpg','http://themes.semicolonweb.com/html/canvas/demo-cafe.html','25',''),(34,'Spa','spa.jpg','http://themes.semicolonweb.com/html/canvas/demo-spa.html','30',''),(35,'Media Agency','media-agency.jpg','http://themes.semicolonweb.com/html/canvas/demo-media-agency.html','',''),(36,'Agency','agency.jpg','http://themes.semicolonweb.com/html/canvas/demo-agency.html','10',''),(37,'xmas','xmas.jpg','http://themes.semicolonweb.com/html/canvas/demo-xmas.html','4',''),(38,'Corporate 1','corporate1.jpg','http://themes.semicolonweb.com/html/canvas/index-corporate.html','10',''),(39,'Corporate 2','corporate2.jpg','http://themes.semicolonweb.com/html/canvas/index-corporate-2.html','10',''),(40,'Corporate 3','corporate3.jpg','http://themes.semicolonweb.com/html/canvas/index-corporate-3.html','10',''),(41,'Corporate 4','corporate4.jpg','http://themes.semicolonweb.com/html/canvas/index-corporate-4.html','10',''),(42,'Portfolio 1','portfolio1.jpg','http://themes.semicolonweb.com/html/canvas/index-portfolio-2.html','10',''),(43,'Portfolio 2','portfolio2.jpg','http://themes.semicolonweb.com/html/canvas/index-portfolio-3.html','10',''),(44,'Portfolio 3','portfolio3.jpg','http://themes.semicolonweb.com/html/canvas/index-portfolio-4.html','10',''),(45,'Home Blog','homeblog.jpg','http://themes.semicolonweb.com/html/canvas/index-blog.html','',''),(46,'eCommerce 1','ecommerce1.jpg','http://themes.semicolonweb.com/html/canvas/index-shop.html','3',''),(47,'eCommerce 2','ecommerce2.jpg','http://themes.semicolonweb.com/html/canvas/index-shop-2.html','3',''),(48,'Magazine 1','magazine1.jpg','http://themes.semicolonweb.com/html/canvas/index-magazine-3.html','10',''),(49,'Magazine 2','magazine2.jpg','http://themes.semicolonweb.com/html/canvas/index-magazine.html','10',''),(50,'Magazine 3','magazine3.jpg','http://themes.semicolonweb.com/html/canvas/index-magazine-2.html','10',''),(51,'OnePage Default','onepagedefault.jpg','http://themes.semicolonweb.com/html/canvas/index-onepage.html','10',''),(52,'OnePage SubMenu','onepagesubmenu.jpg','http://themes.semicolonweb.com/html/canvas/index-onepage-2.html','10',''),(53,'OnePage Dots Menu','onepagedotsmenu.jpg','http://themes.semicolonweb.com/html/canvas/index-onepage-3.html','10',''),(54,'Wedding','wedding.jpg','http://themes.semicolonweb.com/html/canvas/index-wedding.html','2',''),(55,'Restaurant','restaurants.jpg','http://themes.semicolonweb.com/html/canvas/index-restaurant.html','24,25,26',''),(56,'Events','events.jpg','http://themes.semicolonweb.com/html/canvas/index-events.html','2',''),(57,'Parallax','parallax.jpg','http://themes.semicolonweb.com/html/canvas/index-parallax.html','',''),(58,'App Showcase','appshowcase.jpg','http://themes.semicolonweb.com/html/canvas/index-app-showcase.html','10',''),(59,'Landing 1','landing1.jpg','http://themes.semicolonweb.com/html/canvas/landing.html','10',''),(60,'Landing 2','landing2.jpg','http://themes.semicolonweb.com/html/canvas/landing-2.html','10',''),(61,'Landing 3','landing3.jpg','http://themes.semicolonweb.com/html/canvas/landing-4.html','10',''),(62,'Landing 4','landing4.jpg','http://themes.semicolonweb.com/html/canvas/landing-5.html','10',''),(63,'Floating Header','floatingheader.jpg','http://themes.semicolonweb.com/html/canvas/header-floating.html','',''),(64,'Default','default.jpg','http://themes.semicolonweb.com/html/canvas/one-page/index.html','',''),(65,'Apartment','apartment.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-apartment.html','33',''),(66,'Outdoors','outdoors.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-outdoors.html','',''),(67,'Frame','frame.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-frame.html','8',''),(68,'Subscription Section','subscriptionsection.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-subscription-section.html','10',''),(69,'Holiday','holiday.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-holiday.html','27,28',''),(70,'Personal','personal.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-personal.html','',''),(71,'Services','services.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-carousel.html','10',''),(72,'Pricing','pricing.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-pricing.html','37',''),(73,'Subscription Page','subscriptionpage.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-subscription.html','10',''),(74,'Register Form','registerform.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-register.html','10',''),(75,'Register Form 2','registerform2.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-register-2.html','10',''),(76,'Landing Page','landingpage.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-device.html','10',''),(77,'Browser Slide','browserslide.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-browser.html','10',''),(78,'Testimonials Form','testimonialsform.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-register-testimonials.html','10',''),(79,'Event Slide','eventslide.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-event.html','2,10',''),(80,'Video Event','videoevent.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-video-event-form.html','2,10',''),(81,'Chart Slide','chartslide.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-chart.html','10',''),(82,'Slider Section','slidersection.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-section-2.html','10',''),(83,'Text Rotator Section','textrotatorsection.jpg','http://themes.semicolonweb.com/html/canvas/one-page/op-section.html','10',''),(84,'DEFAULT THEME','splash_home_theme.jpg','https://themes.muffingroup.com/betheme/','',''),(85,'DJ 2','splash_dj2.jpg','https://themes.muffingroup.com/be/dj2/','2,9',''),(86,'PHOTOGRAPHY 2','splash_photography2.jpg','https://themes.muffingroup.com/be/photography2/','29',''),(87,'CODE 2','splash_code2.jpg','https://themes.muffingroup.com/be/code2/','',''),(88,'BAR 3','splash_bar3.jpg','https://themes.muffingroup.com/be/bar3/','23,24',''),(89,'DENTIST 3','splash_dentist3.jpg','https://themes.muffingroup.com/be/dentist3/','',''),(90,'EVENT 4','splash_event4.jpg','https://themes.muffingroup.com/be/event4/','2',''),(91,'SITTER 2','splash_sitter2.jpg','https://themes.muffingroup.com/be/sitter2/','',''),(92,'DESIGN 3','splash_design3.jpg','https://themes.muffingroup.com/be/design3/','10',''),(93,'PHOTO 2','splash_photo2.jpg','https://themes.muffingroup.com/be/photo2/','29',''),(94,'PSYCHOLOGIST','splash_psychologist.jpg','https://themes.muffingroup.com/be/psychologist/','32',''),(95,'HOTEL 4','splash_hotel4.jpg','https://themes.muffingroup.com/be/hotel4/','22,23',''),(96,'GYM 3','splash_gym3.jpg','https://themes.muffingroup.com/be/gym3/','30,31',''),(97,'YOGA 3','splash_yoga3.jpg','https://themes.muffingroup.com/be/yoga3/','30',''),(98,'LAB 2','splash_lab2.jpg','https://themes.muffingroup.com/be/lab2/','1,17,19',''),(99,'PIZZA 4','splash_pizza4.jpg','https://themes.muffingroup.com/be/pizza4/','24,25',''),(100,'MECHANIC 5','splash_mechanic5.jpg','https://themes.muffingroup.com/be/mechanic5/','1',''),(101,'MEDIC 3','splash_medic3.jpg','https://themes.muffingroup.com/be/medic3/','30,32',''),(102,'BARBER 3','splash_barber3.jpg','https://themes.muffingroup.com/be/barber3/','',''),(103,'IT SERVICE 2','splash_itservice2.jpg','https://themes.muffingroup.com/be/itservice2/','1,10',''),(104,'TRANSPORT 2','splash_transport2.jpg','https://themes.muffingroup.com/be/transport2/','13,27,28',''),(105,'MECHANIC 4','splash_mechanic4.jpg','https://themes.muffingroup.com/be/mechanic4/','1,10',''),(106,'YACHT','splash_yacht.jpg','https://themes.muffingroup.com/be/yacht/','27,28',''),(107,'SAFARI 2','splash_safari2.jpg','https://themes.muffingroup.com/be/safari2/','27,28',''),(108,'BAKER 2','splash_baker2.jpg','https://themes.muffingroup.com/be/baker2/','',''),(109,'HAIRDRESSER 2','splash_hairdresser2.jpg','https://themes.muffingroup.com/be/hairdresser2/','8',''),(110,'MOUNTAIN GUIDE','splash_mountainguide.jpg','https://themes.muffingroup.com/be/mountainguide/','27,28',''),(111,'EXTREME 2','splash_extreme2.jpg','https://themes.muffingroup.com/be/extreme2/','',''),(112,'EVENT 3','splash_event3.jpg','https://themes.muffingroup.com/be/event3/','2',''),(113,'PRODUCT 4','splash_product4.jpg','https://themes.muffingroup.com/be/product4/','3',''),(114,'RESORT 2','splash_resort2.jpg','https://themes.muffingroup.com/be/resort2/','22,23,27,28',''),(115,'BISTRO 3','splash_bistro3.jpg','https://themes.muffingroup.com/be/bistro3/','',''),(116,'DANCE SCHOOL','splash_danceschool.jpg','https://themes.muffingroup.com/be/danceschool/','2,9,17,18,19',''),(117,'SCIENCE CENTRE','splash_sciencecentre.jpg','https://themes.muffingroup.com/be/sciencecentre/','17,19',''),(118,'POLYGLOT','splash_polyglot.jpg','https://themes.muffingroup.com/be/polyglot/','',''),(119,'INTERIOR 5','splash_interior5.jpg','https://themes.muffingroup.com/be/interior5/','34',''),(120,'CARPENTER 4','splash_carpenter4.jpg','https://themes.muffingroup.com/be/carpenter4/','33,35',''),(121,'COMPANY 4','splash_company4.jpg','https://themes.muffingroup.com/be/company4/','1',''),(122,'CLUB 2','splash_club2.jpg','https://themes.muffingroup.com/be/club2/','',''),(123,'ADVENTURE 2','splash_adventure2.jpg','https://themes.muffingroup.com/be/adventure2/','28',''),(124,'WHISKEY','splash_whiskey.jpg','https://themes.muffingroup.com/be/whiskey/','24',''),(125,'PRODUCT 3','splash_product3.jpg','https://themes.muffingroup.com/be/product3/','3',''),(126,'ORGANIC','splash_organic.jpg','https://themes.muffingroup.com/be/organic/','5',''),(127,'MOVING 3','splash_moving3.jpg','https://themes.muffingroup.com/be/moving3/','27',''),(128,'ARCHITECT 4','splash_architect4.jpg','https://themes.muffingroup.com/be/architect4/','33',''),(129,'ELECTRONICS','splash_electronics.jpg','https://themes.muffingroup.com/be/electronics/','7',''),(130,'TEA 3','splash_tea3.jpg','https://themes.muffingroup.com/be/tea3/','30',''),(131,'HOSTING 2','splash_hosting2.jpg','https://themes.muffingroup.com/be/hosting2/','',''),(132,'COACHING 2','splash_coaching2.jpg','https://themes.muffingroup.com/be/coaching2/','17,18,19',''),(133,'PRODUCT 2','splash_product2.jpg','https://themes.muffingroup.com/be/product2/','3',''),(134,'HEALTHY','splash_healthy.jpg','https://themes.muffingroup.com/be/healthy/','30',''),(135,'DIET 2','splash-diet2.jpg','https://themes.muffingroup.com/be/diet2/','30',''),(136,'BIKER 2','splash-biker2.jpg','https://themes.muffingroup.com/be/biker2/','38',''),(137,'APP 4','splash-app4.jpg','https://themes.muffingroup.com/be/app4/','10',''),(138,'CARPENTER 3','splash-carpenter3.jpg','https://themes.muffingroup.com/be/carpenter3/','33',''),(139,'VIDEO 2','splash-video2.jpg','https://themes.muffingroup.com/be/video2/','',''),(140,'MANICURE 2','splash-manicure2.jpg','https://themes.muffingroup.com/be/manicure2/','30',''),(141,'AD AGENCY 2','splash-adagency2.jpg','https://themes.muffingroup.com/be/adagency2/','10',''),(142,'PRINT 2','splash-print2.jpg','https://themes.muffingroup.com/be/print2/','8',''),(143,'PET','splash-pet.jpg','https://themes.muffingroup.com/be/pet/','30',''),(144,'WEDDING PHOTOS','splash-weddingphotos.jpg','https://themes.muffingroup.com/be/weddingphotos/','29',''),(145,'RESTAURANT 4','splash_restaurant4.jpg','https://themes.muffingroup.com/be/restaurant4/','24,25,26',''),(146,'CATERING','splash_catering.jpg','https://themes.muffingroup.com/be/catering/','22,23,24,26',''),(147,'AERO CLUB','splash_aeroclub.jpg','https://themes.muffingroup.com/be/aeroclub/','30',''),(148,'LOGISTICS 2','splash_logistics2.jpg','https://themes.muffingroup.com/be/logistics2/','13',''),(149,'COSMETICS 2','splash_cosmetics2.jpg','https://themes.muffingroup.com/be/cosmetics2/','30',''),(150,'KIDS','splash_kids.jpg','https://themes.muffingroup.com/be/kids/','21',''),(151,'ASG 2','splash_asg2.jpg','https://themes.muffingroup.com/be/asg2/','',''),(152,'BEAUTY 4','splash_beauty4.jpg','https://themes.muffingroup.com/be/beauty4/','8,30',''),(153,'MODEL 2','splash_model2.jpg','https://themes.muffingroup.com/be/model2/','8',''),(154,'WEDDING DRESSES','splash_weddingdresses.jpg','https://themes.muffingroup.com/be/weddingdresses/','8',''),(155,'SPA 3','splash_spa3.jpg','https://themes.muffingroup.com/be/spa3/','30',''),(156,'BAND 3','splash_band3.jpg','https://themes.muffingroup.com/be/band3/','2,9',''),(157,'GUN RANGE','splash_gunrange.jpg','https://themes.muffingroup.com/be/gunrange/','1',''),(158,'RENOVATE 3','splash_renovate3.jpg','https://themes.muffingroup.com/be/renovate3/','33,34',''),(159,'TAILOR 2','splash_tailor2.jpg','https://themes.muffingroup.com/be/tailor2/','8',''),(160,'CAKES','splash_cakes.jpg','https://themes.muffingroup.com/be/cakes/','24,25',''),(161,'CAR 2','splash_car2.jpg','https://themes.muffingroup.com/be/car2/','11,12,14,16,38',''),(162,'AGENCY 3','splash_agency3.jpg','https://themes.muffingroup.com/be/agency3/','1,10',''),(163,'COFFEE 3','splash_coffee3.jpg','https://themes.muffingroup.com/be/coffee3/','30',''),(164,'SCHOOL 2','splash_school2.jpg','https://themes.muffingroup.com/be/school2/','17,18,19,20',''),(165,'BURGER 2','splash_burger2.jpg','https://themes.muffingroup.com/be/burger2/','24,25',''),(166,'INTERNET 2','splash_internet2.jpg','https://themes.muffingroup.com/be/internet2/','1,10,17',''),(167,'RESTAURANT 3','splash_restaurant3.jpg','https://themes.muffingroup.com/be/restaurant3/','24',''),(168,'CLINIC 3','splash_clinic3.jpg','https://themes.muffingroup.com/be/clinic3/','30',''),(169,'DRONE','splash_drone.jpg','https://themes.muffingroup.com/be/drone/','7',''),(170,'ESTATE 2','splash_estate2.jpg','https://themes.muffingroup.com/be/estate2/','36',''),(171,'BUILDER 2','splash_builder2.jpg','https://themes.muffingroup.com/be/builder2/','1,33',''),(172,'FOOTBALL','splash_football.jpg','https://themes.muffingroup.com/be/football/','38',''),(173,'INSURANCE 2','splash_insurance2.jpg','https://themes.muffingroup.com/be/insurance2/','39',''),(174,'BEAUTY 3','splash_beauty3.jpg','https://themes.muffingroup.com/be/beauty3/','8',''),(175,'INTERIOR 4','splash_interior4.jpg','https://themes.muffingroup.com/be/interior4/','34',''),(176,'RECIPES 2','splash_recipes2.jpg','https://themes.muffingroup.com/be/recipes2/','24,25,26',''),(177,'ERP','splash_erp.jpg','https://themes.muffingroup.com/be/erp/','',''),(178,'LAWYER 4','splash_lawyer4.jpg','https://themes.muffingroup.com/be/lawyer4/','39',''),(179,'MOVIE 2','splash_movie2.jpg','https://themes.muffingroup.com/be/movie2/','9',''),(180,'INTERIOR 3','splash_interior3.jpg','https://themes.muffingroup.com/be/interior3/','34',''),(181,'NAVIGATION','splash_navigation.jpg','https://themes.muffingroup.com/be/navigation/','10',''),(182,'VET 2','splash_vet2.jpg','https://themes.muffingroup.com/be/vet2/','',''),(183,'MINIMAL 2','splash-minimal2.jpg','https://themes.muffingroup.com/be/minimal2','',''),(184,'CREATIVE 3','splash-creative3.jpg','https://themes.muffingroup.com/be/creative3/','',''),(185,'COUNTY','splash_county.jpg','https://themes.muffingroup.com/be/county/','28',''),(186,'COMPANY 3','splash_company2.jpg','https://themes.muffingroup.com/be/company3/','1,10',''),(187,'BAND 2','splash_band2.jpg','https://themes.muffingroup.com/be/band2/','2,9',''),(188,'PRODUCT','splash_product.jpg','https://themes.muffingroup.com/be/product/','3',''),(189,'CRYPTOCURRENCY','splash_cryptocurrency.jpg','https://themes.muffingroup.com/be/cryptocurrency/','',''),(190,'LANDING 2','splash_landing2.jpg','https://themes.muffingroup.com/be/landing2/','10',''),(191,'SUPPLIER','splash_supplier.jpg','https://themes.muffingroup.com/be/supplier/','3',''),(192,'SPORTSMAN','splash_sportsman.jpg','https://themes.muffingroup.com/be/sportsman/','38',''),(193,'BARMAN','splash_barman.jpg','https://themes.muffingroup.com/be/barman/','24',''),(194,'KINDERGARTEN 2','splash_kindergarten2.jpg','https://themes.muffingroup.com/be/kindergarten2/','21',''),(195,'COFFEE 2','splash_coffee2.jpg','https://themes.muffingroup.com/be/coffee2/','30',''),(196,'GYM 2','splash_gym2.jpg','https://themes.muffingroup.com/be/gym2/','30,31',''),(197,'ECO 2','splash_eco2.jpg','https://themes.muffingroup.com/be/eco2/','6',''),(198,'GARDEN 3','splash_garden3.jpg','https://themes.muffingroup.com/be/garden3/','6',''),(199,'FANTASY','splash_fantasy.jpg','https://themes.muffingroup.com/be/fantasy/','',''),(200,'CHURCH 2','splash_church2.jpg','https://themes.muffingroup.com/be/church2/','',''),(201,'FUNERAL HOME','splash_funeralhome.jpg','https://themes.muffingroup.com/be/funeralhome/','33',''),(202,'SECURITY 2','splash_security2.jpg','https://themes.muffingroup.com/be/security2/','10',''),(203,'EVENT 2','splash_event2.jpg','https://themes.muffingroup.com/be/event2/','2',''),(204,'REPAIR 2','splash_repair2.jpg','https://themes.muffingroup.com/be/repair2/','33',''),(205,'THRILLER','splash_thriller.jpg','https://themes.muffingroup.com/be/thriller/','',''),(206,'COMPANY 2','splash_company2.jpg','https://themes.muffingroup.com/be/company2/','1,10',''),(207,'SIMPLE 2','splash_simple2.jpg','https://themes.muffingroup.com/be/simple2/','',''),(208,'ARCHITECT 3','splash_architect3.jpg','https://themes.muffingroup.com/be/architect3/','33',''),(209,'ADVENTURE','splash_adventure.jpg','https://themes.muffingroup.com/be/adventure','28',''),(210,'ACCOUNTANT 3','splash_accountant3.jpg','https://themes.muffingroup.com/be/accountant3','10',''),(211,'UNIVERSE','splash_universe.jpg','https://themes.muffingroup.com/be/universe/','',''),(212,'TEA 2','splash_tea2.jpg','https://themes.muffingroup.com/be/tea2/','30',''),(213,'HAIRDRESSER','splash_hairdresser.jpg','https://themes.muffingroup.com/be/hairdresser/','8',''),(214,'MECHANIC 3','splash_mechanic3.jpg','https://themes.muffingroup.com/be/mechanic3/','33',''),(215,'FITNESS 2','splash_fitness2.jpg','https://themes.muffingroup.com/be/fitness2/','30,31',''),(216,'ACTOR','splash_actor.png','https://themes.muffingroup.com/be/actor/','8',''),(217,'CLOTHING','splash_clothing.jpg','https://themes.muffingroup.com/be/clothing','8',''),(218,'DIETITIAN 2','splash_dietitian2.jpg','https://themes.muffingroup.com/be/dietitian2','30',''),(219,'RESORT','splash_resort.jpg','https://themes.muffingroup.com/be/resort/','22,23,27,28',''),(220,'BAR 2','splash_bar2.jpg','https://themes.muffingroup.com/be/bar2/','24',''),(221,'MUSEUM 2','splash_museum2.jpg','https://themes.muffingroup.com/be/museum2/','36',''),(222,'ACCOUNTANT 2','splash_accountant2.jpg','https://themes.muffingroup.com/be/accountant2/','10',''),(223,'DECOR 2','splash_decor2.jpg','https://themes.muffingroup.com/be/decor2/','',''),(224,'FARM','splash_farm.jpg','https://themes.muffingroup.com/be/farm/','5,6',''),(225,'YOGA 2','splash_yoga2.jpg','https://themes.muffingroup.com/be/yoga2/','30',''),(226,'WEB DEVELOPER','splash_webdeveloper.jpg','https://themes.muffingroup.com/be/webdeveloper/','10',''),(227,'LAWYER 3','splash_lawyer3.jpg','https://themes.muffingroup.com/be/lawyer3/','39',''),(228,'BIRTHDAY','splash_birthday.jpg','https://themes.muffingroup.com/be/birthday/','2',''),(229,'ECO BEEF','splash_ecobeef.jpg','https://themes.muffingroup.com/be/ecobeef/','5',''),(230,'HOTEL 3','splash_hotel3.jpg','https://themes.muffingroup.com/be/hotel3/','22,23,27,28',''),(231,'APP 3','splash_app3.jpg','https://themes.muffingroup.com/be/app3/','10',''),(232,'PHOTOGRAPHY','splash_photography.jpg','https://themes.muffingroup.com/be/photography/','29',''),(233,'ROBOTICS','splash_robotics.jpg','https://themes.muffingroup.com/be/robotics/','','');
/*!40000 ALTER TABLE `demo_listing` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-11 17:02:19
