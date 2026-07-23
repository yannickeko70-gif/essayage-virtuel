-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql-parrainage.alwaysdata.net
-- Generation Time: Jul 23, 2026 at 12:19 PM
-- Server version: 10.11.18-MariaDB
-- PHP Version: 8.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `parrainage_tryon_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `userName` varchar(150) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `severity` enum('info','warning','critical') DEFAULT 'info',
  `ipAddress` varchar(80) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `userId`, `userName`, `action`, `severity`, `ipAddress`, `createdAt`) VALUES
(1, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-11 16:50:29'),
(2, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-11 17:02:09'),
(3, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-11 21:02:41'),
(4, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-12 19:34:10'),
(5, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-12 19:47:22'),
(6, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-12 19:54:02'),
(7, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-12 19:57:13'),
(8, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-12 21:09:36'),
(9, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-12 21:12:12'),
(10, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-12 21:14:38'),
(11, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-12 23:27:30'),
(12, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-12 23:28:50'),
(13, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-12 23:47:42'),
(14, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-12 23:53:10'),
(15, 21, 'Administrateur', 'Produit modifié : Robe 01', 'info', '::1', '2026-07-13 10:04:28'),
(16, 21, 'Administrateur', 'Produit modifié : Robe 02', 'info', '::1', '2026-07-13 10:04:44'),
(17, 21, 'Administrateur', 'Produit modifié : Robe 03', 'info', '::1', '2026-07-13 10:05:03'),
(18, 21, 'Administrateur', 'Produit modifié : Robe 04', 'info', '::1', '2026-07-13 10:05:21'),
(19, 21, 'Administrateur', 'Produit modifié : Robe 05', 'info', '::1', '2026-07-13 10:05:39'),
(20, 21, 'Administrateur', 'Produit modifié : Robe 06', 'info', '::1', '2026-07-13 10:05:54'),
(21, 21, 'Administrateur', 'Produit modifié : Robe 07', 'info', '::1', '2026-07-13 10:06:15'),
(22, 21, 'Administrateur', 'Produit modifié : Robe 08', 'info', '::1', '2026-07-13 10:06:40'),
(23, 21, 'Administrateur', 'Produit modifié : Robe 09', 'info', '::1', '2026-07-13 10:06:57'),
(24, 21, 'Administrateur', 'Produit modifié : Robe 10', 'info', '::1', '2026-07-13 10:07:21'),
(25, 21, 'Administrateur', 'Produit modifié : Robe 11', 'info', '::1', '2026-07-13 10:07:37'),
(26, 21, 'Administrateur', 'Produit modifié : Robe 12', 'info', '::1', '2026-07-13 10:07:59'),
(27, 21, 'Administrateur', 'Produit modifié : Robe 13', 'info', '::1', '2026-07-13 10:12:00'),
(28, 21, 'Administrateur', 'Produit modifié : Robe 14', 'info', '::1', '2026-07-13 10:13:30'),
(29, 21, 'Administrateur', 'Produit modifié : Robe 15', 'info', '::1', '2026-07-13 10:13:54'),
(30, 21, 'Administrateur', 'Produit modifié : Robe 16', 'info', '::1', '2026-07-13 10:14:11'),
(31, 21, 'Administrateur', 'Produit modifié : Robe 17', 'info', '::1', '2026-07-13 10:14:33'),
(32, 21, 'Administrateur', 'Produit modifié : Robe 18', 'info', '::1', '2026-07-13 10:14:54'),
(33, 21, 'Administrateur', 'Notification supprimée : 29', 'info', '::1', '2026-07-13 12:56:22'),
(34, 21, 'Administrateur', 'Client modifié : Edingue Robert', 'warning', '10.31.222.4', '2026-07-20 19:06:21'),
(35, 21, 'Administrateur', 'Client modifié : Edingue Robert', 'warning', '10.31.222.4', '2026-07-20 19:07:49'),
(36, 21, 'Administrateur', 'Client modifié : Edingue Robert', 'warning', '10.31.222.4', '2026-07-20 19:08:28'),
(37, 21, 'Administrateur', 'Paramètres mis à jour', 'info', NULL, '2026-07-20 19:09:18');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int(11) NOT NULL,
  `adminId` int(11) NOT NULL,
  `type` varchar(50) DEFAULT 'info',
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `isRead` tinyint(1) DEFAULT 0,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `adminId`, `type`, `title`, `message`, `isRead`, `createdAt`, `updatedAt`) VALUES
(5, 13, 'info', 'Nouvel utilisateur', 'Un nouvel utilisateur \"jordymbele@gmail.com\" vient de s\'inscrire.', 0, '2026-07-11 10:16:59', '2026-07-11 10:16:59'),
(20, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 11/07/2026 17:49:45.', 1, '2026-07-11 16:49:46', '2026-07-13 12:56:15'),
(21, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 11/07/2026 17:52:06.', 1, '2026-07-11 16:52:06', '2026-07-13 12:56:15'),
(22, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 11/07/2026 21:50:50.', 1, '2026-07-11 20:50:52', '2026-07-13 12:56:15'),
(23, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 12/07/2026 20:29:48.', 1, '2026-07-12 19:29:49', '2026-07-13 12:56:15'),
(24, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 12/07/2026 20:33:23.', 1, '2026-07-12 19:33:23', '2026-07-13 12:56:15'),
(25, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 12/07/2026 20:56:00.', 1, '2026-07-12 19:56:00', '2026-07-13 12:56:15'),
(26, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 12/07/2026 22:08:05.', 1, '2026-07-12 21:08:05', '2026-07-13 12:56:15'),
(27, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 12/07/2026 22:09:12.', 1, '2026-07-12 21:09:13', '2026-07-13 12:56:15'),
(28, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 12/07/2026 22:10:48.', 1, '2026-07-12 21:10:49', '2026-07-13 12:56:15'),
(30, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 13/07/2026 00:46:29.', 1, '2026-07-12 23:46:29', '2026-07-13 12:56:15'),
(31, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 13/07/2026 11:03:52.', 1, '2026-07-13 10:03:52', '2026-07-13 12:56:15'),
(32, 21, 'info', 'Produit modifié', 'Robe 01 a été modifié dans le catalogue.', 1, '2026-07-13 10:04:27', '2026-07-13 12:56:15'),
(33, 21, 'info', 'Produit modifié', 'Robe 02 a été modifié dans le catalogue.', 1, '2026-07-13 10:04:43', '2026-07-13 12:56:15'),
(34, 21, 'info', 'Produit modifié', 'Robe 03 a été modifié dans le catalogue.', 1, '2026-07-13 10:05:02', '2026-07-13 12:56:15'),
(35, 21, 'info', 'Produit modifié', 'Robe 04 a été modifié dans le catalogue.', 1, '2026-07-13 10:05:20', '2026-07-13 12:56:15'),
(36, 21, 'info', 'Produit modifié', 'Robe 05 a été modifié dans le catalogue.', 1, '2026-07-13 10:05:38', '2026-07-13 12:56:15'),
(37, 21, 'info', 'Produit modifié', 'Robe 06 a été modifié dans le catalogue.', 1, '2026-07-13 10:05:53', '2026-07-13 12:56:15'),
(38, 21, 'info', 'Produit modifié', 'Robe 07 a été modifié dans le catalogue.', 1, '2026-07-13 10:06:13', '2026-07-13 12:56:15'),
(39, 21, 'info', 'Produit modifié', 'Robe 08 a été modifié dans le catalogue.', 1, '2026-07-13 10:06:39', '2026-07-13 12:56:15'),
(40, 21, 'info', 'Produit modifié', 'Robe 09 a été modifié dans le catalogue.', 1, '2026-07-13 10:06:56', '2026-07-13 12:56:15'),
(41, 21, 'info', 'Produit modifié', 'Robe 10 a été modifié dans le catalogue.', 1, '2026-07-13 10:07:20', '2026-07-13 12:56:15'),
(42, 21, 'info', 'Produit modifié', 'Robe 11 a été modifié dans le catalogue.', 1, '2026-07-13 10:07:36', '2026-07-13 12:56:15'),
(43, 21, 'info', 'Produit modifié', 'Robe 12 a été modifié dans le catalogue.', 1, '2026-07-13 10:07:58', '2026-07-13 12:56:15'),
(44, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 13/07/2026 11:10:48.', 1, '2026-07-13 10:10:48', '2026-07-13 12:56:15'),
(45, 21, 'info', 'Produit modifié', 'Robe 13 a été modifié dans le catalogue.', 1, '2026-07-13 10:11:59', '2026-07-13 12:56:15'),
(46, 21, 'info', 'Produit modifié', 'Robe 14 a été modifié dans le catalogue.', 1, '2026-07-13 10:13:29', '2026-07-13 12:56:15'),
(47, 21, 'info', 'Produit modifié', 'Robe 15 a été modifié dans le catalogue.', 1, '2026-07-13 10:13:54', '2026-07-13 12:56:15'),
(48, 21, 'info', 'Produit modifié', 'Robe 16 a été modifié dans le catalogue.', 1, '2026-07-13 10:14:10', '2026-07-13 12:56:15'),
(49, 21, 'info', 'Produit modifié', 'Robe 17 a été modifié dans le catalogue.', 1, '2026-07-13 10:14:31', '2026-07-13 12:56:15'),
(50, 21, 'info', 'Produit modifié', 'Robe 18 a été modifié dans le catalogue.', 1, '2026-07-13 10:14:52', '2026-07-13 12:56:15'),
(51, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 13/07/2026 13:55:48.', 1, '2026-07-13 12:55:59', '2026-07-13 12:56:15'),
(52, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 15/07/2026 11:26:11.', 0, '2026-07-15 11:26:11', '2026-07-15 11:26:11'),
(53, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 15/07/2026 12:16:45.', 0, '2026-07-15 12:16:45', '2026-07-15 12:16:45'),
(57, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 20/07/2026 10:40:48.', 0, '2026-07-20 10:40:48', '2026-07-20 10:40:48'),
(58, 21, 'info', 'Connexion admin', 'Vous vous êtes connecté en tant qu\'administrateur le 20/07/2026 19:05:23.', 0, '2026-07-20 19:05:23', '2026-07-20 19:05:23');

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

CREATE TABLE `app_settings` (
  `id` int(11) NOT NULL,
  `settingKey` varchar(100) NOT NULL,
  `settingValue` text DEFAULT NULL,
  `settingType` enum('text','number','boolean','json') DEFAULT 'text',
  `groupName` varchar(100) DEFAULT 'general',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `settingKey`, `settingValue`, `settingType`, `groupName`, `createdAt`, `updatedAt`) VALUES
(1, 'shopName', 'TryOn', 'text', 'shopName', '2026-07-01 09:33:43', '2026-07-01 09:35:22'),
(2, 'city', 'Douala - Cameroun', 'text', 'city', '2026-07-01 09:33:43', '2026-07-01 09:33:43'),
(3, 'supportEmail', 'support@tryon.cm', 'text', 'supportEmail', '2026-07-01 09:33:44', '2026-07-01 09:33:44'),
(4, 'address', 'CFPD, Douala, Cameroun', 'text', 'address', '2026-07-01 09:33:44', '2026-07-01 09:33:44'),
(5, 'phone', '655504397', 'text', 'phone', '2026-07-01 09:33:44', '2026-07-01 09:37:07'),
(6, 'country', 'Cameroun', 'text', 'country', '2026-07-01 09:33:45', '2026-07-01 09:33:45'),
(7, 'currency', 'FCFA', 'text', 'currency', '2026-07-01 09:33:45', '2026-07-01 09:33:45'),
(8, 'language', 'Français', 'text', 'language', '2026-07-01 09:33:45', '2026-07-01 09:33:45'),
(9, 'aiEnabled', 'false', 'boolean', 'aiEnabled', '2026-07-01 09:33:45', '2026-07-11 16:50:23'),
(10, 'aiHd', 'false', 'boolean', 'aiHd', '2026-07-01 09:33:46', '2026-07-01 09:33:46'),
(11, 'aiDailyLimit', '5', 'number', 'aiDailyLimit', '2026-07-01 09:33:46', '2026-07-01 09:33:46'),
(12, 'aiKeepUploads', 'false', 'boolean', 'aiKeepUploads', '2026-07-01 09:33:46', '2026-07-01 09:33:46'),
(13, 'aiAutoDeleteDays', '7', 'number', 'aiAutoDeleteDays', '2026-07-01 09:33:46', '2026-07-01 09:33:46'),
(14, 'autoValidateOrders', 'false', 'boolean', 'autoValidateOrders', '2026-07-01 09:33:47', '2026-07-01 09:33:47'),
(15, 'minOrderAmount', '5000', 'number', 'minOrderAmount', '2026-07-01 09:33:47', '2026-07-01 09:33:47'),
(16, 'freeShippingFrom', '50000', 'number', 'freeShippingFrom', '2026-07-01 09:33:47', '2026-07-01 09:33:47'),
(17, 'allowCancellation', 'false', 'boolean', 'allowCancellation', '2026-07-01 09:33:47', '2026-07-11 16:50:24'),
(18, 'cancellationDelay', '24', 'number', 'cancellationDelay', '2026-07-01 09:33:48', '2026-07-01 09:33:48'),
(19, 'orangeMoney', 'false', 'boolean', 'orangeMoney', '2026-07-01 09:33:48', '2026-07-11 16:50:25'),
(20, 'mtnMoney', 'false', 'boolean', 'mtnMoney', '2026-07-01 09:33:48', '2026-07-11 16:50:25'),
(21, 'cardPayment', 'false', 'boolean', 'cardPayment', '2026-07-01 09:33:49', '2026-07-01 09:33:49'),
(22, 'paypal', 'false', 'boolean', 'paypal', '2026-07-01 09:33:49', '2026-07-01 09:33:49'),
(23, 'paymentMode', 'test', 'text', 'paymentMode', '2026-07-01 09:33:49', '2026-07-01 09:33:49'),
(24, 'deliveryCities', 'Douala, Yaoundé', 'text', 'deliveryCities', '2026-07-01 09:33:49', '2026-07-01 09:33:49'),
(25, 'deliveryDelay', '24h - 72h', 'text', 'deliveryDelay', '2026-07-01 09:33:50', '2026-07-01 09:33:50'),
(26, 'deliveryFee', '1500', 'number', 'deliveryFee', '2026-07-01 09:33:50', '2026-07-01 09:33:50'),
(27, 'pickupEnabled', 'true', 'boolean', 'pickupEnabled', '2026-07-01 09:33:50', '2026-07-01 09:33:50'),
(28, 'emailNotif', 'false', 'boolean', 'emailNotif', '2026-07-01 09:33:50', '2026-07-11 16:50:27'),
(29, 'smsNotif', 'false', 'boolean', 'smsNotif', '2026-07-01 09:33:51', '2026-07-01 09:33:51'),
(30, 'pushNotif', 'true', 'boolean', 'pushNotif', '2026-07-01 09:33:51', '2026-07-01 09:33:51'),
(31, 'orderNotif', 'false', 'boolean', 'orderNotif', '2026-07-01 09:33:51', '2026-07-11 16:50:27'),
(32, 'paymentNotif', 'false', 'boolean', 'paymentNotif', '2026-07-01 09:33:52', '2026-07-11 16:50:27'),
(33, 'stockNotif', 'false', 'boolean', 'stockNotif', '2026-07-01 09:33:52', '2026-07-11 16:50:27'),
(34, 'twoFactor', 'false', 'boolean', 'twoFactor', '2026-07-01 09:33:52', '2026-07-01 09:33:52'),
(35, 'sessionDuration', '60', 'number', 'sessionDuration', '2026-07-01 09:33:53', '2026-07-01 09:33:53'),
(36, 'maxLoginAttempts', '5', 'number', 'maxLoginAttempts', '2026-07-01 09:33:53', '2026-07-01 09:33:53'),
(37, 'auditLogs', 'false', 'boolean', 'auditLogs', '2026-07-01 09:33:53', '2026-07-11 16:50:28'),
(38, 'autoBackup', 'false', 'boolean', 'autoBackup', '2026-07-01 09:33:53', '2026-07-01 09:33:53'),
(39, 'backupFrequency', 'Hebdomadaire', 'text', 'backupFrequency', '2026-07-01 09:33:54', '2026-07-01 09:33:54'),
(40, 'apiVersion', 'v1', 'text', 'apiVersion', '2026-07-01 09:33:54', '2026-07-01 09:33:54'),
(129, 'maintenanceMode', 'true', 'boolean', 'maintenanceMode', '2026-07-11 16:50:22', '2026-07-20 19:09:12'),
(130, 'registrationEnabled', 'false', 'boolean', 'registrationEnabled', '2026-07-11 16:50:23', '2026-07-11 16:50:23'),
(136, 'guestTryon', 'false', 'boolean', 'guestTryon', '2026-07-11 16:50:23', '2026-07-11 16:50:23'),
(137, 'allowTryonDownload', 'false', 'boolean', 'allowTryonDownload', '2026-07-11 16:50:24', '2026-07-11 16:50:24'),
(138, 'showOutOfStock', 'false', 'boolean', 'showOutOfStock', '2026-07-11 16:50:24', '2026-07-11 16:50:24'),
(139, 'showPrices', 'false', 'boolean', 'showPrices', '2026-07-11 16:50:24', '2026-07-11 16:50:24'),
(144, 'orderConfirmationEmail', 'false', 'boolean', 'orderConfirmationEmail', '2026-07-11 16:50:25', '2026-07-11 16:50:25'),
(145, 'reviewsEnabled', 'false', 'boolean', 'reviewsEnabled', '2026-07-11 16:50:25', '2026-07-11 16:50:25'),
(146, 'autoApproveReviews', 'false', 'boolean', 'autoApproveReviews', '2026-07-11 16:50:25', '2026-07-11 16:50:25'),
(154, 'freeShipping', 'false', 'boolean', 'freeShipping', '2026-07-11 16:50:26', '2026-07-11 16:50:26'),
(164, 'forceEmailVerification', 'false', 'boolean', 'forceEmailVerification', '2026-07-11 16:50:28', '2026-07-11 16:50:28'),
(165, 'enableCaptcha', 'false', 'boolean', 'enableCaptcha', '2026-07-11 16:50:28', '2026-07-11 16:50:28');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `guestId` varchar(36) DEFAULT NULL,
  `status` enum('active','converted','abandoned','merged') DEFAULT 'active',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `userId`, `guestId`, `status`, `createdAt`, `updatedAt`) VALUES
(4, 3, NULL, 'active', '2026-06-18 16:53:48', '2026-06-18 16:53:48'),
(5, 4, NULL, 'converted', '2026-06-18 16:53:48', '2026-06-18 16:53:48'),
(7, 18, NULL, 'converted', '2026-06-19 14:35:57', '2026-06-27 10:17:32'),
(9, 19, NULL, 'converted', '2026-06-20 22:10:54', '2026-06-24 09:14:28'),
(10, 19, NULL, 'converted', '2026-06-24 09:14:29', '2026-06-24 09:16:33'),
(11, 19, NULL, 'converted', '2026-06-24 09:16:34', '2026-06-26 15:13:36'),
(12, 19, NULL, 'converted', '2026-06-26 15:13:37', '2026-07-07 10:43:11'),
(13, 18, NULL, 'active', '2026-06-27 10:17:33', '2026-06-27 10:17:33'),
(15, 21, NULL, 'active', '2026-07-06 09:56:23', '2026-07-06 09:56:23'),
(16, 19, NULL, 'converted', '2026-07-07 10:43:13', '2026-07-07 16:04:37'),
(20, 19, NULL, 'converted', '2026-07-07 16:04:40', '2026-07-07 16:05:57'),
(21, 19, NULL, 'converted', '2026-07-07 16:05:58', '2026-07-07 16:21:07'),
(22, 19, NULL, 'converted', '2026-07-07 16:21:08', '2026-07-07 16:24:01'),
(23, 19, NULL, 'converted', '2026-07-07 16:24:03', '2026-07-07 19:46:54'),
(24, 19, NULL, 'converted', '2026-07-07 19:46:58', '2026-07-08 12:41:55'),
(26, 25, NULL, 'active', '2026-07-08 09:26:19', '2026-07-08 09:26:19'),
(27, 19, NULL, 'converted', '2026-07-08 13:32:41', '2026-07-08 13:43:33'),
(28, 19, NULL, 'converted', '2026-07-08 13:43:41', '2026-07-09 22:55:41'),
(29, 19, NULL, 'converted', '2026-07-10 08:45:48', '2026-07-17 08:31:21'),
(37, 32, NULL, 'active', '2026-07-11 10:17:01', '2026-07-11 10:17:01'),
(43, 33, NULL, 'active', '2026-07-15 11:42:27', '2026-07-15 11:42:27'),
(44, 34, NULL, 'active', '2026-07-15 12:34:52', '2026-07-15 12:34:52'),
(45, NULL, '3c1a575f-0b1d-4bad-800a-b9c712c3a55b', 'merged', '2026-07-17 08:32:11', '2026-07-17 08:33:44'),
(46, 35, NULL, 'active', '2026-07-17 08:33:30', '2026-07-17 08:33:30'),
(47, 35, NULL, 'active', '2026-07-17 08:33:31', '2026-07-17 08:33:31'),
(48, 35, NULL, 'active', '2026-07-17 08:33:31', '2026-07-17 08:33:31'),
(49, 35, NULL, 'active', '2026-07-17 08:33:32', '2026-07-17 08:33:32'),
(50, 35, NULL, 'active', '2026-07-17 08:33:32', '2026-07-17 08:33:32'),
(51, NULL, 'aa5e68a9-5735-4418-9de7-4ec1e58d79ab', 'active', '2026-07-17 09:31:28', '2026-07-17 09:31:28'),
(52, NULL, '5f33f1a2-c364-41f6-b0bf-acf41f23e504', 'merged', '2026-07-17 09:31:29', '2026-07-19 13:30:30'),
(53, NULL, '16575e6a-c5d7-44f6-ab47-9f507cd33b89', 'merged', '2026-07-17 09:39:35', '2026-07-19 16:18:38'),
(54, NULL, '3c1a575f-0b1d-4bad-800a-b9c712c3a55b', 'merged', '2026-07-17 09:43:17', '2026-07-18 13:17:06'),
(55, 19, NULL, 'converted', '2026-07-18 13:17:05', '2026-07-18 13:20:40'),
(56, 19, NULL, 'converted', '2026-07-18 13:21:23', '2026-07-19 11:06:07'),
(57, NULL, '7af78f67-9eb6-48d4-abdd-8fe8bebd40f8', 'active', '2026-07-18 15:19:15', '2026-07-18 15:19:15'),
(58, NULL, '04289b00-557d-49ff-8972-00d6fd6bb4d7', 'active', '2026-07-18 19:37:31', '2026-07-18 19:37:31'),
(59, NULL, 'e54feb72-cbb3-4a69-b955-6b133b35a4ff', 'active', '2026-07-18 19:37:32', '2026-07-18 19:37:32'),
(60, NULL, '1ae3bab3-1eda-432f-ae00-cc33ce35ce5f', 'merged', '2026-07-19 05:03:41', '2026-07-19 06:04:28'),
(61, NULL, '85bc9b59-a393-40ec-8d96-3ad4996a77a5', 'active', '2026-07-19 05:57:05', '2026-07-19 05:57:05'),
(62, NULL, '9b52ad02-9960-4206-a79f-ee13c5ed56a1', 'active', '2026-07-19 06:22:11', '2026-07-19 06:22:11'),
(63, NULL, '6e6b6610-5251-46fc-be6c-4521e874e107', 'active', '2026-07-19 10:53:02', '2026-07-19 10:53:02'),
(64, 19, NULL, 'active', '2026-07-19 11:13:37', '2026-07-19 11:13:37'),
(65, NULL, '4d31e77b-0686-4c27-8560-aa197a8464df', 'active', '2026-07-19 11:14:01', '2026-07-19 11:14:01'),
(66, NULL, '9ef62081-59e4-4dbc-a312-8de5506a342c', 'active', '2026-07-19 13:19:56', '2026-07-19 13:19:56'),
(67, NULL, 'bcf677d9-a140-4b22-9dad-206cd3289a09', 'active', '2026-07-19 13:21:35', '2026-07-19 13:21:35'),
(68, NULL, 'ee067967-e33d-445f-83f4-f65e164089f4', 'active', '2026-07-19 13:32:13', '2026-07-19 13:32:13'),
(69, NULL, '1a6410a0-320e-4839-b8ba-57f9861ae7c9', 'merged', '2026-07-19 13:32:16', '2026-07-19 16:23:12'),
(70, NULL, 'c97b2aac-85a5-4831-b40f-4c149b4850fc', 'merged', '2026-07-19 14:16:51', '2026-07-19 14:18:51'),
(71, 36, NULL, 'active', '2026-07-19 14:18:54', '2026-07-19 14:18:54'),
(72, 36, NULL, 'active', '2026-07-19 14:18:54', '2026-07-19 14:18:54'),
(73, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(74, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(75, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(76, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(77, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(78, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(79, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(80, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(81, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(82, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(83, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(84, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(85, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(86, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(87, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(88, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(89, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(90, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(91, 36, NULL, 'active', '2026-07-19 14:18:55', '2026-07-19 14:18:55'),
(92, NULL, 'e81fcb70-725f-470f-81eb-c51fc7563eb5', 'active', '2026-07-19 16:23:22', '2026-07-19 16:23:22'),
(93, NULL, 'e3e1d851-d971-44d9-952a-4b8a259c8eff', 'active', '2026-07-19 16:23:25', '2026-07-19 16:23:25'),
(94, NULL, '8da6d645-1b35-45ff-95e1-59d528c853fe', 'merged', '2026-07-19 16:23:27', '2026-07-19 16:25:07'),
(95, NULL, 'f2c55f86-ef48-427c-8d5f-8a6b8c966b19', 'active', '2026-07-19 16:24:37', '2026-07-19 16:24:37'),
(96, NULL, 'd769e826-6c9e-4955-9c6f-98fb968645f2', 'active', '2026-07-19 16:29:44', '2026-07-19 16:29:44'),
(97, NULL, 'b0b069f5-dc9b-4099-9a8a-3d4c7aa9edf3', 'merged', '2026-07-19 16:29:47', '2026-07-19 16:35:16'),
(98, NULL, 'c97b2aac-85a5-4831-b40f-4c149b4850fc', 'active', '2026-07-19 17:27:36', '2026-07-19 17:27:36'),
(99, NULL, '8c8f4ea7-e5d4-469d-9a1a-80cd84b845d8', 'active', '2026-07-20 00:27:34', '2026-07-20 00:27:34'),
(100, NULL, 'a4ea4900-f1eb-4581-bb67-603f1b8ce51c', 'active', '2026-07-20 00:27:37', '2026-07-20 00:27:37'),
(101, NULL, '16575e6a-c5d7-44f6-ab47-9f507cd33b89', 'merged', '2026-07-20 10:31:36', '2026-07-20 10:31:53'),
(102, NULL, '6b8b0013-1a1c-4fd9-9b09-839c4991d86e', 'active', '2026-07-20 10:31:58', '2026-07-20 10:31:58'),
(103, NULL, 'ac85991c-a180-4503-8cc5-e9b97ac0e0c0', 'merged', '2026-07-20 10:32:27', '2026-07-20 10:40:50'),
(104, NULL, '16575e6a-c5d7-44f6-ab47-9f507cd33b89', 'active', '2026-07-20 10:32:30', '2026-07-20 10:32:30'),
(105, NULL, '3431927c-b65e-4e67-985d-a2ddab25fead', 'active', '2026-07-20 12:08:22', '2026-07-20 12:08:22'),
(106, NULL, '72421c83-0e21-418d-96f4-c44151a5ff2e', 'merged', '2026-07-20 18:40:21', '2026-07-20 18:54:05'),
(107, 37, NULL, 'active', '2026-07-20 18:53:52', '2026-07-20 18:53:52'),
(108, 37, NULL, 'active', '2026-07-20 18:53:52', '2026-07-20 18:53:52'),
(109, 37, NULL, 'active', '2026-07-20 18:53:52', '2026-07-20 18:53:52'),
(110, 37, NULL, 'active', '2026-07-20 18:53:54', '2026-07-20 18:53:54'),
(111, 37, NULL, 'active', '2026-07-20 18:53:54', '2026-07-20 18:53:54'),
(112, NULL, 'e534873b-4721-4cda-a500-ce4839ffa3cb', 'active', '2026-07-20 18:59:49', '2026-07-20 18:59:49'),
(113, NULL, '72421c83-0e21-418d-96f4-c44151a5ff2e', 'merged', '2026-07-20 19:06:35', '2026-07-20 19:08:42'),
(114, NULL, '72421c83-0e21-418d-96f4-c44151a5ff2e', 'active', '2026-07-20 19:09:31', '2026-07-20 19:09:31'),
(115, NULL, '5732739f-84be-4ead-8345-b256914fc292', 'active', '2026-07-21 10:50:25', '2026-07-21 10:50:25'),
(116, NULL, '4e662689-12f1-4207-b777-164c12675afd', 'active', '2026-07-22 09:34:03', '2026-07-22 09:34:03'),
(117, NULL, '57558384-e321-4397-a1cc-49b4085abce8', 'active', '2026-07-22 09:34:04', '2026-07-22 09:34:04'),
(118, NULL, '1dda107c-d453-4bac-ad8a-da93ebbb040d', 'active', '2026-07-22 09:34:45', '2026-07-22 09:34:45'),
(119, NULL, '0d8989c0-36b4-4e41-9736-75172589ab41', 'active', '2026-07-22 09:34:46', '2026-07-22 09:34:46'),
(120, 38, NULL, 'active', '2026-07-22 09:47:55', '2026-07-22 09:47:55'),
(121, 38, NULL, 'active', '2026-07-22 09:47:55', '2026-07-22 09:47:55'),
(122, 38, NULL, 'active', '2026-07-22 09:47:56', '2026-07-22 09:47:56'),
(123, 38, NULL, 'active', '2026-07-22 09:47:56', '2026-07-22 09:47:56'),
(124, 39, NULL, 'active', '2026-07-22 10:13:01', '2026-07-22 10:13:01'),
(125, NULL, 'a4c03097-37b5-4567-a95c-00b277b959ba', 'active', '2026-07-22 15:14:21', '2026-07-22 15:14:21'),
(126, NULL, 'b7285db0-d4e8-479f-8e3d-bd44da0e001b', 'active', '2026-07-22 15:16:57', '2026-07-22 15:16:57'),
(127, NULL, 'b3c952a0-4bb0-4f5e-9ba5-4923bf85dfb4', 'active', '2026-07-22 15:17:11', '2026-07-22 15:17:11'),
(128, NULL, '478d1f8b-0392-494a-83f9-194e6c1a384a', 'active', '2026-07-22 15:17:28', '2026-07-22 15:17:28'),
(129, NULL, '6d58732b-1546-4085-8832-b81bb5943f85', 'active', '2026-07-22 15:56:40', '2026-07-22 15:56:40'),
(130, NULL, 'b7a3d5e5-b09a-4b69-8949-4077949b3672', 'active', '2026-07-22 16:47:03', '2026-07-22 16:47:03'),
(131, NULL, '77aabcbd-d5bc-41a2-b86a-1c917d4e2547', 'active', '2026-07-22 18:46:19', '2026-07-22 18:46:19'),
(132, NULL, '72f81700-ed25-48ea-b26e-a0d5451b8257', 'active', '2026-07-22 18:46:27', '2026-07-22 18:46:27'),
(133, NULL, '4b5d545e-e232-4095-852e-877b6bc4dbc4', 'active', '2026-07-22 18:46:34', '2026-07-22 18:46:34'),
(134, NULL, '6b3fcf40-9571-4936-a139-a7efbc91f03e', 'active', '2026-07-22 18:46:36', '2026-07-22 18:46:36'),
(135, NULL, 'c8d226e4-a28f-4caa-baff-dc3c0cc09ba5', 'active', '2026-07-22 18:46:40', '2026-07-22 18:46:40'),
(136, NULL, '1aca6d23-69d7-4dcf-9e93-01d01521c36d', 'active', '2026-07-22 21:58:33', '2026-07-22 21:58:33'),
(137, NULL, '1350b4a2-b3f0-45a4-9335-83467a87f320', 'active', '2026-07-23 01:17:03', '2026-07-23 01:17:03'),
(138, NULL, '24650363-df0a-46dc-99f7-d971bab20ab4', 'active', '2026-07-23 01:43:39', '2026-07-23 01:43:39'),
(139, NULL, '97641ce2-e49f-4cc0-a7ee-38db8e6c5afd', 'active', '2026-07-23 02:11:54', '2026-07-23 02:11:54'),
(140, NULL, '79236a20-6214-4f53-99a3-2e04136fcfce', 'active', '2026-07-23 02:12:18', '2026-07-23 02:12:18'),
(141, NULL, '9c2b4b75-40a3-4eee-9bf3-69681511429a', 'active', '2026-07-23 02:12:19', '2026-07-23 02:12:19'),
(142, NULL, 'ec912500-9d50-4747-b236-1665b4ab931b', 'active', '2026-07-23 02:12:44', '2026-07-23 02:12:44'),
(143, NULL, 'caae961e-110b-405f-bfe9-4bedad8377bf', 'active', '2026-07-23 09:42:38', '2026-07-23 09:42:38'),
(144, NULL, '6e25b192-32fb-4b20-a04b-544bfabc726c', 'active', '2026-07-23 09:42:39', '2026-07-23 09:42:39'),
(145, NULL, '93d28b1b-1d64-428a-9ce2-20264de7518a', 'active', '2026-07-23 10:11:14', '2026-07-23 10:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `cartId` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `productName` varchar(150) NOT NULL,
  `productImage` varchar(255) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_items`
--

INSERT INTO `cart_items` (`id`, `cartId`, `productId`, `productName`, `productImage`, `size`, `color`, `quantity`, `price`, `createdAt`, `updatedAt`) VALUES
(7, 5, NULL, 'T-Shirt Kids', '/uploads/products/kids1.jpg', 'M', 'Jaune', 3, 7000, '2026-06-18 16:53:58', '2026-06-18 16:53:58'),
(25, 9, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', '[object Object]', 'Bleu', 3, 18000, '2026-06-23 09:47:30', '2026-06-23 09:47:31'),
(26, 9, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'S', 'Bleu', 1, 18000, '2026-06-23 10:44:29', '2026-06-23 10:44:29'),
(29, 10, NULL, 'Chemise Prestige', '/uploads/products/chemise1.jpg', 'S', 'Blanc', 1, 12000, '2026-06-24 09:15:49', '2026-06-24 09:15:49'),
(38, 11, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'S', 'Rouge', 2, 15000, '2026-06-26 14:55:39', '2026-06-26 15:01:06'),
(39, 11, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'S', 'Bleu', 3, 18000, '2026-06-26 15:02:26', '2026-06-26 15:12:50'),
(41, 7, NULL, 'Digital', '/uploads/products/product-image_essai-1782398789272-357064527.jpg', 'XL', '#1a1410', 1, 3500, '2026-06-27 10:09:53', '2026-06-27 10:09:53'),
(42, 7, NULL, 'Digital', '/uploads/products/product-image_essai-1782398789272-357064527.jpg', 'L', '#1a1410', 1, 3500, '2026-06-27 10:15:04', '2026-06-27 10:15:04'),
(46, 12, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'L', 'Rouge', 3, 15000, '2026-07-06 15:45:31', '2026-07-06 15:45:39'),
(47, 16, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'M', 'Bleu', 2, 18000, '2026-07-07 15:05:43', '2026-07-07 15:10:06'),
(48, 16, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'S', NULL, 3, 15000, '2026-07-07 16:03:40', '2026-07-07 16:04:02'),
(49, 20, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'M', NULL, 10, 15000, '2026-07-07 16:05:05', '2026-07-07 16:05:21'),
(50, 21, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'L', NULL, 7, 15000, '2026-07-07 16:06:06', '2026-07-07 16:06:15'),
(51, 21, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'M', NULL, 4, 18000, '2026-07-07 16:20:26', '2026-07-07 16:20:36'),
(52, 21, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'S', NULL, 2, 18000, '2026-07-07 16:20:45', '2026-07-07 16:20:47'),
(53, 22, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'M', NULL, 4, 18000, '2026-07-07 16:21:39', '2026-07-07 16:21:44'),
(54, 23, NULL, 'Chemise Prestige', '/uploads/products/chemise.jpg', 'M', '#1a1410', 1, 12000, '2026-07-07 19:42:28', '2026-07-07 19:43:21'),
(57, 24, NULL, 'Chemise Prestige', '/uploads/products/chemise.jpg', 'M', NULL, 1, 12000, '2026-07-08 11:44:10', '2026-07-08 11:44:10'),
(58, 27, NULL, 'Chemise Prestige', '/uploads/products/chemise.jpg', 'M', NULL, 1, 12000, '2026-07-08 13:39:44', '2026-07-08 13:39:44'),
(64, 28, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'XS', NULL, 3, 15000, '2026-07-09 18:39:27', '2026-07-09 22:22:13'),
(65, 28, NULL, 'Costume Business', '/uploads/products/costume1.jpg', 'XS', NULL, 4, 45000, '2026-07-09 19:22:35', '2026-07-09 22:40:26'),
(66, 28, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'XS', 'Rouge', 1, 15000, '2026-07-09 22:12:31', '2026-07-09 22:12:31'),
(67, 28, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'XL', NULL, 1, 15000, '2026-07-09 22:30:22', '2026-07-09 22:30:22'),
(75, 29, 21, 'Robe Dentelle Ivoire Écarlate', 'https://res.cloudinary.com/dsbmotehj/image/upload/v1784108213/robe-01_n1xy5h.png', 'XS', NULL, 1, 15000, '2026-07-15 19:05:52', '2026-07-15 19:06:07'),
(77, 29, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/dsbmotehj/image/upload/v1784108222/veste-01_qp6vxk.png', 'XS', NULL, 1, 27000, '2026-07-16 11:04:07', '2026-07-16 11:04:07'),
(78, 29, 32, 'Robe Terracotta Chic', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231151/robe-12_jr9s6l.png', 'XS', '#1a1410', 1, 28000, '2026-07-17 07:55:07', '2026-07-17 07:55:07'),
(79, 45, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:32:25', '2026-07-17 08:32:25'),
(80, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 3, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:46'),
(81, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(82, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(83, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(84, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(85, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(86, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(87, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(88, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(89, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(90, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(91, 47, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(92, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:36', '2026-07-17 08:33:36'),
(93, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(94, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(95, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(96, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(97, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(98, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(99, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(100, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(101, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(102, 48, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(103, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(104, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(105, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(106, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(107, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(108, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:37', '2026-07-17 08:33:37'),
(109, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:38', '2026-07-17 08:33:38'),
(110, 49, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:38', '2026-07-17 08:33:38'),
(111, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:38', '2026-07-17 08:33:38'),
(112, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:38', '2026-07-17 08:33:38'),
(113, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:38', '2026-07-17 08:33:38'),
(114, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:38', '2026-07-17 08:33:38'),
(115, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:38', '2026-07-17 08:33:38'),
(116, 46, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:38', '2026-07-17 08:33:38'),
(117, 50, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-17 08:33:38', '2026-07-17 08:33:38'),
(119, 54, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', '#1a1410', 1, 27000, '2026-07-18 13:16:44', '2026-07-18 13:16:44'),
(120, 55, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', '#1a1410', 1, 27000, '2026-07-18 13:17:05', '2026-07-18 13:17:05'),
(121, 55, 43, 'Tailleur Homme Ardoise', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231160/tailleur-homme-02_ixv8h6.png', 'XS', NULL, 2, 42000, '2026-07-18 13:17:52', '2026-07-18 13:18:08'),
(122, 56, 43, 'Tailleur Homme Ardoise', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231160/tailleur-homme-02_ixv8h6.png', 'XS', NULL, 1, 42000, '2026-07-19 06:00:55', '2026-07-19 06:00:55'),
(123, 56, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, '2026-07-19 06:01:31', '2026-07-19 06:01:31'),
(124, 56, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'M', '#1a1410', 2, 27000, '2026-07-19 11:04:16', '2026-07-19 11:04:19'),
(126, 37, 43, 'Tailleur Homme Ardoise', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231160/tailleur-homme-02_ixv8h6.png', 'XS', NULL, 1, 42000, '2026-07-19 16:28:00', '2026-07-19 16:28:00'),
(127, 106, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:52:58', '2026-07-20 18:52:58'),
(128, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 3, 35000, '2026-07-20 18:53:57', '2026-07-20 18:54:03'),
(129, 108, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:57', '2026-07-20 18:53:57'),
(130, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:57', '2026-07-20 18:53:57'),
(131, 109, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:57', '2026-07-20 18:53:57'),
(132, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:58', '2026-07-20 18:53:58'),
(133, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:58', '2026-07-20 18:53:58'),
(134, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:58', '2026-07-20 18:53:58'),
(135, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:58', '2026-07-20 18:53:58'),
(136, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:58', '2026-07-20 18:53:58'),
(137, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:58', '2026-07-20 18:53:58'),
(138, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:58', '2026-07-20 18:53:58'),
(139, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:58', '2026-07-20 18:53:58'),
(140, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:58', '2026-07-20 18:53:58'),
(141, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:59', '2026-07-20 18:53:59'),
(142, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:59', '2026-07-20 18:53:59'),
(143, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:59', '2026-07-20 18:53:59'),
(144, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:59', '2026-07-20 18:53:59'),
(145, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:59', '2026-07-20 18:53:59'),
(146, 107, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:59', '2026-07-20 18:53:59'),
(147, 110, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:53:59', '2026-07-20 18:53:59'),
(148, 111, 42, 'Tailleur Homme Ébène', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 'XS', NULL, 1, 35000, '2026-07-20 18:54:00', '2026-07-20 18:54:00'),
(149, 62, 23, 'Robe Wax Bordeaux Doré', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231148/robe-03_thouw7.png', 'XS', NULL, 1, 22000, '2026-07-22 09:33:16', '2026-07-22 09:33:16'),
(151, 129, 22, 'Robe Bicolore Indigo Sable', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231147/robe-02_xcxt0g.png', 'XS', '#1a1410', 2, 18500, '2026-07-22 16:16:08', '2026-07-22 16:16:10'),
(152, 140, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'M', NULL, 1, 27000, '2026-07-23 02:12:18', '2026-07-23 02:12:18'),
(153, 141, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'M', NULL, 1, 27000, '2026-07-23 02:12:19', '2026-07-23 02:12:19');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(120) NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `createdAt`, `updatedAt`) VALUES
(1, 'Femme', 'femme', '2026-06-17 16:34:07', '2026-06-17 16:34:07'),
(2, 'Homme', 'homme', '2026-06-17 16:34:07', '2026-06-17 16:34:07'),
(14, 'Robes', 'robes', '2026-07-13 09:32:21', '2026-07-13 09:32:21'),
(15, 'Chemises', 'chemises', '2026-07-13 09:32:21', '2026-07-13 09:32:21'),
(16, 'Pantalons', 'pantalons', '2026-07-13 09:32:21', '2026-07-13 09:32:21'),
(17, 'Vestes', 'vestes', '2026-07-13 09:32:21', '2026-07-13 09:32:21');

-- --------------------------------------------------------

--
-- Table structure for table `faq_items`
--

CREATE TABLE `faq_items` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL,
  `category` varchar(100) DEFAULT 'Général',
  `isActive` tinyint(1) DEFAULT 1,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `orderNumber` varchar(50) NOT NULL,
  `total` int(11) NOT NULL,
  `status` enum('pending','processing','shipped','delivered','cancelled') DEFAULT 'pending',
  `paymentMethod` enum('online','cash_on_delivery') DEFAULT 'cash_on_delivery',
  `paymentStatus` enum('pending','paid','failed','refunded') DEFAULT 'pending',
  `recipientFirstName` varchar(100) DEFAULT NULL,
  `recipientLastName` varchar(100) DEFAULT NULL,
  `deliveryAddress` text DEFAULT NULL,
  `deliveryCity` varchar(100) DEFAULT NULL,
  `deliveryPhone` varchar(30) DEFAULT NULL,
  `deliveryType` varchar(10) NOT NULL DEFAULT 'std',
  `deliveryFee` decimal(10,2) NOT NULL DEFAULT 0.00,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `orderNumber`, `total`, `status`, `paymentMethod`, `paymentStatus`, `recipientFirstName`, `recipientLastName`, `deliveryAddress`, `deliveryCity`, `deliveryPhone`, `deliveryType`, `deliveryFee`, `createdAt`, `updatedAt`) VALUES
(2, 3, 'TRY-2026001', 15000, 'delivered', 'cash_on_delivery', 'paid', NULL, NULL, 'Bastos', 'Yaoundé', '699100001', 'std', 0.00, '2026-06-18 16:54:12', '2026-06-18 16:54:12'),
(3, 4, 'TRY-2026002', 24000, 'processing', 'online', 'paid', NULL, NULL, 'Mvan', 'Yaoundé', '699100002', 'std', 0.00, '2026-06-18 16:54:12', '2026-06-18 16:54:12'),
(5, 3, 'TRY-2026004', 18000, 'shipped', 'online', 'paid', NULL, NULL, 'Bastos', 'Yaoundé', '699100004', 'std', 0.00, '2026-06-18 16:54:12', '2026-06-18 16:54:12'),
(7, 19, 'TRY-469835-3291', 74000, 'delivered', '', 'pending', NULL, NULL, '3QVG+3C5', 'Douala', '671869407', 'exp', 2000.00, '2026-06-24 09:14:26', '2026-06-24 14:25:35'),
(8, 19, 'TRY-597041-2647', 14000, 'delivered', '', 'pending', NULL, NULL, '3QVG+3C5', 'Douala', '671207375', 'exp', 2000.00, '2026-06-24 09:16:33', '2026-06-24 14:25:26'),
(9, 19, 'TRY-817241-6768', 84000, 'delivered', 'cash_on_delivery', 'pending', NULL, NULL, '3QVG+3C5', 'Douala', '671869407', 'std', 0.00, '2026-06-26 15:13:35', '2026-06-29 08:18:39'),
(10, 18, 'TRY-450200-3035', 9000, 'pending', '', 'pending', NULL, NULL, '3Q29+C4H, Logbessou, IUC', 'Douala', '655504397', 'exp', 2000.00, '2026-06-27 10:17:30', '2026-07-06 11:56:18'),
(11, 19, 'TRY-994986-3099', 45000, 'pending', '', 'pending', NULL, NULL, '3QVG+3C5, Bastos', 'Douala', '671207375', 'std', 0.00, '2026-07-07 10:43:11', '2026-07-07 10:43:11'),
(12, 19, 'TRY-278341-6196', 81000, 'pending', 'cash_on_delivery', 'pending', NULL, NULL, '3QVG+3C5, Bastos', 'Douala', '671207375', 'std', 0.00, '2026-07-07 16:04:34', '2026-07-07 16:04:34'),
(13, 19, 'TRY-360777-2998', 150000, 'pending', 'cash_on_delivery', 'pending', NULL, NULL, '3QVG+3C5, Bastos', 'Douala', '671869407', 'std', 0.00, '2026-07-07 16:05:57', '2026-07-07 16:05:57'),
(14, 19, 'TRY-268923-8341', 213000, 'pending', 'cash_on_delivery', 'pending', NULL, NULL, '3QVG+3C5, Bastos', 'Douala', '671869407', 'std', 0.00, '2026-07-07 16:21:05', '2026-07-07 16:21:05'),
(15, 19, 'TRY-444365-2200', 72000, 'pending', 'cash_on_delivery', 'pending', NULL, NULL, '3QVG+3C5, Bastos', 'Douala', '671869407', 'std', 0.00, '2026-07-07 16:24:00', '2026-07-07 16:24:00'),
(16, 19, 'TRY-614159-8176', 14000, 'pending', 'cash_on_delivery', 'pending', NULL, NULL, '3Q29+C4H, Logbessou, IUC', 'Douala', '655504397', 'exp', 2000.00, '2026-07-07 19:46:53', '2026-07-07 19:46:53'),
(17, 19, 'TRY-516551-4195', 12000, 'pending', '', 'pending', NULL, NULL, '3QVG+3C5, ^poihgacs', 'Douala', '671869407', 'std', 0.00, '2026-07-08 12:41:55', '2026-07-08 12:41:55'),
(18, 19, 'TRY-211320-2190', 12000, 'pending', '', 'pending', NULL, NULL, '3Q29+C4H, xfgcvhgv, vhgvjbj', 'Douala', '655504397', 'std', 0.00, '2026-07-08 13:43:32', '2026-07-08 13:43:32'),
(19, 19, 'TRY-739169-9922', 255000, '', '', 'pending', NULL, NULL, '3QVG+3C5, dfg, zdfegf', 'Douala', '671869407', 'std', 0.00, '2026-07-09 22:55:38', '2026-07-11 16:00:14'),
(23, 19, 'TRY-080591-5527', 72000, 'pending', '', 'pending', NULL, NULL, '3QVG+3C5, Akwa Nord, ioujyhg', 'Douala', '671869407', 'std', 2000.00, '2026-07-17 08:31:20', '2026-07-17 08:31:20'),
(24, 19, 'TRY-839294-2142', 113000, 'pending', '', 'pending', NULL, NULL, '3QVG+3C5, Bonamoussadi, ioujyhg', 'Douala', '671869407', 'std', 2000.00, '2026-07-18 13:20:39', '2026-07-18 13:20:39'),
(25, 19, 'TRY-166344-1386', 125000, 'pending', '', 'pending', NULL, NULL, '3QVG+3C5, Bonamoussadi, Mairie', 'Douala', '671207375', 'std', 2000.00, '2026-07-19 11:06:06', '2026-07-19 11:06:06');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `productName` varchar(150) NOT NULL,
  `productImage` varchar(255) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `orderId`, `productId`, `productName`, `productImage`, `size`, `color`, `quantity`, `price`, `subtotal`, `createdAt`) VALUES
(3, 2, NULL, 'Chemise Prestige', '/uploads/products/chemise1.jpg', 'L', 'Blanc', 2, 12000, 24000, '2026-06-18 16:54:20'),
(4, 3, NULL, 'Costume Business', '/uploads/products/costume1.jpg', 'XL', 'Noir', 1, 45000, 45000, '2026-06-18 16:54:20'),
(6, 5, NULL, 'T-Shirt Kids', '/uploads/products/kids1.jpg', 'M', 'Jaune', 3, 7000, 21000, '2026-06-18 16:54:20'),
(7, 7, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'S', 'Bleu', 1, 18000, 18000, '2026-06-24 09:14:27'),
(8, 7, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', '[object Object]', 'Bleu', 3, 18000, 54000, '2026-06-24 09:14:27'),
(9, 8, NULL, 'Chemise Prestige', '/uploads/products/chemise1.jpg', 'S', 'Blanc', 1, 12000, 12000, '2026-06-24 09:16:33'),
(10, 9, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'S', 'Bleu', 3, 18000, 54000, '2026-06-26 15:13:35'),
(11, 9, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'S', 'Rouge', 2, 15000, 30000, '2026-06-26 15:13:36'),
(12, 10, NULL, 'Digital', '/uploads/products/product-image_essai-1782398789272-357064527.jpg', 'L', '#1a1410', 1, 3500, 3500, '2026-06-27 10:17:31'),
(13, 10, NULL, 'Digital', '/uploads/products/product-image_essai-1782398789272-357064527.jpg', 'XL', '#1a1410', 1, 3500, 3500, '2026-06-27 10:17:31'),
(14, 11, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'L', 'Rouge', 3, 15000, 45000, '2026-07-07 10:43:11'),
(15, 12, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'S', NULL, 3, 15000, 45000, '2026-07-07 16:04:35'),
(16, 12, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'M', 'Bleu', 2, 18000, 36000, '2026-07-07 16:04:36'),
(17, 13, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'M', NULL, 10, 15000, 150000, '2026-07-07 16:05:57'),
(18, 14, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'S', NULL, 2, 18000, 36000, '2026-07-07 16:21:05'),
(19, 14, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'M', NULL, 4, 18000, 72000, '2026-07-07 16:21:06'),
(20, 14, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'L', NULL, 7, 15000, 105000, '2026-07-07 16:21:06'),
(21, 15, NULL, 'Robe Africa Chic', '/uploads/products/robe2.jpg', 'M', NULL, 4, 18000, 72000, '2026-07-07 16:24:01'),
(22, 16, NULL, 'Chemise Prestige', '/uploads/products/chemise.jpg', 'M', '#1a1410', 1, 12000, 12000, '2026-07-07 19:46:54'),
(23, 17, NULL, 'Chemise Prestige', '/uploads/products/chemise.jpg', 'M', NULL, 1, 12000, 12000, '2026-07-08 12:41:55'),
(24, 18, NULL, 'Chemise Prestige', '/uploads/products/chemise.jpg', 'M', NULL, 1, 12000, 12000, '2026-07-08 13:43:32'),
(25, 19, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'XL', NULL, 1, 15000, 15000, '2026-07-09 22:55:38'),
(26, 19, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'XS', 'Rouge', 1, 15000, 15000, '2026-07-09 22:55:38'),
(27, 19, NULL, 'Costume Business', '/uploads/products/costume1.jpg', 'XS', NULL, 4, 45000, 180000, '2026-07-09 22:55:39'),
(28, 19, NULL, 'Robe Wax Royale', '/uploads/products/robe1.jpg', 'XS', NULL, 3, 15000, 45000, '2026-07-09 22:55:40'),
(29, 23, 32, 'Robe Terracotta Chic', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231151/robe-12_jr9s6l.png', 'XS', '#1a1410', 1, 28000, 28000, '2026-07-17 08:31:20'),
(30, 23, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/dsbmotehj/image/upload/v1784108222/veste-01_qp6vxk.png', 'XS', NULL, 1, 27000, 27000, '2026-07-17 08:31:21'),
(31, 23, 21, 'Robe Dentelle Ivoire Écarlate', 'https://res.cloudinary.com/dsbmotehj/image/upload/v1784108213/robe-01_n1xy5h.png', 'XS', NULL, 1, 15000, 15000, '2026-07-17 08:31:21'),
(32, 24, 43, 'Tailleur Homme Ardoise', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231160/tailleur-homme-02_ixv8h6.png', 'XS', NULL, 2, 42000, 84000, '2026-07-18 13:20:39'),
(33, 24, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', '#1a1410', 1, 27000, 27000, '2026-07-18 13:20:39'),
(34, 25, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'M', '#1a1410', 2, 27000, 54000, '2026-07-19 11:06:06'),
(35, 25, 48, 'Veste Wax Royale', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 'XS', NULL, 1, 27000, 27000, '2026-07-19 11:06:07'),
(36, 25, 43, 'Tailleur Homme Ardoise', 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231160/tailleur-homme-02_ixv8h6.png', 'XS', NULL, 1, 42000, 42000, '2026-07-19 11:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `paymentMethod` enum('cash_on_delivery','orange_money','mtn_mobile_money') NOT NULL,
  `provider` enum('manual','paydunya') DEFAULT 'manual',
  `transactionId` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `currency` varchar(10) DEFAULT 'XAF',
  `status` enum('pending','processing','paid','failed','cancelled','refunded') DEFAULT 'pending',
  `paymentUrl` text DEFAULT NULL,
  `paidAt` datetime DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `orderId`, `paymentMethod`, `provider`, `transactionId`, `amount`, `currency`, `status`, `paymentUrl`, `paidAt`, `createdAt`, `updatedAt`) VALUES
(1, 11, 'mtn_mobile_money', 'paydunya', NULL, 45000.00, 'XAF', 'processing', NULL, NULL, '2026-07-07 10:43:12', '2026-07-07 10:43:12'),
(2, 12, 'cash_on_delivery', 'manual', NULL, 81000.00, 'XAF', 'pending', NULL, NULL, '2026-07-07 16:04:38', '2026-07-07 16:04:38'),
(3, 13, 'cash_on_delivery', 'manual', NULL, 150000.00, 'XAF', 'pending', NULL, NULL, '2026-07-07 16:05:57', '2026-07-07 16:05:57'),
(4, 14, 'cash_on_delivery', 'manual', NULL, 213000.00, 'XAF', 'pending', NULL, NULL, '2026-07-07 16:21:07', '2026-07-07 16:21:07'),
(5, 15, 'cash_on_delivery', 'manual', NULL, 72000.00, 'XAF', 'pending', NULL, NULL, '2026-07-07 16:24:01', '2026-07-07 16:24:01'),
(6, 16, 'cash_on_delivery', 'manual', NULL, 14000.00, 'XAF', 'pending', NULL, NULL, '2026-07-07 19:46:55', '2026-07-07 19:46:55'),
(7, 17, 'mtn_mobile_money', 'paydunya', NULL, 12000.00, 'XAF', 'processing', NULL, NULL, '2026-07-08 12:41:55', '2026-07-08 12:41:55'),
(8, 18, 'orange_money', 'paydunya', NULL, 12000.00, 'XAF', 'processing', NULL, NULL, '2026-07-08 13:43:33', '2026-07-08 13:43:33'),
(9, 19, 'mtn_mobile_money', 'paydunya', NULL, 255000.00, 'XAF', 'processing', NULL, NULL, '2026-07-09 22:55:41', '2026-07-09 22:55:41'),
(10, 23, 'mtn_mobile_money', 'paydunya', NULL, 72000.00, 'XAF', 'processing', NULL, NULL, '2026-07-17 08:31:21', '2026-07-17 08:31:21'),
(11, 24, 'mtn_mobile_money', 'paydunya', NULL, 113000.00, 'XAF', 'processing', NULL, NULL, '2026-07-18 13:20:40', '2026-07-18 13:20:40'),
(12, 25, 'mtn_mobile_money', 'paydunya', NULL, 125000.00, 'XAF', 'processing', NULL, NULL, '2026-07-19 11:06:07', '2026-07-19 11:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `name` varchar(150) NOT NULL,
  `brand` varchar(120) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `color` varchar(50) DEFAULT NULL,
  `target` enum('homme','femme','unisexe') DEFAULT 'unisexe',
  `status` enum('active','inactive') DEFAULT 'active',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `displayOrder` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `categoryId`, `name`, `brand`, `description`, `price`, `stock`, `color`, `target`, `status`, `createdAt`, `updatedAt`, `displayOrder`) VALUES
(21, NULL, 'Robe Dentelle Ivoire Écarlate', 'TryOn Fashion', NULL, 15000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 1),
(22, NULL, 'Robe Bicolore Indigo Sable', 'TryOn Fashion', NULL, 18500, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 11),
(23, NULL, 'Robe Wax Bordeaux Doré', 'TryOn Fashion', NULL, 22000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 21),
(24, NULL, 'Robe Sirène Argentée', 'TryOn Fashion', NULL, 19500, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 31),
(25, NULL, 'Robe Ambre Royale', 'TryOn Fashion', NULL, 17000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 41),
(26, NULL, 'Robe Ébène Élégance', 'TryOn Fashion', NULL, 25000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 51),
(27, NULL, 'Robe Or Kente', 'TryOn Fashion', NULL, 16500, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 61),
(28, NULL, 'Robe Corail Bogolan', 'TryOn Fashion', NULL, 21000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 71),
(29, NULL, 'Robe Perle d\'Abidjan', 'TryOn Fashion', NULL, 18000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 81),
(30, NULL, 'Robe Safran Wax', 'TryOn Fashion', NULL, 20000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 91),
(31, NULL, 'Robe Nuit Étoilée', 'TryOn Fashion', NULL, 23500, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 101),
(32, NULL, 'Robe Terracotta Chic', 'TryOn Fashion', NULL, 28000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 111),
(33, NULL, 'Robe Améthyste Wax', 'TryOn Fashion', NULL, 16000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 121),
(34, NULL, 'Robe Cannelle Brodée', 'TryOn Fashion', NULL, 19000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 131),
(35, NULL, 'Robe Turquoise Sahel', 'TryOn Fashion', NULL, 24000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 141),
(36, NULL, 'Robe Grenat Royale', 'TryOn Fashion', NULL, 17500, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 151),
(37, NULL, 'Robe Sable Doré', 'TryOn Fashion', NULL, 21500, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 161),
(38, NULL, 'Robe Jade Africaine', 'TryOn Fashion', NULL, 26000, 0, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 171),
(39, 1, 'Robe Bordeaux Élégance', 'TryOn Fashion', 'Robe africaine prestige', 22500, 9, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 181),
(40, 1, 'Robe Cuivre Wax', 'TryOn Fashion', 'Robe rouge soirée glamour', 20500, 12, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 191),
(41, 1, 'Robe Céleste Brodée', 'TryOn Fashion', 'Robe rouge épaule dénudée', 18500, 14, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 201),
(42, 2, 'Tailleur Homme Ébène', 'Gentleman Style', 'Costume cérémonie bleu roi', 35000, 8, NULL, 'homme', 'active', '2026-07-13 09:59:10', '2026-07-13 10:58:56', 0),
(43, 2, 'Tailleur Homme Ardoise', 'Gentleman Style', 'Tailleur africain traditionnel', 42000, 6, NULL, 'homme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 10),
(44, 2, 'Tailleur Homme Acajou', 'Gentleman Style', 'Costume élégant avec canne', 38000, 5, NULL, 'homme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 20),
(45, 1, 'Tailleur Femme Ivoire', 'TryOn Fashion', 'Tailleur doré prestige', 32000, 7, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 211),
(46, 1, 'Tailleur Femme Corail', 'TryOn Fashion', 'Tailleur robe africaine colorée', 29000, 9, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 221),
(47, 1, 'Tailleur Femme Émeraude', 'TryOn Fashion', 'Tailleur blanc pantalon', 34000, 6, NULL, 'femme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 231),
(48, 1, 'Veste Wax Royale', 'TryOn Fashion', 'Veste costume wax africain', 27000, 10, NULL, 'unisexe', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 2),
(49, 2, 'Veste Denim Sahel', 'Gentleman Style', 'Veste homme africaine prestige', 31000, 8, NULL, 'homme', 'active', '2026-07-13 09:59:10', '2026-07-13 11:17:37', 30);

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `productId` int(11) NOT NULL,
  `categoryId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`productId`, `categoryId`) VALUES
(21, 1),
(21, 14),
(22, 1),
(22, 14),
(23, 1),
(23, 14),
(24, 1),
(24, 14),
(25, 1),
(25, 14),
(26, 1),
(26, 14),
(27, 1),
(27, 14),
(28, 1),
(28, 14),
(29, 1),
(29, 14),
(30, 1),
(30, 14),
(31, 1),
(31, 14),
(32, 1),
(32, 14),
(33, 1),
(33, 14),
(34, 1),
(34, 14),
(35, 1),
(35, 14),
(36, 1),
(36, 14),
(37, 1),
(37, 14),
(38, 1),
(38, 14),
(39, 1),
(39, 14),
(40, 1),
(40, 14),
(41, 1),
(41, 14),
(42, 2),
(42, 17),
(43, 2),
(43, 17),
(44, 2),
(44, 17),
(45, 1),
(45, 17),
(46, 1),
(46, 17),
(47, 1),
(47, 17),
(48, 17),
(49, 2),
(49, 17);

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `isMain` tinyint(1) DEFAULT 0,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `tryonImageUrl` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `productId`, `imageUrl`, `isMain`, `createdAt`, `tryonImageUrl`) VALUES
(1, 21, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231140/robe-01_pefoet.png', 1, '2026-07-13 10:27:36', NULL),
(2, 22, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231147/robe-02_xcxt0g.png', 1, '2026-07-13 10:27:36', NULL),
(3, 23, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231148/robe-03_thouw7.png', 1, '2026-07-13 10:27:36', NULL),
(4, 24, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231140/robe-04_tg6cfd.png', 1, '2026-07-13 10:27:36', NULL),
(5, 25, 'https://res.cloudinary.com/dsbmotehj/image/upload/v1784108213/robe-05_kjumlx.pnghttps://res.cloudinary.com/x25ea5x0/image/upload/v1784231141/robe-05_fg1id2.png', 1, '2026-07-13 10:27:36', NULL),
(6, 26, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231141/robe-06_m6chjk.png', 1, '2026-07-13 10:27:36', NULL),
(7, 27, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231140/robe-07_kgewov.png', 1, '2026-07-13 10:27:36', NULL),
(8, 28, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231147/robe-08_u0loqx.png', 1, '2026-07-13 10:27:36', NULL),
(9, 29, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231146/robe-09_jiils4.png', 1, '2026-07-13 10:27:36', NULL),
(10, 30, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231147/robe-10_mjmscz.png', 1, '2026-07-13 10:27:36', NULL),
(11, 31, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231147/robe-11_gl53hr.png', 1, '2026-07-13 10:27:36', NULL),
(12, 32, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231151/robe-12_jr9s6l.png', 1, '2026-07-13 10:27:36', NULL),
(13, 33, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231154/robe-13_vmbkso.png', 1, '2026-07-13 10:27:36', NULL),
(14, 34, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231154/robe-13_vmbkso.png', 1, '2026-07-13 10:27:36', NULL),
(15, 35, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231151/robe-15_zcvk5s.png', 1, '2026-07-13 10:27:36', NULL),
(16, 36, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231152/robe-16_vaxseq.png', 1, '2026-07-13 10:27:36', NULL),
(17, 37, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231151/robe-17_rikegu.png', 1, '2026-07-13 10:27:36', NULL),
(18, 38, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231154/robe-18_lfj4xb.png', 1, '2026-07-13 10:27:36', NULL),
(19, 39, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231156/robe-19_jo56jj.png', 1, '2026-07-13 10:27:36', NULL),
(20, 40, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231157/robe-20_uisuqq.png', 1, '2026-07-13 10:27:36', NULL),
(21, 41, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231157/robe-21_hqsmjp.png', 1, '2026-07-13 10:27:36', NULL),
(22, 42, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231163/tailleur-homme-01_b8x8jv.png', 1, '2026-07-13 10:27:36', NULL),
(23, 43, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231160/tailleur-homme-02_ixv8h6.png', 1, '2026-07-13 10:27:36', NULL),
(24, 44, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231161/tailleur-homme-03_euscyu.png', 1, '2026-07-13 10:27:36', NULL),
(25, 45, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231156/tailleur-femme-01_mqd8ig.png', 1, '2026-07-13 10:27:36', NULL),
(26, 46, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231158/tailleur-femme-02_izlawr.png', 1, '2026-07-13 10:27:36', NULL),
(27, 47, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231158/tailleur-femme-03_a0ufot.png', 1, '2026-07-13 10:27:36', NULL),
(28, 48, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231165/veste-01_jharjd.png', 1, '2026-07-13 10:27:36', NULL),
(29, 49, 'https://res.cloudinary.com/x25ea5x0/image/upload/v1784231162/veste-02_w5o8oi.png', 1, '2026-07-13 10:27:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_sizes`
--

CREATE TABLE `product_sizes` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `sizeId` int(11) NOT NULL,
  `stock` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_sizes`
--

INSERT INTO `product_sizes` (`id`, `productId`, `sizeId`, `stock`) VALUES
(1, 21, 4, 15),
(2, 21, 3, 15),
(3, 21, 2, 15),
(4, 21, 5, 15),
(5, 21, 1, 14),
(6, 21, 6, 15),
(7, 22, 4, 15),
(8, 22, 3, 15),
(9, 22, 2, 15),
(10, 22, 5, 15),
(11, 22, 1, 15),
(12, 22, 6, 15),
(13, 23, 4, 15),
(14, 23, 3, 15),
(15, 23, 2, 15),
(16, 23, 5, 15),
(17, 23, 1, 15),
(18, 23, 6, 15),
(19, 24, 4, 15),
(20, 24, 3, 15),
(21, 24, 2, 15),
(22, 24, 5, 15),
(23, 24, 1, 15),
(24, 24, 6, 15),
(25, 25, 4, 15),
(26, 25, 3, 15),
(27, 25, 2, 15),
(28, 25, 5, 15),
(29, 25, 1, 15),
(30, 25, 6, 15),
(31, 26, 4, 15),
(32, 26, 3, 15),
(33, 26, 2, 15),
(34, 26, 5, 15),
(35, 26, 1, 15),
(36, 26, 6, 15),
(37, 27, 4, 15),
(38, 27, 3, 15),
(39, 27, 2, 15),
(40, 27, 5, 15),
(41, 27, 1, 15),
(42, 27, 6, 15),
(43, 28, 4, 15),
(44, 28, 3, 15),
(45, 28, 2, 15),
(46, 28, 5, 15),
(47, 28, 1, 15),
(48, 28, 6, 15),
(49, 29, 4, 15),
(50, 29, 3, 15),
(51, 29, 2, 15),
(52, 29, 5, 15),
(53, 29, 1, 15),
(54, 29, 6, 15),
(55, 30, 4, 15),
(56, 30, 3, 15),
(57, 30, 2, 15),
(58, 30, 5, 15),
(59, 30, 1, 15),
(60, 30, 6, 15),
(61, 31, 4, 15),
(62, 31, 3, 15),
(63, 31, 2, 15),
(64, 31, 5, 15),
(65, 31, 1, 15),
(66, 31, 6, 15),
(67, 32, 4, 15),
(68, 32, 3, 15),
(69, 32, 2, 15),
(70, 32, 5, 15),
(71, 32, 1, 14),
(72, 32, 6, 15),
(73, 33, 4, 15),
(74, 33, 3, 15),
(75, 33, 2, 15),
(76, 33, 5, 15),
(77, 33, 1, 15),
(78, 33, 6, 15),
(79, 34, 4, 15),
(80, 34, 3, 15),
(81, 34, 2, 15),
(82, 34, 5, 15),
(83, 34, 1, 15),
(84, 34, 6, 15),
(85, 35, 4, 15),
(86, 35, 3, 15),
(87, 35, 2, 15),
(88, 35, 5, 15),
(89, 35, 1, 15),
(90, 35, 6, 15),
(91, 36, 4, 15),
(92, 36, 3, 15),
(93, 36, 2, 15),
(94, 36, 5, 15),
(95, 36, 1, 15),
(96, 36, 6, 15),
(97, 37, 4, 15),
(98, 37, 3, 15),
(99, 37, 2, 15),
(100, 37, 5, 15),
(101, 37, 1, 15),
(102, 37, 6, 15),
(103, 38, 4, 15),
(104, 38, 3, 15),
(105, 38, 2, 15),
(106, 38, 5, 15),
(107, 38, 1, 15),
(108, 38, 6, 15),
(109, 39, 4, 15),
(110, 39, 3, 15),
(111, 39, 2, 15),
(112, 39, 5, 15),
(113, 39, 1, 15),
(114, 39, 6, 15),
(115, 40, 4, 15),
(116, 40, 3, 15),
(117, 40, 2, 15),
(118, 40, 5, 15),
(119, 40, 1, 15),
(120, 40, 6, 15),
(121, 41, 4, 15),
(122, 41, 3, 15),
(123, 41, 2, 15),
(124, 41, 5, 15),
(125, 41, 1, 15),
(126, 41, 6, 15),
(127, 45, 4, 15),
(128, 45, 3, 15),
(129, 45, 2, 15),
(130, 45, 5, 15),
(131, 45, 1, 15),
(132, 45, 6, 15),
(133, 46, 4, 15),
(134, 46, 3, 15),
(135, 46, 2, 15),
(136, 46, 5, 15),
(137, 46, 1, 15),
(138, 46, 6, 15),
(139, 47, 4, 15),
(140, 47, 3, 15),
(141, 47, 2, 15),
(142, 47, 5, 15),
(143, 47, 1, 15),
(144, 47, 6, 15),
(145, 48, 4, 15),
(146, 48, 3, 13),
(147, 48, 2, 15),
(148, 48, 5, 15),
(149, 48, 1, 12),
(150, 48, 6, 15),
(151, 42, 4, 15),
(152, 42, 3, 15),
(153, 42, 2, 15),
(154, 42, 5, 15),
(155, 42, 1, 15),
(156, 42, 6, 15),
(157, 43, 4, 15),
(158, 43, 3, 15),
(159, 43, 2, 15),
(160, 43, 5, 15),
(161, 43, 1, 12),
(162, 43, 6, 15),
(163, 44, 4, 15),
(164, 44, 3, 15),
(165, 44, 2, 15),
(166, 44, 5, 15),
(167, 44, 1, 15),
(168, 44, 6, 15),
(169, 49, 4, 15),
(170, 49, 3, 15),
(171, 49, 2, 15),
(172, 49, 5, 15),
(173, 49, 1, 15),
(174, 49, 6, 15);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `productName` varchar(150) NOT NULL,
  `clientName` varchar(150) NOT NULL,
  `rating` int(11) NOT NULL DEFAULT 5,
  `comment` text NOT NULL,
  `status` enum('pending','approved','rejected') DEFAULT 'pending',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `productId`, `userId`, `productName`, `clientName`, `rating`, `comment`, `status`, `createdAt`, `updatedAt`) VALUES
(1, NULL, NULL, 'Robe Wax Roy', 'Marie DUPONT', 4, 'Très bon produit', 'approved', '2026-07-01 08:29:15', '2026-07-10 13:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `label` varchar(20) NOT NULL,
  `sortOrder` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `label`, `sortOrder`) VALUES
(1, 'XS', 1),
(2, 'S', 2),
(3, 'M', 3),
(4, 'L', 4),
(5, 'XL', 5),
(6, 'XXL', 6);

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `fullName` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `adminResponse` text DEFAULT NULL,
  `status` enum('open','pending','resolved','closed') DEFAULT 'open',
  `priority` enum('low','medium','high','urgent') DEFAULT 'medium',
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tryons`
--

CREATE TABLE `tryons` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `guestId` varchar(100) DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  `userPhoto` varchar(255) DEFAULT NULL,
  `resultImage` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `recommendedSize` varchar(20) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `isLatest` tinyint(1) DEFAULT 0,
  `createdAt` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tryons`
--

INSERT INTO `tryons` (`id`, `userId`, `guestId`, `productId`, `userPhoto`, `resultImage`, `score`, `recommendedSize`, `notes`, `isLatest`, `createdAt`) VALUES
(1, 19, NULL, 49, '/uploads/tryons/tryonPhoto-62784e92-c81a-46ba-a2fe-5f790057055e-1783949105901-22797588.png', '/uploads/tryons/tryon_1783949139235.png', NULL, NULL, 'IA (catvton) — 13/07/2026', 1, '2026-07-13 13:25:40'),
(2, 19, NULL, 46, '/uploads/tryons/tryonPhoto-f979d656-ff00-4bcf-8980-27177f251a7d-1783949304545-365225250.png', '/uploads/tryons/tryon_1783949360983.png', NULL, NULL, 'IA (catvton) — 13/07/2026', 1, '2026-07-13 13:29:22'),
(3, 19, NULL, 43, '/uploads/tryons/tryonPhoto-2-1783949464215-967256151.jpg', '/uploads/tryons/tryon_1783949482419.png', NULL, NULL, 'IA (catvton) — 13/07/2026', 1, '2026-07-13 13:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `googleId` varchar(255) DEFAULT NULL,
  `firstName` varchar(100) NOT NULL,
  `lastName` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('client','admin') DEFAULT 'client',
  `phone` varchar(30) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `otpCode` varchar(255) DEFAULT NULL,
  `otpExpiresAt` datetime DEFAULT NULL,
  `resetToken` varchar(255) DEFAULT NULL,
  `resetTokenExpiresAt` datetime DEFAULT NULL,
  `status` enum('active','inactive','suspended') DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `googleId`, `firstName`, `lastName`, `email`, `password`, `role`, `phone`, `address`, `city`, `avatar`, `createdAt`, `updatedAt`, `otpCode`, `otpExpiresAt`, `resetToken`, `resetTokenExpiresAt`, `status`) VALUES
(3, NULL, 'Marie', 'DUPONT', 'marie.dupont@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeGjZ0K3UjyB5Gm7J0uZ6uL5r6Wq6u6eS', 'client', '0612345678', '123 Rue de la Paix', 'Paris', NULL, '2026-06-18 16:36:51', '2026-06-18 16:36:51', NULL, NULL, NULL, NULL, 'active'),
(4, NULL, 'Jean', 'MARTIN', 'jean.martin@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeGjZ0K3UjyB5Gm7J0uZ6uL5r6Wq6u6eS', 'client', '0623456789', '45 Avenue des Champs', 'Lyon', NULL, '2026-06-18 16:36:51', '2026-06-18 16:36:51', NULL, NULL, NULL, NULL, 'active'),
(7, NULL, 'Laura', 'MOREAU', 'laura.moreau@email.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeGjZ0K3UjyB5Gm7J0uZ6uL5r6Wq6u6eS', 'client', '0656789012', '33 Rue de la LibertÃ©', 'Nice', NULL, '2026-06-18 16:36:51', '2026-06-18 16:36:51', NULL, NULL, NULL, NULL, 'active'),
(13, NULL, 'Rayol', 'NGA', 'rayol@test.com', '$2b$10$hash', 'admin', '699000002', 'Akwa', 'Douala', NULL, '2026-06-18 16:52:10', '2026-06-18 16:52:10', NULL, NULL, NULL, NULL, 'active'),
(18, '108122395256891558634', 'Richarda', 'Ngankam', 'lindsayricharda10@gmail.com', '$2b$10$M8vjxXWDhTjeAZHyStoOY.DrlV2hwtZTFu6KkW4I7sLs3khRPyyri', 'client', '683777399', '-', 'Douala', 'https://lh3.googleusercontent.com/a/ACg8ocJuPUMc2B_7MRYkWhmxb95yxz5mSph5KhSKbTtlN5Da8IXfcA=s96-c', '2026-06-19 13:46:46', '2026-07-15 11:35:24', NULL, NULL, '80adb56bd0f75a0de1bf41f88957a696e8175dcd93eed880ad32bf7d8b5358fb', '2026-06-19 15:30:39', 'active'),
(19, '104706716099510857936', 'brad', 'brad', 'fofackrayol@gmail.com', '$2b$10$uf8xuxtJ8Rbi.T.4ko4A5.s6kp4nS0OStZdEV7B4sg9KJilZvtIxG', 'admin', '671207374', '3Q29+C4H', 'Douala', 'https://lh3.googleusercontent.com/a/ACg8ocJtaFdiVGE-F6RCn_zom2hMl6R-ujURX34XrMMs_jMRYcvaxA=s96-c', '2026-06-20 22:10:50', '2026-07-23 10:02:03', '$2b$10$21TccdD3i20G2O3xHCmdF.Tpcwzqs7.9a4jsH6jlEZ2a3LflFOB26', '2026-07-23 11:12:02', 'ece5b75a1e1888c98f76fa5e41edd6239b4f624241f72738a9c7b02763e84dbf', '2026-06-23 08:52:20', 'active'),
(21, '102495508110898436725', 'Yannick', 'Eko', 'yannickeko70@gmail.com', '', 'admin', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ACg8ocLQSa7ztN-mqBT28WIqTmcm3S1rl54HqA4S9-p2CwqG7GnU7Ek=s96-c', '2026-07-06 09:56:21', '2026-07-20 19:05:23', NULL, NULL, NULL, NULL, 'active'),
(25, '110143402397583990367', 'Try', 'On', 'tryon.douala@gmail.com', NULL, 'admin', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ACg8ocLujAYR-B03CJfjZiK8fNRQCs96Til05Ei7s3tnQXJY4cysaz0=s96-c', '2026-07-08 09:26:17', '2026-07-23 10:09:53', '$2b$10$37UI93E3YFgjafbKQD64oOOqr9snbxqq8VP8Z5/OPEq.yfy4p2sJ2', '2026-07-23 10:19:53', NULL, NULL, 'active'),
(32, NULL, 'Jordy', 'Mbele', 'jordymbele@gmail.com', '$2b$10$jFDJXlmTmRDn7v1.TbBMAuFU8touMP.PKcY4zxk/AbAO1KlZbEM4a', 'client', '658419947', NULL, NULL, NULL, '2026-07-11 10:16:58', '2026-07-11 10:16:58', NULL, NULL, NULL, NULL, 'active'),
(33, '106879109148752928526', 'NDJOM', 'Ulrich Bienvenue', 'nulrichbienvenue@gmail.com', NULL, 'client', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a-/ALV-UjVvZz1km6urD5SHxlO_RDQwyX-mErlxo0B3HPm9SW2lMi0GO5O-2UMxWfta7M5JlSdxUcE5qM16TWoPII1MJv07VrbU7jZg-Xvq0q5fxxoG7ycDCheY-yF67P89cIF_oAZozwGgVEO4lZYcv5nRFQbnORxGERfC5uedScq9Z7bM0XPgaX_zeZAWDi1kgps_D1CUBxAYfRK4PuUNuM1uACRUVxwA_ibYmEqTqK9HOXkttYVPz9P9slj01jorNoiD8l3NTACToLS9Us3fOLqAMyxXTwZ4w7_EflmCaBbzeebcjST4n7kmlzq7X9ZI0cMUWk_1PZutdnIxvnSHk0vledwSP548cdN-KSR4QRhN3gMoKLKvgbcvmUdn5k0LnBOcIZg43GJNaI0RpaSDG_PbMfttxnoZvf1cWxfOTyvzSVf6_O887LILi_qSBp16k0Wwf_2EKdc70S5', '2026-07-15 11:42:19', '2026-07-15 11:42:19', NULL, NULL, NULL, NULL, 'active'),
(34, '101804952505410923048', 'Edwin', 'Fom', 'edwinfom05@gmail.com', NULL, 'client', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ACg8ocLJO_b7pwsYZ22pviEPNe8UA0-USexhtDg5vtMT9KFiB56tHd9i=s96-c', '2026-07-15 12:34:49', '2026-07-15 12:34:49', NULL, NULL, NULL, NULL, 'active'),
(35, '117316271571145102726', 'bryand', 'rayol', 'rayolbryand@gmail.com', NULL, 'client', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ACg8ocIPxdmTouS-82NNEHGD5hRQLbWN5Mzrj1wStZiO8H6GZE5O0w=s96-c', '2026-07-17 08:33:16', '2026-07-17 08:33:16', NULL, NULL, NULL, NULL, 'active'),
(36, '102345836615700459198', 'travel', 'canada', 'travelcanada237@gmail.com', NULL, 'client', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ACg8ocIREmLJerKy2fwkb5mp8JLH_07UJaLkkCDY-P5--jRd_VJcJg=s96-c', '2026-07-19 14:18:45', '2026-07-19 14:18:45', NULL, NULL, NULL, NULL, 'active'),
(37, '116872883759706937505', 'Edingue', 'Robert', 'edinguerobert15@gmail.com', NULL, 'client', '-', '-', '-', 'https://lh3.googleusercontent.com/a/ACg8ocJ5kLpQauLnhRNhaDJ68UCbuv9EIqfrD_YSR7zbzmIN3AE-_w=s96-c', '2026-07-20 18:53:38', '2026-07-20 19:08:26', NULL, NULL, NULL, NULL, 'active'),
(38, '102232407638443533936', 'Travel', 'canada', 'travelcanada08@gmail.com', NULL, 'client', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ACg8ocIH4t0lvaUZSBESkiU_D1C-lHTLJHUk1mfd_ta0RzQ7Lcx2TA=s96-c', '2026-07-22 09:47:19', '2026-07-22 09:47:19', NULL, NULL, NULL, NULL, 'active'),
(39, '114317174343893547158', 'aimee', 'tonfack', 'aimeetonfack9@gmail.com', NULL, 'client', NULL, NULL, NULL, 'https://lh3.googleusercontent.com/a/ACg8ocKfbK6U7cfzTgFBU6873oI3adztODVis97jTzasz8hj7jn8DQ=s96-c', '2026-07-22 10:12:12', '2026-07-22 10:12:12', NULL, NULL, NULL, NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `user_measurements`
--

CREATE TABLE `user_measurements` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `method` enum('photo_guided','manual') NOT NULL DEFAULT 'manual',
  `heightCm` decimal(5,1) DEFAULT NULL,
  `shoulderCm` decimal(5,1) DEFAULT NULL,
  `chestCm` decimal(5,1) DEFAULT NULL,
  `waistCm` decimal(5,1) DEFAULT NULL,
  `hipCm` decimal(5,1) DEFAULT NULL,
  `inseamCm` decimal(5,1) DEFAULT NULL,
  `isStretchFabric` tinyint(1) DEFAULT 0,
  `calibrationRefMm` decimal(6,2) DEFAULT 85.60,
  `confidence` enum('estimee','mesuree') NOT NULL DEFAULT 'estimee',
  `notes` varchar(255) DEFAULT NULL,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_measurements`
--

INSERT INTO `user_measurements` (`id`, `userId`, `method`, `heightCm`, `shoulderCm`, `chestCm`, `waistCm`, `hipCm`, `inseamCm`, `isStretchFabric`, `calibrationRefMm`, `confidence`, `notes`, `createdAt`, `updatedAt`) VALUES
(1, 19, 'manual', 200.0, 50.0, 70.0, 60.0, 60.0, NULL, 1, 85.60, 'mesuree', NULL, '2026-07-02 11:12:14', '2026-07-02 11:12:14'),
(2, 19, 'manual', 160.0, 60.0, 60.0, 60.0, 60.0, NULL, 1, 85.60, 'mesuree', NULL, '2026-07-02 11:22:12', '2026-07-02 11:22:12'),
(3, 19, 'manual', 160.0, 60.0, 60.0, 60.0, 60.0, NULL, 1, 85.60, 'mesuree', NULL, '2026-07-02 12:02:56', '2026-07-02 12:02:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_notifications`
--

CREATE TABLE `user_notifications` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `type` varchar(50) DEFAULT 'info',
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `isRead` tinyint(1) DEFAULT 0,
  `createdAt` timestamp NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_notifications`
--

INSERT INTO `user_notifications` (`id`, `userId`, `type`, `title`, `message`, `isRead`, `createdAt`, `updatedAt`) VALUES
(3, 32, 'info', 'Bienvenue sur TryOn !', 'Votre compte a été créé avec succès.', 1, '2026-07-11 10:16:58', '2026-07-11 21:08:10'),
(4, 19, 'order', 'Commande confirmée', 'Votre commande TRY-080591-5527 a été validée avec succès. Montant : 72,000 FCFA.', 1, '2026-07-17 08:31:22', '2026-07-18 13:17:31'),
(6, 19, 'order', 'Commande confirmée', 'Votre commande TRY-166344-1386 a été validée avec succès. Montant : 125,000 FCFA.', 0, '2026-07-19 11:06:08', '2026-07-19 11:06:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_activity_logs_userId` (`userId`),
  ADD KEY `idx_activity_logs_severity` (`severity`),
  ADD KEY `idx_activity_logs_createdAt` (`createdAt`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admin_notifications_adminId` (`adminId`),
  ADD KEY `idx_admin_notifications_isRead` (`isRead`);

--
-- Indexes for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settingKey` (`settingKey`),
  ADD KEY `idx_settings_group` (`groupName`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_carts_user` (`userId`),
  ADD KEY `idx_carts_guest` (`guestId`,`status`);

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cartId` (`cartId`,`productId`,`size`,`color`),
  ADD KEY `fk_cart_items_product` (`productId`),
  ADD KEY `idx_cart_items_cart` (`cartId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `faq_items`
--
ALTER TABLE `faq_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_faq_category` (`category`),
  ADD KEY `idx_faq_isActive` (`isActive`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderNumber` (`orderNumber`),
  ADD KEY `idx_orders_user` (`userId`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order_items_product` (`productId`),
  ADD KEY `idx_order_items_order` (`orderId`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_payments_order` (`orderId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_products_category` (`categoryId`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`productId`,`categoryId`),
  ADD KEY `categoryId` (`categoryId`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_product_images_product` (`productId`);

--
-- Indexes for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productId` (`productId`,`sizeId`),
  ADD KEY `fk_product_sizes_size` (`sizeId`),
  ADD KEY `idx_product_sizes_product` (`productId`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_reviews_productId` (`productId`),
  ADD KEY `idx_reviews_userId` (`userId`),
  ADD KEY `idx_reviews_status` (`status`),
  ADD KEY `idx_reviews_rating` (`rating`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `label` (`label`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_support_userId` (`userId`),
  ADD KEY `idx_support_status` (`status`),
  ADD KEY `idx_support_priority` (`priority`),
  ADD KEY `idx_support_createdAt` (`createdAt`);

--
-- Indexes for table `tryons`
--
ALTER TABLE `tryons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tryons_user` (`userId`),
  ADD KEY `idx_tryons_product` (`productId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `googleId` (`googleId`);

--
-- Indexes for table `user_measurements`
--
ALTER TABLE `user_measurements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_measurements_user` (`userId`,`createdAt`);

--
-- Indexes for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_notifications_userId` (`userId`),
  ADD KEY `idx_user_notifications_isRead` (`isRead`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `app_settings`
--
ALTER TABLE `app_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `faq_items`
--
ALTER TABLE `faq_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `product_sizes`
--
ALTER TABLE `product_sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tryons`
--
ALTER TABLE `tryons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `user_measurements`
--
ALTER TABLE `user_measurements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_notifications`
--
ALTER TABLE `user_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD CONSTRAINT `admin_notifications_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `fk_carts_user` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `fk_cart_items_cart` FOREIGN KEY (`cartId`) REFERENCES `carts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_cart_items_product` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_orders_user` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `fk_order_items_order` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_order_items_product` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_order` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_products_category` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD CONSTRAINT `product_categories_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_ibfk_2` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_images`
--
ALTER TABLE `product_images`
  ADD CONSTRAINT `fk_product_images_product` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_sizes`
--
ALTER TABLE `product_sizes`
  ADD CONSTRAINT `fk_product_sizes_product` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_product_sizes_size` FOREIGN KEY (`sizeId`) REFERENCES `sizes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tryons`
--
ALTER TABLE `tryons`
  ADD CONSTRAINT `fk_tryons_product` FOREIGN KEY (`productId`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_tryons_user` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_measurements`
--
ALTER TABLE `user_measurements`
  ADD CONSTRAINT `fk_measurements_user` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_notifications`
--
ALTER TABLE `user_notifications`
  ADD CONSTRAINT `user_notifications_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
