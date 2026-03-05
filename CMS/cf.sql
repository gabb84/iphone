--
-- Database: `phpbook-1`
-- This is the first database used in the PHP & MySQL book

---

--
-- Table structure for table `article`
--------------------------------------

CREATE TABLE `article` (
`id` int(11) NOT NULL,
`title` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
`summary` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
`content` text COLLATE utf8mb4_unicode_ci NOT NULL,
`created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
`category_id` int(11) NOT NULL,
`member_id` int(11) NOT NULL,
`image_id` int(11) DEFAULT NULL,
`published` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article`
-----------------------------------

INSERT INTO `article` (`id`, `title`, `summary`, `content`, `created`, `category_id`, `member_id`, `image_id`, `published`) VALUES
(1,'iPhone 15 Pro Review','Complete review of Apple''s flagship iPhone','The iPhone 15 Pro introduces a titanium body that makes the device lighter and stronger. Powered by the A17 Pro chip, it delivers incredible performance and improved camera capabilities for professional photography.','2024-01-01 12:21:03',1,2,1,1),
(2,'Hidden iPhone Features','Features many iPhone users don''t know','Modern iPhones include powerful hidden features such as Back Tap gestures, Live Text, and document scanning that can greatly improve productivity.','2024-01-02 19:44:03',2,2,2,1),
(3,'Understanding iPhone Display','Why Apple displays are among the best','Apple uses advanced OLED displays that produce deep blacks, vivid colors, and excellent brightness levels for watching videos and playing games.','2024-01-03 09:45:52',1,1,3,1),
(4,'Best iPhone Camera Tips','Take better photos with your iPhone','Use gridlines for better composition, adjust exposure manually, and use portrait mode to achieve professional looking photos.','2024-01-04 11:05:35',2,3,4,1),
(5,'Top iPhone Accessories','Best accessories every iPhone user should own','MagSafe chargers, wireless earbuds, and protective cases are some of the most useful accessories that enhance the iPhone experience.','2024-01-05 15:31:16',3,3,NULL,1),
(6,'Fix iPhone Battery Drain','Improve battery life easily','Disable background refresh, lower brightness, and enable Low Power Mode to significantly extend your iPhone battery life.','2024-01-06 21:02:47',4,1,6,1),
(7,'MagSafe Explained','How Apple MagSafe works','MagSafe technology uses magnets inside the iPhone to align chargers and accessories perfectly.','2024-01-07 10:16:22',3,1,7,1),
(8,'Health Features on iPhone','Track your health using Apple tools','The Health app allows users to track workouts, heart rate, sleep patterns and more.','2024-01-08 14:45:49',2,2,8,1),
(9,'Landscape Photography with iPhone','Take stunning landscape photos','Using HDR and shooting during golden hour can dramatically improve landscape photos captured with an iPhone.','2024-01-09 17:09:40',1,1,9,1),
(10,'Choosing the Best iPhone Case','Protect your device','Cases made from silicone, leather, and hybrid plastic provide different levels of protection.','2024-01-10 14:14:40',3,1,10,1),
(11,'Latest Apple Keynote','Highlights from Apple events','Apple keynotes reveal new iPhones and major innovations that shape the smartphone industry.','2024-01-11 18:01:19',1,3,11,1),
(12,'iPhone Design Evolution','How the iPhone design changed','From the original iPhone to modern models, Apple continues to refine its iconic smartphone design.','2024-01-12 11:24:52',1,2,12,1),
(13,'Safari Tips for iPhone','Browse faster and safer','Safari includes powerful privacy protection and efficient tab management features.','2024-01-13 08:44:01',2,2,13,1),
(14,'Listening to Music on iPhone','Enjoy Apple Music anywhere','Apple Music provides millions of songs available instantly on your iPhone.','2024-01-14 13:15:20',2,1,14,1),
(15,'Travel Photography with iPhone','Perfect travel companion','iPhones combine portability and powerful cameras, making them perfect for travel photography.','2024-01-15 20:36:08',1,2,15,1),
(16,'Buying a New iPhone','Choosing the right model','Apple stores allow customers to explore devices and find the best model for their needs.','2024-01-16 11:21:44',1,1,16,1),
(17,'Mobile Gaming on iPhone','Console-level gaming on mobile','Modern iPhones offer powerful GPUs that allow advanced mobile games to run smoothly.','2024-01-17 09:46:31',2,3,17,1),
(18,'Macro Photography','Capture small details','Macro photography allows capturing extremely detailed close-up images with modern iPhones.','2024-01-18 18:05:19',1,1,18,1),
(19,'Industrial Photography with iPhone','Professional photos with a smartphone','Even professionals use iPhones for photography due to the advanced camera sensors.','2024-01-19 11:52:02',1,2,19,1),
(20,'Using iPhone for Business','Boost productivity','From emails to document scanning, iPhones are powerful productivity tools.','2024-01-20 10:04:39',2,2,20,1),
(21,'Night Sky Photography','Capture stars using Night Mode','Night Mode allows the iPhone to capture incredible images even in very low light conditions.','2024-01-21 19:08:11',1,3,21,1),
(22,'Apple Marketing Strategy','How Apple promotes the iPhone','Apple campaigns often highlight the camera quality and premium design of the iPhone.','2024-01-22 08:49:27',1,1,22,1),
(23,'Interior Photography','Take great indoor photos','Smart HDR helps balance lighting conditions indoors.','2024-01-23 13:51:19',1,3,23,1),
(24,'Travel with iPhone','Your all-in-one travel companion','Navigation, communication, and photography make the iPhone essential for travelers.','2024-01-24 20:11:42',1,1,24,1);

--
-- Table structure for table `category`
---------------------------------------

CREATE TABLE `category` (
`id` int(11) NOT NULL,
`name` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
`description` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
`navigation` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
------------------------------------

INSERT INTO `category` (`id`, `name`, `description`, `navigation`) VALUES
(1,'iPhone Models','Latest Apple iPhones',1),
(2,'iOS Tips','Tips and tricks for iPhone',1),
(3,'Accessories','Best accessories for iPhone',1),
(4,'Troubleshooting','Fix common iPhone issues',1);

--
-- Table structure for table `image`
------------------------------------

CREATE TABLE `image` (
`id` int(11) NOT NULL,
`file` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
`alt` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image`
---------------------------------

INSERT INTO `image` (`id`, `file`, `alt`) VALUES
(1,'iphone15pro.jpg','Apple iPhone 15 Pro'),
(2,'iphone-camera.jpg','iPhone camera'),
(3,'iphone-display.jpg','iPhone display'),
(4,'iphone-ios.jpg','iOS interface'),
(6,'iphone-battery.jpg','iPhone battery'),
(7,'iphone-magsafe.jpg','MagSafe charger'),
(8,'iphone-health.jpg','iPhone health app'),
(9,'iphone-landscape.jpg','Landscape photo'),
(10,'iphone-case.jpg','iPhone protective case'),
(11,'iphone-event.jpg','Apple keynote'),
(12,'iphone-design.jpg','iPhone design'),
(13,'iphone-website.jpg','Apple website'),
(14,'iphone-music.jpg','Listening to music'),
(15,'iphone-sea.jpg','Travel photography'),
(16,'iphone-shop.jpg','Apple Store display'),
(17,'iphone-game.jpg','Mobile gaming'),
(18,'iphone-flower.jpg','Macro photo'),
(19,'iphone-industry.jpg','Industrial photography'),
(20,'iphone-business.jpg','Business productivity'),
(21,'iphone-astrophotography.jpg','Night sky photo'),
(22,'iphone-posters.jpg','Apple posters'),
(23,'iphone-interior.jpg','Interior photography'),
(24,'iphone-travel.jpg','Travel photography');

--
-- Table structure for table `member`
-------------------------------------

CREATE TABLE `member` (
`id` int(11) NOT NULL,
`forename` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
`surname` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
`email` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
`password` varchar(254) COLLATE utf8mb4_unicode_ci NOT NULL,
`joined` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
`picture` varchar(254) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `member`
----------------------------------

INSERT INTO `member` (`id`, `forename`, `surname`, `email`, `password`, `joined`, `picture`) VALUES
(1,'Alex','Morgan','[alex@iphonehub.com](mailto:alex@iphonehub.com)','iphn-23jd-82js-992k','2024-01-01 09:00:00','alex.jpg'),
(2,'Sophia','Reyes','[sophia@iphonehub.com](mailto:sophia@iphonehub.com)','iph9-2kdd-3mns-88ka','2024-01-02 10:30:00',NULL),
(3,'Daniel','Park','[daniel@iphonehub.com](mailto:daniel@iphonehub.com)','iphone-88ks-2jsd-33sa','2024-01-03 14:15:00','daniel.jpg');
