-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 17, 2025 at 01:07 PM
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
-- Database: `ai2dev`
--

-- --------------------------------------------------------

--
-- Table structure for table `api_script`
--

CREATE TABLE `api_script` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `projectname` varchar(255) NOT NULL,
  `methode` varchar(255) NOT NULL,
  `resource` varchar(255) NOT NULL DEFAULT 'orders',
  `parameters` varchar(255) NOT NULL,
  `headers` varchar(255) NOT NULL,
  `input` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`input`)),
  `output` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`output`)),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `api_script`
--

INSERT INTO `api_script` (`id`, `user`, `projectname`, `methode`, `resource`, `parameters`, `headers`, `input`, `output`, `created_at`) VALUES
(27, 'test12@gmail.com', '11', 'GET', 'orders', 'qq', 'qqq', '{ }', '{ }', '2025-02-14 14:17:59'),
(28, 'test12@gmail.com', 'ee', 'GET', 'orders', '55', '58', '{ }', '{ }', '2025-02-14 15:44:33');

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `id` int(11) NOT NULL,
  `infrastructure` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `applicationname` varchar(255) NOT NULL,
  `masternodeip` varchar(255) NOT NULL,
  `workernodeip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`id`, `infrastructure`, `email`, `applicationname`, `masternodeip`, `workernodeip`) VALUES
(6, '[\"VPS\"]', 'tova@admin', 'rt', '198.362.3.6', '199.35.16.36'),
(7, '[\"GCP\"]', 'tova@admin', '345', '123.365.1.1', '123.365.1.1');

-- --------------------------------------------------------

--
-- Table structure for table `cluster`
--

CREATE TABLE `cluster` (
  `id` int(11) NOT NULL,
  `infrastructure` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `clustername` varchar(255) NOT NULL,
  `masternodeip` varchar(255) NOT NULL,
  `workername` varchar(255) NOT NULL,
  `workernodeip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cluster`
--

INSERT INTO `cluster` (`id`, `infrastructure`, `email`, `clustername`, `masternodeip`, `workername`, `workernodeip`) VALUES
(246, 'VPS', 'test@gmail.com', 'cluster-ft', '157.173.121.66', 'worker-ft', '213.199.42.226 ');

-- --------------------------------------------------------

--
-- Table structure for table `loadbalancer`
--

CREATE TABLE `loadbalancer` (
  `id` int(11) NOT NULL,
  `infrastructure` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `loadbalancername` varchar(255) NOT NULL,
  `masternodeip` varchar(255) NOT NULL,
  `workernodeip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loadbalancer`
--

INSERT INTO `loadbalancer` (`id`, `infrastructure`, `email`, `loadbalancername`, `masternodeip`, `workernodeip`) VALUES
(8, '[\"AZURE\"]', 'tova@admin', '22', '198.236.1.1', '198.236.2.3');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `profileimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `email`, `password`, `profileimage`) VALUES
(1, 'Malony', 'a@gmail.com', '202cb962ac59075b964b07152d234b70', 'logo.png'),
(2, 'Amelia', 'tova@admin', '202cb962ac59075b964b07152d234b70', 'profile.jpg'),
(12, 'Reo', 'test1@gmail.com', '202cb962ac59075b964b07152d234b70', ''),
(13, 'Amelia', 'tova@admin', '202cb962ac59075b964b07152d234b70', 'profile.jpg'),
(33, '11', 'test@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', ''),
(35, 'John', 'test33@gmail.com', '251800da8d338eb82819105d5f3c7629', ''),
(36, 'Lichiska', 'test11@gmail.com', '251800da8d338eb82819105d5f3c7629', ''),
(37, 'test', 'test111@gmail.com', '251800da8d338eb82819105d5f3c7629', ''),
(38, ' ', 'ak@gmail.com', '251800da8d338eb82819105d5f3c7629', ''),
(39, 'sss', 'sk@gmail.comss', '7d0540d6753c07f2535cf2854643b078', ''),
(40, 'Test Kumar', 'sk11@gmail.com', '7d0540d6753c07f2535cf2854643b078', ''),
(41, 'Test Kumar', 'sk@g22mail.com', '79638a26ccb03d14426361890ba6033d', ''),
(42, 'Test Kumar', 'sk@gmaqqil.com', '67fbe30d6b1cec08ad5f61be79a573b9', ''),
(43, 'test Kumar', 'testk@gmail.com', '7d0540d6753c07f2535cf2854643b078', ''),
(44, 'Demo', 'demo@gmail.com', '251800da8d338eb82819105d5f3c7629', ''),
(45, 'Hello', 'hello@gmail.com', '251800da8d338eb82819105d5f3c7629', ''),
(46, 'Hello', 'new1@gmail.com', '251800da8d338eb82819105d5f3c7629', ''),
(47, 'm', 'q@gmail.com', '251800da8d338eb82819105d5f3c7629', ''),
(48, 'Lorem', 'lorem@gmail.com', '251800da8d338eb82819105d5f3c7629', ''),
(49, 'aa', 'new@gmail.com', '251800da8d338eb82819105d5f3c7629', ''),
(50, 'Test', 'test12@gmail.com', '251800da8d338eb82819105d5f3c7629', '');

-- --------------------------------------------------------

--
-- Table structure for table `log_file`
--

CREATE TABLE `log_file` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log_file`
--

INSERT INTO `log_file` (`id`, `type`, `email`, `filename`, `time`) VALUES
(1, 'node-master', 'test@gmail.com', 'test@gmail.com_2024-12-19T11-49-52-814Z_create_worker_node.sh.log', '2024-12-19 17:20:13'),
(2, 'node-master', 'test@gmail.com', 'test@gmail.com_2024-12-19T11-50-49-150Z_create_worker_node.sh.log', '2024-12-19 17:20:58'),
(3, 'node-master', 'test@gmail.com', 'test@gmail.com_2024-12-19T11-50-49-150Z_create_worker_node.sh.log', '2024-12-19 17:21:15'),
(4, 'cluster-master', 'test@gmail.com', 'test@gmail.com_2024-12-19T11-53-09-709Z_create_master_node.sh.log', '2024-12-19 17:23:20'),
(5, 'cluster-worker', 'test@gmail.com', 'test@gmail.com_2024-12-19T11-53-09-709Z_create_worker_node.sh.log', '2024-12-19 17:23:20'),
(6, 'cluster-master', 'test@gmail.com', 'test@gmail.com_2025-01-02T04-44-57-812Z_create_master_node.sh.log', '2025-01-02 10:15:33'),
(7, 'cluster-worker', 'test@gmail.com', 'test@gmail.com_2025-01-02T04-44-57-812Z_create_worker_node.sh.log', '2025-01-02 10:15:33'),
(8, 'cluster-master', 'test@gmail.com', 'test@gmail.com_2025-01-02T04-50-00-774Z_create_master_node.sh.log', '2025-01-02 10:21:34'),
(9, 'cluster-worker', 'test@gmail.com', 'test@gmail.com_2025-01-02T04-50-00-774Z_create_worker_node.sh.log', '2025-01-02 10:21:34'),
(10, 'cluster-master', 'test@gmail.com', 'test@gmail.com_2025-01-02T04-59-53-133Z_create_master_node.sh.log', '2025-01-02 10:30:50'),
(11, 'cluster-worker', 'test@gmail.com', 'test@gmail.com_2025-01-02T04-59-53-133Z_create_worker_node.sh.log', '2025-01-02 10:30:50'),
(12, 'cluster-master', 'test@gmail.com', 'test@gmail.com_2025-01-02T05-18-04-122Z_create_master_node.sh.log', '2025-01-02 10:48:44'),
(13, 'cluster-worker', 'test@gmail.com', 'test@gmail.com_2025-01-02T05-18-04-122Z_create_worker_node.sh.log', '2025-01-02 10:48:44'),
(14, 'node-master', 'test@gmail.com', 'test@gmail.com_2025-01-02T05-24-38-072Z_create_worker_node.sh.log', '2025-01-02 10:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `node`
--

CREATE TABLE `node` (
  `id` int(11) NOT NULL,
  `infrastructure` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nodename` varchar(255) NOT NULL,
  `masternodeip` varchar(255) NOT NULL,
  `workername` varchar(255) NOT NULL,
  `workernodeip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `projectname` varchar(255) NOT NULL,
  `problemstatement` longtext NOT NULL,
  `status` varchar(255) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `user`, `projectname`, `problemstatement`, `status`, `date`) VALUES
(89, 'test12@gmail.com', '11', 'qqaq', 'sucess', '2025-02-14 10:36:13'),
(90, 'test12@gmail.com', 'ee', 'eeee', 'sucess', '2025-02-14 14:18:06'),
(91, 'test12@gmail.com', 'c', 'ssssssd', '', '2025-02-14 15:44:50');

-- --------------------------------------------------------

--
-- Table structure for table `project_connections`
--

CREATE TABLE `project_connections` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `project` varchar(255) NOT NULL,
  `downstream` varchar(255) NOT NULL,
  `conn_name` varchar(255) NOT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_connections`
--

INSERT INTO `project_connections` (`id`, `user`, `project`, `downstream`, `conn_name`, `create_at`) VALUES
(89, 'test12@gmail.com', '11', '11', '11', '2025-02-14 10:36:17'),
(90, 'test12@gmail.com', 'ee', 'eee', 'ee', '2025-02-14 14:18:09'),
(91, 'test12@gmail.com', 'ee', 'ee', 'eee', '2025-02-14 14:18:14'),
(92, 'test12@gmail.com', 'c', 'c', 'c', '2025-02-14 15:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `projectname` varchar(255) NOT NULL,
  `data` varchar(200) NOT NULL,
  `craeted_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api_script`
--
ALTER TABLE `api_script`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cluster`
--
ALTER TABLE `cluster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loadbalancer`
--
ALTER TABLE `loadbalancer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log_file`
--
ALTER TABLE `log_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node`
--
ALTER TABLE `node`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_connections`
--
ALTER TABLE `project_connections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api_script`
--
ALTER TABLE `api_script`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cluster`
--
ALTER TABLE `cluster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `loadbalancer`
--
ALTER TABLE `loadbalancer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `log_file`
--
ALTER TABLE `log_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `node`
--
ALTER TABLE `node`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `project_connections`
--
ALTER TABLE `project_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
