-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 26, 2020 at 06:18 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

DROP TABLE IF EXISTS `admin_cred`;
CREATE TABLE IF NOT EXISTS `admin_cred` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`id`, `Firstname`, `Email`, `Password`) VALUES
(1, 'Suhrad ', 'suhrad205@gmail.com', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `Username` varchar(30) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(30) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `tabName` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cat_bakery`
--

DROP TABLE IF EXISTS `cat_bakery`;
CREATE TABLE IF NOT EXISTS `cat_bakery` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_bakery`
--

INSERT INTO `cat_bakery` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`) VALUES
(1, 'BA0001', 'Almond Cookies', 'images/Bakery/almond_cookies.jpg', 'freshly baked almond cookies', 100, 100),
(2, 'BA0002', 'Bread Crumbs', 'images/Bakery/bread_crumbs.jpg', 'Fine bread crumbs', 99, 100),
(3, 'BA0003', 'Bread Sticks.', 'images/Bakery/bread_sticks.jpg', 'Fresh bread sticks', 100, 100),
(4, 'BA0004', 'Chocolate Cake', 'images/Bakery/chocolate_cake.jpg', 'Fresh Chocolate Cake', 100, 100),
(5, 'BA0005', 'Chocolate Cookies', 'images/Bakery/chocolate_cookies.jpg', 'Fresh Chocolate Cookies', 100, 100),
(6, 'BA0006', 'Cookies', 'images/Bakery/cookies.jpg', 'Fresh Cookies', 100, 100),
(7, 'BA0007', 'Garlic Bread', 'images/Bakery/garlic_bread.jpg', 'Fresh Garlic Bread', 100, 100),
(8, 'BA0008', 'Ladi Pav', 'images/Bakery/ladi_pav.jpg', 'Fresh Ladi Pav', 100, 100),
(9, 'BA0009', 'Naan Khataai', 'images/Bakery/nankhatai.jpg', 'Fresh Naan Khataai', 100, 100),
(10, 'BA0010', 'Veg Cake', 'images/Bakery/veg_cakes.jpg', 'Fresh Cake', 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `cat_beverages`
--

DROP TABLE IF EXISTS `cat_beverages`;
CREATE TABLE IF NOT EXISTS `cat_beverages` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_beverages`
--

INSERT INTO `cat_beverages` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`) VALUES
(1, 'BE0001', 'Bisleri mineral water', 'images/Beverages/bisleri-mineral-water.jpg', 'Fresh Bisleri mineral water', 100, 200),
(2, 'BE0002', 'cadbury bournvita health drink', 'images/Beverages/cadbury-bournvita-health-drink.jpg', 'Refreshing cadbury bournvita health drink', 100, 200),
(3, 'BE0003', 'hersheys syrup chocolate', 'images/Beverages/hersheys-syrup-chocolate.jpg', 'Refreshing hersheys syrup chocolate', 100, 200),
(4, 'BE0004', 'Kinley Club Soda', 'images/Beverages/kinley-club-soda.jpg', 'Refreshing Kinley Club Soda', 100, 200),
(5, 'BE0005', 'Nescafe Coffee Classic', 'images/Beverages/nescafe-coffee-classic.jpg', 'Refreshing Nescafe Coffee Classic', 100, 200),
(6, 'BE0006', 'Pepsi Soft Drink Mini Can', 'images/Beverages/pepsi-soft-drink-mini-can.jpg', 'Refreshing Pepsi Soft Drink Mini Can', 100, 200),
(7, 'BE0007', 'Real Fruit juice Litchi', 'images/Beverages/real-fruit-juice-litchi.jpg', 'Refreshing Pepsi Soft Drink Mini Can', 100, 200),
(8, 'BE0008', 'Taj Mahal Tea', 'images/Beverages/taj-mahal-tea.jpg', 'Refreshing Taj Mahal Tea', 100, 200),
(9, 'BE0009', 'Tropicana 100 juice orange', 'images/Beverages/tropicana-100-juice-orange.jpg', 'Refreshing Tropicana 100 juice orange', 100, 200),
(10, 'BE0010', 'Tropicana Delight Fruit Juice Mixed Fruit', 'images/Beverages/tropicana-delight-fruit-juice-mixed-fruit.jpg', 'Refreshing Tropicana Delight Fruit Juice Mixed Fruit', 100, 200);

-- --------------------------------------------------------

--
-- Table structure for table `cat_brandedfood`
--

DROP TABLE IF EXISTS `cat_brandedfood`;
CREATE TABLE IF NOT EXISTS `cat_brandedfood` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_brandedfood`
--

INSERT INTO `cat_brandedfood` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`) VALUES
(1, 'BR0001', 'Britannia 50 50 maska chaska ', 'images/Branded Food/britannia-50-50-maska-chaska-biscuits.jpg', 'Branded Britannia 50 50 maska chaska Biscuits', 300, 50),
(2, 'BR0002', 'Britannia Biscuits little hearts', 'images/Branded Food/britannia-biscuits-little-hearts.jpg', 'Branded Britannia Biscuits little hearts', 300, 50),
(3, 'BR0003', 'Cadbury Biscuits Oreo Vanila', 'images/Branded Food/cadbury-biscuits-oreo-vanila.jpg', 'Branded Cadbury Biscuits Oreo Vanila', 300, 50),
(4, 'BR0004', 'Cadbury Dairy Milk', 'images/Branded Food/cadbury-dairy-milk.jpg', 'Branded Cadbury Dairy Milk', 300, 50),
(5, 'BR0005', 'Chings Hakka Noodles veg', 'images/Branded Food/chings-hakka-noodles-veg.jpg', 'Branded Chings Hakka Noodles veg', 300, 50),
(6, 'BR0006', 'Kelloggs Corn Flakes', 'images/Branded Food/kelloggs-corn-flakes.jpg', 'Branded Kelloggs Corn Flakes', 300, 50),
(7, 'BR0007', 'Kissan fresh tomato ketchup', 'images/Branded Food/kissan-fresh-tomato-ketchup.jpg', 'Branded Kissan fresh tomato ketchup', 300, 50),
(8, 'BR0008', 'Kissan Mixed Fruit Jam', 'images/Branded Food/kissan-mixed-fruit-jam.jpg', 'Branded Kissan Mixed Fruit Jam', 300, 50),
(9, 'BR0009', 'Maggi Noodles Masala', 'images/Branded Food/maggi-noodles-masala.jpg', 'Branded Maggi Noodles Masala', 300, 50),
(10, 'BR0010', 'Patanjali Honey', 'images/Branded Food/patanjali-honey.jpg', 'Branded Patanjali Honey', 300, 50);

-- --------------------------------------------------------

--
-- Table structure for table `cat_fruit`
--

DROP TABLE IF EXISTS `cat_fruit`;
CREATE TABLE IF NOT EXISTS `cat_fruit` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_fruit`
--

INSERT INTO `cat_fruit` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`) VALUES
(1, 'FV0001', 'apple', 'images/Fruits&veggies/apple.jpg', 'Fresh Apple', 96, 20),
(2, 'FV0002', 'water-melon', 'images/Fruits&veggies/water-melon.jpg', 'Fresh Apple', 53, 20),
(3, 'FV0003', 'banana', 'images/Fruits&veggies/banana.jpg', 'Fresh Apple', 98, 20),
(4, 'FV0004', 'beetroot', 'images/Fruits&veggies/beetroot.jpg', 'Fresh Apple', 100, 20),
(5, 'FV0005', 'brinjal', 'images/Fruits&veggies/brinjal.jpg', 'Fresh Apple', 100, 20),
(6, 'FV0006', 'pomegranate', 'images/Fruits&veggies/pomegranate.jpg', 'Fresh Apple', 100, 20),
(7, 'FV0007', 'carrot', 'images/Fruits&veggies/carrot.jpg', 'Fresh Apple', 100, 20),
(8, 'FV0008', 'cauliflower', 'images/Fruits&veggies/cauliflower.jpg', 'Fresh Apple', 100, 20),
(9, 'FV0009', 'chilli-green', 'images/Fruits&veggies/chilli-green.jpg', 'Fresh Apple', 99, 20),
(10, 'FV0010', 'coconut', 'images/Fruits&veggies/coconut.jpg', 'Fresh Apple', 100, 20),
(11, 'FV0011', 'coriander', 'images/Fruits&veggies/coriander.jpg', 'Fresh Apple', 100, 20),
(12, 'FV0012', 'cucumber', 'images/Fruits&veggies/cucumber.jpg', 'Fresh Apple', 100, 20),
(13, 'FV0013', 'ginger', 'images/Fruits&veggies/ginger.jpg', 'Fresh Apple', 100, 20),
(14, 'FV0014', 'kiwi', 'images/Fruits&veggies/kiwi.jpg', 'Fresh Apple', 100, 20),
(15, 'FV0015', 'ladies finger', 'images/Fruits&veggies/ladies finger.jpg', 'Fresh Apple', 100, 20),
(16, 'FV0016', 'lemon', 'images/Fruits&veggies/lemon.jpg', 'Fresh Apple', 100, 20),
(17, 'FV0017', 'onion', 'images/Fruits&veggies/onion.jpg', 'Fresh Apple', 100, 20),
(18, 'FV0018', 'palak', 'images/Fruits&veggies/palak.jpg', 'Fresh Apple', 100, 20),
(19, 'FV0019', 'potato', 'images/Fruits&veggies/potato.jpg', 'Fresh Apple', 100, 20),
(20, 'FV0020', 'tomato', 'images/Fruits&veggies/tomato.jpg', 'Fresh Apple', 100, 20);

-- --------------------------------------------------------

--
-- Table structure for table `cat_grocery`
--

DROP TABLE IF EXISTS `cat_grocery`;
CREATE TABLE IF NOT EXISTS `cat_grocery` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_grocery`
--

INSERT INTO `cat_grocery` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`) VALUES
(1, 'G0001', 'Ghee', 'images/Grocery/ghee.jpg', 'Fresh Ghee', 94, 100),
(2, 'G0002', 'Oil', 'images/Grocery/oil.jpg', 'Fresh oil', 94, 100),
(3, 'G0003', 'Rice', 'images/Grocery/rice.jpg', 'Fresh rice', 94, 100),
(4, 'G0004', 'Sugar', 'images/Grocery/sugar.jpg', 'Gleeful sugar', 100, 100),
(5, 'G0005', 'Toor Daal', 'images/Grocery/toordaal.jpg', 'nutricious toordaal', 100, 100),
(6, 'G0006', 'turmeric powder', 'images/Grocery/turmericpow.jpg', 'rich turmeric powder', 99, 100),
(7, 'G0007', 'wheat flour', 'images/Grocery/wheat-flour.jpg', 'fresh wheat flour', 99, 100);

-- --------------------------------------------------------

--
-- Table structure for table `cat_meat`
--

DROP TABLE IF EXISTS `cat_meat`;
CREATE TABLE IF NOT EXISTS `cat_meat` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_meat`
--

INSERT INTO `cat_meat` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`) VALUES
(1, 'M0001', 'chicken breast boneless', 'images/Meat/chicken_breast_boneless.jpg', 'fresh chicken breast boneless', 300, 300),
(2, 'M0002', 'chicken burger patty', 'images/Meat/chicken_burger_patty.jpg', 'fresh chicken burger patty', 300, 300),
(3, 'M0003', 'chicken liver', 'images/Meat/chicken_liver.jpg', 'fresh chicken liver', 300, 300),
(4, 'M0004', 'chicken mince', 'images/Meat/chicken_mince.jpg', 'fresh chicken mince', 300, 300),
(5, 'M0005', 'chicken salami masala', 'images/Meat/chicken-salami-masala.jpg', 'fresh chicken salami masala', 300, 300),
(6, 'M0006', 'chicken sheek kabab', 'images/Meat/chicken_sheek_kabab.jpg', 'fresh chicken sheek kabab', 300, 300),
(7, 'M0007', 'chicken spicy salami', 'images/Meat/chicken_spicy_salami.jpg', 'fresh chicken spicy salami', 300, 300),
(8, 'M0008', 'chicken without skin', 'images/Meat/chicken_without_skin.jpg', 'fresh chicken without skin', 300, 300),
(9, 'M0009', 'nuggets chicken', 'images/Meat/nuggets_chicken.jpg', 'fresh nuggets chicken', 300, 300),
(10, 'M0010', 'popcorn chicken', 'images/Meat/popcorn_chicken.jpg', 'fresh popcorn chicken', 300, 300);

-- --------------------------------------------------------

--
-- Table structure for table `cat_personalcare`
--

DROP TABLE IF EXISTS `cat_personalcare`;
CREATE TABLE IF NOT EXISTS `cat_personalcare` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `product_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `quant_avai` int(200) NOT NULL,
  `price` int(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cat_personalcare`
--

INSERT INTO `cat_personalcare` (`id`, `product_id`, `name`, `image`, `description`, `quant_avai`, `price`) VALUES
(1, 'PE0001', 'Dove conditioner', 'images/Personalcare/dove-conditioner-oxygen-moisture.jpg', 'Dove conditioner', 200, 400),
(2, 'PE0002', 'Dove bathing bar', 'images/Personalcare/dove-cream-beauty-bathing-bar.jpg', 'Dove bathing bar', 200, 400),
(3, 'PE0003', 'Muscle Resource', 'images/Personalcare/four-fountains-labs-muscle-resource.jpg', 'Muscle Resource', 200, 400),
(4, 'PE0004', 'He icy collection arctic', 'images/Personalcare/he-icy-collection-arctic.jpg', 'He icy collection arctic', 200, 400),
(5, 'PE0005', 'Lakme face cream', 'images/Personalcare/lakme-face-cream-complexion-care-color-transform-beige.jpg', 'Lakme face cream', 200, 400),
(6, 'PE0006', 'Ogx thickening fiber cream', 'images/Personalcare/ogx-thickening-fiber-cream-strength-body-bamboo-fiber-full-6oz.jpg', 'Ogx thickening fiber cream', 200, 400),
(7, 'PE0007', 'Ogx thickening fiber cream', 'images/Personalcare/ogx-thickening-fiber-cream-strength-body-bamboo-fiber-full-6oz.jpg', 'Ogx thickening fiber cream', 200, 400),
(8, 'PE0008', 'olay skin cream', 'images/Personalcare/olay-skin-cream-regenerist-advanced-anti-aging-micro-sculpting-wrinkle-revolutio', 'olay skin cream', 200, 400),
(9, 'PE0009', 'olay anti ageing cream', 'images/Personalcare/olay-total-effect-7-in-1-anti-ageing-day-cream-normal-spf-15.jpg', 'olay skin cream', 200, 400),
(10, 'PE0010', 'Soap', 'images/Personalcare/soap.jpg', 'Soap', 200, 400);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE IF NOT EXISTS `orderdetails` (
  `orderNo` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` varchar(10000) NOT NULL,
  `cat_select` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `cat_name`, `image`, `description`, `cat_select`) VALUES
(1, 'Fruit & Vegetables', 'Fruits&Vegetables.jpg', 'Buy Fruits and vegetables Online!!!', 'cat_fruit'),
(2, 'Grocery', 'Grocery & Staples.jpg', 'Buy Groceries Online!!!', 'cat_grocery'),
(3, 'Bread & Dairy', 'Bread Dairy & Eggs.jpg', 'Buy Bakery and Dairy Products Online!!!', 'cat_bakery'),
(4, 'Beverages', 'Beverages.jpg', 'Buy Beverages Online!!!', 'cat_beverages'),
(5, 'Branded Food', 'Branded food.jpg', 'Buy Branded Food Online!!!', 'cat_brandedfood'),
(6, 'Personal Care', 'Personal Care-1.jpg', 'Buy Personal care products  Online!!!', 'cat_personalcare'),
(7, 'Meat', 'Meat.jpg', 'Buy Meat and Seafood Online!!!', 'cat_meat');

-- --------------------------------------------------------

--
-- Table structure for table `userorders`
--

DROP TABLE IF EXISTS `userorders`;
CREATE TABLE IF NOT EXISTS `userorders` (
  `Username` varchar(100) NOT NULL,
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `totalAmount` int(11) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `Firstname` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Firstname`, `Email`, `Password`, `DOB`, `Address`) VALUES
(16, 'Suhrad Makwana', 'Suhrad@gmail.com', '25f9e794323b453885f5181f1b624d0b', '2000-04-01', 'Chitra GIDC,, Pressquatar Housing society,Plot no.198,, \"Aashirwad\"'),
(17, 'Test', 'test@gmail.com', 'test', '0000-00-00', 'Password - test'),
(25, 'Tirth', 'thakkartirth12@gmail.com', 'tirth', '2000-05-12', 'Anand');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
