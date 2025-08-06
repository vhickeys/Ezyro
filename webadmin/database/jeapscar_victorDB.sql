-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 06, 2025 at 01:19 PM
-- Server version: 8.0.42-cll-lve
-- PHP Version: 8.3.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jeapscar_victorDB`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_me`
--

CREATE TABLE `about_me` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `intro_title` text COLLATE utf8mb4_general_ci NOT NULL,
  `intro_text` text COLLATE utf8mb4_general_ci NOT NULL,
  `years_of_experience` int NOT NULL,
  `projects_completed` int NOT NULL,
  `clients_worldwide` int NOT NULL,
  `what_i_do` text COLLATE utf8mb4_general_ci NOT NULL,
  `pro_summary` text COLLATE utf8mb4_general_ci NOT NULL,
  `skills` text COLLATE utf8mb4_general_ci NOT NULL,
  `education` text COLLATE utf8mb4_general_ci NOT NULL,
  `awards` text COLLATE utf8mb4_general_ci NOT NULL,
  `certifications` text COLLATE utf8mb4_general_ci NOT NULL,
  `languages` text COLLATE utf8mb4_general_ci NOT NULL,
  `interest` text COLLATE utf8mb4_general_ci NOT NULL,
  `github_link` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `resume` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_me`
--

INSERT INTO `about_me` (`id`, `name`, `role`, `intro_title`, `intro_text`, `years_of_experience`, `projects_completed`, `clients_worldwide`, `what_i_do`, `pro_summary`, `skills`, `education`, `awards`, `certifications`, `languages`, `interest`, `github_link`, `image`, `resume`, `status`, `date`) VALUES
(1, 'Victor Osaronwafor', 'Software Developer', 'HI, I\'M A FREELANCER', 'I\'m a software engineer specializing in scalable web apps.', 5, 200, 79, 'I design and develop high-performance websites, mobile apps, and enterprise software tailored to business needs. My expertise spans full-stack web development, UI/UX design, e-commerce solutions, legacy system modernization, and high-tech software development. From custom portals to AI-powered applications, I build robust and scalable digital solutions that drive growth and efficiency.', '<p>Dynamic and results-oriented Web Developer with 5 years of experience in designing and<br>building web applications. Proficient in both front-end and back-end development, specializing<br>in HTML, CSS, JavaScript (including AJAX &amp; Vue.js), and PHP (vanilla PHP and Laravel).<br>Skilled in Agile development methodologies, responsive design, RESTful API development, and<br>database management. Committed to delivering high-quality software solutions through effective<br>collaboration and innovative problem-solving.</p>', '<div>\r\n<h6><strong>Technical</strong></h6>\r\n<ul>\r\n<li>Front-end Technologies: HTML, CSS (Tailwind CSS &amp; Bootstrap), SASS, JavaScript<br>(including AJAX, Vue.js, and Vanilla JavaScript)</li>\r\n<li>Back-end Technologies: PHP (vanilla PHP and Laravel)</li>\r\n<li>&nbsp;Design Tools: Adobe Photoshop CC, Adobe Illustrator, Adobe XD, Figma</li>\r\n<li>Other Technologies: Python Django</li>\r\n<li>Database Management: SQL, NoSQL (Postgres, MongoDB), MySQL</li>\r\n<li>Version Control: Git</li>\r\n<li>Agile Development</li>\r\n<li>Responsive Design</li>\r\n<li>RESTful API Development</li>\r\n<li>Testing and Debugging&nbsp;</li>\r\n</ul>\r\n</div>\r\n<div>\r\n<h6><br>Professional</h6>\r\n<ul>\r\n<li>Effective communication</li>\r\n<li>Team player</li>\r\n<li>Strong problem solver</li>\r\n<li>Good time management</li>\r\n</ul>\r\n</div>', '<div>\r\n<div>\r\n<ul>\r\n<li>B.Sc Computer Science - University of Abuja, Gwawalagda Abuja</li>\r\n<li>M.Sc Information Technology - National Open University of Nigeria</li>\r\n</ul>\r\n</div>\r\n</div>', '', '<ul>\r\n<li>Advanced Software Development Course - Allison</li>\r\n<li>What is Software Development? - Simplilearn</li>\r\n</ul>', '<ul>\r\n<li>English(Native)</li>\r\n<li>French (Beginner)</li>\r\n</ul>', '<ul>\r\n<li>Chess Playing</li>\r\n<li>Piano Playing</li>\r\n<li>Coding</li>\r\n<li>Body Building</li>\r\n<li>Making Video Tutorials</li>\r\n</ul>', 'github.com/vhickeys', '67a4866f90ccd.jpg', '67add7472e43b.pdf', 0, '2025-01-03 01:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `date`) VALUES
(1, 'Graphics Design', 'graphics-design', 'Graphics Design', 0, '2024-12-16 06:46:57'),
(2, 'UI/UX Designs', 'uiux-designs', 'UI/UX Designs', 0, '2024-12-16 06:52:19'),
(4, 'Mobile App Development', 'mobile-app-development', 'Mobile App Development', 0, '2024-12-16 22:50:33'),
(5, 'Website Development', 'website-development', 'Website Development', 0, '2024-12-16 23:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int NOT NULL,
  `post_id` int NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `first_name`, `last_name`, `email`, `message`, `date`) VALUES
(3, 2, 'Victor', 'Osaronwafor', 'victorosaronwafor@gmail.com', 'success', '2025-02-06 16:48:58'),
(4, 2, 'Joshua', 'James', 'admin@fontainebleaupl.com', '            SomethingWentWrong();\n', '2025-02-06 17:08:31'),
(5, 2, 'Victor', 'Osaronwafor', 'victorosaronwafor@gmail.com', 'victorosaronwafor@gmail.com', '2025-02-11 10:22:14'),
(6, 2, 'Mary', 'Clement', 'maryclems9@gmail.com', 'This post is awesome!', '2025-02-11 10:48:03'),
(7, 2, 'Victor', 'Osaronwafor', 'victorosaronwafor@gmail.com', 'webadmin/classes/process.php?action=get-comments&post_id=', '2025-02-11 11:02:29'),
(8, 2, 'Victor', 'Osaronwafor', 'victorosaronwafor@gmail.com', '08188059316', '2025-02-11 11:07:22'),
(9, 2, 'Victor', 'Osaronwafor', 'victorosaronwafor@gmail.com', '08188059316', '2025-02-11 11:08:30'),
(10, 1, 'Victor', 'Legend', 'victorosaronwafor@gmail.com', 'Nice blog Post', '2025-02-11 15:11:50'),
(11, 7, 'Victor', 'Osaronwafor', 'victorosaronwafor@gmail.com', 'Nice post!. I want to hire you!!', '2025-02-13 15:56:27'),
(12, 9, 'Victory', 'Eseohe', 'victorosaronwafor@gmail.com', 'Nice post! Already subscribed!!', '2025-03-06 10:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_general_ci,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `location`, `message`, `date`) VALUES
(2, 'Victory Eseohe', 'victorosaronwafor@gmail.com', '08188059316', 'Abuja', 'I want to build a portal', '2025-02-11 11:40:48'),
(4, 'James Victory', 'jamesvick@gmail.com', '08188059316', 'Abuja', 'I need a coporate website', '2025-02-13 11:16:46'),
(5, 'Victor Olamide Osaronwafor', 'victorosaronwafor@gmail.com', '08188059316', 'Abuja', 'I need a coporate website', '2025-02-13 11:17:21'),
(6, 'Victor ', 'victorosaronwafor@gmail.com', '08188059316', 'Abuja', 'Hiii I want to build an app', '2025-02-13 17:04:54'),
(7, 'Ebonyi Favour', 'ebonyisamuel40@gmail.com', '08120195699', 'Brooklyn, NY', 'Hello would', '2025-07-20 05:17:56');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `proof` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint DEFAULT '0' COMMENT '0=pending, 1=approved, 2=declined'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `caption` text NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `client` varchar(255) NOT NULL,
  `services` text NOT NULL,
  `technologies` text NOT NULL,
  `project_url` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `duration` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `creator` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `category_id`, `title`, `slug`, `caption`, `description`, `image`, `client`, `services`, `technologies`, `project_url`, `start_date`, `duration`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `creator`, `date`) VALUES
(1, 5, 'Fontainebleau Partners Limited', 'fontainebleau-partners-limited', 'Fontainebleau Partners Limited Real Estate Website', '<p>I developed the online platform for Fontainebleau Partners Limited, a niche real estate development company specializing in mid to upscale properties. Established on August 31, 2018, as part of the Fontainebleau Group, the company focuses on luxury real estate development and property management consulting, serving both local and international clients. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The platform highlights Fontainebleau&rsquo;s commitment to class, luxury, comfort, and affordability. It features an intuitive interface for exploring available properties, including outright sales and off-plan options that allow clients to customize their homes during construction. Additional functionalities include virtual live tours, physical inspection booking, and location-based search assistance to enhance user experience and convenience. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>This project enhances Fontainebleau&rsquo;s digital presence, providing a seamless and engaging interface for real estate transactions while ensuring clients receive immediate support and personalized guidance.</p>', '67b895675ba77.jpg', 'Fontainebleau Partners Limited', 'Website Design, Website Development', 'HTML, React, Laravel ', 'https://fontainebleaupl.com', '2025-01-11', '2 Weeks', 'Dmy Foodplug Ecommerce Website', 'Website Design, Website Development, Fontainebleau Partners, Victor Osaronwafor', 'The platform highlights Fontainebleau’s commitment to class, luxury, comfort, and affordability. It features an intuitive interface for exploring available properties, including outright sales and off-plan options that allow clients to customize their homes during construction. Additional functionalities include virtual live tours, physical inspection booking, and location-based search assistance to enhance user experience and convenience.  ', 0, 'Olvios', '2024-12-17 04:20:12'),
(2, 5, 'Africa Economic Forum Events Portal', 'africa-economic-forum-events-portal', 'AEF-Events Portal Solutions', '<p data-start=\"0\" data-end=\"440\">AEF Events is an online portal I developed for the Africa Economic Forum, designed to provide a comprehensive listing of events, conferences, and forums focused on economic development, investment opportunities, and business networking in Africa. The platform serves as a centralized hub for individuals, organizations, and investors looking to stay informed about the latest events and opportunities shaping the African economic landscape.</p>\r\n<p data-start=\"0\" data-end=\"440\">&nbsp;</p>\r\n<p data-start=\"442\" data-end=\"966\">The project included a dynamic event management system that allows users to explore and filter upcoming conferences, workshops, seminars, and summits based on their interests, location, and date. The platform covers key topics such as infrastructure development, renewable energy, technology innovation, trade and investment, entrepreneurship, and sustainable development. Features such as automated email notifications, calendar integration, and a seamless user interface ensure an engaging and efficient user experience.</p>\r\n<p data-start=\"442\" data-end=\"966\">&nbsp;</p>\r\n<p data-start=\"968\" data-end=\"1204\" data-is-last-node=\"\" data-is-only-node=\"\">This project has enhanced the Africa Economic Forum&rsquo;s ability to connect stakeholders with valuable networking and learning opportunities, strengthening its role as a key facilitator of economic discussions and collaborations in Africa.</p>', '67b8931af3bb8.jpg', 'Africa Economic Forum', 'API Development, Web Development, Database Design, Email Support System, Content Management System', 'Python, REST API, Core PHP, Javascript, Bootstrap', 'https://aef-events.com/', '2023-02-17', '1 Month ', 'Africa Economic Forum Events Portal', 'AEF Events, Africa Economic Forum, Events Portal, Victor Osaronwafor', 'AEF Events is an online portal I developed for the Africa Economic Forum, designed to provide a comprehensive listing of events, conferences, and forums focused on economic development, investment opportunities, and business networking in Africa. The platform serves as a centralized hub for individuals, organizations, and investors looking to stay informed about the latest events and opportunities shaping the African economic landscape.', 0, 'Olvios', '2024-12-17 04:28:25'),
(3, 5, 'DMY Foodplug  E-Commerce Solution', 'dmy-foodplug-e-commerce-solution', 'DMY Foodplug – Premium Agrofoods E-Commerce Solution', '<p data-start=\"0\" data-end=\"264\">DMY Foodplug is a premium agrofoods e-commerce solution that I developed for a client specializing in fresh and frozen meats. The platform provides a seamless shopping experience, allowing customers to browse and purchase high-quality protein products with ease.</p>\r\n<p data-start=\"0\" data-end=\"264\">&nbsp;</p>\r\n<p data-start=\"266\" data-end=\"746\">The project included e-commerce functionality with an intuitive interface for ordering fresh and frozen meats, a product management system for easy updates and inventory tracking, and secure payment integration with multiple gateways for a smooth checkout process. The website was designed to be mobile-optimized, ensuring responsiveness across all devices. Additionally, it effectively showcases DMY Foodplug&rsquo;s export services, emphasizing their reach across Europe and Africa.</p>\r\n<p data-start=\"266\" data-end=\"746\">&nbsp;</p>\r\n<p data-start=\"748\" data-end=\"902\" data-is-last-node=\"\" data-is-only-node=\"\">This project enhanced DMY Foodplug&rsquo;s online presence, enabling them to reach a wider audience while maintaining a professional and efficient online store.</p>', '67b88f58cffd3.jpg', 'DMY Foodplug', 'Website Design, Website Development, Database Design', 'HTML, CSS, JavaScript, Bootstrap, PHP ', 'https://dmyfoodplug.com/', '2024-10-06', '3 Weeks', 'DMY Foodplug – Premium Agrofoods E-Commerce Solution', 'DMY, Foodplug, Olvios, Victor Osaronwafor', 'DMY Foodplug is a premium agrofoods e-commerce solution that I developed for a client specializing in fresh and frozen meats. The platform provides a seamless shopping experience, allowing customers to browse and purchase high-quality protein products with ease.', 0, 'Olvios', '2024-12-17 04:33:16'),
(7, 5, 'Africa Economic Forum - NGO Website', 'africa-economic-forum-ngo-website', 'Africa Economic Forum - NGO Website', '<p data-start=\"41\" data-end=\"292\">I designed and developed the Africa Economic Forum website, a dynamic platform that serves as the digital hub for the Africa Economic Forum, an international non-profit organization committed to driving economic transformation across Africa.</p>\r\n<p data-start=\"294\" data-end=\"569\">The website was built with a focus on engagement, accessibility, and efficiency, ensuring that stakeholders from both the public and private sectors could seamlessly interact and collaborate to foster economic growth, social progress, and human rights advocacy.</p>\r\n<p data-start=\"294\" data-end=\"569\">&nbsp;</p>\r\n<p data-start=\"294\" data-end=\"569\">Though I have not actively maintained the website recently, it remains a testament to my ability to deliver high-impact digital solutions that align with the mission and goals of international organizations.</p>', '67bf342dbc312.jpg', 'Africa Economic Forum', 'Website Development, Website Design', 'HTML, CSS, React, PHP', 'https://www.aefgroup.org', '2023-01-26', '1 month', 'Africa Economic Forum - NGO Website', 'AEF Group, Africa, Victor Osaronwafor, Gravics Designs', 'I designed and developed the Africa Economic Forum website, a dynamic platform that serves as the digital hub for the Africa Economic Forum, an international non-profit organization committed to driving economic transformation across Africa.\r\n\r\nThe website was built with a focus on engagement, accessibility, and efficiency, ensuring that stakeholders from both the public and private sectors could seamlessly interact and collaborate to foster economic growth, social progress, and human rights advocacy.', 0, 'Olvios', '2025-02-26 16:33:01'),
(8, 5, 'Africa Legacy Fund - NGO Website', 'africa-legacy-fund-ngo-website', '', '<p>I developed the official website for the Africa Legacy Fund (ALgfund), a philanthropic initiative that connects high-profile donors with sustainable development projects across Africa. The goal was to create a platform that is transparent, impactful, and easy to use, removing the typical administrative and operational burdens associated with charitable giving. I was responsible for designing and building a responsive, user-friendly interface that clearly communicates ALgfund&rsquo;s mission and values. I implemented features that allow donors to explore and track the progress of high-impact projects, ensuring transparency and accountability.</p>\r\n<p>&nbsp;</p>\r\n<p>The website was built with scalability in mind, allowing for future growth and integration of strategic partnerships. My work focused on delivering a smooth, secure experience that encourages trust and increases donor engagement.</p>', '682cec9bf1e4b.jpg', 'Africa Economic Forum', 'Website Development, Database Design', 'Laravel, HTML, CSS, JavaScript ', 'https://africalegacyfund.aefgroup.org/', '2025-04-24', '3 Days', 'Africa Legacy Fund ', 'Africa, Legacy, Fine, Osaronwafor Victor', 'The Africa Legacy Fund (ALgfund) is a unique philanthropic initiative aimed at bridging the gap between high-profile donors and sustainable development projects across Africa. Our platform offers a stress-free, transparent, and impactful way for donors to support causes without being burdened by administrative and operational complexities.\r\n\r\nFounded on the principles of transparency, accountability, and collaboration, ALgfund identifies and supports high-impact projects in key sectors. Through strategic partnerships, we ensure that every donation makes a measurable and meaningful difference.', 0, 'Olvios', '2025-05-20 21:56:59'),
(9, 5, 'AEF CEO Council - NGO Website', 'aef-ceo-council-ngo-website', 'AEF CEO Council ', '<p>I built the website for the Council, a flagship initiative of the Africa Economic Forum (AEF), designed to foster collaboration, knowledge sharing, and advocacy for policies that drive economic growth and development across the continent.</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;The platform serves as a hub for thought leaders, policymakers, and stakeholders committed to advancing Africa&rsquo;s economic transformation. My role involved creating a professional and engaging digital presence that aligns with AEF&rsquo;s mission to promote prosperity throughout the region. I focused on delivering a clean, responsive design that enhances user experience and makes it easy to access key information, resources, and updates. The result is a robust, scalable platform that supports the Council&rsquo;s work in shaping and influencing impactful economic policies for Africa.</p>', '682cf0c5e49ae.jpg', 'Africa Economic Forum ', 'UIUX, Website Development, Database Design', 'Laravel, HTML, CSS, JavaScript ', 'https://aefceocouncil.aefgroup.org', '2025-04-11', '1 Week', 'AEF CEO Council ', 'Africa, CEO Council, CEO, Victor Osaronwafor, Olvios', 'This unique platform fosters collaboration, knowledge sharing, and advocacy for policies that drive economic growth and development on the continent. The council is a flagship initiative of the Africa Economic Forum (AEF), which seeks to lead Africa’s economic transformation and promote prosperity across the region.', 0, 'Olvios', '2025-05-20 22:14:45'),
(10, 5, 'Africa Country Week - NGO Website ', 'africa-country-week-ngo-website', 'Exchange Ideas, Share Best Practices, and Foster Business Partnerships', '<p>I developed the website for the AEF Country Economic Week Africa, a prestigious annual event that brings together top government officials, policymakers, and leaders from the organized private sector to explore current perspectives and emerging opportunities in key African economies.</p>\r\n<p>&nbsp;</p>\r\n<p>The platform was created to support dialogue, collaboration, and networking among stakeholders with a shared goal of driving economic growth and sustainable development across the continent. My focus was on building a visually compelling and highly functional site that highlights the significance of the event while making it easy for users to access schedules, register, and stay informed.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The website also facilitates engagement by showcasing thought leadership, sharing best practices, and promoting strategic business partnerships, all in support of Africa&rsquo;s economic advancement.</p>', '682cf52319688.jpg', 'Africa Economic Forum', 'UIUX, Graphic Design, Website Development', 'Laravel, HTML, CSS, JavaScript ', 'https://countryeconomicweek.aefgroup.org', '2025-03-21', '5 Days', 'Africa Country Week ', 'Africa, Country, Week, Olvios, Osaronwafor, Olvios Tech', 'The AEF Country Economic Week Africa is a prestigious event that brings together top government officials, policy makers, and the organized private sector to review the current perspectives and emerging opportunities for key economies across Africa. This annual event serves as a platform for dialogue, collaboration, and networking, with the goal of driving economic growth and development across the continent. The AEF Country Economic Week Africa is a vital opportunity for stakeholders to exchange ideas, share best practices, and foster business partnerships that can drive sustainable economic development', 0, 'Olvios', '2025-05-20 22:33:23'),
(11, 5, 'Africa Continental Infrastructure Fund (ACIF) - NGO Website', 'africa-continental-infrastructure-fund-acif-ngo-website', 'To transform Africa through sustainable infrastructure development, driving economic growth and social development across the continent.', '<p>I designed and developed the website for the Africa Continental Infrastructure Fund (ACIF), an innovative financing initiative aimed at addressing Africa&rsquo;s critical infrastructure gap.</p>\r\n<p>&nbsp;</p>\r\n<p>The fund is structured around a Public-Private Partnership (PPP) model to support large-scale infrastructure projects that promote connectivity, economic growth, and improved quality of life across the continent. The platform was built to clearly communicate ACIF&rsquo;s mission and the urgent need for alternative funding solutions, given the continent&rsquo;s estimated annual infrastructure investment needs of $130&ndash;$170 billion.</p>\r\n<p>&nbsp;</p>\r\n<p>My work focused on creating a modern, informative, and user-friendly website that appeals to both public stakeholders and private investors, encouraging capital mobilization and partnership opportunities. The result is a strategic digital presence that supports ACIF&rsquo;s goal of accelerating infrastructure-led development in Africa.</p>', '682cf84e944c1.jpg', 'Africa Economic Forum', 'UIUX, Website Development', 'Laravel, HTML, CSS, JavaScript ', 'https://acifund.aefgroup.org/', '2025-05-15', '6 Days', 'Africa Continental Infrastructure Fund (ACIF)', 'Victor Osaronwafor, Africa, Continental, Africa Continental Infrastructure Fund (ACIF)', 'The Africa Continental Infrastructure Fund (ACIF) is an innovative financing mechanism dedicated to bridging the infrastructure gap across Africa. Designed to support large-scale infrastructure development through a Public-Private Partnership (PPP) model, the fund\'s ultimate aim is to foster connectivity, economic growth, and an enhanced quality of life for African citizens. Africa’s infrastructure investment needs are estimated between $130-$170 billion per year, yet public and donor resources alone remain insufficient. The ACIF seeks to mobilize private sector capital to close this gap and accelerate development across the continent.', 0, 'Olvios', '2025-05-20 22:46:54'),
(12, 5, 'Blue Diner Website', 'blue-diner-website', 'The website allows parents to easily explore packages, view event highlights, and connect with the planning team, making it a seamless gateway to joyful, stress-free celebrations.', '<p>I created the website for Blue Diner, a vibrant and imaginative event space in Abuja dedicated to hosting unforgettable celebrations for children and families. Built on the belief that every child deserves to feel special and every parent deserves a stress-free celebration, Blue Diner brings joy, color, and community into every event. Founded by parents with a passion for playful experiences, the venue has quickly become Abuja&rsquo;s go-to destination for magical kids&rsquo; events. My role was to design and develop a warm, engaging, and easy-to-navigate website that captures the spirit of Blue Diner&mdash;from birthdays to baby showers.</p>\r\n<p>&nbsp;</p>\r\n<p>I focused on showcasing the brand&rsquo;s creative energy and hospitality through thoughtful layout, vibrant visuals, and clear information about services. The website allows parents to easily explore packages, view event highlights, and connect with the planning team, making it a seamless gateway to joyful, stress-free celebrations.</p>', '682cfb5d8b0f9.jpg', 'Blue Diner Abuja ', 'Graphic Design, UI/UX, Web Development ', 'Laravel, HTML, CSS, JavaScript ', 'https://bluedinerabuja.com/', '2025-04-24', '2 Days', 'Blue Diner Abuja ', 'Blue Diner, Abuja, Kids Zone, Parents, Victor Osaronwafor, Olvios Tech ', 'The website allows parents to easily explore packages, view event highlights, and connect with the planning team, making it a seamless gateway to joyful, stress-free celebrations.', 0, 'Olvios', '2025-05-20 22:59:57'),
(13, 5, 'Jeaps Car Hire Website ', 'jeaps-car-hire-website', 'The platform was designed to reflect the company’s professionalism and wide range of offerings, including car rentals, sales of all major brands, professional driver services, security convoys, and car management solutions.', '<p>I developed the website for Jeaps Car Hire, a leading car rental and sales company in Nigeria committed to delivering top-quality vehicles and outstanding customer service. The platform was designed to reflect the company&rsquo;s professionalism and wide range of offerings, including car rentals, sales of all major brands, professional driver services, security convoys, and car management solutions.</p>\r\n<p>&nbsp;</p>\r\n<p>My goal was to create a sleek, user-friendly interface that makes it easy for clients to explore vehicle options, book services, and get in touch with the team. The website emphasizes reliability, safety, and convenience, supporting Jeaps Car Hire&rsquo;s mission to provide every customer with a smooth, secure, and enjoyable ride.</p>', '682cfe6fa4b03.jpg', 'Mr. Solomon Oyinu', 'Graphic Design, Website Development, Database Design', 'Laravel, HTML, CSS, JavaScript ', 'https://jeapscarhire.ng/', '2025-01-08', '1 Month', 'Jeaps Car Hire', 'Cars Rental, Cars, Hire, Jeaps, Olvios Tech ', 'The platform was designed to reflect the company’s professionalism and wide range of offerings, including car rentals, sales of all major brands, professional driver services, security convoys, and car management solutions.', 0, 'Olvios', '2025-05-20 23:13:03'),
(14, 1, 'Khaddi Luxe Laundry - Branding', 'khaddi-luxe-laundry-branding', 'Khaddi Luxe Laundry Branding', '<p>I was responsible for the branding and website development of Khaddi Luxe Laundry, a premium laundry service focused on delivering top-tier garment care with style and sophistication. The brand was built to reflect luxury, reliability, and modern convenience, catering to clients who value both quality and presentation. I developed a clean, elegant visual identity and a seamless digital experience that aligns with the brand&rsquo;s upscale positioning. The website showcases services, pricing, and pickup scheduling in a way that is both intuitive and visually appealing.</p>\r\n<p>&nbsp;</p>\r\n<p>From the color palette to typography and layout, every element was carefully crafted to communicate Khaddi Luxe Laundry&rsquo;s commitment to excellence and customer satisfaction.</p>', '682d02a451c93.jpg', 'Dj Khaddi ', 'Graphics Design, Branding', 'Adobe Photoshop CC, Adobe Illustrator CC', '', '2025-03-19', '1 Day', 'Khaddi Luxe Laundry ', 'Graphic Design, Victor Osaronwafor, Olvios Tech', 'I was responsible for the branding and website development of Khaddi Luxe Laundry, a premium laundry service focused on delivering top-tier garment care with style and sophistication. The brand was built to reflect luxury, reliability, and modern convenience, catering to clients who value both quality and presentation. I developed a clean, elegant visual identity and a seamless digital experience that aligns with the brand’s upscale positioning. The website showcases services, pricing, and pickup scheduling in a way that is both intuitive and visually appealing. From the color palette to typography and layout, every element was carefully crafted to communicate Khaddi Luxe Laundry’s commitment to excellence and customer satisfaction.', 0, 'Olvios', '2025-05-20 23:31:00'),
(15, 1, 'Kid City Social Media Design', 'kid-city-social-media-design', 'The designs were tailored to promote events, activities, and announcements in a way that’s both eye-catching and easy to understand. Each post was crafted to enhance brand recognition, drive engagement, and reflect the joyful, imaginative atmosphere that defines Kid City.', '<p>I handled the social media design for Kid City, a fun and vibrant brand focused on children&rsquo;s entertainment and learning. My goal was to create visually engaging content that captures the playful spirit of the brand while maintaining consistency across all platforms. I developed a cohesive visual identity using bright colors, cheerful illustrations, and child-friendly typography to appeal to both kids and parents.</p>\r\n<p>&nbsp;</p>\r\n<p>The designs were tailored to promote events, activities, and announcements in a way that&rsquo;s both eye-catching and easy to understand. Each post was crafted to enhance brand recognition, drive engagement, and reflect the joyful, imaginative atmosphere that defines Kid City.</p>', '682d0744380d8.jpg', 'Endurance Okechukwu', 'Graphics Design ', 'Adobe Photoshop CC 2022', '', '2025-04-01', '1 Day', 'Kid City Social Media Design', 'Adobe Photoshop, Graphic Design, Osaronwafor Victor, Olvios Tech ', 'The designs were tailored to promote events, activities, and announcements in a way that’s both eye-catching and easy to understand. Each post was crafted to enhance brand recognition, drive engagement, and reflect the joyful, imaginative atmosphere that defines Kid City.', 0, 'Olvios', '2025-05-20 23:50:44');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `caption` text COLLATE utf8mb4_general_ci NOT NULL,
  `quote` text COLLATE utf8mb4_general_ci NOT NULL,
  `quoted_by` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `video_url` text COLLATE utf8mb4_general_ci NOT NULL,
  `conclusion` text COLLATE utf8mb4_general_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_general_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `author` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `category`, `caption`, `quote`, `quoted_by`, `description`, `image`, `video_url`, `conclusion`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `author`, `date`) VALUES
(9, 'HTML Full Course for Complete Beginners in 2025', 'html-full-course-for-complete-beginners-in-2025', 'Tutorial', 'If you\'re new to web development, learning HTML is the perfect starting point. HTML (HyperText Markup Language) is the backbone of every website, defining the structure of web pages. In this beginner-friendly guide, you\'ll learn what HTML is, how it works, and how to create your first web page in 2025.', 'In 2025, HTML continues to be the foundation of web development. With the rise of AI-driven web design, automated coding tools, and better browser support for HTML5 features, creating websites has become even more accessible. However, learning the fundamentals of HTML is still crucial for understanding how web pages work.', 'Victor Osaronwafor', '<p data-pm-slice=\"1 1 []\"><strong>HTML for Complete Beginners in 2025</strong></p>\r\n<p>If you\'re new to web development, learning HTML is the perfect starting point. HTML (HyperText Markup Language) is the backbone of every website, defining the structure of web pages. In this beginner-friendly guide, you\'ll learn what HTML is, how it works, and how to create your first web page in 2025.<br><br></p>\r\n<p><strong>What is HTML?</strong></p>\r\n<p>HTML is a markup language used to create and structure web pages. It uses a series of elements, also called tags, to define headings, paragraphs, links, images, and more. These elements help browsers understand how to display content on a webpage.<br><br></p>\r\n<p><strong>Why Learn HTML in 2025?</strong></p>\r\n<p>In 2025, web development continues to evolve, but HTML remains the foundation of the web. Whether you want to become a front-end developer, design blogs, or improve your coding skills, understanding HTML is essential. Modern HTML5 has introduced new semantic elements, improved multimedia support, and better accessibility features, making web development more efficient than ever.</p>', '67b89e5613309.jpg', 'https://youtu.be/ZigMA47IzeU?si=ESVpXEacKYYs0xQ1', 'Starting with HTML is an excellent way to step into web development. By mastering HTML, you’ll be ready to explore CSS for styling and JavaScript for interactivity. Keep practicing, experiment with different elements, and build your own webpages. Stay tuned for more tutorials as you continue your web development journey!', 'HTML Full Course for Complete Beginners in 2025', 'HTML, Youtube, Full Course, Tutorial, Victor Osaronwafor, Gravics Designs, https://www.youtube.com/@GravicsDesigns', 'If you\'re new to web development, learning HTML is the perfect starting point. HTML (HyperText Markup Language) is the backbone of every website, defining the structure of web pages. In this beginner-friendly guide, you\'ll learn what HTML is, how it works, and how to create your first web page in 2025.', 0, 'Olvios', '2025-02-21 16:29:24');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `caption` text COLLATE utf8mb4_general_ci NOT NULL,
  `price` double NOT NULL,
  `description` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `product_url` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_general_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `creator` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `slug`, `caption`, `price`, `description`, `image`, `product_url`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `creator`, `date`) VALUES
(1, 5, 'Content Management System (CMS) for Dynamic Websites', 'content-management-system-cms-for-dynamic-websites', 'Effortless Content Management, Total Control – The CMS Built for You!', 0, '<p>Take control of your website with our robust and user-friendly&nbsp;Content Management System (CMS) -&nbsp;a powerful solution designed to simplify content creation, management, and user role assignment. Whether you\'re managing a business website, blog, or online platform, this CMS provides everything you need to streamline operations and keep your content fresh and organized.<br><br></p>\r\n<p><strong>Key Features</strong></p>\r\n<ul>\r\n<li><strong>User Role Management</strong> &ndash; Assign roles and permissions to different users, ensuring secure and structured content management.<br><br></li>\r\n<li><strong>Seamless Content Creation</strong> &ndash; Add and manage website content effortlessly, keeping your site up-to-date with relevant information.<br><br></li>\r\n<li><strong>Full CRUD Operations</strong> &ndash; Easily create, edit, update, and delete content, posts, and other digital assets with an intuitive interface.<br><br></li>\r\n<li><strong>Real-Time Content Updates</strong> &ndash; Make changes on the go and see them reflected instantly on your main website.<br><br></li>\r\n<li><strong>Scalable &amp; Secure</strong> &ndash; Built for performance and security, ensuring data protection and smooth operation across different platforms.<br><br></li>\r\n</ul>\r\n<p>Whether you\'re a business owner, blogger, or developer, this CMS is a versatile and scalable solution tailored for efficient content management. Ready to take your website management to the next level? Get in touch today and own a CMS that puts you in full control!</p>', '67b8a48a2d184.jpg', 'https://victor.jeapscarhire.ng/products.php', 'Content Management System (CMS) for Dynamic Websites', 'Websites, App, Graphics Designs, Victor Osaronwafor, Products', 'Content Management System (CMS) for Dynamic Websites', 0, 'Olvios', '2024-12-27 10:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `office_address` longtext COLLATE utf8mb4_general_ci,
  `facebook` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `linkedIn` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `youtube` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `whatsapp_url` text COLLATE utf8mb4_general_ci,
  `logo` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `phone`, `email`, `office_address`, `facebook`, `instagram`, `twitter`, `linkedIn`, `youtube`, `whatsapp`, `whatsapp_url`, `logo`, `status`, `date`) VALUES
(1, '08188059316', 'victorosaronwafor@gmail.com', 'F.C.T Abuja', 'https://www.facebook.com/osaronwafor.victor/', 'instagram.com', 'twitter.com', 'https://ng.linkedin.com/in/victor-osaronwafor', 'https://www.youtube.com/c/gravicsdesigns', '08188059316', 'https://wa.me/2348188059316?text=Hello%2C%20I\'m%20interested%20in%20your%20services!', '1742180973.png', 0, '2024-02-23 18:26:51');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `rating` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `country`, `description`, `image`, `rating`, `status`, `date`) VALUES
(3, 'Victory Ehikioya ', 'Abuja ', 'His work is top notch. Looking forward to working with him again.', '67b8982cc0b6f.jpg', 5, 0, '2025-02-04 11:48:05'),
(4, 'Pastor Ezekiel Oghenechuke', 'Abuja', 'I love his work, He delivers promptly and delivers quality', '67b896fa6446d.jpeg', 4, 0, '2025-02-04 12:00:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `role` tinyint(1) NOT NULL,
  `access` tinytext COLLATE utf8mb4_general_ci NOT NULL COMMENT '0 - unrestricted, 1 - restricted\r\n',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `role`, `access`, `date_created`) VALUES
(1, 'Olvios', 'victorosaronwafor@gmail.com', '$2y$10$eWZTzkC0t6qWdLpf4/EHBea1ul6EUViA05zJ.x2SwrmTeVQmVfapW', 2, '0', '2024-12-13 01:52:26');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int NOT NULL,
  `ip_address` varchar(1000) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `work_experiences`
--

CREATE TABLE `work_experiences` (
  `id` int NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `company` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `work_experiences`
--

INSERT INTO `work_experiences` (`id`, `job_title`, `description`, `company`, `duration`, `location`, `status`, `date`) VALUES
(5, 'Full Stack Developer', 'As a full stack developer at the Africa Economic Forum, I played a key role in building and maintaining various digital platforms that supported the organization’s mission of driving economic development across Africa. I developed the AEF Events Portal, an integrated platform that streamlined event management processes, including creation, planning, email notifications, attendee registrations, and payment processing. I also built DevJobsAfrica, a job portal tailored to showcase developmental opportunities across the continent, allowing job seekers to access listings, register for updates, and apply for positions while enabling employers to find candidates with the right skill sets.\r\n\r\n<br><br>\r\nIn addition, I developed the Voluntary Service Africa (VSA) platform, which serves as a hub for volunteers participating in impactful projects organized by the Africa Economic Forum. With over 1,000 registered volunteers, the platform facilitates engagement and collaboration for development initiatives. I also built the AEF International Development (AEFID) website, a platform dedicated to showcasing international projects, strategic partnerships, and capacity-building programs under the Africa Economic Forum. My work contributed to the digital transformation of the organization, enhancing accessibility, efficiency, and engagement for users across multiple platforms.', 'Africa Economic Forum', '2022 - 2024 ', 'Abuja', 0, '2025-02-21 17:29:10'),
(8, 'Full Stack Developer (Remote)', 'As a full stack developer at Nader Tech, I was responsible for building and maintaining digital platforms that enhanced financial technology solutions. I developed the website for Coin Harbour, a cryptocurrency investment firm, integrating seamless payment systems and APIs for real-time cryptocurrency monitoring and evaluation. This platform provided users with a sophisticated and efficient way to engage with digital assets.  \r\n<br><br>\r\nI also developed the investment platform for Global Binary Trade Option (GBTO), creating a system that allowed users to register, sign up, and invest in a variety of packages. The platform facilitated smooth investment processes, ensuring users could access different plans with structured returns over specified timeframes. My work contributed to the development of secure and user-friendly financial technology solutions, optimizing investment experiences for clients.', 'Nader Tech ', '2020 - 2022', 'Abuja', 0, '2025-02-21 17:37:02'),
(9, 'Full Stack Developer ', 'At Fontainebleau Partners Limited, I serve as both an ICT officer and web developer, playing a key role in the company’s digital transformation. I oversee the development and management of the company’s website, ensuring a seamless online presence that aligns with its luxury real estate offerings. In addition to web development, I handle all IT-related operations, providing technical support, maintaining digital infrastructure, and ensuring system security and efficiency.\r\n<br><br>\r\nI also manage the company’s social media presence, curating and executing digital marketing strategies to enhance brand visibility and engagement. By leveraging various online platforms, I ensure Fontainebleau remains digitally competitive, reaching its target audience effectively. My role extends to setting up and optimizing the company’s presence in the digital media space, integrating technology-driven solutions to support business growth and client engagement.', 'Fontainebleau Partners Limited', '2024 - Present', 'Abuja', 0, '2025-02-21 17:38:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_me`
--
ALTER TABLE `about_me`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work_experiences`
--
ALTER TABLE `work_experiences`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_me`
--
ALTER TABLE `about_me`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_experiences`
--
ALTER TABLE `work_experiences`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
