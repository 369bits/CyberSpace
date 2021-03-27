-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2021 at 02:50 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `confer`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `userid` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `notifid` int(11) NOT NULL,
  `notification` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`notifid`, `notification`, `date`) VALUES
(24, 'user <b>martin369</b> joined CyberSpace', '2021-03-27 18:18:00'),
(25, 'user <b>john007</b> joined CyberSpace', '2021-03-27 18:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(11) NOT NULL,
  `answer` text NOT NULL,
  `qid` int(11) NOT NULL,
  `userid` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `qid`, `userid`) VALUES
(27, 'One backup on an external harddisk and another one on a cloud backup will work !!', 71, 'john007'),
(28, 'Change the password for my account for that website and of all other websites where I use that same password', 70, 'john007');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `userid` text NOT NULL,
  `title` text NOT NULL,
  `image_link` text NOT NULL,
  `content` text NOT NULL,
  `username` text NOT NULL,
  `date` varchar(25) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `userid`, `title`, `image_link`, `content`, `username`, `date`, `timestamp`) VALUES
(5, 'martin369', 'Cyberattacks know no borders and evolve at a rapid pace', 'https://images.unsplash.com/photo-1550751827-4bd374c3f58b?ixlib=rb-1.2.1&amp;ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&amp;auto=format&amp;fit=crop&amp;w=750&amp;q=80', 'Malicious domain. Ransomware. Data-harvesting malware. Botnets. Cryptojacking. The Darknet. . Cybercrime as a service. Words and phrases that scarcely existed a decade ago are now part of our everyday language, as criminals use new technologies to commit cyberattacks against governments, businesses and individuals. These crimes know no borders, either physical or virtual, cause serious harm and pose very real threats to victims worldwide. Cybercrime is progressing at an incredibly fast pace, with new trends constantly emerging. Cybercriminals are becoming more agile, exploiting new technologies with lightning speed, tailoring their attacks using new methods, and cooperating with each other in ways we have not seen before. Complex criminal networks operate across the world, coordinating intricate attacks in a matter of minutes. Police must therefore keep pace with new technologies, to understand the possibilities they create for criminals and how they can be used as tools for fighting cybercrime.\r\n', 'Martin', '27 March 2021', '2021-03-27 13:07:21'),
(6, 'martin369', 'Cyber crime: Six arrested for running online gambling racket in north Delhi', 'https://images.unsplash.com/photo-1504279807002-09854ccc9b6c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&amp;ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=750&amp;q=80', 'The Delhi Police has arrested six persons and busted an online gambling racket in north Delhi&rsquo;s Burari area, police said on Friday. A fake call about a robbery of Rs 2 lakh led to the busting of the racket in which the complainant himself conspired to steal the money from his employer, they said.The accused have been identified as Gaurav (30), Rohit Adhikari (26), Yogender Singh (28), residents of Burari, Raju (35), a resident of Mazlis Park, Nanak (41), a resident of Azadpur, and Satish Kumar (38), a resident of Kamalpur Majra, police said. However, Raju, who is the employer, was running the racket but was not involved in the fake robbery plan. According to police, Gaurav lodged a complaint that around 4.20 pm on Tuesday, he was going on a motorcycle towards Azadpur from his house with Rs 2 lakh in a handbag. He told police that when he reached Kargil Colony in Burari, two unknown persons on a black motorcycle stopped him. They took out the keys of his motorcycle, beat him and fled with his handbag towards Burari authority, a senior police officer said. &ldquo;During investigation, the complainant was changing his versions, which raised suspicion. Later, it was disclosed that he hatched a conspiracy along with his associates Adhikari and Singh and made the fake call,&rdquo; Deputy Commissioner of Police (north) Anto Alphonse said. Gaurav said that he handed over the money to Adhikari and made up a story of robbery with Singh&rsquo;s help to steal money from Raju, police said. Accordingly, raids were conducted, which led to the arrest of his associates. At their instance, Rs 9 lakh and two motorcycles used in to commit the crime were recovered, the DCP said. During interrogation, Gaurav disclosed that the cash was actually Rs 9 lakh, but as per Raju&rsquo;s advice, he mentioned a lesser amount in his complaint after they were caught by police, he said. Police found that Raju, along with Nanak and Satish, was running an online gambling racket and the money recovered was illegal. Later, they were also arrested and one laptop, three mobile phones were recovered from their possession, police added.', 'Martin', '27 March 2021', '2021-03-27 13:08:23'),
(7, 'john007', 'Use Two-Factor or Multi-Factor Authentication', 'https://images.unsplash.com/photo-1603297638322-c7a08d52966c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&amp;ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=751&amp;q=80', 'Two-factor or multi-factor authentication is a service that adds additional layers of security to the standard password method of online identification. Without two-factor authentication, you would normally enter a username and password. But, with two-factor, you would be prompted to enter one additional authentication method such as a Personal Identification Code, another password or even fingerprint. With multi-factor authentication, you would be prompted to enter more than two additional authentication methods after entering your username and password.According to NIST, an SMS delivery should not be used during two-factor authentication because malware can be used to attack mobile phone networks and can compromise data during the process. ', 'John', '27 March 2021', '2021-03-27 13:23:39'),
(8, 'john007', 'Use Anti-Virus Protection &amp; Firewall', 'https://images.unsplash.com/photo-1603899122634-f086ca5f5ddd?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&amp;ixlib=rb-1.2.1&amp;auto=format&amp;fit=crop&amp;w=667&amp;q=80', 'Anti-virus (AV) protection software has been the most prevalent solution to fight malicious attacks. AV software blocks malware and other malicious viruses from entering your device and compromising your data. Use anti-virus software from trusted vendors and only run one AV tool on your device.\r\n\r\nUsing a firewall is also important when defending your data against malicious attacks. A firewall helps screen out hackers, viruses, and other malicious activity that occurs over the Internet and determines what traffic is allowed to enter your device. Windows and Mac OS X comes with their respective firewalls, aptly named Windows Firewall and Mac Firewall. Your router should also have a firewall built in to prevent attacks on your network.', 'John', '27 March 2021', '2021-03-27 13:40:26');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `question` text NOT NULL,
  `userid` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `userid`, `date`) VALUES
(70, 'What should I do after I learn about a data breach of a website?', 'martin369', '2021-03-27 18:41:00'),
(71, 'What is the most secure backup strategy of the following ?', 'martin369', '2021-03-27 18:42:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` varchar(20) NOT NULL,
  `name` varchar(256) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `profession` varchar(100) NOT NULL DEFAULT 'Not mentioned',
  `mailNotification` varchar(3) NOT NULL DEFAULT 'No',
  `posts` int(11) NOT NULL DEFAULT '0',
  `notifications` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `name`, `password`, `email`, `mobile`, `profession`, `mailNotification`, `posts`, `notifications`) VALUES
('john007', 'John', 'john123', 'john@gmail.com', 9890432545, 'Cyber Security Specialist', 'Yes', 2, 0),
('martin369', 'Martin', 'martin123', 'martin@gmail.com', 9876543210, 'Student', 'Yes', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `notifid` int(11) NOT NULL,
  `notification` text NOT NULL,
  `userid` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`notifid`, `notification`, `userid`, `date`) VALUES
(44, 'Welcome to CyberSpace', 'martin369', '2021-03-27 18:18:00'),
(45, 'Welcome to CyberSpace', 'john007', '2021-03-27 18:45:17'),
(46, 'User <b>john007</b> answered your question : <b>What is the most secure backup strategy of the following ?</b><br/>Answer: <b>One backup on an external harddisk and another one on a cloud backup will work !!</b>', 'martin369', '2021-03-27 18:46:50'),
(47, 'User <b>john007</b> answered your question : <b>What should I do after I learn about a data breach of a website?</b><br/>Answer: <b>Change the password for my account for that website and of all other websites where I use that same password</b>', 'martin369', '2021-03-27 18:47:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`notifid`);

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`),
  ADD KEY `qid` (`qid`),
  ADD KEY `userid` (`userid`(10)),
  ADD KEY `userid_2` (`userid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`notifid`),
  ADD KEY `userid` (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `notifid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `notifid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

--
-- Constraints for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD CONSTRAINT `user_notifications_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `users` (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
