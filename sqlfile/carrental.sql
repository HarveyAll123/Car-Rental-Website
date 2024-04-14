-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2024 at 09:53 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `carrental`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '5c428d8875d2948607f3e3fe134d71b4', '2017-06-18 12:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `VehicleId` int(11) DEFAULT NULL,
  `FromDate` varchar(20) DEFAULT NULL,
  `ToDate` varchar(20) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `userEmail`, `VehicleId`, `FromDate`, `ToDate`, `message`, `Status`, `PostingDate`) VALUES
(1, 'test@gmail.com', 2, '22/06/2017', '25/06/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 1, '2017-06-19 20:15:43'),
(2, 'test@gmail.com', 3, '30/06/2017', '02/07/2017', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco', 2, '2017-06-26 20:15:43'),
(3, 'test@gmail.com', 4, '02/07/2017', '07/07/2017', 'Lorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ipsumLorem ', 0, '2017-06-26 21:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrands`
--

CREATE TABLE `tblbrands` (
  `id` int(11) NOT NULL,
  `BrandName` varchar(120) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbrands`
--

INSERT INTO `tblbrands` (`id`, `BrandName`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Maruti', '2017-06-18 16:24:34', '2017-06-19 06:42:23'),
(2, 'BMW', '2017-06-18 16:24:50', NULL),
(3, 'Audi', '2017-06-18 16:25:03', NULL),
(4, 'Nissan', '2017-06-18 16:25:13', NULL),
(5, 'Toyota', '2017-06-18 16:25:24', NULL),
(7, 'Marutiu', '2017-06-19 06:22:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Residence No. 55, Ryongsong Residence																', 'NK.SupremeLeader@gmail.com', '+850 14045');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Harry Den', 'webhostingamigo@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '																				<p class=\"MsoNormal\"><b style=\"font-size: 1em;\"><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">1. General</span></b><br></p><p class=\"MsoNormal\">- These Terms and Conditions govern the rental of vehicles\r\nfrom Auto RentID. By booking a vehicle through our platform, you agree to be\r\nbound by these terms and any additional terms specific to your rental\r\nagreement.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">2. Eligibility<o:p></o:p></span></b></p><p class=\"MsoNormal\">- You must be at least 21 years old to rent a vehicle. A\r\nvalid driver’s license and an acceptable form of payment are required at the\r\ntime of rental.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">3. Rental Period</span></b><b><span style=\"font-size:13.0pt;\r\nline-height:107%\"><o:p></o:p></span></b></p><p class=\"MsoNormal\">- The rental period is defined in your booking confirmation.\r\nLate returns may be subject to additional charges.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">4. Fees and Payments</span></b><b><span style=\"font-size:13.0pt;\r\nline-height:107%\"><o:p></o:p></span></b></p><p class=\"MsoNormal\">- All fees will be disclosed during the booking process.\r\nThis includes rental rates, insurance options, and any applicable taxes or\r\nsurcharges. Payments are due at the time of vehicle pickup unless otherwise\r\nspecified.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">5. Cancellations and Changes</span></b><b><span style=\"font-size:\r\n13.0pt;line-height:107%\"><o:p></o:p></span></b></p><p class=\"MsoNormal\">- Reservations can be canceled or modified up to 24 hours\r\nbefore the scheduled pickup time without penalty. Changes or cancellations made\r\nwithin 24 hours of pickup may incur a fee.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">6. Insurance and Liability</span></b><b><span style=\"font-size:13.0pt;\r\nline-height:107%\"><o:p></o:p></span></b></p><p class=\"MsoNormal\">- Basic vehicle insurance is included with every rental.\r\nAdditional coverage options are available and can be selected during the\r\nbooking process. You are responsible for any damage to or loss of the rental\r\nvehicle during the rental period, subject to the terms of the chosen insurance\r\npolicy.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">7. Vehicle Use</span></b><b><span style=\"font-size:13.0pt;\r\nline-height:107%\"><o:p></o:p></span></b></p><p class=\"MsoNormal\">- The rented vehicle shall not be used: <o:p></o:p></p><p class=\"MsoNormal\">&nbsp; - for illegal\r\npurposes,<o:p></o:p></p><p class=\"MsoNormal\">&nbsp; - to tow or push\r\nanything,<o:p></o:p></p><p class=\"MsoNormal\">&nbsp; - in a race or\r\ncompetition,<o:p></o:p></p><p class=\"MsoNormal\">&nbsp; - under the\r\ninfluence of drugs or alcohol,<o:p></o:p></p><p class=\"MsoNormal\">&nbsp; - by anyone other\r\nthan the designated drivers listed in the rental agreement.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">8. Maintenance and Breakdowns</span></b><b><span style=\"font-size:\r\n13.0pt;line-height:107%\"><o:p></o:p></span></b></p><p class=\"MsoNormal\">- The renter agrees to take reasonable care of the vehicle,\r\nincluding checking oil levels, tire pressures, and coolant levels during the\r\nrental period. In the event of a breakdown, contact Auto RentID immediately.\r\nAssistance will be provided according to the terms of your rental agreement.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">9. Return Policy</span></b><b><span style=\"font-size:13.0pt;\r\nline-height:107%\"><o:p></o:p></span></b></p><p class=\"MsoNormal\">- The vehicle must be returned with the same amount of fuel\r\nas at the start of the rental and in a clean condition. Failure to do so may\r\nresult in additional charges.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">10. Disputes</span></b><b><span style=\"font-size:13.0pt;line-height:\r\n107%\"><o:p></o:p></span></b></p><p class=\"MsoNormal\">- Any disputes arising out of or in connection with the\r\nrental of a vehicle from Auto RentID shall be resolved in accordance with the\r\nlaws of the jurisdiction where the rental took place.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">11. Changes to Terms and Conditions<o:p></o:p></span></b></p><p class=\"MsoNormal\">- Auto RentID reserves the right to change these terms and\r\nconditions at any time. Such changes will be effective immediately upon posting\r\non our website.<o:p></o:p></p><p class=\"MsoNormal\"><o:p>&nbsp;</o:p></p><p class=\"MsoNormal\"><b><span style=\"font-size:13.0pt;line-height:107%;\r\ncolor:red\">12. Contact Us</span></b><b><span style=\"font-size:13.0pt;\r\nline-height:107%\"><o:p></o:p></span></b></p><p align=\"justify\">\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n</p><p class=\"MsoNormal\">- For any questions or concerns regarding these Terms and\r\nConditions, please contact our customer service team.<o:p></o:p></p>\r\n										\r\n										'),
(2, 'Privacy Policy', 'privacy', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '																				<div style=\"text-align: justify;\"><span style=\"font-size: 14pt; line-height: 107%; font-family: Calibri, sans-serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\">Auto RentID was founded in 2024 by a passionate\r\ngroup of automotive enthusiasts from the computer science students of a leading\r\nuniversity. Driven by our love for cars and technology, we created Auto RentID\r\nto revolutionize the car rental industry. Our mission is to cater to the\r\never-evolving needs of travelers and locals alike, providing a wide range of\r\nhigh-quality, affordable rental cars. We pride ourselves on our innovative\r\nplatform that makes car rental accessible and hassle-free. At Auto RentID, we\r\nare committed to offering exceptional service and the best possible rental\r\nexperience. Join us on the road&nbsp;</span><br></div>\r\n										\r\n										'),
(11, 'FAQs', 'faqs', '																																																																																																				<div style=\"text-align: justify;\"><p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><b><span style=\"font-size:16.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">Car Rental FAQ:</span></b><b><span style=\"font-size: 16pt;\"><o:p></o:p></span></b></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">Booking and Reservation</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">A: How do I book a rental car?&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">B: You can go directly to our office or do an\r\nonline reservation through our website. You need to have an account and be\r\nlogged in first before you can make a reservation.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">A: How long can I rent a car?&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">B: You can rent for a maximum of one month.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">Pricing and Payment</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">A: How do I calculate the car rental\r\nfee?&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">B: Each cars have its own rates and the fee is\r\ncharged per hour.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">A: When should I pay the car rental fee?&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">B: Payment must be completed before receiving\r\nthe car keys.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">A: Can I pay the car rent using a credit card?</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">B: Yes, you can.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">A: What documents do I need for car\r\nrental?&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">B: You will need to bring a photocopy of your\r\nidentity card or family card and valid driver\'s license, email address, and\r\nphone number.&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">A: Do I need to have insurance?&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">B: You could, but it\'s not mandatory. The\r\ninsurance provided is Collision Damage Waiver or Loss Damage Waiver.</span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\"><br></span></p><p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">A: What is the limit of kilometres allowed\r\nduring the rental?&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">B: The limit is unlimited.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">Car Return</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">A: What if I returned the car with a dent? How\r\nmuch should I pay for the damage?</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">B: 250k for small dents. For medium or large\r\ndents, up to 10 million depending on the damage.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">A: Where should I return the rental car?&nbsp;</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">B: You can return it to our office.\r\nAlternatively, for an additional fee, we offer a pick-up service from your\r\nlocation if it\'s within 40 km of our office.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\"><br>\r\n<!--[if !supportLineBreakNewLine]--><br>\r\n<!--[endif]--></span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">A: What happens if I return the car late?</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom: 0cm; line-height: normal; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size:13.0pt;mso-ascii-font-family:\r\nCalibri;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-hansi-font-family:Calibri;\r\nmso-bidi-font-family:Calibri;color:black;mso-font-kerning:0pt;mso-ligatures:\r\nnone;mso-fareast-language:EN-ID\">B: If you return the car late, you\'ll incur\r\ndouble the hourly rate until it\'s returned. Delays exceeding 3 days from the\r\nagreed-upon return date will result in a theft report filed with the\r\nauthorities.</span><span style=\"font-size: 13pt;\"><o:p></o:p></span></p></div>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscribers`
--

CREATE TABLE `tblsubscribers` (
  `id` int(11) NOT NULL,
  `SubscriberEmail` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsubscribers`
--

INSERT INTO `tblsubscribers` (`id`, `SubscriberEmail`, `PostingDate`) VALUES
(1, 'anuj.lpu1@gmail.com', '2017-06-22 16:35:32');

-- --------------------------------------------------------

--
-- Table structure for table `tbltestimonial`
--

CREATE TABLE `tbltestimonial` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `Testimonial` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltestimonial`
--

INSERT INTO `tbltestimonial` (`id`, `UserEmail`, `Testimonial`, `PostingDate`, `status`) VALUES
(1, 'Deustchland@gmail.com', 'I recently rented a car for a family road trip through Auto RentID, and I couldn\'t be happier with the experience. The booking process was a breeze, the car selection was impressive, and the prices were unbeatable. We found the perfect SUV that fit all our luggage and provided a comfortable ride. Thanks, Auto RentID, for making our vacation smooth and memorable!', '2017-06-18 07:44:31', 1),
(2, 'Iraq.Egypt@gmail.com', 'I was nervous about renting a car for the first time, but Auto RentID made the entire process so easy and reassuring. Their team helped me select the perfect car for my needs and budget, and I was pleasantly surprised by how new and clean the car was. I had a fantastic driving experience, and I\'ll definitely be using Auto RentID again for my future car rental needs!', '2017-06-18 07:46:05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL,
  `dob` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Country` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `EmailId`, `Password`, `ContactNo`, `dob`, `Address`, `City`, `Country`, `RegDate`, `UpdationDate`) VALUES
(1, 'Harry Den', 'demo@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2147483647', NULL, NULL, NULL, NULL, '2017-06-17 19:59:27', '2017-06-26 21:02:58'),
(2, 'AK', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '8285703354', NULL, NULL, NULL, NULL, '2017-06-17 20:00:49', '2017-06-26 21:03:09'),
(3, 'Mark K', 'webhostingamigo@gmail.com', 'f09df7868d52e12bba658982dbd79821', '09999857868', '03/02/1990', 'PKL', 'PKL', 'PKL', '2017-06-17 20:01:43', '2017-06-17 21:07:41'),
(4, 'Karl Marx Von Bismarck', 'Deustchland@gmail.com', '5c428d8875d2948607f3e3fe134d71b4', '9999857868', '', 'PKL', 'XYZ', 'XYZ', '2017-06-17 20:03:36', '2024-04-08 06:22:59'),
(5, 'Hassan Al-Banna bin Saddam', 'Iraq.Egypt@gmail.com', 'cbd7cbceadc76d529eba3921446fad4f', '789323546', '04/28/1937', 'Palace', 'Baghdad', 'Iraq', '2024-04-08 06:57:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicles`
--

CREATE TABLE `tblvehicles` (
  `id` int(11) NOT NULL,
  `VehiclesTitle` varchar(150) DEFAULT NULL,
  `VehiclesBrand` int(11) DEFAULT NULL,
  `VehiclesOverview` longtext DEFAULT NULL,
  `PricePerDay` int(11) DEFAULT NULL,
  `FuelType` varchar(100) DEFAULT NULL,
  `ModelYear` int(6) DEFAULT NULL,
  `SeatingCapacity` int(11) DEFAULT NULL,
  `Vimage1` varchar(120) DEFAULT NULL,
  `Vimage2` varchar(120) DEFAULT NULL,
  `Vimage3` varchar(120) DEFAULT NULL,
  `Vimage4` varchar(120) DEFAULT NULL,
  `Vimage5` varchar(120) DEFAULT NULL,
  `AirConditioner` int(11) DEFAULT NULL,
  `PowerDoorLocks` int(11) DEFAULT NULL,
  `AntiLockBrakingSystem` int(11) DEFAULT NULL,
  `BrakeAssist` int(11) DEFAULT NULL,
  `PowerSteering` int(11) DEFAULT NULL,
  `DriverAirbag` int(11) DEFAULT NULL,
  `PassengerAirbag` int(11) DEFAULT NULL,
  `PowerWindows` int(11) DEFAULT NULL,
  `CDPlayer` int(11) DEFAULT NULL,
  `CentralLocking` int(11) DEFAULT NULL,
  `CrashSensor` int(11) DEFAULT NULL,
  `LeatherSeats` int(11) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblvehicles`
--

INSERT INTO `tblvehicles` (`id`, `VehiclesTitle`, `VehiclesBrand`, `VehiclesOverview`, `PricePerDay`, `FuelType`, `ModelYear`, `SeatingCapacity`, `Vimage1`, `Vimage2`, `Vimage3`, `Vimage4`, `Vimage5`, `AirConditioner`, `PowerDoorLocks`, `AntiLockBrakingSystem`, `BrakeAssist`, `PowerSteering`, `DriverAirbag`, `PassengerAirbag`, `PowerWindows`, `CDPlayer`, `CentralLocking`, `CrashSensor`, `LeatherSeats`, `RegDate`, `UpdationDate`) VALUES
(1, '5 Series', 2, 'A luxury sedan built for those who lead – and those who know style is nothing without substance.', 200, 'Petrol', 2024, 5, 'i5-bev.png', 'new-bmw-5-series-2023-backside.jpg', 'BMW_i5_eDrive40_Tanzanite-Blue-metallic_053-scaled.jpg', 'bmw_5series_500.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 11:46:23', '2024-04-08 08:51:53'),
(2, 'X7', 2, 'The BMW X7 is a luxury SUV that can seat seven people and is BMW\'s largest vehicle. It has a luxurious interior, a plush ride, and plenty of interior space. Reviews note the X7 has a high-quality build, swift acceleration, and is comfortable and quiet on the road.', 350, 'Petrol', 2024, 7, 'X7_2024.png', 'X7_Interior.jpg', 'X7.jpg', '2023-bmw-x7-xdrive-40i148-641c5b429bee5.jpg', '', 1, 1, 1, 1, 1, 1, 1, NULL, 1, 1, NULL, NULL, '2017-06-19 16:16:17', '2024-04-08 07:51:31'),
(3, 'GT-R', 4, 'The 2023 Nissan GT-R is a four-passenger coupe with a twin-turbocharged 3.8-liter V6 engine that produces 565 horsepower and 467 lb-ft of torque. ', 500, 'Petrol', 2023, 4, 'nissan1.jpg', 'nissan2.jpg', 'nissan3.jpg', 'NissanGTR-backseat.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 16:18:20', '2024-04-14 07:45:03'),
(4, 'A8L', 3, 'The 2024 Audi A8 L is a five-seater luxury sedan with a sharpened design, including a wider Singleframe grill, more upright side air intakes, and freshly styled headlights. ', 375, 'Petrol', 2024, 5, '2024-audi-a8-102-64b6b2b1ae524.jpg', 'A8New.jpg', 'A82024.jpg', 'audi-a8l-full-rear-view-563470.jpg', '', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-19 16:18:43', '2024-04-08 08:32:40'),
(5, 'Vellfire', 5, 'The 2018 Toyota Vellfire is a luxury minivan with a 2.494 cc V6 engine that produces 180 horsepower and 235 Nm of torque. It has an 8-level DSG transmission, ABS, EBD, and BA technology, and good soundproofing.', 185, 'Petrol', 2018, 7, 'vellfire1.jpg', 'vellfire2.jpg', 'vellfire3.jpg', 'vellfire4.jpg', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2017-06-20 17:57:09', '2024-04-08 08:46:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrands`
--
ALTER TABLE `tblbrands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblbrands`
--
ALTER TABLE `tblbrands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tblsubscribers`
--
ALTER TABLE `tblsubscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbltestimonial`
--
ALTER TABLE `tbltestimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblvehicles`
--
ALTER TABLE `tblvehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
