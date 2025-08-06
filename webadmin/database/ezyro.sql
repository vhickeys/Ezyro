-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2025 at 02:40 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezyro`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_me`
--

CREATE TABLE `about_me` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `intro_title` text NOT NULL,
  `intro_text` text NOT NULL,
  `years_of_experience` int(11) NOT NULL,
  `projects_completed` int(11) NOT NULL,
  `clients_worldwide` int(11) NOT NULL,
  `what_i_do` text NOT NULL,
  `pro_summary` text NOT NULL,
  `skills` text NOT NULL,
  `education` text NOT NULL,
  `awards` text NOT NULL,
  `certifications` text NOT NULL,
  `languages` text NOT NULL,
  `interest` text NOT NULL,
  `github_link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp()
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
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `location`, `message`, `date`) VALUES
(2, 'Victory Eseohe', 'victorosaronwafor@gmail.com', '08188059316', 'Abuja', 'I want to build a portal', '2025-02-11 11:40:48'),
(4, 'James Victory', 'jamesvick@gmail.com', '08188059316', 'Abuja', 'I need a coporate website', '2025-02-13 11:16:46'),
(5, 'Victor Olamide Osaronwafor', 'victorosaronwafor@gmail.com', '08188059316', 'Abuja', 'I need a coporate website', '2025-02-13 11:17:21'),
(6, 'Victor ', 'victorosaronwafor@gmail.com', '08188059316', 'Abuja', 'Hiii I want to build an app', '2025-02-13 17:04:54');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `proof` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(4) DEFAULT 0 COMMENT '0=pending, 1=approved, 2=declined'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
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
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `creator` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `category_id`, `title`, `slug`, `caption`, `description`, `image`, `client`, `services`, `technologies`, `project_url`, `start_date`, `duration`, `meta_title`, `meta_keywords`, `meta_description`, `status`, `creator`, `date`) VALUES
(1, 5, 'Fontainebleau Partners Limited', 'fontainebleau-partners-limited', 'Fontainebleau Partners Limited Real Estate Website', '<p>I developed the online platform for Fontainebleau Partners Limited, a niche real estate development company specializing in mid to upscale properties. Established on August 31, 2018, as part of the Fontainebleau Group, the company focuses on luxury real estate development and property management consulting, serving both local and international clients. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>The platform highlights Fontainebleau&rsquo;s commitment to class, luxury, comfort, and affordability. It features an intuitive interface for exploring available properties, including outright sales and off-plan options that allow clients to customize their homes during construction. Additional functionalities include virtual live tours, physical inspection booking, and location-based search assistance to enhance user experience and convenience. &nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>This project enhances Fontainebleau&rsquo;s digital presence, providing a seamless and engaging interface for real estate transactions while ensuring clients receive immediate support and personalized guidance.</p>', '67b895675ba77.jpg', 'Fontainebleau Partners Limited', 'Website Design, Website Development', 'HTML, React, Laravel ', 'https://fontainebleaupl.com', '2025-01-11', '2 Weeks', 'Dmy Foodplug Ecommerce Website', 'Website Design, Website Development, Fontainebleau Partners, Victor Osaronwafor', 'The platform highlights Fontainebleau’s commitment to class, luxury, comfort, and affordability. It features an intuitive interface for exploring available properties, including outright sales and off-plan options that allow clients to customize their homes during construction. Additional functionalities include virtual live tours, physical inspection booking, and location-based search assistance to enhance user experience and convenience.  ', 0, 'Olvios', '2024-12-17 04:20:12'),
(2, 5, 'Africa Economic Forum Events Portal', 'africa-economic-forum-events-portal', 'AEF-Events Portal Solutions', '<p data-start=\"0\" data-end=\"440\">AEF Events is an online portal I developed for the Africa Economic Forum, designed to provide a comprehensive listing of events, conferences, and forums focused on economic development, investment opportunities, and business networking in Africa. The platform serves as a centralized hub for individuals, organizations, and investors looking to stay informed about the latest events and opportunities shaping the African economic landscape.</p>\r\n<p data-start=\"0\" data-end=\"440\">&nbsp;</p>\r\n<p data-start=\"442\" data-end=\"966\">The project included a dynamic event management system that allows users to explore and filter upcoming conferences, workshops, seminars, and summits based on their interests, location, and date. The platform covers key topics such as infrastructure development, renewable energy, technology innovation, trade and investment, entrepreneurship, and sustainable development. Features such as automated email notifications, calendar integration, and a seamless user interface ensure an engaging and efficient user experience.</p>\r\n<p data-start=\"442\" data-end=\"966\">&nbsp;</p>\r\n<p data-start=\"968\" data-end=\"1204\" data-is-last-node=\"\" data-is-only-node=\"\">This project has enhanced the Africa Economic Forum&rsquo;s ability to connect stakeholders with valuable networking and learning opportunities, strengthening its role as a key facilitator of economic discussions and collaborations in Africa.</p>', '67b8931af3bb8.jpg', 'Africa Economic Forum', 'API Development, Web Development, Database Design, Email Support System, Content Management System', 'Python, REST API, Core PHP, Javascript, Bootstrap', 'https://aef-events.com/', '2023-02-17', '1 Month ', 'Africa Economic Forum Events Portal', 'AEF Events, Africa Economic Forum, Events Portal, Victor Osaronwafor', 'AEF Events is an online portal I developed for the Africa Economic Forum, designed to provide a comprehensive listing of events, conferences, and forums focused on economic development, investment opportunities, and business networking in Africa. The platform serves as a centralized hub for individuals, organizations, and investors looking to stay informed about the latest events and opportunities shaping the African economic landscape.', 0, 'Olvios', '2024-12-17 04:28:25'),
(3, 5, 'DMY Foodplug  E-Commerce Solution', 'dmy-foodplug-e-commerce-solution', 'DMY Foodplug – Premium Agrofoods E-Commerce Solution', '<p data-start=\"0\" data-end=\"264\">DMY Foodplug is a premium agrofoods e-commerce solution that I developed for a client specializing in fresh and frozen meats. The platform provides a seamless shopping experience, allowing customers to browse and purchase high-quality protein products with ease.</p>\r\n<p data-start=\"0\" data-end=\"264\">&nbsp;</p>\r\n<p data-start=\"266\" data-end=\"746\">The project included e-commerce functionality with an intuitive interface for ordering fresh and frozen meats, a product management system for easy updates and inventory tracking, and secure payment integration with multiple gateways for a smooth checkout process. The website was designed to be mobile-optimized, ensuring responsiveness across all devices. Additionally, it effectively showcases DMY Foodplug&rsquo;s export services, emphasizing their reach across Europe and Africa.</p>\r\n<p data-start=\"266\" data-end=\"746\">&nbsp;</p>\r\n<p data-start=\"748\" data-end=\"902\" data-is-last-node=\"\" data-is-only-node=\"\">This project enhanced DMY Foodplug&rsquo;s online presence, enabling them to reach a wider audience while maintaining a professional and efficient online store.</p>', '67b88f58cffd3.jpg', 'DMY Foodplug', 'Website Design, Website Development, Database Design', 'HTML, CSS, JavaScript, Bootstrap, PHP ', 'https://dmyfoodplug.com/', '2024-10-06', '3 Weeks', 'DMY Foodplug – Premium Agrofoods E-Commerce Solution', 'DMY, Foodplug, Olvios, Victor Osaronwafor', 'DMY Foodplug is a premium agrofoods e-commerce solution that I developed for a client specializing in fresh and frozen meats. The platform provides a seamless shopping experience, allowing customers to browse and purchase high-quality protein products with ease.', 0, 'Olvios', '2024-12-17 04:33:16'),
(7, 5, 'Africa Economic Forum - NGO Website', 'africa-economic-forum-ngo-website', 'Africa Economic Forum - NGO Website', '<p data-start=\"41\" data-end=\"292\">I designed and developed the Africa Economic Forum website, a dynamic platform that serves as the digital hub for the Africa Economic Forum, an international non-profit organization committed to driving economic transformation across Africa.</p>\r\n<p data-start=\"294\" data-end=\"569\">The website was built with a focus on engagement, accessibility, and efficiency, ensuring that stakeholders from both the public and private sectors could seamlessly interact and collaborate to foster economic growth, social progress, and human rights advocacy.</p>\r\n<p data-start=\"294\" data-end=\"569\">&nbsp;</p>\r\n<p data-start=\"294\" data-end=\"569\">Though I have not actively maintained the website recently, it remains a testament to my ability to deliver high-impact digital solutions that align with the mission and goals of international organizations.</p>', '67bf342dbc312.jpg', 'Africa Economic Forum', 'Website Development, Website Design', 'HTML, CSS, React, PHP', 'https://www.aefgroup.org', '2023-01-26', '1 month', 'Africa Economic Forum - NGO Website', 'AEF Group, Africa, Victor Osaronwafor, Gravics Designs', 'I designed and developed the Africa Economic Forum website, a dynamic platform that serves as the digital hub for the Africa Economic Forum, an international non-profit organization committed to driving economic transformation across Africa.\r\n\r\nThe website was built with a focus on engagement, accessibility, and efficiency, ensuring that stakeholders from both the public and private sectors could seamlessly interact and collaborate to foster economic growth, social progress, and human rights advocacy.', 0, 'Olvios', '2025-02-26 16:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `caption` text NOT NULL,
  `quote` text NOT NULL,
  `quoted_by` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `video_url` text NOT NULL,
  `conclusion` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `author` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
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
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `caption` text NOT NULL,
  `price` double NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_url` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `creator` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
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
  `id` int(11) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `office_address` longtext DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedIn` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `whatsapp_url` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp()
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
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `rating` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  `id` int(11) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` tinyint(1) NOT NULL,
  `access` tinytext NOT NULL COMMENT '0 - unrestricted, 1 - restricted\r\n',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
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
  `id` int(11) NOT NULL,
  `ip_address` varchar(1000) NOT NULL,
  `page_url` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_experiences`
--

CREATE TABLE `work_experiences` (
  `id` int(11) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `company` varchar(255) NOT NULL,
  `duration` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_experiences`
--
ALTER TABLE `work_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
