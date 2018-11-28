-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2018 at 09:21 PM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koppel_it_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(24, 14, 46, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Notebooks', 'notebooks'),
(2, 'Desktop PC', 'desktop-pc'),
(3, 'Tablets', 'tablets'),
(4, 'Smart Phones', ''),
(5, 'Monitors', 'monitors'),
(6, 'Processors', 'processors'),
(7, 'Motherboards', 'motherboards'),
(8, 'RAM', 'ram'),
(9, 'HDD', 'hdd'),
(10, 'SSD', 'ssd'),
(11, 'Videocards', 'videocards');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(21, 1, 20, 1),
(22, 2, 46, 1),
(23, 2, 47, 1),
(24, 3, 51, 4),
(25, 4, 56, 5),
(26, 4, 66, 4),
(27, 4, 58, 2),
(28, 5, 42, 1),
(29, 5, 9, 1),
(30, 5, 59, 1),
(31, 5, 48, 1),
(32, 5, 60, 5),
(33, 6, 41, 1),
(34, 7, 61, 1),
(35, 8, 51, 1),
(36, 8, 64, 5),
(37, 9, 7, 1),
(38, 10, 12, 1),
(39, 11, 58, 1),
(40, 12, 46, 1),
(41, 13, 55, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(2, 1, 'MICROSOFT Surface Pro 4 & Typecover - 128 GB', '<p>Surface Pro 4 powers through everything you need to do, while being lighter than ever before</p>\r\n\r\n<p>The 12.3 PixelSense screen has extremely high contrast and low glare so you can work through the day without straining your eyes</p>\r\n\r\n<p>keyboard is not included and needed to be purchased separately</p>\r\n\r\n<p>Features an Intel Core i5 6th Gen (Skylake) Core,Wireless: 802.11ac Wi-Fi wireless networking; IEEE 802.11a/b/g/n compatible Bluetooth 4.0 wireless technology</p>\r\n\r\n<p>Ships in Consumer packaging.</p>\r\n', 'microsoft-surface-pro-4-typecover-128-gb', 799, 'microsoft-surface-pro-4-typecover-128-gb.jpg', '2018-05-10', 3),
(4, 1, 'LENOVO Ideapad 320s-14IKB 14\" Laptop - Grey', '<p>- Made for portability with a slim, lightweight chassis design&nbsp;<br />\r\n<br />\r\n- Powerful processing helps you create and produce on the go&nbsp;<br />\r\n<br />\r\n- Full HD screen ensures crisp visuals for movies, web pages, photos and more&nbsp;<br />\r\n<br />\r\n- Enjoy warm, sparkling sound courtesy of two Harman speakers and Dolby Audio&nbsp;<br />\r\n<br />\r\n- Fast data transfer and high-quality video connection with USB-C and HDMI ports&nbsp;<br />\r\n<br />\r\nThe Lenovo&nbsp;<strong>IdeaPad 320s-14IKB 14&quot; Laptop</strong>&nbsp;is part of our Achieve range, which has the latest tech to help you develop your ideas and work at your best. It&#39;s great for editing complex documents, business use, editing photos, and anything else you do throughout the day.</p>\r\n', 'lenovo-ideapad-320s-14ikb-14-laptop-grey', 399, 'lenovo-ideapad-320s-14ikb-14-laptop-grey.jpg', '2018-05-10', 3),
(5, 3, 'APPLE 9.7\" iPad - 32 GB, Gold', '<p>9.7 inch Retina Display, 2048 x 1536 Resolution, Wide Color and True Tone Display</p>\r\n\r\n<p>Apple iOS 9, A9X chip with 64bit architecture, M9 coprocessor</p>\r\n\r\n<p>12 MP iSight Camera, True Tone Flash, Panorama (up to 63MP), Four-Speaker Audio</p>\r\n\r\n<p>Up to 10 Hours of Battery Life</p>\r\n\r\n<p>iPad Pro Supports Apple Smart Keyboard and Apple Pencil</p>\r\n', 'apple-9-7-ipad-32-gb-gold', 339, 'apple-9-7-ipad-32-gb-gold.jpg', '2018-11-16', 1),
(7, 3, 'APPLE 10.5\" iPad Pro - 64 GB, Space Grey (2017)', '<p>4K video recording at 30 fps</p>\r\n\r\n<p>12-megapixel camera</p>\r\n\r\n<p>Fingerprint resistant coating</p>\r\n\r\n<p>Antireflective coating</p>\r\n\r\n<p>Face Time video calling</p>\r\n', 'apple-10-5-ipad-pro-64-gb-space-grey-2017', 619, 'apple-10-5-ipad-pro-64-gb-space-grey-2017.jpg', '2018-11-16', 1),
(8, 1, 'ASUS Transformer Mini T102HA 10.1\" 2 in 1 - Silver', '<p>Versatile Windows 10 device with keyboard and pen included, 2-in-1 functionality: use as both laptop and tablet.Update Windows periodically to ensure that your applications have the latest security settings.</p>\r\n\r\n<p>All day battery life, rated up to 11 hours of video playback; 128GB Solid State storage. Polymer Battery.With up to 11 hours between charges, you can be sure that Transformer Mini T102HA will be right there whenever you need it. You can charge T102HA via its micro USB port, so you can use a mobile charger or any power bank with a micro USB connector.</p>\r\n', 'asus-transformer-mini-t102ha-10-1-2-1-silver', 549.99, 'asus-transformer-mini-t102ha-10-1-2-1-silver.jpg', '0000-00-00', 0),
(9, 2, 'PC SPECIALIST Vortex Core Lite Gaming PC', '<p>- Top performance for playing eSports and more&nbsp;<br />\r\n<br />\r\n- NVIDIA GeForce GTX graphics deliver smooth visuals&nbsp;<br />\r\n<br />\r\n- GeForce Experience delivers updates straight to your PC&nbsp;<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Core Lite&nbsp;</strong>is part of our Gaming range, bringing you the most impressive PCs available today. It has spectacular graphics and fast processing performance to suit the most exacting players.</p>\r\n', 'pc-specialist-vortex-core-lite-gaming-pc', 599.99, 'pc-specialist-vortex-core-lite-gaming-pc.jpg', '2018-11-16', 2),
(11, 2, 'HP Barebones OMEN X 900-099nn Gaming PC', '<p>What&#39;s inside matters.</p>\r\n\r\n<p>Without proper cooling, top tierperformance never reaches its fullpotential.</p>\r\n\r\n<p>Nine lighting zones accentuate theaggressive lines and smooth blackfinish of this unique galvanized steelcase.</p>\r\n', 'hp-barebones-omen-x-900-099nn-gaming-pc', 489.98, 'hp-barebones-omen-x-900-099nn-gaming-pc.jpg', '2018-11-16', 1),
(12, 2, 'ACER Aspire GX-781 Gaming PC', '<p>- GTX 1050 graphics card lets you play huge games in great resolutions&nbsp;<br />\r\n<br />\r\n- Latest generation Core&trade; i5 processor can handle demanding media software&nbsp;<br />\r\n<br />\r\n- Superfast SSD storage lets you load programs in no time&nbsp;<br />\r\n<br />\r\nThe Acer&nbsp;<strong>Aspire&nbsp;GX-781 Gaming PC&nbsp;</strong>is part of our Gaming range, which offers the most powerful PCs available today. It has outstanding graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'acer-aspire-gx-781-gaming-pc', 749.99, 'acer-aspire-gx-781-gaming-pc.jpg', '2018-11-16', 2),
(13, 2, 'HP Pavilion Power 580-015na Gaming PC', '<p>Features the latest quad core Intel i5 processor and discrete graphics. With this power, you&rsquo;re ready to take on any activity from making digital art to conquering new worlds in VR.</p>\r\n\r\n<p>Choose the performance and storage you need. Boot up in seconds with to 128 GB SSD.</p>\r\n\r\n<p>Ditch the dull grey box, this desktop comes infused with style. A new angular bezel and bold green and black design give your workspace just the right amount of attitude.</p>\r\n\r\n<p>Up to 3 times faster performance - GeForce GTX 10-series graphics cards are powered by Pascal to deliver twice the performance of previous-generation graphics cards.</p>\r\n', 'hp-pavilion-power-580-015na-gaming-pc', 799.99, 'hp-pavilion-power-580-015na-gaming-pc.jpg', '2018-05-12', 1),
(14, 2, 'LENOVO Legion Y520 Gaming PC', '<p>- Multi-task with ease thanks to Intel&reg; i5 processor&nbsp;<br />\r\n<br />\r\n- Prepare for battle with NVIDIA GeForce GTX graphics card&nbsp;<br />\r\n<br />\r\n- VR ready for the next-generation of immersive gaming and entertainment<br />\r\n<br />\r\n- Tool-less upgrade helps you personalise your system to your own demands&nbsp;<br />\r\n<br />\r\nPart of our Gaming range, which features the most powerful PCs available today, the Lenovo&nbsp;<strong>Legion Y520 Gaming PC</strong>&nbsp;has superior graphics and processing performance to suit the most demanding gamer.</p>\r\n', 'lenovo-legion-y520-gaming-pc', 899.99, 'lenovo-legion-y520-gaming-pc.jpg', '2018-05-10', 13),
(15, 2, 'PC SPECIALIST Vortex Minerva XT-R Gaming PC', '<p>- NVIDIA GeForce GTX graphics for stunning gaming visuals<br />\r\n<br />\r\n- Made for eSports with a speedy 7th generation Intel&reg; Core&trade; i5 processor<br />\r\n<br />\r\n- GeForce technology lets you directly update drivers, record your gaming and more<br />\r\n<br />\r\nThe PC Specialist&nbsp;<strong>Vortex Minerva XT-R Gaming PC</strong>&nbsp;is part of our Gaming range, which offers the most powerful PCs available. Its high-performance graphics and processing are made to meet the needs of serious gamers.</p>\r\n', 'pc-specialist-vortex-minerva-xt-r-gaming-pc', 999.99, 'pc-specialist-vortex-minerva-xt-r-gaming-pc.jpg', '2018-07-09', 1),
(16, 2, 'PC SPECIALIST Vortex Core II Gaming PC', '<p>Processor: Intel&reg; CoreTM i3-6100 Processor- Dual-core- 3.7 GHz- 3 MB cache</p>\r\n\r\n<p>Memory (RAM): 8 GB DDR4 HyperX, Storage: 1 TB HDD, 7200 rpm</p>\r\n\r\n<p>Graphics card: NVIDIA GeForce GTX 950 (2 GB GDDR5), Motherboard: ASUS H110M-R</p>\r\n\r\n<p>USB: USB 3.0 x 3- USB 2.0 x 5, Video interface: HDMI x 1- DisplayPort x 1- DVI x 2, Audio interface: 3.5 mm jack, Optical disc drive: DVD/RW, Expansion card slot PCIe: (x1) x 2</p>\r\n\r\n<p>Sound: 5.1 Surround Sound support PSU Corsair: VS350, 350W, Colour: Black- Green highlights, Box contents: PC Specialist Vortex Core- AC power cable</p>\r\n', 'pc-specialist-vortex-core-ii-gaming-pc', 649.99, 'pc-specialist-vortex-core-ii-gaming-pc.jpg', '2018-05-10', 2),
(17, 3, 'AMAZON Fire 7 Tablet with Alexa (2017) - 8 GB, Black', '<p>The next generation of our best-selling Fire tablet ever - now thinner, lighter, and with longer battery life and an improved display. More durable than the latest iPad</p>\r\n\r\n<p>Beautiful 7&quot; IPS display with higher contrast and sharper text, a 1.3 GHz quad-core processor, and up to 8 hours of battery life. 8 or 16 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-7-tablet-alexa-2017-8-gb-black', 49.99, 'amazon-fire-7-tablet-alexa-2017-8-gb-black.jpg', '2018-05-12', 1),
(18, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 16 GB, Black', '<p>Take your personal assistant with you wherever you go with this Amazon Fire HD 8 tablet featuring Alexa voice-activated cloud service. The slim design of the tablet is easy to handle, and the ample 8-inch screen is ideal for work or play. This Amazon Fire HD 8 features super-sharp high-definition graphics for immersive streaming.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black', 79.99, 'amazon-fire-hd-8-tablet-alexa-2017-16-gb-black.jpg', '2018-11-12', 1),
(19, 3, 'AMAZON Fire HD 8 Tablet with Alexa (2017) - 32 GB, Black', '<p>The next generation of our best-reviewed Fire tablet, with up to 12 hours of battery life, a vibrant 8&quot; HD display, a 1.3 GHz quad-core processor, 1.5 GB of RAM, and Dolby Audio. More durable than the latest iPad.</p>\r\n\r\n<p>16 or 32 GB of internal storage and a microSD slot for up to 256 GB of expandable storage.</p>\r\n', 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black', 99.99, 'amazon-fire-hd-8-tablet-alexa-2017-32-gb-black.jpg', '2018-05-10', 1),
(20, 3, 'APPLE 9.7\" iPad - 32 GB, Space Grey', '<p>9.7-inch Retina display, wide color and true tone</p>\r\n\r\n<p>A9 third-generation chip with 64-bit architecture</p>\r\n\r\n<p>M9 motion coprocessor</p>\r\n\r\n<p>1.2MP FaceTime HD camera</p>\r\n\r\n<p>8MP iSight camera</p>\r\n\r\n<p>Touch ID</p>\r\n\r\n<p>Apple Pay</p>\r\n', 'apple-9-7-ipad-32-gb-space-grey', 339, 'apple-9-7-ipad-32-gb-space-grey.jpg', '2018-05-12', 1),
(27, 1, 'Dell XPS 15 9560', '<p>The world&rsquo;s smallest 15.6-inch performance laptop packs powerhouse performance and a stunning InfinityEdge display &mdash; all in our most powerful XPS laptop. Featuring the latest Intel&reg; processors.</p>\r\n\r\n<h2>Operating system</h2>\r\n\r\n<p><strong>Available with Windows 10 Home&nbsp;</strong>- Get the best combination of Windows features you know and new improvements you&#39;ll love.</p>\r\n\r\n<h2>Innovation that inspires.</h2>\r\n\r\n<p>When you&rsquo;re at the forefront of ingenuity, you get noticed. That&rsquo;s why it&rsquo;s no surprise the XPS 15 was honored. The winning streak continues.</p>\r\n\r\n<h2>Meet the smallest 15.6-inch laptop on the planet.</h2>\r\n\r\n<p><strong>The world&rsquo;s only 15.6-inch InfinityEdge display*:</strong>&nbsp;The virtually borderless display maximizes screen space by accommodating a 15.6-inch display inside a laptop closer to the size of a 14-inch, thanks to a bezel measuring just 5.7mm.<br />\r\n&nbsp;<br />\r\n<strong>Operating System: Windows 10 Pro.</strong><br />\r\n<br />\r\n<strong>One-of-a-kind design:</strong>&nbsp;Measuring in at a slim 11-17mm and starting at just 4 pounds (1.8 kg) with a solid state drive, the XPS 15 is one of the world&rsquo;s lightest 15-inch performance-class laptop.</p>\r\n\r\n<h2>A stunning view, wherever you go.</h2>\r\n\r\n<p><strong>Dazzling detail:</strong>&nbsp;With the UltraSharp 4K Ultra HD display (3840 x 2160), you can see each detail of every pixel without needing to zoom in. And with 6 million more pixels than Full HD and 3 million more than the MacBook Pro, you can edit images with pinpoint accuracy without worrying about blurriness or jagged lines.<br />\r\n<br />\r\n<strong>Industry-leading color:</strong>&nbsp;The XPS 15 is the only laptop with 100% Adobe RGB color, covering a wider color gamut and producing shades of color outside conventional panels so you can see more of what you see in real life. And with over 1 billion colors, images appear smoother and color gradients are amazingly lifelike with more depth and dimension. Included is Dell PremierColor software, which automatically remaps content not already in Adobe RGB format for onscreen colors that appear amazingly accurate and true to life.<br />\r\n<br />\r\n<strong>Easy collaboration:</strong>&nbsp;See your screen from nearly every angle with an IGZO IPS panel, providing a wide viewing angle of up to 170&deg;.&nbsp;<br />\r\n<br />\r\n<strong>Brighten your day:</strong>&nbsp;With 350 nit brightness, it&rsquo;s brighter than a typical laptop.<br />\r\n<br />\r\n<strong>Touch-friendly:</strong>&nbsp;Tap, swipe and pinch your way around the screen. The optional touch display lets you interact naturally with your technology.</p>\r\n', 'dell-xps-15-9560', 1599, 'dell-xps-15-9560.jpg', '2018-11-10', 2),
(28, 4, 'Samsung Note 8', '<p>See the bigger picture and communicate in a whole new way. With the Galaxy Note8 in your hand, bigger things are just waiting to happen.&nbsp;</p>\r\n\r\n<h3>The Infinity Display that&#39;s larger than life.&nbsp;</h3>\r\n\r\n<p>More screen means more space to do great things. Go big with the Galaxy Note8&#39;s 6.3&quot; screen. It&#39;s the largest ever screen on a Note device and it still fits easily in your hand.</p>\r\n\r\n<p>*Infinity Display: a near bezel-less, full-frontal glass, edge-to-edge screen.</p>\r\n\r\n<p>*Screen measured diagonally as a full rectangle without accounting for the rounded corners.</p>\r\n\r\n<p>Use the S Pen to express yourself in ways that make a difference. Draw your own emojis to show how you feel or write a message on a photo and send it as a handwritten note. Do things that matter with the S Pen.</p>\r\n\r\n<p>*Image simulated for illustration purpose only.</p>\r\n', 'samsung-note-8', 829, 'samsung-note-8.jpg', '2018-11-16', 1),
(29, 4, 'Samsung Galaxy S9+ [128 GB]', '<h2>The revolutionary camera that adapts like the human eye.&nbsp;</h2>\r\n\r\n<h3>Capture stunning pictures in bright daylight and super low light.</h3>\r\n\r\n<p>Our category-defining Dual Aperture lens adapts like the human eye. It&#39;s able to automatically switch between various lighting conditions with ease&mdash;making your photos look great whether it&#39;s bright or dark, day or night.</p>\r\n\r\n<p>*Dual Aperture supports F1.5 and F2.4 modes. Installed on the rear camera (Galaxy S9)/rear wide camera (Galaxy S9+).</p>\r\n\r\n<p><img alt=\"\" src=\"https://www.samsung.com/global/galaxy/galaxy-s9/images/galaxy-s9_slow_gif_visual_l.jpg\" style=\"height:464px; width:942px\" />Add music. Make GIFs. Get likes</p>\r\n\r\n<p>Super Slow-mo lets you see the things you could have missed in the blink of an eye. Set the video to music or turn it into a looping GIF, and share it with a tap. Then sit back and watch the reactions roll in.</p>\r\n', 'samsung-galaxy-s9-128-gb', 889.99, 'samsung-galaxy-s9-128-gb.jpg', '2018-11-16', 4),
(31, 5, 'SAMSUNG LCD Monitor CJ791 34\'\'', '<p>Unit Gross Weight: 14.5 kg; Unit Net Weight: 7.7 kg; Colour: Grey; Width: 808.7 mm; Height: 516 mm; Depth: 309.4 mm; Screen size: 34&quot;; Speakers: Yes; Screen form factor: 21:9; Contrast: 3000:1; Response time: 4 ms; Viewing angle horizontal: 178 degrees; Viewing angle vertical: 178 degrees; Displayable Colours: 16.7 million; Native resolution: 3440x1440; Power supply: External; Height adjustable: Yes; Tilt: Yes; USB 2.0: 2; HDMI: 1; Dynamic contrast (DCR): Mega Contrast; DisplayPort: 1; 100 mm x 100 mm: Yes; Thunderbolt: 2; Headphones jack: 1; Model name: CJ791; Brightness: 300; Panel type: VA; Refresh rate: 100Hz; Monitor features: 21 : 9; Full Description Line: Model CJ791|34&quot;|Panel VA|Resolution 3440x1440|Form factor 21:9|Refresh rate 100Hz|Brightness 300|Contrast 3000:1|Dynamic contrast (DCR) Mega Contrast|Response time 4 ms|Horizontal 178 degrees|Vertical 178 degrees|Displayable colours 16.7 million|1xHDMI|1xDisplayPort|2xUSB 2.0|1xHeadphones jack|2xThunderbolt|Speakers|Height adjustable|Tilt|PSU External|100 mm x 100 mm|Colour Grey;</p>\r\n', 'samsung-lcd-monitor-cj791-34', 913, 'samsung-lcd-monitor-cj791-34.jpg', '2018-11-16', 1),
(32, 5, 'Benq BL2711U 27\'\'', '<p>Warranty: 36 month(s); Gross weight: 10.42 kg; Net weight: 9 kg; Display resolution: 3840 x 2160 pixels; Display brightness: 300 cd/m&sup2;; Surface Finish: Non glossy; WEE classification: CL109:2:2017-04-01; Gross depth (mm): 225 mm; Gross width (mm): 495 mm; Gross height (mm): 710 mm; HEIGHT ADJUSTMENT: 14 cm; Swivelling: Yes; WEEE tax: Yes; Packing quantity: 1 pc(s); Volume (m3): 0.07907625 m&sup3;; Tare weight (kg): 1.42 kg; Tilt angle: -5/20 &deg;; HDMI ports quantity: (v1.4)x1, (v2.0)x1; Tilt adjustment: Yes; Swivel angle range: 45/45 &deg;; Panel type: IPS; Output Connections: DVI, HDMI, DP, USB; Pivot: Yes; TV tuner integrated: No; USB ports quantity: Downstream x 4, Upstream x 1; DisplayPorts quantity: (v1.2) x1; Pivot angle: 90 &deg;; No flickering: Yes; Viewing angle, vertical: 178 &deg;; Viewing angle, horizontal: 178 &deg;; Contrast ratio (dynamic): 20M:1; DVI-I ports quantity: DVI-DLx1; Display surface: Antiglare; Aspect Ratio: 16:9; Display diagonal: 27 &quot;; Contrast ratio (typical): 1000:1; VESA mounting: Yes; Built-in speaker(s): Yes; Display Technology: IPS; Colour of product: Black; HD type: 4K UHD; Response time: 4 ms; Producer product name: BL2711U; Producer product family: Designer; Display: IPS;</p>\r\n', 'benq-bl2711u-27', 457, 'benq-bl2711u-27.jpg', '2018-11-10', 1),
(33, 5, 'MSI LCD Monitor Optix MPG27CQ 27\'\'', '<p>Unit Gross Weight: 10.8 kg; Unit Net Weight: 7.6 kg; Width: 612 mm; Height: 555.8 mm; Depth: 379.3 mm; Screen size: 27&quot;; Screen form factor: 16:9; Contrast: 3000:1; Pixel size: 0.2331 mm; Response time: 1 ms; Viewing angle horizontal: 178 degrees; Viewing angle vertical: 178 degrees; Displayable Colours: 16.7 million; Native resolution: 2560x1440; HDMI: 2; Dynamic contrast (DCR): 100000000:1; DisplayPort: 1; Screen LED backlight: Yes; 100 mm x 100 mm: Yes; Model name: Optix MPG27CQ; Brightness: 400; Refresh rate: 144Hz; Monitor features: Curved; Full Description Line: Model Optix MPG27CQ|27&quot;|Resolution 2560x1440|Form factor 16:9|Refresh rate 144Hz|Brightness 400|Contrast 3000:1|Dynamic contrast (DCR) 100000000:1|Response time 1 ms|Horizontal 178 degrees|Vertical 178 degrees|Displayable colours 16.7 million|2xHDMI|1xDisplayPort|100 mm x 100 mm;</p>\r\n', 'msi-lcd-monitor-optix-mpg27cq-27', 639, 'msi-lcd-monitor-optix-mpg27cq-27.jpg', '0000-00-00', 0),
(34, 5, 'LG Monitor 27UD59-W', '<p>Producer: LG; Product class: LCD / LCD-TV / LED monitor; Monitor screen format: Wide; Screen diagonal: 27 inches; LCD panel type: TFT IPS; Backlight technology: LED; 3D technology support: No; Curved screen: No; Touch the screen overlay: No; Recommended resolution: 3840 x 2160 pixels; Response time: 5 ms; Brightness: 250 cd/m2; Contrast index: 1000:1, 5000000:1; Horizontal visual angle: 178 degrees; Vertical visual angle: 178 degrees; Number of displayed colours: 1,07 mld; Certificates: UL/cUL, TUV-Type, CB, FCC-B, CE, EPA 7.0, EPEAT Gold, ERP, RoHS, REACH; On Screen Display: Yes; Speakers: No; Microphone: No; Input connectors: 2 X HDMI, DisplayPort; Other connectors: 1 x audio output (stereo mini-jack); Built-in USB hub: No; Integrated network adapter (LAN): No; Wi-Fi connectivity: No; Integrated camera: No; Integrated TV tuner: No; Remote control in bundle: No; Memory card reader: No; Built-in power supplier: Yes; Power consumption (work/idle): 37/0,3 Watt; Panel tilt: Yes; Monitor height adjustment: No; Swivel: No; Rotating panel (pivot): No; VESA Mount: 100 x 100 mm; Kensington Lock: No; Width: 632 mm; Height: 475 mm; Depth: 217 mm; Net weight: 5.6 kg; Additional information: Response time: 5ms (gray-to-gray), Contrast: 1:1000 (typical), Contrast: 1:5000000 (dynamic), Multilingual OSD;</p>\r\n', 'lg-monitor-27ud59-w', 393, 'lg-monitor-27ud59-w.jpg', '2018-11-11', 1),
(35, 5, 'LENOVO 27\'\' X1 4K IPS DP', '<p>Aspect Ratio: 16:9; Pixel pitch, mm: 0.16 x 0.16; Response time, ms: 6; Viewing angle, vertical, &deg;: 178; Viewing angle, horizontal, &deg;: 178; Dimensions W x D x H, mm: 614.5 x 270.0 x 491.4; Power consumption, W: 40; Bezel width, mm: 2.23; Connections: DisplayPort; Certification: Energy Star 7.0, TCO 7.0, EPEAT Silver; USB-A (USB 3.0) ports quantity: 5; HDMI ports quantity: 1; DisplayPorts quantity: 1; Built-in speakers: Yes; Touch sensitive screen: No; Pivot: No; HEIGHT ADJUSTMENT: No; Power consumption (standby), W: 0.5; Panel type: IPS; Depth, mm: 270; Height, mm: 491.4; Width, mm: 614.5; Weight, g: 6400; Contrast ratio (typical): 1000:1; Display diagonal, &quot;: 24 &quot;; Display resolution, pixels: 1920 x 1200; Display brightness, cd/m&sup2;: 300 cd/m&sup2;;<br />\r\n&nbsp;</p>\r\n', 'lenovo-27-x1-4k-ips-dp', 703, 'lenovo-27-x1-4k-ips-dp.jpg', '0000-00-00', 0),
(36, 1, 'LENOVO L380 YOGA I5-8250U', '<p>Display diagonal, &quot;: 13.3; Total Storage Capacity: 256 GB SSD; Processor family: Intel Core i5; INTERNAL MEMORY: 8 GB; Operating system provided: Windows 10 Pro; Graphic adapter: Intel UHD Graphics 620; Display resolution, pixels: 1920 x 1080; Touch sensitive screen: Yes; Backlit keyboard: Yes; Maximum internal memory, GB: 32 GB; Weight, g: 1560; Optical Drive: No; Smart Card reader: No; Dimensions W x D x H, mm: 322 x 224.2 x 18.8; Glossy display: Yes; Fingerprint reader: Yes; INTEGRATED MEMORY CARD READER: Yes; Connections: Audio combo jack; Numeric keypad: No; Memory slots (available): 1; Processor model: Intel Core i5-8250U (Max. 3.40 GHz, 6M, 4C); Processor number of cores: 4; Processor manufacturer: Intel; Processor clock speed, GHz: 1.60; Internal memory type: DDR4; Intel Virtualization technology: VT-x / VT-d; Bluetooth: Yes; Intel vPro: No; Intel HyperThreading: Yes; Number of hard drives installed: 1; Battery capacity, Wh: 45; System Bus: 4 GT/s OPI; Power supply, W: 65; Operating system architecture: 64-BIT; HDMI ports quantity: 1; Ethernet LAN (RJ-45) ports quantity: 1; Intel Smart Cache, MB: 6; Colour of product: Black; Battery Technology: Lithium-Ion; Solid State Disk drive capacity, GB: 256; WLAN antennas: 2x2; Trusted Platform Module (TPM) version: 2.0; Machine Type: 20M7; Camera resolution: 720p; Solid State Disk drive type: PCIe NVMe M.2; COMPATIBLE MEMORY CARDS: microSD; Aspect Ratio: 16:9; Display brightness, cd/m&sup2;: 300; Wi-Fi: Yes; Topseller: YES; Mobile broadband: No; Bluetooth Version: 4.1; Graphics adapter family: Intel UHD Graphics; Memory clock speed, MHz: 2400; WLAN type: Intel 8265 ac; Dedicated Video Memory: Uses system memory; USB-A (USB 3.1) ports quantity: 2; USB-C (USB 3.1) ports quantity: 2; Keyboard layout: Finnish;</p>\r\n', 'lenovo-l380-yoga-i5-8250u', 1185, 'lenovo-l380-yoga-i5-8250u.jpg', '0000-00-00', 0),
(37, 1, 'MACBOOK PRO TOUCH 13\"', '<p>Colour of product: Silver; INTERNAL MEMORY: 8; Total Storage Capacity: 256 GB; Display diagonal, &quot;: 13.3; Processor family: Intel Core i5; Display resolution, pixels: 2560 x 1600; Processor number of cores: 2; Internal memory type: LPDDR3; Memory clock speed, MHz: 2133; Graphic adapter: Intel Iris Plus Graphics 650; Connections: USB 3.1 Type C (gen 2); Backlit keyboard: Yes; Sensors: Ambient light; Wi-Fi: 802.11a/b/g/n; Camera resolution: HD720p; Operating system provided: macOS Sierra; Dimensions W x D x H, mm: 304.1 x 212.4 x 14.9; Weight, g: 1370; Processor clock speed, GHz: 3.30; Processor manufacturer: Intel; Battery Technology: Li-Polymer;<br />\r\n&nbsp;</p>\r\n', 'macbook-pro-touch-13', 1890, 'macbook-pro-touch-13.jpg', '0000-00-00', 0),
(38, 1, 'DELL OUTLET LATITUDE 5580', '<p>INTEGRATED MEMORY CARD READER: Yes; Connections: RJ45; Processor model: Intel Core i7-7600U (Max. 3.90 GHz, 4M, 2C); Processor clock speed, GHz: 2.80; Processor number of cores: 2; Processor manufacturer: Intel; Intel vPro: Yes; Intel Virtualization technology: VT-x / VT-d; Intel HyperThreading: Yes; Intel Turbo Boost, GHz: 3.90; Bluetooth: Yes; Graphics adapter family: Intel HD Graphics; Intel Smart Cache, MB: 4; Number of battery cells, pcs: 3; Total Storage Capacity: 256 GB SSD; INTERNAL MEMORY: 8 GB; Display diagonal, &quot;: 15.6; Processor family: Intel Core i7; Operating system provided: Windows 10 Pro; Display resolution, pixels: 1920 x 1080; Graphic adapter: Intel HD Graphics 620; Touch sensitive screen: No; Backlit keyboard: No; Weight, g: 1930; Wi-Fi: Yes; WLAN type: 802.11ac; WLAN antennas: 2x2; Battery capacity, Wh: 42; Dimensions W x D x H, mm: 376 x 250.7 x 24.3; Built-in camera: Yes;</p>\r\n', 'dell-outlet-latitude-5580', 1065, 'dell-outlet-latitude-5580.jpg', '0000-00-00', 0),
(39, 1, 'FHD i5-7200U A357 15,6\"', '<p>Producer: Fujitsu; Product class: Notebook / netbook / ultrabook; Family of the product: Lifebook A; Processor class: Intel Core i5 Mobile; Processor code: i5-7200U; Processor speed: 2.5 GHz, 3.1 GHz; QPI/DMI bus frequency: 4 GT/s; Cache memory capacity: 3 MB; HyperThreading technology: Yes; Intel vPro technology: No; Intel Wireless Display (WiDi) technology: no data; Disk type: SSD |Solid State Disc| (FLASH memory); FLASH memory capacity: 256 GB; Built-in drives: DVD-RW SuperMulti Slim; Installed memory: 8192 MB; Memory type: SODIMM DDR4; Memory bus frequency: 2133 MHz; Max memory size: 32 GB; Number of memory banks: 2 Pcs; Number of free memory slots: 1 Pcs; LCD screen size: 15.6 inches; Screen type: TFT Full-HD [LED]; Touch screen: No; Maximal LCD resolution: 1920 x 1080; Graphic card type: Intel HD Graphics 620; Sound card: Realtek ALC255; Pointing devices: touchpad; Numeric keypad: Yes; Backlit keyboard: No; Ext. connectors: 3x USB 3.1 Gen. 1, 1x USB 2.0, 1x RJ-45 (LAN), 1 x VGA, 1 x HDMI, 1x combo audio (mic/audio), 1x Kensington Lock connector, 1x DC-In (power supply input); Wireless network card: Yes; Wireless chipset: Intel Dual Band Wireless-AC 7265AC; Bluetooth: Yes; Installed WWAN/3G module: No; LTE/4G Connectivity: No; Memory card reader: Yes; Types of supported memory cards: SecureDigital Card; Type of battery: Li-Ion (6 Cells); Watt-hour capacity (Wh): 48 Wh; Standard accessory: Web Camera, Stereo speakers built-in, 1x10/100/1000BaseT Gigabitethernet (RJ45); Installed operating system: Windows 10 Pro; Width: 378 mm; Depth: 256 mm; Height: 30.9 mm; Net weight: 2.2 kg; Colour: Black;</p>\r\n', 'fhd-i5-7200u-a357-15-6', 752, 'fhd-i5-7200u-a357-15-6.jpg', '0000-00-00', 0),
(41, 6, 'Intel Core i5-6600K', '<p>Producer: Intel; Product class: Processor; Processor type: Intel Core (6th gen), Core i5 (6th gen); Processor code: i5-6600K; Processor socket type: LGA1151; Processor clock speed: 3.5 GHz; Processor maximum clock speed: 3.9 GHz; Number of processor cores: 4; FSB bus frequency: 2133 MHz; QPI/DMI bus frequency: 8 GT/s; Cache memory capacity [L3]: 6 MB; Supported Hyper-Threading technology: No; Integrated VGA system: Yes; Lithography: 14 nm; Maximum TDP: 95 Watt; Processor version: Box; Fan enclosed: No;</p>\r\n', 'intel-core-i5-6600k', 361, 'intel-core-i5-6600k.jpg', '2018-11-16', 1),
(42, 6, 'Intel Core i7-6950X Extreme Edition', '<p>Producer: Intel; Product class: Processor; Processor type: Core i7; Processor code: i7-6950K; Processor socket type: LGA2011-V3; Processor clock speed: 3 GHz; Processor maximum clock speed: 3.5 GHz; Number of processor cores: 10; FSB bus frequency: 2400 MHz; QPI/DMI bus frequency: 8 GT/s; Cache memory capacity [L3]: 25 MB; Supported Hyper-Threading technology: Yes; Integrated VGA system: No; Lithography: 14 nm; Maximum TDP: 140 Watt; Processor version: Tray; Fan enclosed: No;</p>\r\n', 'intel-core-i7-6950x-extreme-edition', 2448, 'intel-core-i7-6950x-extreme-edition.jpg', '2018-11-16', 1),
(43, 6, 'AMD Ryzen 3 1300X', '<p>Producer: AMD; Product class: Processor; Processor type: AMD; Processor code: 1300X; Processor socket type: Socket AM4; Processor clock speed: 3.7 GHz; Number of processor cores: 4; Cache memory capacity [L2]: 2 MB; Cache memory capacity [L3]: 8 MB; Supported Hyper-Threading technology: No; Integrated VGA system: No; Lithography: 14 nm; Maximum TDP: 65 Watt; Processor version: Box; Fan enclosed: Yes;</p>\r\n', 'amd-ryzen-3-1300x', 125, 'amd-ryzen-3-1300x.jpg', '2018-11-10', 1),
(44, 6, 'AMD Ryzen X6 R5-2600X SAM4 BOX', '<p>Unit Gross Weight: 0.6 kg; Unit Net Weight: 0.03 kg; Packing type: BOX; Model number: 2600X; Clock speed: 3600 MHz; Cache: 16MB; Core name: Pinnacle Ridge; CPU Family name: Ryzen 5; Wattage: 95 Watts; Memory type: DDR4; Frequency speed: 2933 MHz; Socket: SAM4; Number of cores: 6; Turbo frequency: 4200 MHz; Full Description Line: Ryzen 5|2600X|Pinnacle Ridge|3600 MHz|Number of cores 6|Cache 16MB|Socket SAM4|Wattage 95 Watts|Turbo frequency 4200 MHz|Packing type BOX;</p>\r\n', 'amd-ryzen-x6-r5-2600x-sam4-box', 246, 'amd-ryzen-x6-r5-2600x-sam4-box.jpg', '0000-00-00', 0),
(45, 6, 'AMD Ryzen 7 2700X AM4 8C', '<p>Product Description: AMD Ryzen 7 2700X / 3.7 GHz processor; Product Type: Processor; Processor type: AMD Ryzen 7 2700X; Number of cores: 8-core / 16 threads; Cache: 16 MB; Compatible Processor Socket: AM4; Processor Qty: 1; Clock speed: 3.7 GHz; Max Turbo Speed: 4.3 GHz; Manufacturing Process: 12 nm; Manufacturer Warranty: 3 years warranty;</p>\r\n', 'amd-ryzen-7-2700x-am4-8c', 383, 'amd-ryzen-7-2700x-am4-8c.jpg', '0000-00-00', 0),
(46, 7, 'ASUS TUF H310-PLUS GAMING', '<p>Product Description:ASUS TUF H310-PLUS GAMING - motherboard - ATX - LGA1151 Socket - H310; Product Type: Motherboard - ATX; Chipset type: Intel H310; Processor Socket: 1 x LGA1151 Socket; Compatible Processors: Pentium, Celeron, Core i5, Core i3, Core i7 (supports 8th Generation Intel Core i3 / i5 / i7 / Pentium / Celeron); Max RAM Size: 32 GB; RAM Supported: 2 DIMM slots - DDR4, non-ECC, unbuffered; Storage Ports: 4 x SATA-600, 1 x M.2; USB / FireWire Ports: USB 3.1 Gen 1 2 x USB 3.1 Gen 1 + 2 x USB 2.0 + (2 x USB 3.1 Gen 1 + 4 x USB 2.0 via headers); Max Allocated RAM Size: 1 GB; Audio: HD Audio (8-channel); LAN: Gigabit Ethernet; Manufacturer Warranty: 3 years warranty;</p>\r\n', 'asus-tuf-h310-plus-gaming', 107, 'asus-tuf-h310-plus-gaming.jpg', '2018-11-16', 3),
(47, 7, 'MB B360 S1151 MATX', '<p>Unit Gross Weight: 0.95 kg; Unit Net Weight: 0.8 kg; Chipset: Intel B360 Express; Form factor: MicroATX; Integrated audio: Realtek ALC892; Integrated LAN: Gigabit; Integrated video: Yes; Memory slots: 4; Trusted Platform Module (TPM): Header; SATA: Yes; Serial: Yes; PCI-Express 1x: 1; DVI: 1; USB 2.0: Yes; PS/2: 1; PCI-Express 16x: 2; RJ45: 1; HDMI: 1; Audio port: 6; SATA 3.0: Yes; Memory type: DDR4; Frequency speed: 2133 MHz; Socket: LGA1151; M.2: 2; USB 3.1: Yes; Full Description Line: Intel B360 Express|LGA1151|MicroATX|1xPCI-Express 1x|2xPCI-Express 16x|2xM.2|DDR4|2666/2400/2133 MHz|Memory slots 4|1xDVI|1xHDMI|2xUSB 2.0|1xUSB 3.1|1xPS/2|1xRJ45|6xAudio port|SATA|USB 2.0|USB 3.1|Serial|SATA 3.0|Video|LAN Gigabit|Audio Realtek ALC892|TPM Header;</p>\r\n', 'mb-b360-s1151-matx', 97.5, 'mb-b360-s1151-matx.jpg', '2018-11-16', 1),
(48, 7, 'MSI B350 KRAIT GAMING', '<p>Producer: MSI; GProduct class: Mainboard - desktop; Processor producer: AMD; Processor type: Ryzen 7, Athlon X4 (Socket AM4), A-Series (Socket AM4); Processor socket type: Socket AM4; Supported Hyper-Threading technology: No; Number of processor slots: 1; Chipset producer: AMD; Chipset type: B350; FSB bus frequency: 2400 MHz; Memory type: DDR4; Type of memory: Non-ECC, ECC, UDIMM; Number of DDR4 slots: 4; Memory bus frequency: 2400 MHz, 2133 MHz, 1866 MHz; Max memory size: 64 GB; Integrated VGA system on the mainboard: No; Supports VGA systems integrated in the processors: Yes; Video connectors on back panel: 1 x HDMI, 1 x DVI-D; Built-in sound system: Realtek ALC892; LAN controller: Yes; Type of integrated network adapter: 10/100/1000 Mbit/s; Wireless network card: No; Bluetooth: No; Slot AGP: N/A; Slot PCI-E 16x: 2; Slot PCI-E 1x: 3; PCI-X 133MHz slots qty: 0; USB 2.0 connectors: 6; USB 3.0 connectors: 0; USB 3.1 connectors: 6; Additional informations about USB 2.0/3.0/3.1 port: 1 x USB 3.1 Type-A (rear), 1 x USB 3.1 type-C (rear), 4 x USB 3.1 (rear), 2 x USB 2.0 (rear), 4 x USB 3.1 (internal), 4 x USB 2.0 (internal); FireWire (IEEE 1394) connectors: 0 Pcs; PS/2 connectors: 1; eSATA connectors: 0; SATA Express connectors: 0; RAID system: 2xSATA, RAID 0, RAID 1, Raid 10; Maximal number of Serial ATA devices: 4 Pcs; Serial ATA Hard Disks interface speed: 600 MB/s; Maximal number of M.2 devices: 1 Pcs; Additional features: 1 x slot PCI-E 16x (standard) [16x mechanical, 16x electrical], or, 1 x slot PCI-E 16x (standard) [16x mechanical, 8x electrical], and, 1 x slot PCI-E 16x (standard) [16x mechanical, 4x electrical]; Format: ATX; Type of ATX power supply connector: 24-pin; Type of +12V electric plug: EPS12V;</p>\r\n', 'msi-b350-krait-gaming', 114, 'msi-b350-krait-gaming.jpg', '2018-11-16', 1),
(49, 7, 'ASUS PRIME H370-PLUS', '<p>Product Description: ASUS PRIME H370-PLUS - motherboard - ATX - LGA1151 Socket - H370; Product Type: Motherboard - ATX; Chipset type: Intel H370; Processor Socket: 1 x LGA1151 Socket; Compatible Processors: Pentium, Celeron, Core i5, Core i3, Core i7 (supports 8th Generation Intel Core i3 / i5 / i7 / Pentium / Celeron); Max RAM Size: 64 GB; RAM Supported: 4 DIMM slots - DDR4, non-ECC, unbuffered; Storage Ports: 6 x SATA-600 (RAID), 2 x M.2; USB / FireWire Ports: USB 3.1 Gen 1, USB 3.1 Gen 2 2 x USB 3.1 Gen 2 + 2 x USB 3.1 Gen 1 + 2 x USB 2.0 + (4 x USB 3.1 Gen 1 + 4 x USB 2.0 via headers); Max Allocated RAM Size: 1 GB; Audio: HD Audio (8-channel); LAN: Gigabit Ethernet;</p>\r\n', 'asus-prime-h370-plus', 123, 'asus-prime-h370-plus.jpg', '0000-00-00', 0),
(50, 7, 'ASUS ROG STRIX Z370-H GAMING', '<p>Producer: Asus; Product class: Mainboard - desktop; Processor producer: Intel Processor type: Intel Core (8th gen), Core i3 (8th gen), Core i5 (8th gen), Core i7 (8th gen); Processor socket type: LGA1151; Supported Hyper-Threading technology: No; Chipset producer: Intel; Chipset type: Z370; QPI/DMI bus frequency: 8 GT/s; Memory type: DDR4; Type of memory: DIMM, Non-ECC, Unbuffered; Number of DDR4 slots: 4; Memory bus frequency: 2133 MHz; Max memory size: 64 GB; Integrated VGA system on the mainboard: Yes; Integrated graphic card type: Intel HD graphics; Supports VGA systems integrated in the processors: Yes; Video connectors on back panel: 1 x HDMI, 1 x DVI; Built-in sound system: ROG SupremeFX 2015 8-Channel High Definition Audio CODEC; LAN controller: Yes; Type of integrated network adapter: 10/100/1000 Mbit/s; Wireless network card: No; Bluetooth: No; Slot PCI-E 16x: 3; Slot PCI-E 1x: 3; USB 2.0 connectors: 6; USB 3.1 connectors: 8; Additional informations about USB 2.0/3.0/3.1 port: 6 x USB 3.1 (rear), 2 x USB 2.0 (rear), 4 x USB 3.1 (internal), 4 x USB 2.0 (internal) PS/2 connectors: 1; SATA system: 6xSATA; Maximal number of Serial ATA devices: 6 Pcs; Serial ATA Hard Disks interface speed: 600 MB/s; Maximal number of M.2 devices: 2 Pcs; Format: ATX; Type of ATX power supply connector: 24-pin; Type of +12V electric plug: EPS12V;</p>\r\n', 'asus-rog-strix-z370-h-gaming', 211, 'asus-rog-strix-z370-h-gaming.jpg', '0000-00-00', 0),
(51, 8, 'DELL 8GB', '<p>Warranty: 12 month(s); Gross weight: 0.04 kg; Net weight: 0.03 kg; Memory clock speed: 2400 MHz; Memory Form Factor: 288-pin DIMM; Memory voltage: 1.2 V; Packing quantity: 1 pc(s); Volume (m3): 0.0000576 m&sup3;; Tare weight (kg): 0.01 kg; Gross depth (mm): 160 mm; Gross width (mm): 45 mm; Gross height (mm): 8 mm; ECC: Yes; Component for: PC/Server; Capacity: 8 GB; Memory layout (modules x size): 1 x 8 GB; Internal memory type: DDR4; Registered: No;</p>\r\n', 'dell-8gb', 157, 'dell-8gb.jpg', '2018-11-16', 4),
(52, 8, 'CORSAIR Vengeance RGB PRO - DDR4 - 32 GB', '<p>Product Description: CORSAIR Vengeance RGB PRO - DDR4 - 32 GB: 2 x 16 GB - DIMM 288-pin; Product Type: RAM memory; Capacity: 32 GB: 2 x 16 GB; Memory type: DDR4 SDRAM - DIMM 288-pin; Upgrade Type: Generic; Data Integrity Check: Non-ECC; SPEED: 3000 MHz (PC4-24000); Latency Timings: CL15 (15-17-17-35); Voltage: 1.35 V; Manufacturer Warranty: Limited lifetime warranty;</p>\r\n', 'corsair-vengeance-rgb-pro-ddr4-32-gb', 339, 'corsair-vengeance-rgb-pro-ddr4-32-gb.jpg', '2018-11-11', 1),
(53, 8, 'CRUCIAL ORY DIMM 8GB PC21300', '<p>Unit Gross Weight: 0.0977 kg; Unit Net Weight: 0.04 kg; Chip Organization: 1024Mx64; GCL: 16; Memory timings: 16-18-18; Nominal voltage: 1.2 V; Number of modules: 1; Module form factor: 288-pin DIMM; Memory type: DDR4; Frequency speed: 2666 MHz; Memory module capacity: 8GB; Memory series: Ballistix Tactical; Performance: Gaming; Specific features: RGB; Full Description Line: Ballistix Tactical|Performance Gaming|Memory type DDR4|8GB|2666 MHz|288-pin DIMM|CL 16|Memory timings 16-18-18|Nominal voltage 1.2 V|Chip Organization 1024Mx64|Number of modules 1|RGB;</p>\r\n', 'crucial-ory-dimm-8gb-pc21300', 84.5, 'crucial-ory-dimm-8gb-pc21300.jpg', '0000-00-00', 0),
(54, 8, 'CRUCIAL Ballistrix Sport 8GB', '<p>Producer: Crucial; Product class: SDR/DDR/DDR2/DDR3/DDR4 memory; Memory type: DDR4; Memory capacity: 8192 MB; Memory bus frequency: 2400 MHz; Type of memory: Unbuffered; Number of memories in bundle: 1; CAS Latency (CL): CL16; Heatsink: Yes; Additional information&nbsp;&nbsp; &nbsp;Color: White;</p>\r\n', 'crucial-ballistrix-sport-8gb', 74, 'crucial-ballistrix-sport-8gb.jpg', '0000-00-00', 0),
(55, 8, 'ADATA XPG SPECTRIX D40', '<p>Producer: ADATA; Product class: SDR/DDR/DDR2/DDR3/DDR4 memory; Memory type: DDR4; Memory capacity: 8192 MB; Memory bus frequency: 3000 MHz; Type of memory: Non-ECC, Unbuffered; Number of memories in bundle: 1; CAS Latency (CL): CL16; Heatsink: Yes; Additional information: RGB lighting, Intel XMP 2.0, Dimensions (L x W x H): 138,98 x 47,37 x 7,6 mm;</p>\r\n', 'adata-xpg-spectrix-d40', 85.5, 'adata-xpg-spectrix-d40.jpg', '2018-11-16', 2),
(56, 11, 'FirePro W7100', '<p>FirePro W7100, 8GB GDDR5, 256-bit, PCIe x16 Gen 3.0, DirectX 11.2/12, OpenGL 4.4, 160 GB/s</p>\r\n', 'firepro-w7100', 734, 'firepro-w7100.jpg', '2018-11-16', 1),
(57, 11, 'VGA PCIE16 GTX1060', '<p>Unit Gross Weight: 0.829 kg; Unit Net Weight: 0.8 kg; Memory bus: 192 bit; Chipset: NVIDIA GeForce GTX 1060; Cooling system: Dual Slot Fansink; Max resolution: 7680x4320; Memory clock: 8008 MHz; GPU clock: 1556 MHz; DVI: 2; HDMI: 1; DisplayPort: 1; Graphics memory size: 6 GB; Graphics memory type: GDDR5; GPU boost clock: 1771 MHz; Graphics connector: PCIE 3.0 16x; Full Description Line: NVIDIA GeForce GTX 1060|Graphics memory size 6 GB|192 bit|PCIE 3.0 16x|GDDR5|Memory clock 8008 MHz|GPU clock 1556 MHz|GPU boost clock 1771 MHz|7680x4320|Cooling Dual Slot Fansink|2xDVI|1xHDMI|1xDisplayPort;</p>\r\n', 'vga-pcie16-gtx1060', 306, 'vga-pcie16-gtx1060.jpg', '2018-11-11', 1),
(58, 11, 'Gigabyte Radeon RX580 Gaming', '<p>Producer: Gigabyte; Product class: Graphics card; Chipset producer: AMD; Chipset type: Radeon RX 580; Cooling type: active; Memory bus: 256-bit; Memory type: DDR5; Installed video memory: 4096 MB; GPU clock (base): 1340 MHz; GPU clock (boost): 1355 MHz; Memory clock (effective): 7000 MHz; Maximal image resolution: 7680 x 4320 pixels; DVI interface: 1 Pcs; HDMI connector: 1 Pcs; DisplayPort connector: 3 Pcs; Supported standards: DirectX 12, OpenGL 4.5; AMD CrossFire/CrossFireX support: No; NVIDIA SLI support: No; Support for multiple monitors: Yes; HDCP Support: No; Low-profile card: No; Low-profile bracket bundle: No; Minimal recommended power adapter: 500 Watt; Bundle include: Drivers on CD, quick reference guide; Width: 232 mm; Height: 40 mm; Depth: 116 mm;</p>\r\n', 'gigabyte-radeon-rx580-gaming', 281, 'gigabyte-radeon-rx580-gaming.jpg', '2018-11-16', 4),
(59, 11, 'Gigabyte GTX1050', '<p>GeForce GTX 1050 OC 3G, 3 GB GDDR5, 96-bit, 768 CUDA, DL DVI-D, HDMI 2.0b, DP 1.4, PCI-E 3.0 x16, 36x191x111 mm</p>\r\n', 'gigabyte-gtx1050', 163.5, 'gigabyte-gtx1050.jpg', '2018-11-16', 2),
(60, 11, 'VGA PCIE16 GT1030', '<p>Unit Gross Weight: 0.44 kg; Unit Net Weight: 0.32 kg; Memory bus: 64 bit; Chipset: NVIDIA GeForce GT 1030; Cooling system: Single Slot Fansink; Max resolution: 4096x2160; Memory clock: 6008 MHz; GPU clock: 1265 MHz; Graphics memory size: 2 GB; Graphics memory type: GDDR5; GPU boost clock: 1518 MHz; Graphics connector: PCIE 3.0 16x; Full Description Line: NVIDIA GeForce GT 1030|Graphics memory size 2 GB|64 bit|PCIE 3.0 16x|GDDR5|Memory clock 6008 MHz|GPU clock 1265 MHz|GPU boost clock 1518 MHz|4096x2160|Cooling Single Slot Fansink;</p>\r\n', 'vga-pcie16-gt1030', 92.5, 'vga-pcie16-gt1030.jpg', '2018-11-16', 2),
(61, 9, 'SEAGATE HDD Desktop SkyHawk Guardian Surveillance', '<p>Device Location: Internal; Form factor: 3.5&quot;; Storage capacity: 6 TB; Supports Data Channel: SATA III-600; Swap Capability: Cold; Installed Cache Memory Storage Capacity: 256 MB; Rotational Speed: 7200 rpm; Internal Data Bit Rate: 195 Mbps; External Data Bit Rate: 6 Gbps; Non-Recoverable Errors: 1 per 10^15; Hard Drive Features: 24/7; SATA Interface Quantity: 1; SATA Interface Connector Type: SATA 7-pin; Maximum Supply Voltage: 12 V; Minimum Supply Voltage: 5 V; Maximum Power Consumption: 9 W; Minimum Power Consumption: 0.6 W; Maximum Operating Ambient Temperature: 70 &deg;C; Minimum Operating Ambient Temperature: 0 &deg;C; Maximum Non-Operating Ambient Temperature: 70 &deg;C; Minimum Non-Operating Ambient Temperature: -40 &deg;C; Depth (mm): 146.99 mm; Height (mm): 26.11 mm; Width (mm): 101.85 mm; Nominal Weight: 0.705 kg; Package Type: Box; Warranty Term (month): 36 month(s); Warranty Validation Criteria: Serial Number; Box Weight Brutto (kg): 15.6 kg;</p>\r\n', 'seagate-hdd-desktop-skyhawk-guardian-surveillance', 187, 'seagate-hdd-desktop-skyhawk-guardian-surveillance.jpg', '2018-11-16', 1),
(62, 9, 'Western Digital HDD SATA 4TB', '<p>Unit Gross Weight: 0.685 kg; Unit Net Weight: 0.68 kg; Rotation speed: 5400 rpm; Buffer memory size: 64 MB; HDD Family name: Purple; Form factor: 3,5&quot;; Width: 101.6 mm; Height: 26.1 mm; Depth: 147 mm; SATA 3.0: Yes; Pallet quantity: 800; HDD Capacity: 4TB; Full Description Line: Purple|4TB|SATA 3.0|Buffer 64 MB|5400 rpm|3,5&quot;;<br />\r\n&nbsp;</p>\r\n', 'western-digital-hdd-sata-4tb', 125, 'western-digital-hdd-sata-4tb.jpg', '2018-11-16', 2),
(63, 9, 'Hitachi HDD SATA 1TB', '<p>Unit Gross Weight: 0.132 kg; Unit Net Weight: 0.115 kg; Average Seek: 12 ms; Rotation speed: 7200 rpm; Buffer memory size: 32 MB; HDD Family name&nbsp;&nbsp; &nbsp;Travelstar: 7K1000; Form factor: 2,5&quot;; Bytes per Sector: 512 Bytes/sector; SATA 3.0: Yes; HDD Capacity: 1TB; Drive thickness: 9.5mm; Full Description Line: Travelstar 7K1000|1TB|SATA 3.0|Buffer 32 MB|7200 rpm|Average Seek 12 ms|2,5&quot;|Thickness 9.5mm;</p>\r\n', 'hitachi-hdd-sata-1tb', 65.5, 'hitachi-hdd-sata-1tb.jpg', '2018-11-16', 1),
(64, 9, 'Seagate EXOS 5E8 3.5\"', '<p>Producer: Seagate; Product class: Hard disk - internal; Disk type: Standard (magnetic platter); Width format: 3.5 inches; Hard disk capacity: 8 TB; Interface: Serial ATA 600; Hard Disk interface speed: 6 Gb/s; Cache memory capacity: 256 MB; Quantity of plates: 4; Number of data heads: 8; Medium Time Between Failure (MTBF): 800000 hr; Reading errors %: 1:10E14; Power supply: SATA (15pin); Power consumption (work/idle): 5/3,4 Watt; Width: 101.85 mm; Height: 26.11 mm; Length: 146.99 mm; Net weight: 630 g; Products&#39; family: Seagate Archive; Additional functions: S.M.A.R.T. (Self Monitoring Analysis and Reporting Technology);</p>\r\n', 'seagate-exos-5e8-3-5', 264, 'seagate-exos-5e8-3-5.jpg', '2018-11-16', 1),
(65, 9, 'Seagate Barracuda Pro 3.5\" 14TB', '<p>Producer: Seagate; Product class: Hard disk - internal; Disk type: Standard (magnetic platter); Width format: 3.5 inches; Hard disk capacity: 14 TB; Interface: Serial ATA 600; Hard Disk interface speed: 6 Gb/s; Engine rotation speed: 7200 rpm; Cache memory capacity: 256 MB; Maximal internal transmission speed: 238 Mb/s; Quantity of plates: 8; Number of data heads: 16; Shock resistance: work 70G / idle 250G; Reading errors %: 1:10E15; Acoustic emissions: 2 B; Idle noise level: 1.8 B; Power supply: 12V DC (&plusmn;10%), 5V DC (&plusmn;5%); Width: 101.6 mm; Height: 26.11 mm; Length: 146.99 mm; Net weight: 690 g; Products&#39; family: Seagate BarraCuda Pro; Additional functions: S.M.A.R.T. (Self Monitoring Analysis and Reporting Technology);</p>\r\n', 'seagate-barracuda-pro-3-5-14tb', 558, 'seagate-barracuda-pro-3-5-14tb.jpg', '2018-11-16', 1),
(66, 10, 'Kingstone HyperX SSD 240GB SATA3', '<p>Product Description: HyperX Savage - solid state drive - 240 GB - SATA 6Gb/s; Type: Solid state drive - internal; Capacity: 240 GB; Form factor: 2.5&quot; (in 3.5&quot; carrier); Interface: SATA 6Gb/s; Data Transfer Rate: 600 MBps; Dimensions (WxDxH): 69.9 mm x 100 mm x 7 mm; Weight: 96 g; Manufacturer Warranty: 3 years warranty;</p>\r\n', 'kingstone-hyperx-ssd-240gb-sata3', 128, 'kingstone-hyperx-ssd-240gb-sata3.jpg', '2018-11-16', 1),
(67, 10, 'ADATA SU800 1TB', '<p>Product Description: ADATA Ultimate SU800 - solid state drive - 1 TB - SATA 6Gb/s; Type: Solid state drive - internal; Capacity: 1 TB; NAND Flash Memory Type: 3D triple-level cell (TLC); Form factor: 2.5&quot;; Interface: SATA 6Gb/s; Data Transfer Rate: 600 MBps; Dimensions (WxDxH): 69.85 mm x 100.45 mm x 7 mm; Weight: 47.5 g; Manufacturer Warranty: 3 years warranty;</p>\r\n', 'adata-su800-1tb', 170.5, 'adata-su800-1tb.jpg', '0000-00-00', 0),
(68, 10, 'ADATA SP580 240GB', '<p>Product Description: ADATA SP580 - solid state drive - 240 GB - SATA 6Gb/s; Type: Solid state drive - internal; Capacity: 240 GB; NAND Flash Memory Type: Triple-level cell (TLC); Form factor: 2.5&quot;; Interface: SATA 6Gb/s; Data Transfer Rate: 600 MBps; Dimensions (WxDxH): 69.85 mm x 100.45 mm x 7 mm; Weight: 47.5 g; Manufacturer Warranty: 3 years warranty;<br />\r\n&nbsp;</p>\r\n', 'adata-sp580-240gb', 78.5, 'adata-sp580-240gb.jpg', '0000-00-00', 0),
(69, 10, 'Crucial SSD SATA 2.5\" 1TB', '<p>Unit Gross Weight: 0.11 kg; Unit Net Weight: 0.1 kg; Form factor: 2,5&quot;; MTBF: 1.8e+006 hours; NAND flash technology: TLC; SATA 3.0: Yes; Read speed: 560 MBytes/sec; Write Speed: 510 MBytes/sec; SSD Capacity: 1TB; Drive thickness: 7mm; SSD series: MX500; Full Description Line: SSD series MX500|1TB|SATA 3.0|Technology TLC|Write speed 510 MBytes/sec|Read speed 560 MBytes/sec|Form Factor 2,5&quot;|Drive thickness 7mm|MTBF 1800000 hours;<br />\r\n&nbsp;</p>\r\n', 'crucial-ssd-sata-2-5-1tb', 166.5, 'crucial-ssd-sata-2-5-1tb.jpg', '0000-00-00', 0),
(70, 10, 'Kingstone DC400 1.6TB', '<p>Hard disk drive type: SSD; Weight, g: 92.34; Dimensions W x D x H, mm: 100 x 69.9 x 7; Data transfer rate, Gbit/s: 6; Hard disk size, &quot;: 2.5; Hard disk interface: Serial ATA III; Read speed, MB/s: 555; Write speed, MB/s: 510; Hard disk drive capacity: 1.6 TB;</p>\r\n', 'kingstone-dc400-1-6tb', 883, 'kingstone-dc400-1-6tb.jpg', '0000-00-00', 0),
(71, 2, 'Corsair PC ONE', '<p>Producer: Corsair; Product class: Computer; Computer case type: Mini Tower; Products&#39; Family Name: CORSAIR ONE PRO; Installed processors qty: 1 Pcs; Maximal number of processors: 1 Pcs; Installed processor type: Intel Core i7; Processor code: i7-7700K; Installed processor&#39;s clock speed: 4.2 GHz, 4.5 GHz; QPI/DMI bus frequency: 8 GT/s; Cache memory capacity [L3]: 8 MB; Intel vPro technology: No; Number of installed hard disks: 2 Pcs; Installed disk capacity: 2 TB, 480 GB; Installed hard disk type: SATA, SSD M.2; Engine rotation speed: 7200 rpm; Installed memory capacity: 16384 MB; Maximal memory capacity: no data; Installed memory type: DDR4; Type of memory: N/A; Memory bus frequency: 2400 MHz; Number of memory banks: no data; Producer of installed mainboard&#39;s chipset: Intel; Installed chipset type: Z270; Integrated graphic card: Yes; Integrated graphic card type: Intel HD Graphics 630; Installed graphic card type: Nvidia GeForce GTX 1080; Integrated sound card: Yes; Integrated sound card type: Integrated; Integrated network adapter: Yes; Wireless network card: Yes; Wireless network card type: IEEE 802.11a/b/g/n/ac; Bluetooth: Yes; Interfaces (connectors): 1x USB 3.1 Gen 2 Type-A , 1x USB 3.1 Gen 2 Type-C, 2x USB 3.1 Gen 1 Type-A , 2 x USB 2.0, 1 x PS-2, 1 x HDMI, 2 x DisplayPort, 1 x SPDIF, 1 x DC-in; Operating system: Windows 10 Home; Power supply (supplies) power: 400 Watt; Width: 176 mm; Height: 380 mm; Depth: 200 mm; Net weight: 7.4 kg;</p>\r\n', 'corsair-pc-one', 2365, 'corsair-pc-one.jpg', '0000-00-00', 0);
INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(72, 2, 'FUJITSU CELS M770POWER W-2133', '<p>INTERNAL MEMORY: 16; Total Storage Capacity: 512 GB SSD; Processor family: Intel Xeon W; Operating system provided: Windows 10 Pro; Processor number of cores: 6; Processor clock speed, GHz: 3.60; Connections: USB 3.1. Gen 2; Graphic adapter: No; Maximum internal memory, GB: 256 GB; MOTHERBOARD CHIPSET: Intel C422; Memory slots (available): 6; Processor model: Intel Xeon W-2133 (Max. 3.90 GHz, 8.25 M, 6C); Solid State Disk drive type: M.2 PCIe NVMe; Processor manufacturer: Intel; Intel Virtualization technology: VT-x / VT-d; Internal memory type: DDR4; Memory clock speed, MHz: 2666; Height, mm: 433; Width, mm: 180; Depth, mm: 476; Memory slots: 8; Number of hard drives installed: 1; Ethernet LAN (RJ-45) ports quantity: 1; USB-A (USB 2.0) ports quantity: 2; Intel Turbo Boost, GHz: 3.90 GHz; Intel Smart Cache, MB: 8.25; Speaker/ headphone/ line-out jack: 1; PCI Express x4: 2; USB-A (USB 3.1) ports quantity: 2; Weight, kg: 18; Optical Drive: DVD+/-RW; INTEGRATED MEMORY CARD READER: Yes; Wireless LAN (WLAN): No; PCI Express x1: 2; PCI Express x16: 2; Intel vPro: Yes; Intel HyperThreading: Yes; Ethernet LAN data transfer rates, Mbit/s: 10/100/1000; RAID levels: 0/1/5/10; Raid Controller: Yes;</p>\r\n', 'fujitsu-cels-m770power-w-2133', 2675, 'fujitsu-cels-m770power-w-2133.jpg', '0000-00-00', 0),
(73, 2, 'ZOTAC MAGNUS EN1080K', '<p>Producer: Zotac; Product class: Barebone computer; &nbsp;Processor producer: Intel; Processor type: Core i7; Processor socket type: FCLGA1151; Supported Hyper-Threading technology: Yes; Number of processor slots: 0; Chipset producer: Intel, NVIDIA; Chipset type: B150; Memory type: SODIMM DDR4; Number of DDR4 slots: 2; Memory bus frequency: 2400 MHz; Max memory size: 32 GB; Graphic card type: Nvidia GeForce GTX 1080; Supports VGA systems integrated in the processors: No; HDMI connector: 3 Pcs; DVI connector: 0 Pcs; D-Sub connector: 0 Pcs; LAN controller: Yes; Type of integrated network adapter: 2 x 10/100/1000 Mbit/s; Wireless network card: Yes; Wireless network card type: IEEE 802.11b/g/n/ac; Bluetooth: Yes; Interfaces (connectors): 1 x line out, 1 x Microphone input, 2 x USB 3.1, 4 x USB 3.0, 2 x RJ-45, 2 x DisplayPort, 3 x HDMI; USB 2.0 connectors: 0; USB 3.0 connectors: 4; FireWire (IEEE 1394) connectors: 0 Pcs; Memory card reader: Yes; Types of supported memory cards: SecureDigital Card, SecureDigital Card High-Capacity (SDHC), SecureDigital eXtended Capacity Card (SDXC); Maximal number of Serial ATA devices: 1 Pcs; Serial ATA Hard Disks interface speed: 600 MB/s; Type of computer case: no data; Case type (motherboard type): no data; Number of internal 2,5&quot; bays: 1; Power supply (supplies) power: 180 Watt; Width: 225 mm; Height: 203 mm; Length: 128 mm; Colour: Black; Additional features: Bluetooth 4.2, Kensington lock, 1 x M2 SSD slot;</p>\r\n', 'zotac-magnus-en1080k', 1965, 'zotac-magnus-en1080k.jpg', '0000-00-00', 0),
(74, 2, 'LENOVO THINKSTATION P320', '<p>Total Storage Capacity: 256 GB SSD; Graphics adapter family: NVIDIA Quadro; Graphic adapter: NVIDIA Quadro P2000 5GB; Power supply, W: 250; Operating system provided: Windows 10 Pro; Processor model: Intel Core i7-7700 (Max. 4.20 GHz, 8M, 4C); Intel vPro: Yes; Intel Virtualization technology: VT-x / VT-d; Intel HyperThreading: Yes; Intel Turbo Boost, GHz: 4.20; Intel Smart Cache, MB: 8; Memory clock speed, MHz: 2400; INTERNAL MEMORY: 16 GB; Optical Drive: Yes; INTEGRATED MEMORY CARD READER: Yes; Processor family: Intel Core i7; Processor manufacturer: Intel;</p>\r\n', 'lenovo-thinkstation-p320', 1640, 'lenovo-thinkstation-p320.jpg', '2018-11-16', 1),
(75, 2, 'ASUS ROG GR8 II 6GT016Z', '<p>Product Description: ASUS ROG GR8 II 6GT016Z - mini PC - Core i5 7400 - 16 GB - 1.128 TB; Type: Personal computer - mini PC; Processor: 1 x Intel Core i5 (7th Gen) 7400 (Quad-Core); RAM: 16 GB (installed) / 32 GB (max) - DDR4 SDRAM; Storage Controller: SATA (SATA 6Gb/s); Hard drive: 1 x SSD 128 GB - SATA - M.2; Hard Drive (2nd): 1 x 1 TB - SATA 6Gb/s - 7200 rpm; Optical storage: No optical drive; Graphics Controller: NVIDIA GeForce GTX 1060; Video memory: 6 GB GDDR5 SDRAM; Networking: GigE, Bluetooth 4.0, 802.11ac; OS Provided: Windows 10 64-bit Edition; Dimensions (WxDxH): 8.8 cm x 28.13 cm x 29.9 cm; Weight: 4 kg;</p>\r\n', 'asus-rog-gr8-ii-6gt016z', 1015, 'asus-rog-gr8-ii-6gt016z.jpg', '0000-00-00', 0),
(76, 3, 'Apple IPad Pro 12\'9', '<p>Producer: Apple; Product class: PC tablets; Operating system (installed): iOS 11; Screen diagonal: 12.9 inches; Screen resolution: 2732 x 2048 pixels; LCD panel type: Multi-Touch, ProMotion Technology, Retina; Backlight technology: LED; Touch panel: Yes; Built-in memory: 256 GB; Memory card reader: No; Processor class: Apple A10X; Communication and data transfer: Wi-Fi (802.11a/b/g/n/ac), Bluetooth 4.2, iBeacon microlocation; Built-in modem 3G/4G: No; External connectors: 1 x 3,5 mm Jack (headphones), Lightning connector; Mobile phone function: No; Built-in digital camera: Yes; Effective pixels qty: 12 mill. pixels, 7 mill. pixels; Built-in GPS receiver: No; Other functions: Dual camera, Digital zoom, Optical Image Stabilization, LED flash, Autofocus, 4K Video Recording, Full HD video recording, HD video recording, Face detection, Geo-tagging, Video connection, Video player, Music player, Digital compass, 3-axis gyroscope, Accelerometer, Barometer, Ambient light sensor, Calendar, Clock, notepad; Menu language version: Multi-language; Power supply type: Built-in rechargeable lithium polymer battery; Battery durability: 10 hr; Bundle includes: Lightning to USB Cable, USB power adapter; Colour: Gold; Width: 220.6 mm; Height: 305.7 mm; Depth: 6.9 mm; Net weight: 677 g;</p>\r\n', 'apple-ipad-pro-12-9', 1045, 'apple-ipad-pro-12-9.jpg', '0000-00-00', 0),
(77, 3, 'HUAWEI MEDIAPAD MS 10\'\' 4G', '<p>Mobile operating system provided: Android; Display resolution, pixels: 2560 x 1600; Total Storage Capacity: 64 GB; Display diagonal, &quot;: 10.8; Processor number of cores: 8; Processor model: HiSilicon Kirin 960; Operating System Version: 8.0; Battery performance, mAh: 7500; INTERNAL MEMORY: 4 GB; Data network: LTE FDD / LTE TDD / WCDMA / GSM; Mobile broadband: Yes; WLAN type: Wi-Fi 802.11a/b/g/n/ac, 2.4 GHz &amp; 5 GHz; Sensors: Gyroscope; Assisted GPS function (A-GPS): Yes; GPS: Yes; Rear camera resolution, MP: 13; Auto focus: Yes; Front camera, MP: 8; Video formats supported: mp4, 3gp; Dimensions W x D x H, mm: 258.7 x 171.8 x 7.3; Weight, g: 498; GLONASS: Yes; Bluetooth Version: 4.2; Bluetooth: Yes; COMPATIBLE MEMORY CARDS: microSD; Maximum memory card size: 256 GB; Connections: USB-C;</p>\r\n', 'huawei-mediapad-ms-10-4g', 508, 'huawei-mediapad-ms-10-4g.jpg', '0000-00-00', 0),
(78, 3, 'Galaxy TabS3 9.7\'\'', '<p>Product Type: Tablet; Processor: Qualcomm APQ 8096; Processor speed: 2.15GHz + 1.6GHz; RAM: 4 GB; ROM: 32 GB; SD: MicroSD up to 128GB; DISPLAY SIZE: 9.7&quot;; Display type: sAMOLED; Display resolution: 2048 x 1536; Camera: 13MP AF (F1.9) + 5MP (F2.2); Audio: Yes; GPS: Yes; Wireless: Yes; Bluetooth: Yes; Operating system: Android N; Battery: 6000 mAh; Width: 169 mm; Depth: 237.3 mm; Height: 6.0 mm; Weight: 0.434 Kg; Warranty: 2 years;</p>\r\n', 'galaxy-tabs3-9-7', 659, 'galaxy-tabs3-9-7.jpg', '0000-00-00', 0),
(79, 3, 'LENOVO TABLET 10 N4100', '<p>Display resolution, pixels: 1920 x 1200; Processor clock speed, GHz: 1.10; Total Storage Capacity: 128 GB; INTERNAL MEMORY: 8 GB; Mobile broadband: Yes; Fingerprint reader: Yes; Mobile operating system provided: Windows; Display diagonal, &quot;: 10.1; Operating System Version: 10 Pro; Bluetooth Version: 4.1; Dimensions W x D x H, mm: 261 x 178 x 10.6; Trusted Platform Module (TPM) version: 2.0; Bluetooth: Yes; Video recording: 1080p; Trusted Platform Module (TPM): Yes; Cable lock slot: Kensington; Connections: USB-C (USB 3.1 Gen1); Processor model: Intel Celeron N4100 (Max. 2.40 GHz, 4M, 4C); Processor number of cores: 4; Graphic adapter: Intel UHD Graphics 600; Processor manufacturer: Intel; Intel Virtualization technology: VT-x / VT-d; Operating system architecture: 64-BIT; Wi-Fi: Yes; Intel vPro: No; Intel HyperThreading: No; Rear camera resolution, MP: 5; Front camera, MP: 2; WLAN type: 802.11ac; WLAN antennas: 2x2; Weight, g: 664; Built-in camera: Yes; Panel type: IPS; Battery capacity, Wh: 39;</p>\r\n', 'lenovo-tablet-10-n4100', 796, 'lenovo-tablet-10-n4100.jpg', '2018-11-16', 1),
(80, 3, 'Acer Iconia One 10 B3-A40FHD 10.1\'\'', '<p>Warranty: 12 month(s); Gross weight: 0.92 kg; Net weight: 0.6 kg; Display Technology: IPS; Internal memory type: LPDDR3; Front Camera: Yes; Type of battery: Accumulator; Gross depth (mm): 270 mm; Gross width (mm): 185 mm; Gross height (mm): 50 mm; Tare weight (kg): 0.32 kg; WEEE tax: Yes; WEE classification: CL109:5:2017-04-01; Composition of battery: CL127:KT:2016-12-09; Classification of battery: CL126:NE:2016-12-09; Embeeded battery: Yes; Producer product name: B3-A40FHD; Producer product family: Iconia One 10; Wi-Fi Direct: Yes; Packing quantity: 1 pc(s); TI weight (kg): 0.11 kg; Volume (m3): 0.0024975 m&sup3;; Front camera resolution (numeric): 2 MP; Display resolution: 1920 x 1200 pixels; Bluetooth Version: 4.1; LED backlight: Yes; Operating System Version: 7.0; Processor model: MT8167A; Internal storage capacity: 16 GB; Battery Technology: Li-ion; Processor frequency: 1.5 GHz; Touch technology: 10-finger touch; Display diagonal: 10.1 &quot;; Rear Camera: Yes; Rear camera resolution (numeric): 5 MP; Wi-Fi standards: 802.11a/b/g/n/ac; Maximum memory card size: 128 GB; Processor family: MTK; Operating system installed: Android; Bluetooth: Yes; 3G: No; INTERNAL MEMORY: 2 GB; COMPATIBLE MEMORY CARDS: micro SD/SDXC; 4G: No; Colour of product: Black; Battery capacity: 6100 mAh;<br />\r\n&nbsp;</p>\r\n', 'acer-iconia-one-10-b3-a40fhd-10-1', 186, 'acer-iconia-one-10-b3-a40fhd-10-1.jpg', '2018-11-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) CHARACTER SET utf8 NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(1, 13, 'aarrrrraaaaa', '2018-11-16'),
(2, 13, '', '2018-11-16'),
(3, 13, '', '2018-11-16'),
(4, 13, '', '2018-11-16'),
(5, 13, '', '2018-11-16'),
(6, 13, '', '2018-11-16'),
(7, 13, '', '2018-11-16'),
(8, 13, '', '2018-11-16'),
(9, 13, '', '2018-11-16'),
(10, 13, '', '2018-11-16'),
(11, 13, '', '2018-11-16'),
(12, 14, '', '2018-11-16'),
(13, 15, '', '2018-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', 'Admin', '', '', '', '2018-10-27'),
(13, 'tester1@gmail.ee', '$2y$10$55xnNYEvC9XNzJetWVlx4uJY/ZlTzlp4WCURIHFxfw6LGSPG28zhC', 0, 'tester1', 'tester1lastname', 'Test address', 'Test info', '', '2018-11-10'),
(14, 'tester2@gmail.ee', '$2y$10$cgKUOPtAWQAh1sLFag4QsOQju0y3y6WsooPLqca8FchKzqYbMudtK', 0, 'tester2', 'tester2lastname', '', '', '', '2018-11-16'),
(15, 'tester3@gmail.ee', '$2y$10$GAZR3mcLjEfo.o6jAwdO9uTcVWpC8rxf2qC5Ta3R1Namj7urxlIuq', 0, 'tester3', 'tester3lastname', '', '', '', '2018-11-16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
