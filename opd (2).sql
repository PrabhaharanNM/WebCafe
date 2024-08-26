-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2022 at 06:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opd`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categorieId` int(12) NOT NULL,
  `categorieName` varchar(255) NOT NULL,
  `categorieDesc` text NOT NULL,
  `categorieCreateDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categorieId`, `categorieName`, `categorieDesc`, `categorieCreateDate`) VALUES
(1, 'Brewed', 'Luckily, there are plenty of different ways to brew your coffee and they tend to depend on your personal preference.\r\n\r\n', '2021-03-17 18:16:28'),
(2, 'Roasts', 'These are light, medium, dark and extra dark. Every other roast type will fall somewhere into this list and will be considered a sub-type or subclassification', '2021-03-17 18:17:14'),
(3, 'Iced and cold coffee', 'Cold coffees and even iced coffees that can be great if you’re facing a hot day but need a bit of a pick-me-up to help you get through', '2021-03-17 18:17:43'),
(4, 'Espresso Based', 'What if you like espresso but you want to try something a little more unique? Well then, you’ll want to try out these couple drinks that are a little bit different and give you slightly different flavors.\r\n\r\n', '2021-03-17 18:19:10'),
(5, 'Creamed', 'Determine the various amount and style of cream used in your coffee', '2021-03-17 21:58:58'),
(6, 'Beaned ', 'Based on the coffee bean source plant choose your coffee ', '2021-03-18 07:55:28'),
(7, 'Length', 'Based on the size you want determine the length that is long or short', '2021-03-18 08:06:30');

-- --------------------------------------------------------

--
-- Table structure for table `coffee`
--

CREATE TABLE `coffee` (
  `coffeeId` int(12) NOT NULL,
  `coffeeName` varchar(255) NOT NULL,
  `coffeePrice` int(12) NOT NULL,
  `coffeeDesc` text NOT NULL,
  `coffeeCategorieId` int(12) NOT NULL,
  `coffeePubDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coffee`
--

INSERT INTO `coffee` (`coffeeId`, `coffeeName`, `coffeePrice`, `coffeeDesc`, `coffeeCategorieId`, `coffeePubDate`) VALUES
(1, 'Espresso ', 99, 'These tiny shots pack a flavorful punch of concentrated caffeine.\r\n', 1, '2021-03-17 21:03:26'),
(2, 'Latte', 199, 'To make a latte, the barista will start with a single or double shot of espresso.', 1, '2021-03-17 21:20:58'),
(3, 'Cappuccino', 149, 'In the cappuccino, the espresso, steamed milk, and foam are all added in equal quantities. \r\n\r\n', 1, '2021-03-17 21:22:07'),
(4, 'Mocha', 249, 'The mocha or mochaccino is a drink fit for royals and any chocolate lover’s dream.\r\n', 1, '2021-03-17 21:23:05'),
(5, 'Flat White', 149, 'The flat white is similar to a cappuccino but drops the layer of milk foam and the sprinkle of chocolate or cinnamon\r\n', 2, '2021-03-17 21:23:48'),
(6, 'Frappuccino', 319, 'The first cold coffee on this list, a frappuccino, is made by pouring a shot of espresso, followed by a layer of milk, and then a layer of ice\r\n', 2, '2021-03-17 21:24:38'),
(7, 'Cold Brew\r\n', 299, 'Unlike other cold coffees that are brewed hot and then kept over ice, the preparation method for cold brew is entirely unique', 2, '2021-03-17 21:25:42'),
(8, 'Ristretto', 199, 'For coffee drinkers who enjoy espressos so much that they can never seem to get enough, a ristretto may be the next logical step up.', 3, '2021-03-17 21:26:31'),
(9, 'Breve', 299, 'The breve is a rich drink suitable for those who want something sweet and creamy for their beverage', 3, '2021-03-17 21:28:06'),
(10, 'Long Macchiato\r\n', 219, 'Similar to some other drinks in this list, the long macchiato is made with espresso serving as the base', 3, '2021-03-17 21:27:21'),
(11, 'Galao', 149, 'The galao is very similar to the latte; however, this one originates from Portugal and brings its own unique spin on coffe', 4, '2021-03-17 21:28:49'),
(12, 'Lungo', 349, 'The lungo is another variation on espresso that serves a slightly different role than regular espresso\r\n', 4, '2021-03-17 21:29:41'),
(13, 'Red Eye', 199, 'Red-eye is made of a base of espresso followed by a thick layer of traditionally brewed coffee', 4, '2021-03-17 21:34:37'),
(14, 'Macchiato', 249, 'Macchiato is very similar to a simple espresso. However, it has one crucial difference; the addition of a layer of steamed milk', 4, '2021-03-17 21:35:31'),
(15, 'Vienna', 249, 'The Vienna is a drink made by using two shots of espresso as the base. This is then followed by a thick and generous layer of whipped cream\r\n', 5, '2021-03-17 21:36:36'),
(16, 'Gibraltar', 399, 'Firstly, the double punch espresso is guaranteed to leave the drinker with a caffeine high that will keep them alert for hours to come. Secondly, this unique dairy combination of steamed milk and milk foam gives Gibraltar', 5, '2021-03-17 21:37:21'),
(17, 'Cortado', 319, 'The cortado can have a base of anything from two to four shots of espresso.', 5, '2021-03-17 21:38:13'),
(18, 'Piccolo', 249, 'The piccolo itself is a simple beverage. Simple start with a shot of espresso as the base and layer on top some foamed milk. ', 5, '2021-03-17 21:39:49'),
(19, 'Doppio', 199, 'Doppio is sometimes also simply known as a double espresso. This is because, in Italian, Doppio means ‘double.’ As the name suggests, this beverage is made entirely of two shots of espresso', 6, '2021-03-17 21:40:58'),
(20, 'Americano', 349, 'To get an Americano, all you do is pour a shot of espresso and follow this up with the addition of some scalding hot water. ', 6, '2021-03-17 21:41:49'),
(21, 'Robusta', 99, 'Robusta coffee comes from the coffee plant Contilon, which originates from Central and Western Africa', 6, '2021-03-17 21:44:44'),
(22, 'Liberica', 149, 'Liberica you’ll find a floral or even fruity aroma as well as a full body. They also have a relatively smoky or even woody flavor that’s quite distinctive', 7, '2021-03-17 21:45:34'),
(23, 'Lungo', 99, 'The opposite of a ristretto is a lungo, which is typically double the shot volume.\r\n\r\n', 7, '2021-03-17 21:46:21'),
(24, 'Excelsa', 99, 'Excelsa beans are a little more common, though still not much.', 7, '2021-03-17 21:47:07'),
(25, 'Noisette\r\n', 99, 'The noisette is another that is similar to a doppio, because it’s a double shot of espresso.', 7, '2021-03-17 21:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `orderId` int(21) NOT NULL DEFAULT 0 COMMENT 'If problem is not related to the order then order id = 0',
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactId`, `userId`, `email`, `phoneNo`, `orderId`, `message`, `time`) VALUES
(1, 7, 'dhanaprabha2003@gmail.com', 9087654321, 2, 'the coffee is too good to be real', '2022-07-04 14:43:58');

-- --------------------------------------------------------

--
-- Table structure for table `contactreply`
--

CREATE TABLE `contactreply` (
  `id` int(21) NOT NULL,
  `contactId` int(21) NOT NULL,
  `userId` int(23) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `deliveryBoyName` varchar(35) NOT NULL,
  `deliveryBoyPhoneNo` bigint(25) NOT NULL,
  `deliveryTime` int(200) NOT NULL COMMENT 'Time in minutes',
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `coffeeId` int(21) NOT NULL,
  `itemQuantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `orderId`, `coffeeId`, `itemQuantity`) VALUES
(5, 3, 10, 1),
(6, 3, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipCode` int(21) NOT NULL,
  `phoneNo` bigint(21) NOT NULL,
  `amount` int(200) NOT NULL,
  `paymentMode` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=cash on delivery, \r\n1=online ',
  `orderStatus` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0' COMMENT '0=Order Placed.\r\n1=Order Confirmed.\r\n2=Preparing your Order.\r\n3=Your order is on the way!\r\n4=Order Delivered.\r\n5=Order Denied.\r\n6=Order Cancelled.',
  `orderDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `userId`, `address`, `zipCode`, `phoneNo`, `amount`, `paymentMode`, `orderStatus`, `orderDate`) VALUES
(1, 2, 'wrvwergvwsetgvb, gvwetvwsrtbv', 456123, 1234567890, 278, '0', '0', '2022-07-04 11:28:20'),
(2, 7, 'qwertyuiop, thirumangalam', 98765, 9812345678, 448, '0', '0', '2022-07-04 14:42:04'),
(3, 7, '23,2nd street , ceg', 623456, 4835798435, 418, '0', '0', '2022-07-04 15:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `sitedetail`
--

CREATE TABLE `sitedetail` (
  `tempId` int(11) NOT NULL,
  `systemName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `contact1` bigint(21) NOT NULL,
  `contact2` bigint(21) DEFAULT NULL COMMENT 'Optional',
  `address` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(21) NOT NULL,
  `username` varchar(21) NOT NULL,
  `firstName` varchar(21) NOT NULL,
  `lastName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `userType` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=user\r\n1=admin',
  `password` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `phone`, `userType`, `password`, `joinDate`) VALUES
(5, 'dfghj', 'dfgh', 'iuyt', 'hamsavarshinib11@gmail.com', 1234567899, '0', '$2y$10$Pt.y8MNs.EIaBGK2h67GcevY9lIM1WGtoCVq0W0ZcLcFk3PXBJ8n.', '2022-07-04 14:06:14'),
(6, 'pqwlkqs', 'bfc', 'hjg', 'hamsavarshinib@gmail.com', 9087654321, '0', '$2y$10$wKi16MOEHHTdDPf365V56OzaEjwdiUWzEdcgrmx8faqr1riTPhUIq', '2022-07-04 14:06:50'),
(7, 'hamsa', 'ham', 'saa', 'dhanaprabha2003@gmail.com', 9087654321, '0', '$2y$10$yYNSEWjtK8OPUzzHoD3uou9BhyzlcpzIljVeerhu9uBqNl3qK/xNq', '2022-07-04 14:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `viewcart`
--

CREATE TABLE `viewcart` (
  `cartItemId` int(11) NOT NULL,
  `coffeeId` int(11) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `viewcart`
--

INSERT INTO `viewcart` (`cartItemId`, `coffeeId`, `itemQuantity`, `userId`, `addedDate`) VALUES
(3, 29, 1, 2, '2022-07-04 11:28:54'),
(4, 11, 1, 4, '2022-07-04 13:22:11'),
(5, 2, 1, 4, '2022-07-04 13:22:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categorieId`);
ALTER TABLE `categories` ADD FULLTEXT KEY `categorieName` (`categorieName`,`categorieDesc`);

--
-- Indexes for table `coffee`
--
ALTER TABLE `coffee`
  ADD PRIMARY KEY (`coffeeId`);
ALTER TABLE `coffee` ADD FULLTEXT KEY `coffeeName` (`coffeeName`,`coffeeDesc`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `contactreply`
--
ALTER TABLE `contactreply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `sitedetail`
--
ALTER TABLE `sitedetail`
  ADD PRIMARY KEY (`tempId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `viewcart`
--
ALTER TABLE `viewcart`
  ADD PRIMARY KEY (`cartItemId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categorieId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `coffee`
--
ALTER TABLE `coffee`
  MODIFY `coffeeId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactreply`
--
ALTER TABLE `contactreply`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sitedetail`
--
ALTER TABLE `sitedetail`
  MODIFY `tempId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `viewcart`
--
ALTER TABLE `viewcart`
  MODIFY `cartItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
