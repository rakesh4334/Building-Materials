-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 11:01 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopee`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `item_id` int(11) NOT NULL,
  `item_category` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`item_id`, `item_category`,`item_name`, `item_price`, `item_image`) VALUES
(1,'Insulation','Great Stuff Spray Foam Insulation - Gaps and Cracks with Smart Dispenser 12 oz.', 5.00, './assets/products/1.png'), -- NOW()
(2, 'Flooring','Ansley Amber Matte Ceramic Floor and Wall Tile 9 in. x 38 in.', 20.00, './assets/products/2.png'),
(3, 'Wall','Veneer Plaster Base Drywall Panel 3/8 in. x 4 ft. x 8 ft.', 13.00, './assets/products/3.png'),
(4, 'Wall','ProForm All-Purpose Medium Weight Joint Compound 4.5 ga.', 15.00, './assets/products/4.png'),
(5, 'Top-Sale','Fast Setting Concrete Mix 50 lb.', 5.00, './assets/products/5.png'),
(6, 'Cement','Concrete Deck Block 7 in x 11 in. x 11 in.', 5.00, './assets/products/15.png'),
(7, 'Cement','Masonry Brush 6.6 in.', 10.00, './assets/products/23.png'),
(8, 'Cement','5000 Plus High Strength Concrete Mix 80 lb.', 7.00, './assets/products/24.png'),
(9, 'Cement', 'Masonry Bonding Agent 1 gal.', 20.00, './assets/products/20.png'),
(10, 'Cement', '2 ft. 10 in. to 4 ft. 7 in. Adjustable Jack Post', 110.00, './assets/products/22.png'),
(11, 'Wall', 'Aluminum Hawk 12-1/2 in. x 12-1/2 in.', 15.00, './assets/products/29.png'),
(12, 'Wall', 'WonderBoard Lite Backer Board 1/4 in. x 3 ft. x 5 ft.', 10.00, './assets/products/31.png'),
(13, 'Wall', 'Straight-Flex Solid Jointl Tape 2.375 in. x 100 ft.', 30.00, './assets/products/30.png'),
(14, 'Hardware', '0.120 x 3-1/4 in. Galvanized Coil Nail (2000 Pack)', 130.00, './assets/products/16.png'),
(15, 'Hardware', '1/2 in. T50 Stainless Steel Staples (1000 Pack)', 15.00, './assets/products/19.png'),
(16, 'Hardware', '0.27 Caliber Red Strip Load (100 Pack)', 15.00, './assets/products/18.png'),
(17, 'Hardware', 'Round Washer Structural Screws 5/16 in. x 3-1/8 in. (45 Pack)', 25.00, './assets/products/17.png'),
(18, 'Hardware', '3/8 in. Washer - Zinc Plated (100 Pack)', 16.00, './assets/products/37.png'),
(19, 'Framing', 'Strapping Lumber 1 in. x 3 in. x 16 ft.', 10.00, './assets/products/25.png'),
(20, 'Framing', 'Steel Stud 20 GA 1-1/4 in. x 3-5/8 in. x 12 ft.', 15.00, './assets/products/26.png'),
(21, 'Framing','25-Gauge Utility Angle 2 in. x 2 in. x 10 ft.', 13.00, './assets/products/27.png'),
(22, 'Framing','LVL 1-3/4 in. x 9-1/2 in. x 20 ft.', 140.00, './assets/products/28.png'),
(23, 'Framing','Framing Lumber 2 in. x 6 in. x 16 ft.', 15.00, './assets/products/21.png'),
(24, 'Plywood','Standard Sheathing Plywood - 4 ft x 8 ft. 3/4 in. (23/32 in.)', 45.00, './assets/products/33.png'),
(25, 'Plywood','Red Oak Plywood 3/4 in. x 4 ft. x 8 ft.', 80.00, './assets/products/32.png'),
(26, 'Plywood','Water Resistant Tongue & Groove OSB Panel Subfloor - 4ft. x 8 ft. 3/4 in. (23/32 in.)', 75.00, './assets/products/34.png'),
(27, 'Plywood','MDF 3/4 in. x 4 ft. x 8 ft.', 55.00, './assets/products/35.png'),
(28, 'Plywood','Eucalyptus White Hardboard 1/8 in. x 4 ft. x 8 ft.', 20.00, './assets/products/36.png'),
(29, 'Flooring','Large Tile and Stone White Powder Thinset/Medium Bed Mortar 50 lb.', 30.00, './assets/products/38.png'),
(30, 'Flooring','Shenanadoah Waterproof Engineered Click Bamboo Flooring 7 mm x 6.55 in. x 48 in. (21.67 sq. ft./case)', 85.00, './assets/products/39.png'),
(31, 'Flooring','Vintage Pewter Oak Laminate Flooring 10 mm Thick x 7.48 in. x 47.24 in. (19.63 sq. ft./case)', 55.00, './assets/products/40.png'),
(32, 'Flooring','Schluter Ditra Thick Uncoupling Membrane Schluter', 105.00, './assets/products/41.png'),
(33, 'Insulation','R-13 Kraft Faced Fiberglass Insulation - 16 O.C. for 2x4 Wood Studs x 32 ft. Roll (40 sq. ft.)', 25.00, './assets/products/42.png'),
(34, 'Insulation','R-15 Stone Wool Insulation - 24 in. O.C. - Comfortbatt (60 sq. ft.) Comfortbatt', 65.00, './assets/products/43.png'),
(35, 'Insulation','Fire and Sound Guard - Stone Wool Insulation - 16 O.C.for 2x4 Wood Studs - Thermafiber (49 sq. ft.) Thermafiber', 60.00, './assets/products/44.png'),
(36, 'Insulation','FoamSealR Sill Gasket 3-1/2 in. x 50 ft. STYROFOAM', 10.00, './assets/products/45.png'),
(37, 'Electricals','Copper Electrical Cable Gauge 14/3 25 ft. White', 40.00, './assets/products/14.png'),
(38, 'Electricals','Non-Metallic Liquidtight Conduit 3/4 in. x 25 ft.', 35.00, './assets/products/46.png'),
(39, 'Electricals','Duplex Electrical Outlet 20A/125V Self-Test Tamper Resistant GFCI - White', 20.00, './assets/products/47.png'),
(40, 'Electricals','20V Hardwire Smoke Alarm with Hush Button and Battery Backup Kidde', 20.00, './assets/products/48.png'),
(41, 'Electricals','A19 Halogen Light Bulb 60W Equivalent - Dimmable - Soft White (16 Pack)', 20.00, './assets/products/49.png'),
(42, 'Paint','DuPont Tyvek XL No Elastic Disposable Coverall Trimaco', 12.00, './assets/products/9.png'),
(43, 'Paint','Tele-Roller Handle with Cover 35-1/2 in.', 12.00, './assets/products/8.png'),
(44, 'Paint','High-Density Polyester Knit Paint Tray Kit 8 Pieces', 10.00, './assets/products/50.png'),
(45, 'Paint','White Urethane Alkyd Semi-Gloss Enamel Interior/Exterior Paint 5 gal. Behr', 180.00, './assets/products/51.png'),
(46, 'Paint','B-I-N Shellac-Based White Interior Primer and Sealer 5 gal. Zinsser', 225.00, './assets/products/52.png'),
(47, 'Tools','SHOCKWAVE Impact Duty T25 Torx Alloy Steel Screw Driver Bit - (15 /Pack) 2 in.', 10.00, './assets/products/53.png'),
(48, 'Tools','Circular Saw Blade - Framing 5-1/2 in. x 24-Teeth Avanti Pro', 11.00, './assets/products/6.png'),
(49, 'Tools','150 Grit Clamp-On Sanding Sheet 4-1/2 in. x 5-1/2 in. - (6 /Pack)', 5.00, './assets/products/54.png'),
(50, 'Tools','IMPACT XPS #1 Phillips Insert Bit - (5 /Pack) 1 in.', 10.00, './assets/products/55.png'),
(51, 'Tools','IMPACT #2 Philips Bit with Storage Case - (15 /Pack) 1 in.', 15.00, './assets/products/56.png'),
(52, 'Furniture','Colonist Primed MDF 6 Panel Prehung Interior Door 32 in. x 80 in. Left-Hand', 100.00, './assets/products/7.png'),
(53, 'Furniture','Primed Cambridge Smooth MDF Bifold Door 30 in. x 80 in.', 85.00, './assets/products/57.png'),
(54, 'Furniture','Arm Chair.', 110.00, './assets/products/11.png'),
(55, 'Furniture','3-Step Pressure Treated Pine Deck Stair Stringer 6 in. x 6 in.', 20.00, './assets/products/58.png'),
(56, 'Furniture','Wood 4 Seater Dining Table with 3 Chairs and 1 Bench for Living Room', 120.00, './assets/products/59.png'),
(57, 'Latest-Products','Exhaust Hood with Damper - (White) 6 in.', 65.00, './assets/products/61.png'),
(58, 'Latest-Products','Utilatub Laundry Tub Floor Mount 24 in. x 20 in.', 85.00, './assets/products/62.png'),
(59, 'Latest-Products','2-Handle Laundry Faucet Rough Brass.', 40.00, './assets/products/63.png'),
(60, 'Latest-Products','Rubicon 4 in. Centerset 2-Handle Bathroom Faucet.', 120.00, './assets/products/12.png'),
(61, 'Latest-Products','Fine/Line 30 Hydronic Baseboard with Fully Assembled Element and Enclosure - Nu White 72 in..', 85.00, './assets/products/60.png'),
(62, 'Latest-Products','2-Way Steel Wall/Ceiling Register - White 10 in. x 8 in..', 20.00, './assets/products/13.png');


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Daily', 'Tuition', '2020-03-28 13:07:17'),
(2, 'Chandra', 'Rakesh', '2020-03-28 13:07:17');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `cart_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
