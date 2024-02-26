-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Feb 21, 2024 at 12:13 PM
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
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL,
  `course_desc` text NOT NULL,
  `course_author` varchar(255) NOT NULL,
  `course_img` text NOT NULL,
  `course_duration` text NOT NULL,
  `course_price` int(11) NOT NULL,
  `course_original_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_desc`, `course_author`, `course_img`, `course_duration`, `course_price`, `course_original_price`) VALUES
(1, 'Introduction to C', 'C programming language is a general-purpose,imperative,flexible,and well-established programming language and thus make it the mother of all programming languages.', 'Adil', '../image/courseimg/c.jpg', '3 Months', 500, 1800),
(2, 'Introduction to c++', 'This course will help you get all the Object Oriented PHP, MYSQLi and ending the course by building a CMS system.Learn how to use c++,one of the world\\\'s most efficient and flexible languages for progamming.', 'Rajesh Kumar', '../image/courseimg/c++.jpg', '3 Months', 500, 1700),
(3, 'Introduction to html', 'You will learn the fundamentals of html,which is the common markup language used to create web pages.You will gain useful knowledge that you can put to use in building and maintaining you website.', 'Rahul Kumar', '../image/courseimg/html.jpg', '4 Months', 500, 1500),
(4, 'Introduction to css', 'If you want to learn how to beautiful websites, this free css course for beginners. Animations,transitions,flexible,design,flexbox,grid,and other things are discussedlives in this Course.', 'Jay Veeru', '../image/courseimg/css.jpg', '3 Months', 300, 1000),
(5, 'Javascript for beginners', 'Javascript is widely recognized as a highly valued programming language in modern times.', 'Jay Shukla', '../image/courseimg/js.jpg', '3 Months', 700, 1600),
(6, 'Java Programming for beginners', 'If you want to learn java form basics. Basics topics like keywords,variables and operators.', 'Sonam Gupta', '../image/courseimg/java.jpg', '4 Months', 800, 2000),
(7, 'Complete PHP Bootcamp', 'Interested in computer languages and eager to try web development? Want to make you own dynamic websites but not sure where to begin? Our easy-to-follow PHP course is here to help!', 'RK', '../image/courseimg/php.jpg', '3 months', 800, 1800),
(8, 'Learn Python A-Z', 'This is the most comprehensive, yet straight-forward, course for the Python programming language.', 'GeekyShows', '../image/courseimg/Python.jpg', '4 months', 800, 1800);

-- --------------------------------------------------------

--
-- Table structure for table `courseorder`
--

CREATE TABLE `courseorder` (
  `co_id` int(11) NOT NULL,
  `order_id` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `course_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `respmsg` text NOT NULL,
  `amount` int(11) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `courseorder`
--

INSERT INTO `courseorder` (`co_id`, `order_id`, `stu_email`, `course_id`, `status`, `respmsg`, `amount`, `order_date`) VALUES
(3, 'ORDS98956453', 'ant@example.com', 1, 'TXN_SUCCESS', 'Txn Success', 500, '2023-12-11'),
(7, 'ORDS57717951', 'jay@ischool.com', 2, 'TXN_SUCCESS', 'Txn Success', 500, '2024-01-01'),
(8, 'ORDS22968322', 'mario@ischool.com', 3, 'TXN_SUCCESS', 'Txn Success', 500, '2024-01-07'),
(9, 'ORDS78666589', 'ignou@ischool.com', 4, 'TXN_SUCCESS', 'Txn Success', 300, '2024-02-12'),
(10, 'ORDS59885531', 'sonam@gmail.com', 5, 'TXN_SUCCESS', 'Txn Success', 700, '2024-02-14');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `f_content` text NOT NULL,
  `stu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`f_id`, `f_content`, `stu_id`) VALUES
(3, 'My life at E-lerning made me stronger and took me a step ahead for being an independent women. I am thankful to all the teachers who supported us and corrected us throughout our career. I am very grateful to the E-learning for providing us the best of placement opportunities and finally I got placed in DC Marvel.', 171),
(8, 'I am grateful to E-learning - both the faculty and the Training & Placement Department. They have made efforts ensuring maximum number of placed students. Due to the efforts made by the faculty and placement cell. I was able to bag a job in the second company.', 172),
(9, 'E-learning is a place of learning, fun, culture, lore, literature and many such life preaching activities. Studying at the E-learning brought an added value to my life.', 173),
(10, 'Think Magical, that is one thing that E-learning urges in and to far extent succeed in teaching to its students which invariably helps to achieve what you need.', 174),
(12, 'Knowledge is power. Information is liberating. Education is the premise of progress, in every society, in every family.', 180),
(13, 'This is Awesome GeekySHows Jindabaad', 182);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` text NOT NULL,
  `lesson_desc` text NOT NULL,
  `lesson_link` text NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `lesson_desc`, `lesson_link`, `course_id`, `course_name`) VALUES
(1, 'Introduction to C', 'Introduction to C Desc', '../lessonvid/video1.mp4', 1, 'Introduction to C'),
(2, 'Introduction to C++', 'How C++ Works Desc', '../lessonvid/video2.mp4', 2, 'Introduction to c++'),
(3, 'Introduction to html', 'How html work Desc', '../lessonvid/video3.mp4', 3, 'Introduction to html'),
(4, 'css for beginners', 'Everyone should learn css  Desc', '../lessonvid/video4.mp4', 4, 'Introduction to css'),
(5, 'Javascript for beginners', 'how javascript works Desc', '../lessonvid/video3.mp4', 5, 'Javascript for beginners'),
(6, 'Java for beginners', 'How java works Desc', '../lessonvid/video5.mp4', 6, 'Java Programming for beginners'),
(7, 'How PHP works', 'is PHP really easy ? desc', '../lessonvid/video6.mp4', 7, 'Complete PHP Bootcamp'),
(8, 'How C works', 'how c works desc1', '../lessonvid/video1.mp4', 1, 'Introduction to C'),
(9, 'c++ datatypes', 'datatypes desc', '../lessonvid/video2.mp4', 2, 'Introduction to c++'),
(10, 'html editors', 'How works editors desc', '../lessonvid/video3.mp4', 3, 'Introduction to html'),
(11, 'How it works css', 'How it works descccccc', '../lessonvid/video4.mp4', 4, 'Introduction to css'),
(12, 'Intro Learn JS', 'Inro Learn JS desc', '../lessonvid/video3.mp4', 5, 'Javascript for beginners'),
(13, 'Java for beginners', 'intro java desc', '../lessonvid/video5.mp4', 6, 'Java Programming for beginners'),
(14, 'Intro to php', 'This is lesson number 1', '../lessonvid/video6.mp4', 7, 'Complete PHP Bootcamp');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stu_id` int(11) NOT NULL,
  `stu_name` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_pass` varchar(255) NOT NULL,
  `stu_occ` varchar(255) NOT NULL,
  `stu_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stu_id`, `stu_name`, `stu_email`, `stu_pass`, `stu_occ`, `stu_img`) VALUES
(171, 'mr michel', 'mr@example.com', '123456', ' Web Designer', '../image/stu/student1.jpg'),
(172, 'Archana', 'Archana@example.com', '123456', ' Web Developer', '../image/stu/student2.jpg'),
(173, ' Dr Strange', 'doc@example.com', '123456', ' Web Developer', '../image/stu/student3.jpg'),
(174, 'satosh', 'shreya@example.com', '123456', 'Web Designer', '../image/stu/student4.jpg'),
(176, 'shruti', 'shruti@ischool.com', '123456', 'Software ENgg', '../image/stu/student5.jpg'),
(178, 'vaishu', 'vaishu@ischool.com', '1234567', ' Web Dev', '../image/stu/student6.jpg'),
(182, 'mr michel', 'mr@gmail.com', '123456', ' Web Dev', '../image/stu/student1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `courseorder`
--
ALTER TABLE `courseorder`
  ADD PRIMARY KEY (`co_id`),
  ADD UNIQUE KEY `order_id` (`order_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `courseorder`
--
ALTER TABLE `courseorder`
  MODIFY `co_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
