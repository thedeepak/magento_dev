-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 31, 2013 at 07:08 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `magento_dev`
--
CREATE DATABASE IF NOT EXISTS `magento_dev` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `magento_dev`;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_adminnotification_inbox`
--

CREATE TABLE IF NOT EXISTS `mgnto_adminnotification_inbox` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Notification id',
  `severity` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Problem type',
  `date_added` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Create date',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `description` text COMMENT 'Description',
  `url` varchar(255) DEFAULT NULL COMMENT 'Url',
  `is_read` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification read',
  `is_remove` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag if notification might be removed',
  PRIMARY KEY (`notification_id`),
  KEY `IDX_MGNTO_ADMINNOTIFICATION_INBOX_SEVERITY` (`severity`),
  KEY `IDX_MGNTO_ADMINNOTIFICATION_INBOX_IS_READ` (`is_read`),
  KEY `IDX_MGNTO_ADMINNOTIFICATION_INBOX_IS_REMOVE` (`is_remove`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Adminnotification Inbox' AUTO_INCREMENT=170 ;

--
-- Dumping data for table `mgnto_adminnotification_inbox`
--

INSERT INTO `mgnto_adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(1, 4, '2008-07-24 23:54:40', 'Magento 1.1 Production Version Now Available', 'We are thrilled to announce the availability of the production release of Magento 1.1. Read more about the release in the Magento Blog.', 'http://www.magentocommerce.com/blog/comments/magento-11-is-here-1/', 0, 0),
(2, 4, '2008-08-02 00:00:16', 'Updated iPhone Theme is now available', 'Updated iPhone theme for Magento 1.1 is now available on Magento Connect and for upgrade through your Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/updated-iphone-theme-for-magento-11-is-now-available/', 0, 0),
(3, 3, '2008-08-02 00:10:27', 'Magento version 1.1.2 is now available', 'Magento version 1.1.2 is now available for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-version-112-is-now-available/', 0, 0),
(4, 3, '2008-08-13 16:21:46', 'Magento version 1.1.3 is now available', 'Magento version 1.1.3 is now available', 'http://www.magentocommerce.com/blog/comments/magento-version-113-is-now-available/', 0, 0),
(5, 1, '2008-09-02 19:40:31', 'Magento Version 1.1.4 Security Update Now Available', 'Magento 1.1.4 Security Update Now Available. If you are using Magento version 1.1.x, we highly recommend upgrading to this version as soon as possible.', 'http://www.magentocommerce.com/blog/comments/magento-version-114-security-update/', 0, 0),
(6, 3, '2008-09-15 20:39:54', 'Magento version 1.1.5 Now Available', 'Magento version 1.1.5 Now Available.\n\nThis release includes many bug fixes, a new category manager and a new skin for the default Magento theme.', 'http://www.magentocommerce.com/blog/comments/magento-version-115-now-available/', 0, 0),
(7, 3, '2008-09-17 18:48:35', 'Magento version 1.1.6 Now Available', 'Magento version 1.1.6 Now Available.\n\nThis version includes bug fixes for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-116-now-available/', 0, 0),
(8, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(9, 3, '2008-11-20 01:01:12', 'Magento version 1.1.7 Now Available', 'Magento version 1.1.7 Now Available.\n\nThis version includes over 350 issue resolutions for Magento 1.1.x that are listed in the release notes section, and new functionality that includes:\n\n-Google Website Optimizer integration\n-Google Base integration\n-Scheduled DB logs cleaning option', 'http://www.magentocommerce.com/blog/comments/magento-version-117-now-available/', 0, 0),
(10, 3, '2008-11-26 20:54:50', 'Magento Version 1.1.8 Now Available', 'Magento version 1.1.8 now available.\n\nThis version includes some issue resolutions for Magento 1.1.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-118-now-available/', 0, 0),
(11, 3, '2008-12-30 07:15:59', 'Magento version 1.2.0 is now available for download and upgrade', 'We are extremely happy to announce the availability of Magento version 1.2.0 for download and upgrade.\n\nThis version includes numerous issue resolutions for Magento version 1.1.x and some highly requested new features such as:\n\n    * Support for Downloadable/Digital Products. \n    * Added Layered Navigation to site search result page.\n    * Improved site search to utilize MySQL fulltext search\n    * Added support for fixed-taxes on product level.\n    * Upgraded Zend Framework to the latest stable version 1.7.2', 'http://www.magentocommerce.com/blog/comments/magento-version-120-is-now-available/', 0, 0),
(12, 2, '2008-12-30 21:29:22', 'Magento version 1.2.0.1 now available', 'Magento version 1.2.0.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1201-available/', 0, 0),
(13, 2, '2009-01-12 20:11:49', 'Magento version 1.2.0.2 now available', 'Magento version 1.2.0.2 is now available for download and upgrade. This version includes an issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1202-now-available/', 0, 0),
(14, 3, '2009-01-23 23:55:56', 'Magento version 1.2.0.3 now available', 'Magento version 1.2.0.3 is now available for download and upgrade. This version includes issue resolutions for Magento version 1.2.0.x as listed in the release notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1203-now-available/', 0, 0),
(15, 3, '2009-02-02 21:27:00', 'Magento version 1.2.1 is now available for download and upgrade', 'We are happy to announce the availability of Magento version 1.2.1 for download and upgrade.\n\nThis version includes some issue resolutions for Magento version 1.2.x. A full list of items included in this release can be found on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-121-now-available/', 0, 0),
(16, 3, '2009-02-24 00:15:47', 'Magento version 1.2.1.1 now available', 'Magento version 1.2.1.1 now available.This version includes some issue resolutions for Magento 1.2.x that are listed in the release notes section.', 'http://www.magentocommerce.com/blog/comments/magento-version-1211-now-available/', 0, 0),
(17, 3, '2009-02-27 01:09:24', 'CSRF Attack Prevention', 'We have just posted a blog entry about a hypothetical CSRF attack on a Magento admin panel. Please read the post to find out if your Magento installation is at risk at http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 'http://www.magentocommerce.com/blog/comments/csrf-vulnerabilities-in-web-application-and-how-to-avoid-them-in-magento/', 0, 0),
(18, 2, '2009-03-03 22:33:58', 'Magento version 1.2.1.2 now available', 'Magento version 1.2.1.2 is now available for download and upgrade.\nThis version includes some updates to improve admin security as described in the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-1212-now-available/', 0, 0),
(19, 3, '2009-03-31 00:52:40', 'Magento version 1.3.0 now available', 'Magento version 1.3.0 is now available for download and upgrade. This version includes numerous issue resolutions for Magento version 1.2.x and new features as described on the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-130-is-now-available/', 0, 0),
(20, 3, '2009-04-18 02:36:02', 'Magento version 1.3.1 now available', 'Magento version 1.3.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and new features such as Checkout By Amazon and Amazon Flexible Payment. To see a full list of updates please check the release notes page.', 'http://www.magentocommerce.com/blog/comments/magento-version-131-now-available/', 0, 0),
(21, 3, '2009-05-19 21:01:21', 'Magento version 1.3.1.1 now available', 'Magento version 1.3.1.1 is now available for download and upgrade. This version includes some issue resolutions for Magento version 1.3.x and a security update for Magento installations that run on multiple domains or sub-domains. If you are running Magento with multiple domains or sub-domains we highly recommend upgrading to this version.', 'http://www.magentocommerce.com/blog/comments/magento-version-1311-now-available/', 0, 0),
(22, 3, '2009-05-29 21:24:06', 'Magento version 1.3.2 now available', 'This version includes some improvements and issue resolutions for version 1.3.x that are listed on the release notes page. also included is a Beta version of the Compile module.', 'http://www.magentocommerce.com/blog/comments/magento-version-132-now-available/', 0, 0),
(23, 3, '2009-06-01 18:02:52', 'Magento version 1.3.2.1 now available', 'Magento version 1.3.2.1 now available for download and upgrade.\n\nThis release solves an issue for users running Magento with PHP 5.2.0, and changes to index.php to support the new Compiler Module.', 'http://www.magentocommerce.com/blog/comments/magento-version-1321-now-available/', 0, 0),
(24, 3, '2009-07-01 23:51:44', 'Magento version 1.3.2.2 now available', 'Magento version 1.3.2.2 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1322-now-available/', 0, 0),
(25, 3, '2009-07-23 05:18:54', 'Magento version 1.3.2.3 now available', 'Magento version 1.3.2.3 is now available for download and upgrade.\n\nThis release includes issue resolution for Magento version 1.3.x. We recommend to upgrade to this version if PayPal payment modules are in use. To see a full list of changes please visit the release notes page http://www.magentocommerce.com/download/release_notes.', 'http://www.magentocommerce.com/blog/comments/magento-version-1323-now-available/', 0, 0),
(26, 4, '2009-08-28 16:56:28', 'PayPal is updating Payflow Pro and Website Payments Pro (Payflow Edition) UK.', 'If you are using Payflow Pro and/or Website Payments Pro (Payflow Edition) UK.  payment methods, you will need to update the URLâ€˜s in your Magento Administrator Panel in order to process transactions after September 1, 2009. Full details are available here: http://www.magentocommerce.com/wiki/paypal_payflow_changes', 'http://www.magentocommerce.com/wiki/paypal_payflow_changes', 0, 0),
(27, 2, '2009-09-23 18:46:49', 'Magento Version 1.3.2.4 Security Update', 'Magento Version 1.3.2.4 is now available. This version includes a security updates for Magento 1.3.x that solves possible XSS vulnerability issue on customer registration page and is available through SVN, Download Page and through the Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-version-1324-security-update/', 0, 0),
(28, 4, '2009-09-25 13:27:54', 'Magento Preview Version 1.4.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha2-now-available/', 0, 0),
(29, 4, '2009-10-06 23:25:40', 'Magento Preview Version 1.4.0.0-alpha3 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-alpha3 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-alpha3-now-available/', 0, 0),
(30, 4, '2009-12-08 23:00:36', 'Magento Preview Version 1.4.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-beta1-now-available/', 0, 0),
(31, 4, '2009-12-31 08:52:12', 'Magento Preview Version 1.4.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version 1.4.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1400-rc1-now-available/', 0, 0),
(32, 4, '2010-02-13 03:09:53', 'Magento CE Version 1.4.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.0.0 Stable for upgrade and download.', 'http://bit.ly/c53rpK', 0, 0),
(33, 3, '2010-02-20 02:09:36', 'Magento CE Version 1.4.0.1 Stable is now available', 'Magento CE 1.4.0.1 Stable is now available for upgrade and download.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1401-stable-now-available/', 0, 0),
(34, 4, '2010-04-23 18:39:03', 'Magento Version CE 1.3.3.0 Stable - Now Available With Support for 3-D Secure', 'Based on community requests, we are excited to announce the release of Magento CE 1.3.3.0-Stable with support for 3-D Secure. This release is intended for Magento merchants using version 1.3.x, who want to add support for 3-D Secure.', 'http://www.magentocommerce.com/blog/comments/magento-version-ce-1330-stable-now-available-with-support-for-3-d-secure/', 0, 0),
(35, 4, '2010-05-31 15:50:21', 'Announcing the Launch of Magento Mobile', 'The Magento team is pleased to announce the launch of Magento mobile, a new product that will allow Magento merchants to easily create branded, native mobile storefront applications that are deeply integrated with Magentoâ€™s market-leading eCommerce platform. The product includes a new administrative manager, a native iPhone app that is fully customizable, and a service where Magento manages the submission and maintenance process for the iTunes App Store.\n\nLearn more by visiting the Magento mobile product page and sign-up to be the first to launch a native mobile commerce app, fully integrated with Magento.', 'http://www.magentocommerce.com/product/mobile', 0, 0),
(36, 4, '2010-06-10 18:38:08', 'Magento CE Version 1.4.1.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.0 Stable for upgrade and download. Some of the highlights of this release include: Enhanced PayPal integration (more info to follow), Change of Database structure of the Sales module to no longer use EAV, and much more.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1410-stable-now-available/', 0, 0),
(37, 4, '2010-07-26 20:07:34', 'Magento CE Version 1.4.1.1 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.1.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-now-available/', 0, 0),
(38, 4, '2010-07-28 03:42:12', 'Magento CE Version 1.4.2.0-beta1 Preview Release Now Available', 'This release gives a preview of the new Magento Connect Manager.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-beta1-now-available/', 0, 0),
(39, 4, '2010-07-28 18:45:01', 'Magento CE Version 1.4.1.1 Patch Available', 'As some users experienced issues with upgrading to CE 1.4.1.1 through PEAR channels we provided a patch for it that is available on our blog http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1411-stable-patch/', 0, 0),
(40, 4, '2010-10-11 22:43:25', 'Magento Mobile is now live!', 'Magento Mobile is now live! Signup today to have your own native iPhone mobile-shopping app in iTunes for the holiday season! Learn more at http://www.magentomobile.com/', 'http://www.magentomobile.com/', 0, 0),
(41, 4, '2010-11-08 21:22:06', 'Magento CE Version 1.4.2.0-RC1 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC1 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc1-now-available/', 0, 0),
(42, 4, '2010-12-02 20:03:00', 'Magento CE Version 1.4.2.0-RC2 Preview Release Now Available', 'We are happy to announce the availability of Magento Preview Version 1.4.2.0-RC2 for download.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-1420-rc2-now-available/', 0, 0),
(43, 4, '2010-12-08 21:59:55', 'Magento CE Version 1.4.2.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.4.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1420-stable-now-available/', 0, 0),
(44, 4, '2010-12-17 22:53:55', 'Magento Preview Version CE 1.5.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha1-now-available/', 0, 0),
(45, 4, '2010-12-29 23:21:08', 'Magento Preview Version CE 1.5.0.0-alpha2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-alpha2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-alpha2-now-available/', 0, 0),
(46, 4, '2011-01-14 00:05:36', 'Magento Preview Version CE 1.5.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta1-now-available/', 0, 0),
(47, 4, '2011-01-21 20:49:09', 'Magento Preview Version CE 1.5.0.0-beta2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-beta2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-beta2-now-available/', 0, 0),
(48, 4, '2011-01-27 20:57:57', 'Magento Preview Version CE 1.5.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc1-now-available/', 0, 0),
(49, 4, '2011-02-03 21:26:33', 'Magento Preview Version CE 1.5.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1500-rc2-now-available/', 0, 0),
(50, 4, '2011-02-08 19:13:23', 'Magento CE Version 1.5.0.0 Stable is now available', 'We are excited to announce the availability of Magento CE Version 1.5.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-community-professional-and-enterprise-editions-releases-now-availab/', 0, 0),
(51, 4, '2011-02-09 23:12:57', 'Magento CE 1.5.0.1 stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.0.1 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-1501-stable-now-available/', 0, 0),
(52, 4, '2011-03-18 18:45:45', 'Magento CE 1.5.1.0-beta1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-beta1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-beta1-now-available/', 0, 0),
(53, 4, '2011-03-31 17:13:02', 'Magento CE 1.5.1.0-rc1 Now Available', 'We are happy to announce the availability of Magento Preview Version CE 1.5.1.0-rc1 for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1510-rc1-now-available/', 0, 0),
(54, 4, '2011-04-26 17:51:07', 'Magento CE 1.5.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.5.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1510-stable-now-available/', 0, 0),
(55, 4, '2011-05-26 18:03:23', 'Magento Preview Version CE 1.6.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-alpha1-now-available/', 0, 0),
(56, 4, '2011-06-15 16:42:08', 'Magento Preview Version CE 1.6.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-beta1for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-beta1-now-available/', 0, 0),
(57, 4, '2011-06-30 17:33:58', 'Magento Preview Version CE 1.6.0.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc1-now-available/', 0, 0),
(58, 4, '2011-07-11 17:37:39', 'Magento Preview Version CE 1.6.0.0-rc2 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.0.0-rc2 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1600-rc2-now-available/', 0, 0),
(59, 4, '2011-08-19 16:28:31', 'Magento CE 1.6.0.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.0.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1600-stable-now-available/', 0, 0),
(60, 4, '2011-09-17 00:01:26', 'Magento Preview Version CE 1.6.1.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-beta1-now-available/', 0, 0),
(61, 4, '2011-09-29 14:14:10', 'Magento Preview Version CE 1.6.1.0-rc1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.6.1.0-rc1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1610-rc1-now-available/', 0, 0),
(62, 4, '2011-10-19 16:20:05', 'Magento CE 1.6.1.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.1.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1610-stable-now-available/', 0, 0),
(63, 4, '2011-12-30 17:09:35', 'Magento Preview Version CE 1.7.0.0-alpha1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-alpha1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-alpha1-now-available/', 0, 0),
(64, 4, '2012-01-11 16:54:20', 'Magento CE 1.6.2.0-stable Now Available', 'We are excited to announce the availability of Magento CE Version 1.6.2.0 Stable for download and upgrade.', 'http://www.magentocommerce.com/blog/comments/magento-ce-version-1620-stable-now-available/', 0, 0),
(65, 4, '2012-03-02 19:24:12', 'Magento Preview Version CE 1.7.0.0-beta1 is now available', 'We are happy to announce the availability of Magento Preview Version CE 1.7.0.0-beta1 for download.\nAs this is a preview version it is NOT recommended in any way to be used in a production environment.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-beta1-now-available/', 0, 0),
(66, 4, '2012-04-23 08:32:40', 'Magento Community Preview Version CE 1.7.0.0-RC1 has been released!', 'Learn more about the exciting new features and updates in this release and how you can take it for a test drive. As this is a preview version, we need to stress that it''s likely unstable and that we DON''T recommend that you use it in any production environment just yet.', 'http://www.magentocommerce.com/blog/comments/magento-preview-version-ce-1700-rc1-now-available/', 0, 0),
(67, 4, '2012-05-11 04:16:54', 'Magento Community 1.7 and Magento Enterprise 1.12 now available!', 'Learn more about the exciting new features and updates in these releases.', 'http://www.magentocommerce.com/blog/comments/magento-enterprise-112-and-community-17-now-available/', 0, 0),
(68, 4, '2012-06-20 13:24:07', 'Magento Community Edition 1.7.0.1 now available! ', 'We have just released an updated version of Magento Community Edition, version 1.7.0.1. This update delivers new, minor functionality and fixes for some potential security vulnerabilities.', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-1701-released/', 0, 0),
(69, 4, '2012-07-05 13:51:43', 'Important Security Update - Zend Platform Vulnerability', 'We have recently learned of a serious vulnerability in the Zend platform on which Magento is built. Learn more and access a patch that addresses this issue. ', 'http://www.magentocommerce.com/blog/comments/important-security-update-zend-platform-vulnerability/', 0, 0),
(70, 4, '2012-11-19 14:57:42', 'Wrap up more holiday sales with financing', 'Give your customers up to 6 months financing. You get paid right away with Bill Me Later, a PayPal service. It’s a great way to extend financing in time for the holidays. Learn More.', 'http://www.magentocommerce.com/paypal/billmelater?utm_source=CEMessaging&utm_medium=copy&utm_content=sixmonths&utm_campaign=BML', 0, 0),
(71, 4, '2012-12-07 05:52:30', 'Increase Your Sales With PayPal', 'Magento merchants using PayPal Express Checkout can help increase their sales on average 18%. It is one simple thing you can do right now to help boost your sales. Learn more.', 'http://www.magentocommerce.com/add-paypal?utm_source=CEModule&utm_medium=copy&utm_content=18&utm_campaign=choosepaypal', 0, 0),
(72, 4, '2013-01-15 16:32:07', 'Imagine 2013 Registration is Now Open!', 'Join 1500 merchants, partners, developers and enthusiasts from 35+ countries around the world for Magento’s premier global conference! Collaborate, learn, network and get inspired by the future of eCommerce. Tickets will sell out fast! April 8th – 10th in Las Vegas.', 'https://registration.imagineecommerce.com/', 0, 0),
(73, 4, '2013-02-12 12:23:42', 'Get More eCommerce Power with Magento Enterprise', 'Limited time offer: Get a free, customized evaluation of your Community Edition site from a Magento Solution Partner. This evaluation gives you a clear look at the numerous benefits you can achieve by upgrading to Enterprise Edition. ', 'http://www.magentocommerce.com/community-to-enterprise?utm_source=CEMM&utm_medium=copy&utm_campaign=CE2EE', 0, 0),
(74, 2, '2013-09-27 11:58:13', 'Magento Community Edition 1.8.0.0 - now available for download!', 'Get tax, security, performance, and many other improvements. \n\nLearn more at http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/ ', 'http://www.magentocommerce.com/blog/comments/magento-community-edition-one-eight-now-available/', 0, 0),
(75, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(76, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(77, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(78, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(79, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(80, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(81, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(82, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(83, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(84, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(85, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(86, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(87, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(88, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(89, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(90, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(91, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(92, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(93, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(94, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(95, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(96, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(97, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(98, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(99, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(100, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(101, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(102, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(103, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(104, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(105, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(106, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(107, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(108, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(109, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(110, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(111, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(112, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(113, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(114, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(115, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(116, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(117, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(118, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(119, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(120, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(121, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(122, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(123, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(124, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(125, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(126, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(127, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(128, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(129, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(130, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(131, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(132, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(133, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(134, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(135, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(136, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(137, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(138, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(139, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(140, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(141, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(142, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(143, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(144, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(145, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(146, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(147, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(148, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(149, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(150, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(151, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(152, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(153, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0);
INSERT INTO `mgnto_adminnotification_inbox` (`notification_id`, `severity`, `date_added`, `title`, `description`, `url`, `is_read`, `is_remove`) VALUES
(154, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(155, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(156, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(157, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(158, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(159, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(160, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(161, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(162, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(163, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(164, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(165, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(166, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(167, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(168, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0),
(169, 4, '2008-11-07 23:16:42', 'Reminder: Change Magento`s default phone numbers and callouts before site launch', 'Before launching your Magento store, please remember to change Magento`s default phone numbers that appear in email templates, callouts, templates, etc.', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_admin_assert`
--

CREATE TABLE IF NOT EXISTS `mgnto_admin_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert ID',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert Type',
  `assert_data` text COMMENT 'Assert Data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Admin Assert Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_admin_role`
--

CREATE TABLE IF NOT EXISTS `mgnto_admin_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Role ID',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Tree Level',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role Sort Order',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role Type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User ID',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role Name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_MGNTO_ADMIN_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_MGNTO_ADMIN_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Role Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgnto_admin_role`
--

INSERT INTO `mgnto_admin_role` (`role_id`, `parent_id`, `tree_level`, `sort_order`, `role_type`, `user_id`, `role_name`) VALUES
(1, 0, 1, 1, 'G', 0, 'Administrators'),
(2, 1, 2, 0, 'U', 1, 'Deepak');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_admin_rule`
--

CREATE TABLE IF NOT EXISTS `mgnto_admin_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule ID',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Role ID',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Resource ID',
  `privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert ID',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role Type',
  `permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MGNTO_ADMIN_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_MGNTO_ADMIN_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin Rule Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgnto_admin_rule`
--

INSERT INTO `mgnto_admin_rule` (`rule_id`, `role_id`, `resource_id`, `privileges`, `assert_id`, `role_type`, `permission`) VALUES
(1, 1, 'all', NULL, 0, 'G', 'allow');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_admin_user`
--

CREATE TABLE IF NOT EXISTS `mgnto_admin_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User ID',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'User First Name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'User Last Name',
  `email` varchar(128) DEFAULT NULL COMMENT 'User Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'User Login',
  `password` varchar(100) DEFAULT NULL COMMENT 'User Password',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User Created Time',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User Modified Time',
  `logdate` timestamp NULL DEFAULT NULL COMMENT 'User Last Login Time',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'User Login Number',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Reload ACL',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'User Is Active',
  `extra` text COMMENT 'User Extra Data',
  `rp_token` text COMMENT 'Reset Password Link Token',
  `rp_token_created_at` timestamp NULL DEFAULT NULL COMMENT 'Reset Password Link Token Creation Date',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UNQ_MGNTO_ADMIN_USER_USERNAME` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Admin User Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgnto_admin_user`
--

INSERT INTO `mgnto_admin_user` (`user_id`, `firstname`, `lastname`, `email`, `username`, `password`, `created`, `modified`, `logdate`, `lognum`, `reload_acl_flag`, `is_active`, `extra`, `rp_token`, `rp_token_created_at`) VALUES
(1, 'Deepak', 'Moktan', 'dmoktan@lesterinc.com', 'admin', '5d071375cf48f0d5239549df22803e20:AYiwXhTbJfVUNPIWHUOd7iarVnFCiqLK', '2013-10-19 01:46:11', '2013-10-19 01:46:11', '2013-10-31 00:33:12', 28, 0, 1, 'a:1:{s:11:"configState";a:2:{s:31:"advanced_modules_disable_output";s:1:"1";s:25:"ecard_section_ecard_group";s:1:"1";}}', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_api2_acl_attribute`
--

CREATE TABLE IF NOT EXISTS `mgnto_api2_acl_attribute` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `user_type` varchar(20) NOT NULL COMMENT 'Type of user',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `operation` varchar(20) NOT NULL COMMENT 'Operation',
  `allowed_attributes` text COMMENT 'Allowed attributes',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_MGNTO_API2_ACL_ATTR_USR_TYPE_RES_ID_OPERATION` (`user_type`,`resource_id`,`operation`),
  KEY `IDX_MGNTO_API2_ACL_ATTRIBUTE_USER_TYPE` (`user_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Filter ACL Attributes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_api2_acl_role`
--

CREATE TABLE IF NOT EXISTS `mgnto_api2_acl_role` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `role_name` varchar(255) NOT NULL COMMENT 'Name of role',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_API2_ACL_ROLE_CREATED_AT` (`created_at`),
  KEY `IDX_MGNTO_API2_ACL_ROLE_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Roles' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgnto_api2_acl_role`
--

INSERT INTO `mgnto_api2_acl_role` (`entity_id`, `created_at`, `updated_at`, `role_name`) VALUES
(1, '2013-10-19 07:13:22', NULL, 'Guest'),
(2, '2013-10-19 07:13:22', NULL, 'Customer');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_api2_acl_rule`
--

CREATE TABLE IF NOT EXISTS `mgnto_api2_acl_rule` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  `resource_id` varchar(255) NOT NULL COMMENT 'Resource ID',
  `privilege` varchar(20) DEFAULT NULL COMMENT 'ACL Privilege',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_MGNTO_API2_ACL_RULE_ROLE_ID_RESOURCE_ID_PRIVILEGE` (`role_id`,`resource_id`,`privilege`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Rules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_api2_acl_user`
--

CREATE TABLE IF NOT EXISTS `mgnto_api2_acl_user` (
  `admin_id` int(10) unsigned NOT NULL COMMENT 'Admin ID',
  `role_id` int(10) unsigned NOT NULL COMMENT 'Role ID',
  UNIQUE KEY `UNQ_MGNTO_MGNTO_API2_ACL_USER_ADMIN_ID` (`admin_id`),
  KEY `FK_MGNTO_API2_ACL_USER_ROLE_ID_MGNTO_API2_ACL_ROLE_ENTITY_ID` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api2 Global ACL Users';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_api_assert`
--

CREATE TABLE IF NOT EXISTS `mgnto_api_assert` (
  `assert_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Assert id',
  `assert_type` varchar(20) DEFAULT NULL COMMENT 'Assert type',
  `assert_data` text COMMENT 'Assert additional data',
  PRIMARY KEY (`assert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Asserts' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_api_role`
--

CREATE TABLE IF NOT EXISTS `mgnto_api_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Role id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent role id',
  `tree_level` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Role level in tree',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order to display on admin area',
  `role_type` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Role type',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User id',
  `role_name` varchar(50) DEFAULT NULL COMMENT 'Role name',
  PRIMARY KEY (`role_id`),
  KEY `IDX_MGNTO_API_ROLE_PARENT_ID_SORT_ORDER` (`parent_id`,`sort_order`),
  KEY `IDX_MGNTO_API_ROLE_TREE_LEVEL` (`tree_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Roles' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_api_rule`
--

CREATE TABLE IF NOT EXISTS `mgnto_api_rule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Api rule Id',
  `role_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Api role Id',
  `resource_id` varchar(255) DEFAULT NULL COMMENT 'Module code',
  `api_privileges` varchar(20) DEFAULT NULL COMMENT 'Privileges',
  `assert_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Assert id',
  `role_type` varchar(1) DEFAULT NULL COMMENT 'Role type',
  `api_permission` varchar(10) DEFAULT NULL COMMENT 'Permission',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MGNTO_API_RULE_RESOURCE_ID_ROLE_ID` (`resource_id`,`role_id`),
  KEY `IDX_MGNTO_API_RULE_ROLE_ID_RESOURCE_ID` (`role_id`,`resource_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api ACL Rules' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_api_session`
--

CREATE TABLE IF NOT EXISTS `mgnto_api_session` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'User id',
  `logdate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login date',
  `sessid` varchar(40) DEFAULT NULL COMMENT 'Sessioin id',
  KEY `IDX_MGNTO_API_SESSION_USER_ID` (`user_id`),
  KEY `IDX_MGNTO_API_SESSION_SESSID` (`sessid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Sessions';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_api_user`
--

CREATE TABLE IF NOT EXISTS `mgnto_api_user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'User id',
  `firstname` varchar(32) DEFAULT NULL COMMENT 'First name',
  `lastname` varchar(32) DEFAULT NULL COMMENT 'Last name',
  `email` varchar(128) DEFAULT NULL COMMENT 'Email',
  `username` varchar(40) DEFAULT NULL COMMENT 'Nickname',
  `api_key` varchar(100) DEFAULT NULL COMMENT 'Api key',
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'User record create date',
  `modified` timestamp NULL DEFAULT NULL COMMENT 'User record modify date',
  `lognum` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Quantity of log ins',
  `reload_acl_flag` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Refresh ACL flag',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Account status',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Api Users' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_blog_posts`
--

CREATE TABLE IF NOT EXISTS `mgnto_blog_posts` (
  `blogpost_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `post` text NOT NULL COMMENT 'Blogpost Body',
  `date` datetime DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`blogpost_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgnto_blog_posts`
--

INSERT INTO `mgnto_blog_posts` (`blogpost_id`, `title`, `post`, `date`, `timestamp`) VALUES
(1, 'My New Title', 'This is a blog post', '2009-07-01 00:00:00', '2009-07-02 17:42:30');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_captcha_log`
--

CREATE TABLE IF NOT EXISTS `mgnto_captcha_log` (
  `type` varchar(32) NOT NULL COMMENT 'Type',
  `value` varchar(32) NOT NULL COMMENT 'Value',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Count',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`type`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Count Login Attempts';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_cataloginventory_stock`
--

CREATE TABLE IF NOT EXISTS `mgnto_cataloginventory_stock` (
  `stock_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Stock Id',
  `stock_name` varchar(255) DEFAULT NULL COMMENT 'Stock Name',
  PRIMARY KEY (`stock_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgnto_cataloginventory_stock`
--

INSERT INTO `mgnto_cataloginventory_stock` (`stock_id`, `stock_name`) VALUES
(1, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_cataloginventory_stock_item`
--

CREATE TABLE IF NOT EXISTS `mgnto_cataloginventory_stock_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `stock_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `min_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Min Qty',
  `use_config_min_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Qty',
  `is_qty_decimal` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Qty Decimal',
  `backorders` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Backorders',
  `use_config_backorders` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Backorders',
  `min_sale_qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'Min Sale Qty',
  `use_config_min_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Min Sale Qty',
  `max_sale_qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Max Sale Qty',
  `use_config_max_sale_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Max Sale Qty',
  `is_in_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is In Stock',
  `low_stock_date` timestamp NULL DEFAULT NULL COMMENT 'Low Stock Date',
  `notify_stock_qty` decimal(12,4) DEFAULT NULL COMMENT 'Notify Stock Qty',
  `use_config_notify_stock_qty` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Notify Stock Qty',
  `manage_stock` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Manage Stock',
  `use_config_manage_stock` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Manage Stock',
  `stock_status_changed_auto` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Stock Status Changed Automatically',
  `use_config_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Qty Increments',
  `qty_increments` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Increments',
  `use_config_enable_qty_inc` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Use Config Enable Qty Increments',
  `enable_qty_increments` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Enable Qty Increments',
  `is_decimal_divided` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Divided into Multiple Boxes for Shipping',
  PRIMARY KEY (`item_id`),
  UNIQUE KEY `UNQ_MGNTO_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID_STOCK_ID` (`product_id`,`stock_id`),
  KEY `IDX_MGNTO_CATALOGINVENTORY_STOCK_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGNTO_CATALOGINVENTORY_STOCK_ITEM_STOCK_ID` (`stock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_cataloginventory_stock_status`
--

CREATE TABLE IF NOT EXISTS `mgnto_cataloginventory_stock_status` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_MGNTO_CATALOGINVENTORY_STOCK_STATUS_STOCK_ID` (`stock_id`),
  KEY `IDX_MGNTO_CATALOGINVENTORY_STOCK_STATUS_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_cataloginventory_stock_status_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_cataloginventory_stock_status_idx` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_MGNTO_CATALOGINVENTORY_STOCK_STATUS_IDX_STOCK_ID` (`stock_id`),
  KEY `IDX_MGNTO_CATALOGINVENTORY_STOCK_STATUS_IDX_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Idx';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_cataloginventory_stock_status_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_cataloginventory_stock_status_tmp` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `stock_status` smallint(5) unsigned NOT NULL COMMENT 'Stock Status',
  PRIMARY KEY (`product_id`,`website_id`,`stock_id`),
  KEY `IDX_MGNTO_CATALOGINVENTORY_STOCK_STATUS_TMP_STOCK_ID` (`stock_id`),
  KEY `IDX_MGNTO_CATALOGINVENTORY_STOCK_STATUS_TMP_WEBSITE_ID` (`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Cataloginventory Stock Status Indexer Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalogrule`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalogrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL COMMENT 'From Date',
  `to_date` date DEFAULT NULL COMMENT 'To Date',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `sub_is_enable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Rule Enable For Subitems',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MGNTO_CATALOGRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalogrule_affected_product`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalogrule_affected_product` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Affected Product';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalogrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalogrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_MGNTO_CATALOGRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_MGNTO_CATALOGRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalogrule_group_website`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalogrule_group_website` (
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGNTO_CATALOGRULE_GROUP_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_MGNTO_CATALOGRULE_GROUP_WEBSITE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGNTO_CATALOGRULE_GROUP_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Group Website';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalogrule_product`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalogrule_product` (
  `rule_product_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `from_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'From Time',
  `to_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'To time',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `action_operator` varchar(10) DEFAULT 'to_fixed' COMMENT 'Action Operator',
  `action_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Action Amount',
  `action_stop` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Action Stop',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `sub_simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action For Subitems',
  `sub_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount For Subitems',
  PRIMARY KEY (`rule_product_id`),
  UNIQUE KEY `758453F56A4D8F94066698543828C644` (`rule_id`,`from_time`,`to_time`,`website_id`,`customer_group_id`,`product_id`,`sort_order`),
  KEY `IDX_MGNTO_CATALOGRULE_PRODUCT_RULE_ID` (`rule_id`),
  KEY `IDX_MGNTO_CATALOGRULE_PRODUCT_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGNTO_CATALOGRULE_PRODUCT_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGNTO_CATALOGRULE_PRODUCT_FROM_TIME` (`from_time`),
  KEY `IDX_MGNTO_CATALOGRULE_PRODUCT_TO_TIME` (`to_time`),
  KEY `IDX_MGNTO_CATALOGRULE_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalogrule_product_price`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalogrule_product_price` (
  `rule_product_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Product PriceId',
  `rule_date` date NOT NULL COMMENT 'Rule Date',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `rule_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rule Price',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `latest_start_date` date DEFAULT NULL COMMENT 'Latest StartDate',
  `earliest_end_date` date DEFAULT NULL COMMENT 'Earliest EndDate',
  PRIMARY KEY (`rule_product_price_id`),
  UNIQUE KEY `UNQ_MGNTO_CATRULE_PRD_PRICE_RULE_DATE_WS_ID_CSTR_GROUP_ID_PRD_ID` (`rule_date`,`website_id`,`customer_group_id`,`product_id`),
  KEY `IDX_MGNTO_CATALOGRULE_PRODUCT_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGNTO_CATALOGRULE_PRODUCT_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGNTO_CATALOGRULE_PRODUCT_PRICE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CatalogRule Product Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalogrule_website`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalogrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_MGNTO_CATALOGRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_MGNTO_CATALOGRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalogsearch_fulltext`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalogsearch_fulltext` (
  `fulltext_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `data_index` longtext COMMENT 'Data index',
  PRIMARY KEY (`fulltext_id`),
  UNIQUE KEY `UNQ_MGNTO_CATALOGSEARCH_FULLTEXT_PRODUCT_ID_STORE_ID` (`product_id`,`store_id`),
  FULLTEXT KEY `FTI_MGNTO_CATALOGSEARCH_FULLTEXT_DATA_INDEX` (`data_index`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Catalog search result table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalogsearch_query`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalogsearch_query` (
  `query_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Query ID',
  `query_text` varchar(255) DEFAULT NULL COMMENT 'Query text',
  `num_results` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Num results',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `redirect` varchar(255) DEFAULT NULL COMMENT 'Redirect',
  `synonym_for` varchar(255) DEFAULT NULL COMMENT 'Synonym for',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `display_in_terms` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Display in terms',
  `is_active` smallint(6) DEFAULT '1' COMMENT 'Active status',
  `is_processed` smallint(6) DEFAULT '0' COMMENT 'Processed status',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated at',
  PRIMARY KEY (`query_id`),
  KEY `IDX_MGNTO_CATALOGSEARCH_QUERY_QUERY_TEXT_STORE_ID_POPULARITY` (`query_text`,`store_id`,`popularity`),
  KEY `IDX_MGNTO_CATALOGSEARCH_QUERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search query table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalogsearch_result`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalogsearch_result` (
  `query_id` int(10) unsigned NOT NULL COMMENT 'Query ID',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `relevance` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Relevance',
  PRIMARY KEY (`query_id`,`product_id`),
  KEY `IDX_MGNTO_CATALOGSEARCH_RESULT_QUERY_ID` (`query_id`),
  KEY `IDX_MGNTO_CATALOGSEARCH_RESULT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog search result table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_anc_categs_index_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_anc_categs_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_CATEGORY_ID` (`category_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ANC_CATEGS_INDEX_IDX_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_anc_categs_index_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_anc_categs_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `path` varchar(255) DEFAULT NULL COMMENT 'Path',
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_CATEGORY_ID` (`category_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ANC_CATEGS_INDEX_TMP_PATH_CATEGORY_ID` (`path`,`category_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_anc_products_index_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_anc_products_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_MGNTO_CAT_CTGR_ANC_PRDS_IDX_IDX_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_anc_products_index_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_anc_products_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  KEY `IDX_MGNTO_CAT_CTGR_ANC_PRDS_IDX_TMP_CTGR_ID_PRD_ID_POSITION` (`category_id`,`product_id`,`position`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Anchor Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_entity`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attriute Set ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Category ID',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  `path` varchar(255) NOT NULL COMMENT 'Tree Path',
  `position` int(11) NOT NULL COMMENT 'Position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'Tree Level',
  `children_count` int(11) NOT NULL COMMENT 'Child Count',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_LEVEL` (`level`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_PATH_ENTITY_ID` (`path`,`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgnto_catalog_category_entity`
--

INSERT INTO `mgnto_catalog_category_entity` (`entity_id`, `entity_type_id`, `attribute_set_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`) VALUES
(1, 3, 0, 0, '2013-10-19 01:44:14', '2013-10-19 01:44:14', '1', 0, 0, 1),
(2, 3, 3, 1, '2013-10-19 01:44:16', '2013-10-19 01:44:16', '1/2', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `A27F783D94D7DCA5176974DC3119B824` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_DATETIME_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Datetime Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `F21D4398E53D782D085B559AF4886F54` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_DECIMAL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Decimal Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_entity_int`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `F13112A0E132C2FBC177F210FD5792B0` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_INT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Integer Attribute Backend Table' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `mgnto_catalog_category_entity_int`
--

INSERT INTO `mgnto_catalog_category_entity_int` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 67, 0, 1, 1),
(2, 3, 67, 1, 1, 1),
(3, 3, 42, 0, 2, 1),
(4, 3, 67, 0, 2, 1),
(5, 3, 42, 1, 2, 1),
(6, 3, 67, 1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_entity_text`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `DE4EA3E35087912E341AB27E1D65AF84` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_TEXT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_TEXT_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Text Attribute Backend Table' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mgnto_catalog_category_entity_text`
--

INSERT INTO `mgnto_catalog_category_entity_text` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 65, 0, 1, NULL),
(2, 3, 65, 1, 1, NULL),
(3, 3, 65, 0, 2, NULL),
(4, 3, 65, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `2245564C648DCA9B58B4C5C03F97BFF4` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_ENTITY_VARCHAR_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Category Varchar Attribute Backend Table' AUTO_INCREMENT=8 ;

--
-- Dumping data for table `mgnto_catalog_category_entity_varchar`
--

INSERT INTO `mgnto_catalog_category_entity_varchar` (`value_id`, `entity_type_id`, `attribute_id`, `store_id`, `entity_id`, `value`) VALUES
(1, 3, 41, 0, 1, 'Root Catalog'),
(2, 3, 41, 1, 1, 'Root Catalog'),
(3, 3, 43, 1, 1, 'root-catalog'),
(4, 3, 41, 0, 2, 'Default Category'),
(5, 3, 41, 1, 2, 'Default Category'),
(6, 3, 49, 1, 2, 'PRODUCTS'),
(7, 3, 43, 1, 2, 'default-category');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_flat_store_1`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_flat_store_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'parent_id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT 'path',
  `position` int(11) NOT NULL COMMENT 'position',
  `level` int(11) NOT NULL DEFAULT '0' COMMENT 'level',
  `children_count` int(11) NOT NULL COMMENT 'children_count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `all_children` text COMMENT 'All Children',
  `available_sort_by` text COMMENT 'Available Product Listing Sort By',
  `children` text COMMENT 'Children',
  `custom_apply_to_products` int(11) DEFAULT NULL COMMENT 'Apply To Products',
  `custom_design` varchar(255) DEFAULT NULL COMMENT 'Custom Design',
  `custom_design_from` datetime DEFAULT NULL COMMENT 'Active From',
  `custom_design_to` datetime DEFAULT NULL COMMENT 'Active To',
  `custom_layout_update` text COMMENT 'Custom Layout Update',
  `custom_use_parent_settings` int(11) DEFAULT NULL COMMENT 'Use Parent Category Settings',
  `default_sort_by` varchar(255) DEFAULT NULL COMMENT 'Default Product Listing Sort By',
  `description` text COMMENT 'Description',
  `display_mode` varchar(255) DEFAULT NULL COMMENT 'Display Mode',
  `filter_price_range` decimal(12,4) DEFAULT NULL COMMENT 'Layered Navigation Price Step',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `include_in_menu` int(11) DEFAULT NULL COMMENT 'Include in Navigation Menu',
  `is_active` int(11) DEFAULT NULL COMMENT 'Is Active',
  `is_anchor` int(11) DEFAULT NULL COMMENT 'Is Anchor',
  `landing_page` int(11) DEFAULT NULL COMMENT 'CMS Block',
  `meta_description` text COMMENT 'Meta Description',
  `meta_keywords` text COMMENT 'Meta Keywords',
  `meta_title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `page_layout` varchar(255) DEFAULT NULL COMMENT 'Page Layout',
  `path_in_store` text COMMENT 'Path In Store',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'Thumbnail Image',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'URL Key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'Url Path',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_FLAT_STORE_1_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_FLAT_STORE_1_PATH` (`path`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_FLAT_STORE_1_LEVEL` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Flat (Store 1)';

--
-- Dumping data for table `mgnto_catalog_category_flat_store_1`
--

INSERT INTO `mgnto_catalog_category_flat_store_1` (`entity_id`, `parent_id`, `created_at`, `updated_at`, `path`, `position`, `level`, `children_count`, `store_id`, `all_children`, `available_sort_by`, `children`, `custom_apply_to_products`, `custom_design`, `custom_design_from`, `custom_design_to`, `custom_layout_update`, `custom_use_parent_settings`, `default_sort_by`, `description`, `display_mode`, `filter_price_range`, `image`, `include_in_menu`, `is_active`, `is_anchor`, `landing_page`, `meta_description`, `meta_keywords`, `meta_title`, `name`, `page_layout`, `path_in_store`, `thumbnail`, `url_key`, `url_path`) VALUES
(1, 0, '2013-10-19 01:44:14', '2013-10-19 01:44:14', '1', 0, 0, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 'Root Catalog', NULL, NULL, NULL, 'root-catalog', NULL),
(2, 1, '2013-10-19 01:44:16', '2013-10-19 01:44:16', '1/2', 1, 1, 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PRODUCTS', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, 'Default Category', NULL, NULL, NULL, 'default-category', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_product`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_product` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`category_id`,`product_id`),
  KEY `IDX_MGNTO_CATALOG_CATEGORY_PRODUCT_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Category Linkage Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_product_index`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_product_index` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) DEFAULT NULL COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  PRIMARY KEY (`category_id`,`product_id`,`store_id`),
  KEY `IDX_MGNTO_CAT_CTGR_PRD_IDX_PRD_ID_STORE_ID_CTGR_ID_VISIBILITY` (`product_id`,`store_id`,`category_id`,`visibility`),
  KEY `16EE046C0CB08686DAE2C361AE170BF0` (`store_id`,`category_id`,`visibility`,`is_parent`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Index';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_product_index_enbl_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_product_index_enbl_idx` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_MGNTO_CATALOG_CATEGORY_PRODUCT_INDEX_ENBL_IDX_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGNTO_CAT_CTGR_PRD_IDX_ENBL_IDX_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_product_index_enbl_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_product_index_enbl_tmp` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `visibility` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  KEY `IDX_MGNTO_CATALOG_CATEGORY_PRODUCT_INDEX_ENBL_TMP_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGNTO_CAT_CTGR_PRD_IDX_ENBL_TMP_PRD_ID_VISIBILITY` (`product_id`,`visibility`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Enabled Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_product_index_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_product_index_idx` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_MGNTO_CAT_CTGR_PRD_IDX_IDX_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_category_product_index_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_category_product_index_tmp` (
  `category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Category ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_parent` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Parent',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL COMMENT 'Visibility',
  KEY `IDX_MGNTO_CAT_CTGR_PRD_IDX_TMP_PRD_ID_CTGR_ID_STORE_ID` (`product_id`,`category_id`,`store_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Category Product Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_compare_item`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_compare_item` (
  `catalog_compare_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Compare Item ID',
  `visitor_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`catalog_compare_item_id`),
  KEY `IDX_MGNTO_CATALOG_COMPARE_ITEM_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGNTO_CATALOG_COMPARE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGNTO_CATALOG_COMPARE_ITEM_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  KEY `IDX_MGNTO_CATALOG_COMPARE_ITEM_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_MGNTO_CATALOG_COMPARE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Compare Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `frontend_input_renderer` varchar(255) DEFAULT NULL COMMENT 'Frontend Input Renderer',
  `is_global` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Global',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `is_searchable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Searchable',
  `is_filterable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable',
  `is_comparable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Comparable',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `is_html_allowed_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is HTML Allowed On Front',
  `is_used_for_price_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Price Rules',
  `is_filterable_in_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Filterable In Search',
  `used_in_product_listing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used In Product Listing',
  `used_for_sort_by` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Sorting',
  `is_configurable` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Configurable',
  `apply_to` varchar(255) DEFAULT NULL COMMENT 'Apply To',
  `is_visible_in_advanced_search` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible In Advanced Search',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_wysiwyg_enabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is WYSIWYG Enabled',
  `is_used_for_promo_rules` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Used For Promo Rules',
  PRIMARY KEY (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_EAV_ATTRIBUTE_USED_FOR_SORT_BY` (`used_for_sort_by`),
  KEY `IDX_MGNTO_CATALOG_EAV_ATTRIBUTE_USED_IN_PRODUCT_LISTING` (`used_in_product_listing`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog EAV Attribute Table';

--
-- Dumping data for table `mgnto_catalog_eav_attribute`
--

INSERT INTO `mgnto_catalog_eav_attribute` (`attribute_id`, `frontend_input_renderer`, `is_global`, `is_visible`, `is_searchable`, `is_filterable`, `is_comparable`, `is_visible_on_front`, `is_html_allowed_on_front`, `is_used_for_price_rules`, `is_filterable_in_search`, `used_in_product_listing`, `used_for_sort_by`, `is_configurable`, `apply_to`, `is_visible_in_advanced_search`, `position`, `is_wysiwyg_enabled`, `is_used_for_promo_rules`) VALUES
(41, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(42, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(43, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(44, NULL, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL, 0, 0, 1, 0),
(45, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(46, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(47, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(48, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(49, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(50, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(51, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(52, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(53, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(54, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(55, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(56, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(57, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(58, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(59, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(60, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(61, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(62, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(63, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(64, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(65, 'adminhtml/catalog_category_helper_sortby_available', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(66, 'adminhtml/catalog_category_helper_sortby_default', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(67, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(68, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(69, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(70, 'adminhtml/catalog_category_helper_pricestep', 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(71, NULL, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 1, NULL, 1, 0, 0, 0),
(72, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 1, 0),
(73, NULL, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 1, NULL, 1, 0, 1, 0),
(74, NULL, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 1, NULL, 1, 0, 0, 0),
(75, NULL, 2, 1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 'simple,configurable,virtual,bundle,downloadable', 1, 0, 0, 0),
(76, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(77, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(78, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(79, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'virtual,downloadable', 0, 0, 0, 0),
(80, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,bundle', 0, 0, 0, 0),
(81, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(82, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(83, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(84, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(85, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(86, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(87, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(88, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(89, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(90, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(91, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(92, NULL, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 'simple', 1, 0, 0, 0),
(93, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(94, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(95, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(96, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(97, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(98, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(99, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple,configurable,virtual,bundle,downloadable', 0, 0, 0, 0),
(100, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(101, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,virtual', 0, 0, 0, 0),
(102, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(103, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(104, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(105, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(106, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(107, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(108, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(109, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(110, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, NULL, 0, 0, 0, 0),
(111, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(112, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(113, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(114, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, 0, 0, 0, 0),
(115, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(116, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(117, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'simple,configurable,bundle,grouped', 0, 0, 0, 0),
(118, 'adminhtml/catalog_product_helper_form_msrp_enabled', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(119, 'adminhtml/catalog_product_helper_form_msrp_price', 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(120, NULL, 2, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,bundle,configurable,virtual,downloadable', 0, 0, 0, 0),
(121, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(122, NULL, 2, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 1, 'simple,configurable,virtual,downloadable,bundle', 1, 0, 0, 0),
(123, 'giftmessage/adminhtml_product_helper_form_config', 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 0),
(124, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(125, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'bundle', 0, 0, 0, 0),
(126, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(127, NULL, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(128, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'bundle', 0, 0, 0, 0),
(129, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(130, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(131, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'downloadable', 0, 0, 0, 0),
(132, NULL, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 'downloadable', 0, 0, 0, 0),
(133, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, NULL, 0, 0, 0, 0),
(137, NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'simple', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_bundle_option`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_bundle_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `type` varchar(255) DEFAULT NULL COMMENT 'Type',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_BUNDLE_OPTION_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_bundle_option_value`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_bundle_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CATALOG_PRODUCT_BUNDLE_OPTION_VALUE_OPTION_ID_STORE_ID` (`option_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Option Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_bundle_price_index`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_bundle_price_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `min_price` decimal(12,4) NOT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) NOT NULL COMMENT 'Max Price',
  PRIMARY KEY (`entity_id`,`website_id`,`customer_group_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_BUNDLE_PRICE_INDEX_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Price Index';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_bundle_selection`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_bundle_selection` (
  `selection_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Selection Id',
  `option_id` int(10) unsigned NOT NULL COMMENT 'Option Id',
  `parent_product_id` int(10) unsigned NOT NULL COMMENT 'Parent Product Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `position` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  `selection_qty` decimal(12,4) DEFAULT NULL COMMENT 'Selection Qty',
  `selection_can_change_qty` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Selection Can Change Qty',
  PRIMARY KEY (`selection_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_BUNDLE_SELECTION_OPTION_ID` (`option_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_BUNDLE_SELECTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_bundle_selection_price`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_bundle_selection_price` (
  `selection_id` int(10) unsigned NOT NULL COMMENT 'Selection Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `selection_price_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Price Type',
  `selection_price_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Selection Price Value',
  PRIMARY KEY (`selection_id`,`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_BUNDLE_SELECTION_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Selection Price';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_bundle_stock_index`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_bundle_stock_index` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `stock_id` smallint(5) unsigned NOT NULL COMMENT 'Stock Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `stock_status` smallint(6) DEFAULT '0' COMMENT 'Stock Status',
  PRIMARY KEY (`entity_id`,`website_id`,`stock_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Bundle Stock Index';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_enabled_index`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_enabled_index` (
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `visibility` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Visibility',
  PRIMARY KEY (`product_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENABLED_INDEX_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Visibility Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_entity`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set ID',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'Type ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Has Options',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Required Options',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Creation Time',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Update Time',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_SKU` (`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` datetime DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_ENTT_DTIME_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_DATETIME_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Datetime Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` decimal(12,4) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_ENTT_DEC_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Decimal Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_entity_gallery`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_entity_gallery` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `position` int(11) NOT NULL DEFAULT '0' COMMENT 'Position',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_ENTT_GLR_ENTT_TYPE_ID_ENTT_ID_ATTR_ID_STORE_ID` (`entity_type_id`,`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_GALLERY_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_GALLERY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Gallery Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_entity_group_price`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_entity_group_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `EA12FC562102855410FC38AE401F458B` (`entity_id`,`all_groups`,`customer_group_id`,`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_GROUP_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_entity_int`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` int(11) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_ENTT_INT_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_INT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Integer Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_entity_media_gallery`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_entity_media_gallery` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_entity_media_gallery_value`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_entity_media_gallery_value` (
  `value_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Value ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  `position` int(10) unsigned DEFAULT NULL COMMENT 'Position',
  `disabled` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Disabled',
  PRIMARY KEY (`value_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_MEDIA_GALLERY_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Media Gallery Attribute Value Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_entity_text`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_ENTT_TEXT_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Text Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_entity_tier_price`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_entity_tier_price` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `all_groups` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Applicable To All Customer Groups',
  `customer_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Group ID',
  `qty` decimal(12,4) NOT NULL DEFAULT '1.0000' COMMENT 'QTY',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `D3D1803F2550C3B2BCADF6FD9BD1614E` (`entity_id`,`all_groups`,`customer_group_id`,`qty`,`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_TIER_PRICE_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `entity_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_ENTT_VCHR_ENTT_ID_ATTR_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Varchar Attribute Backend Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_flat_1`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_flat_1` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'entity_id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'attribute_set_id',
  `type_id` varchar(32) NOT NULL DEFAULT 'simple' COMMENT 'type_id',
  `cost` decimal(12,4) DEFAULT NULL COMMENT 'cost',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'created_at',
  `enable_googlecheckout` smallint(6) DEFAULT NULL COMMENT 'enable_googlecheckout',
  `gift_message_available` smallint(6) DEFAULT NULL COMMENT 'gift_message_available',
  `has_options` smallint(6) NOT NULL DEFAULT '0' COMMENT 'has_options',
  `image_label` varchar(255) DEFAULT NULL COMMENT 'image_label',
  `is_recurring` smallint(6) DEFAULT NULL COMMENT 'is_recurring',
  `links_exist` int(11) DEFAULT NULL COMMENT 'links_exist',
  `links_purchased_separately` int(11) DEFAULT NULL COMMENT 'links_purchased_separately',
  `links_title` varchar(255) DEFAULT NULL COMMENT 'links_title',
  `msrp` decimal(12,4) DEFAULT NULL COMMENT 'msrp',
  `msrp_display_actual_price_type` varchar(255) DEFAULT NULL COMMENT 'msrp_display_actual_price_type',
  `msrp_enabled` smallint(6) DEFAULT NULL COMMENT 'msrp_enabled',
  `name` varchar(255) DEFAULT NULL COMMENT 'name',
  `news_from_date` datetime DEFAULT NULL COMMENT 'news_from_date',
  `news_to_date` datetime DEFAULT NULL COMMENT 'news_to_date',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'price',
  `price_type` int(11) DEFAULT NULL COMMENT 'price_type',
  `price_view` int(11) DEFAULT NULL COMMENT 'price_view',
  `recurring_profile` text COMMENT 'recurring_profile',
  `required_options` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'required_options',
  `shipment_type` int(11) DEFAULT NULL COMMENT 'shipment_type',
  `short_description` text COMMENT 'short_description',
  `sku` varchar(64) DEFAULT NULL COMMENT 'sku',
  `sku_type` int(11) DEFAULT NULL COMMENT 'sku_type',
  `small_image` varchar(255) DEFAULT NULL COMMENT 'small_image',
  `small_image_label` varchar(255) DEFAULT NULL COMMENT 'small_image_label',
  `special_from_date` datetime DEFAULT NULL COMMENT 'special_from_date',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'special_price',
  `special_to_date` datetime DEFAULT NULL COMMENT 'special_to_date',
  `tax_class_id` int(10) unsigned DEFAULT NULL COMMENT 'tax_class_id',
  `thumbnail` varchar(255) DEFAULT NULL COMMENT 'thumbnail',
  `thumbnail_label` varchar(255) DEFAULT NULL COMMENT 'thumbnail_label',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'updated_at',
  `url_key` varchar(255) DEFAULT NULL COMMENT 'url_key',
  `url_path` varchar(255) DEFAULT NULL COMMENT 'url_path',
  `visibility` smallint(5) unsigned DEFAULT NULL COMMENT 'visibility',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'weight',
  `weight_type` int(11) DEFAULT NULL COMMENT 'weight_type',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_FLAT_1_TYPE_ID` (`type_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_FLAT_1_ATTRIBUTE_SET_ID` (`attribute_set_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_FLAT_1_NAME` (`name`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_FLAT_1_PRICE` (`price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Flat (Store 1)';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_eav`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_eav` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_eav_decimal`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_eav_decimal` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_eav_decimal_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_eav_decimal_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_eav_decimal_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_eav_decimal_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` decimal(12,4) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_DECIMAL_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Decimal Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_eav_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_eav_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_IDX_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_IDX_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_IDX_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_IDX_VALUE` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_eav_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_eav_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `value` int(10) unsigned NOT NULL COMMENT 'Value',
  PRIMARY KEY (`entity_id`,`attribute_id`,`store_id`,`value`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_TMP_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_TMP_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_TMP_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_EAV_TMP_VALUE` (`value`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product EAV Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_group_price`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_group_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_GROUP_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_GROUP_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Group Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_PRICE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_PRICE_MIN_PRICE` (`min_price`),
  KEY `IDX_MGNTO_CAT_PRD_IDX_PRICE_WS_ID_CSTR_GROUP_ID_MIN_PRICE` (`website_id`,`customer_group_id`,`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_bundle_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_bundle_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Idx';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_bundle_opt_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_bundle_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Idx';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_bundle_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_bundle_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `alt_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `alt_tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `alt_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Alt Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Opt Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_bundle_sel_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_bundle_sel_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Idx';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_bundle_sel_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_bundle_sel_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `selection_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Selection Id',
  `group_type` smallint(5) unsigned DEFAULT '0' COMMENT 'Group Type',
  `is_required` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Required',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`,`selection_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Sel Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_bundle_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_bundle_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class Id',
  `price_type` smallint(5) unsigned NOT NULL COMMENT 'Price Type',
  `special_price` decimal(12,4) DEFAULT NULL COMMENT 'Special Price',
  `tier_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tier Percent',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Orig Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  `group_price_percent` decimal(12,4) DEFAULT NULL COMMENT 'Group Price Percent',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Index Price Bundle Tmp';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_cfg_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_cfg_opt_agr_idx` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_cfg_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_cfg_opt_agr_tmp` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`parent_id`,`child_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_cfg_opt_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_cfg_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_cfg_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_cfg_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Config Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_downlod_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_downlod_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_downlod_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_downlod_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Minimum price',
  `max_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Maximum price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Temporary Indexer Table for price of downloadable products';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_final_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_final_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_final_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_final_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `orig_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `base_tier` decimal(12,4) DEFAULT NULL COMMENT 'Base Tier',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  `base_group_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Group Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Final Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_PRICE_IDX_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_PRICE_IDX_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_PRICE_IDX_MIN_PRICE` (`min_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_opt_agr_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_opt_agr_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_opt_agr_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_opt_agr_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`,`option_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Aggregate Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_opt_idx`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_opt_idx` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_opt_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_opt_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Option Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_price_tmp`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_price_tmp` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `tax_class_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Tax Class ID',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `final_price` decimal(12,4) DEFAULT NULL COMMENT 'Final Price',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  `max_price` decimal(12,4) DEFAULT NULL COMMENT 'Max Price',
  `tier_price` decimal(12,4) DEFAULT NULL COMMENT 'Tier Price',
  `group_price` decimal(12,4) DEFAULT NULL COMMENT 'Group price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_PRICE_TMP_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_PRICE_TMP_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_PRICE_TMP_MIN_PRICE` (`min_price`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8 COMMENT='Catalog Product Price Indexer Temp Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_tier_price`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_tier_price` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity ID',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `min_price` decimal(12,4) DEFAULT NULL COMMENT 'Min Price',
  PRIMARY KEY (`entity_id`,`customer_group_id`,`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_TIER_PRICE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_TIER_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Tier Price Index Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_index_website`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_index_website` (
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  `website_date` date DEFAULT NULL COMMENT 'Website Date',
  `rate` float DEFAULT '1' COMMENT 'Rate',
  PRIMARY KEY (`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_INDEX_WEBSITE_WEBSITE_DATE` (`website_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Website Index Table';

--
-- Dumping data for table `mgnto_catalog_product_index_website`
--

INSERT INTO `mgnto_catalog_product_index_website` (`website_id`, `website_date`, `rate`) VALUES
(1, '2013-10-19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_link`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `linked_product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Linked Product ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_LNK_LNK_TYPE_ID_PRD_ID_LNKED_PRD_ID` (`link_type_id`,`product_id`,`linked_product_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_LINK_LINKED_PRODUCT_ID` (`linked_product_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_LINK_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Product Linkage Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_link_attribute`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_link_attribute` (
  `product_link_attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Link Attribute ID',
  `link_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Link Type ID',
  `product_link_attribute_code` varchar(32) DEFAULT NULL COMMENT 'Product Link Attribute Code',
  `data_type` varchar(32) DEFAULT NULL COMMENT 'Data Type',
  PRIMARY KEY (`product_link_attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_LINK_ATTRIBUTE_LINK_TYPE_ID` (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Attribute Table' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mgnto_catalog_product_link_attribute`
--

INSERT INTO `mgnto_catalog_product_link_attribute` (`product_link_attribute_id`, `link_type_id`, `product_link_attribute_code`, `data_type`) VALUES
(1, 1, 'position', 'int'),
(2, 3, 'position', 'int'),
(3, 3, 'qty', 'decimal'),
(4, 4, 'position', 'int'),
(5, 5, 'position', 'int');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_link_attribute_decimal`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_link_attribute_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_MGNTO_CAT_PRD_LNK_ATTR_DEC_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_LINK_ATTRIBUTE_DECIMAL_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Decimal Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_link_attribute_int`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_link_attribute_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_MGNTO_CAT_PRD_LNK_ATTR_INT_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_LINK_ATTRIBUTE_INT_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Integer Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_link_attribute_varchar`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_link_attribute_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_link_attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Link Attribute ID',
  `link_id` int(10) unsigned NOT NULL COMMENT 'Link ID',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID_LNK_ID` (`product_link_attribute_id`,`link_id`),
  KEY `IDX_MGNTO_CAT_PRD_LNK_ATTR_VCHR_PRD_LNK_ATTR_ID` (`product_link_attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_LINK_ATTRIBUTE_VARCHAR_LINK_ID` (`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Varchar Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_link_type`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_link_type` (
  `link_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Type ID',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  PRIMARY KEY (`link_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Catalog Product Link Type Table' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mgnto_catalog_product_link_type`
--

INSERT INTO `mgnto_catalog_product_link_type` (`link_type_id`, `code`) VALUES
(1, 'relation'),
(3, 'super'),
(4, 'up_sell'),
(5, 'cross_sell');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_option`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `type` varchar(50) DEFAULT NULL COMMENT 'Type',
  `is_require` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Required',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `max_characters` int(10) unsigned DEFAULT NULL COMMENT 'Max Characters',
  `file_extension` varchar(50) DEFAULT NULL COMMENT 'File Extension',
  `image_size_x` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size X',
  `image_size_y` smallint(5) unsigned DEFAULT NULL COMMENT 'Image Size Y',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_OPTION_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_option_price`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_option_price` (
  `option_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Price ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_price_id`),
  UNIQUE KEY `UNQ_MGNTO_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_OPTION_PRICE_OPTION_ID` (`option_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_OPTION_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_option_title`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_option_title` (
  `option_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Title ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_title_id`),
  UNIQUE KEY `UNQ_MGNTO_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID_STORE_ID` (`option_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_OPTION_TITLE_OPTION_ID` (`option_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_OPTION_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_option_type_price`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_option_type_price` (
  `option_type_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Price ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `price_type` varchar(7) NOT NULL DEFAULT 'fixed' COMMENT 'Price Type',
  PRIMARY KEY (`option_type_price_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_OPT_TYPE_PRICE_OPT_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_OPTION_TYPE_PRICE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_OPTION_TYPE_PRICE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_option_type_title`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_option_type_title` (
  `option_type_title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type Title ID',
  `option_type_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Type ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`option_type_title_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_OPT_TYPE_TTL_OPT_TYPE_ID_STORE_ID` (`option_type_id`,`store_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_OPTION_TYPE_TITLE_OPTION_TYPE_ID` (`option_type_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_OPTION_TYPE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_option_type_value`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_option_type_value` (
  `option_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Type ID',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option ID',
  `sku` varchar(64) DEFAULT NULL COMMENT 'SKU',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_type_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_OPTION_TYPE_VALUE_OPTION_ID` (`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Option Type Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_relation`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_relation` (
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent ID',
  `child_id` int(10) unsigned NOT NULL COMMENT 'Child ID',
  PRIMARY KEY (`parent_id`,`child_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_RELATION_CHILD_ID` (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Relation Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_super_attribute`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_super_attribute` (
  `product_super_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product Super Attribute ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute ID',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Position',
  PRIMARY KEY (`product_super_attribute_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_SPR_ATTR_PRD_ID_ATTR_ID` (`product_id`,`attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_super_attribute_label`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_super_attribute_label` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `use_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Use Default Value',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID_STORE_ID` (`product_super_attribute_id`,`store_id`),
  KEY `IDX_MGNTO_CAT_PRD_SPR_ATTR_LBL_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_SUPER_ATTRIBUTE_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Label Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_super_attribute_pricing`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_super_attribute_pricing` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value ID',
  `product_super_attribute_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Super Attribute ID',
  `value_index` varchar(255) DEFAULT NULL COMMENT 'Value Index',
  `is_percent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Percent',
  `pricing_value` decimal(12,4) DEFAULT NULL COMMENT 'Pricing Value',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID_VAL_IDX_WS_ID` (`product_super_attribute_id`,`value_index`,`website_id`),
  KEY `IDX_MGNTO_CAT_PRD_SPR_ATTR_PRICING_PRD_SPR_ATTR_ID` (`product_super_attribute_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_SUPER_ATTRIBUTE_PRICING_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Attribute Pricing Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_super_link`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_super_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent ID',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_MGNTO_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID_PARENT_ID` (`product_id`,`parent_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_SUPER_LINK_PARENT_ID` (`parent_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_SUPER_LINK_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product Super Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_catalog_product_website`
--

CREATE TABLE IF NOT EXISTS `mgnto_catalog_product_website` (
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product ID',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website ID',
  PRIMARY KEY (`product_id`,`website_id`),
  KEY `IDX_MGNTO_CATALOG_PRODUCT_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Catalog Product To Website Linkage Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_checkout_agreement`
--

CREATE TABLE IF NOT EXISTS `mgnto_checkout_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `content` text COMMENT 'Content',
  `content_height` varchar(25) DEFAULT NULL COMMENT 'Content Height',
  `checkbox_text` text COMMENT 'Checkbox Text',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `is_html` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Html',
  PRIMARY KEY (`agreement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_checkout_agreement_store`
--

CREATE TABLE IF NOT EXISTS `mgnto_checkout_agreement_store` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`agreement_id`,`store_id`),
  KEY `FK_MGNTO_CHKT_AGRT_STORE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Checkout Agreement Store';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_cms_block`
--

CREATE TABLE IF NOT EXISTS `mgnto_cms_block` (
  `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Block ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext COMMENT 'Block Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Block Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Block Active',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Block Table' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgnto_cms_block`
--

INSERT INTO `mgnto_cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(1, 'Footer Links', 'footer_links', '<ul>\r\n<li><a href="{{store direct_url="about-magento-demo-store"}}">About Us</a></li>\r\n<li><a href="{{store direct_url="customer-service"}}">Customer Service</a></li>\r\n<li class="last privacy"><a href="{{store direct_url="privacy-policy-cookie-restriction-mode"}}">Privacy Policy</a></li>\r\n</ul>', '2013-10-19 01:43:52', '2013-10-19 01:43:54', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_cms_block_store`
--

CREATE TABLE IF NOT EXISTS `mgnto_cms_block_store` (
  `block_id` smallint(6) NOT NULL COMMENT 'Block ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`block_id`,`store_id`),
  KEY `IDX_MGNTO_CMS_BLOCK_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block To Store Linkage Table';

--
-- Dumping data for table `mgnto_cms_block_store`
--

INSERT INTO `mgnto_cms_block_store` (`block_id`, `store_id`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_cms_page`
--

CREATE TABLE IF NOT EXISTS `mgnto_cms_page` (
  `page_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Page ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Page Title',
  `root_template` varchar(255) DEFAULT NULL COMMENT 'Page Template',
  `meta_keywords` text COMMENT 'Page Meta Keywords',
  `meta_description` text COMMENT 'Page Meta Description',
  `identifier` varchar(100) DEFAULT NULL COMMENT 'Page String Identifier',
  `content_heading` varchar(255) DEFAULT NULL COMMENT 'Page Content Heading',
  `content` mediumtext COMMENT 'Page Content',
  `creation_time` timestamp NULL DEFAULT NULL COMMENT 'Page Creation Time',
  `update_time` timestamp NULL DEFAULT NULL COMMENT 'Page Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is Page Active',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Page Sort Order',
  `layout_update_xml` text COMMENT 'Page Layout Update Content',
  `custom_theme` varchar(100) DEFAULT NULL COMMENT 'Page Custom Theme',
  `custom_root_template` varchar(255) DEFAULT NULL COMMENT 'Page Custom Template',
  `custom_layout_update_xml` text COMMENT 'Page Custom Layout Update Content',
  `custom_theme_from` date DEFAULT NULL COMMENT 'Page Custom Theme Active From Date',
  `custom_theme_to` date DEFAULT NULL COMMENT 'Page Custom Theme Active To Date',
  PRIMARY KEY (`page_id`),
  KEY `IDX_MGNTO_CMS_PAGE_IDENTIFIER` (`identifier`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='CMS Page Table' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `mgnto_cms_page`
--

INSERT INTO `mgnto_cms_page` (`page_id`, `title`, `root_template`, `meta_keywords`, `meta_description`, `identifier`, `content_heading`, `content`, `creation_time`, `update_time`, `is_active`, `sort_order`, `layout_update_xml`, `custom_theme`, `custom_root_template`, `custom_layout_update_xml`, `custom_theme_from`, `custom_theme_to`) VALUES
(1, '404 Not Found 1', 'two_columns_right', 'Page keywords', 'Page description', 'no-route', NULL, '<div class="page-title"><h1>Whoops, our bad...</h1></div>\r\n<dl>\r\n<dt>The page you requested was not found, and we have a fine guess why.</dt>\r\n<dd>\r\n<ul class="disc">\r\n<li>If you typed the URL directly, please make sure the spelling is correct.</li>\r\n<li>If you clicked on a link to get here, the link is outdated.</li>\r\n</ul></dd>\r\n</dl>\r\n<dl>\r\n<dt>What can you do?</dt>\r\n<dd>Have no fear, help is near! There are many ways you can get back on track with Magento Store.</dd>\r\n<dd>\r\n<ul class="disc">\r\n<li><a href="#" onclick="history.go(-1); return false;">Go back</a> to the previous page.</li>\r\n<li>Use the search bar at the top of the page to search for your products.</li>\r\n<li>Follow these links to get you back on track!<br /><a href="{{store url=""}}">Store Home</a> <span class="separator">|</span> <a href="{{store url="customer/account"}}">My Account</a></li></ul></dd></dl>\r\n', '2013-10-19 01:43:52', '2013-10-19 01:43:52', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Home page', 'two_columns_right', NULL, NULL, 'home', NULL, '<div class="page-title"><h2>Home Page</h2></div>\r\n', '2013-10-19 01:43:53', '2013-10-19 01:44:20', 1, 0, '<!--<reference name="content">\r\n        <block type="catalog/product_new" name="home.catalog.product.new" alias="product_new" template="catalog/product/new.phtml" after="cms_page">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_viewed" name="home.reports.product.viewed" alias="product_viewed" template="reports/home_product_viewed.phtml" after="product_new">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n        <block type="reports/product_compared" name="home.reports.product.compared" template="reports/home_product_compared.phtml" after="product_viewed">\r\n            <action method="addPriceBlockType">\r\n                <type>bundle</type>\r\n                <block>bundle/catalog_product_price</block>\r\n                <template>bundle/catalog/product/price.phtml</template>\r\n            </action>\r\n        </block>\r\n    </reference>\r\n    <reference name="right">\r\n        <action method="unsetChild"><alias>right.reports.product.viewed</alias></action>\r\n        <action method="unsetChild"><alias>right.reports.product.compared</alias></action>\r\n    </reference>-->', NULL, NULL, NULL, NULL, NULL),
(3, 'About Us', 'two_columns_right', NULL, NULL, 'about-magento-demo-store', NULL, '<div class="page-title">\r\n<h1>About Magento Store</h1>\r\n</div>\r\n<div class="col3-set">\r\n<div class="col-1">\r\n<p><a href="http://www.varien.com/"><img title="Varien" src="{{skin url=''images/media/about_us_img.jpg''}}" alt="Varien" /></a></p>\r\n<p style="line-height: 1.2em;"><small>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede.</small></p>\r\n<p style="color: #888; font: 1.2em/1.4em georgia, serif;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta.</p>\r\n</div>\r\n<div class="col-2">\r\n<p><strong style="color: #de036f;">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit.</strong></p>\r\n<p>Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</p>\r\n<p>Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus. Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi. Vestibulum sapien dolor, aliquet nec, porta ac, malesuada a, libero. Praesent feugiat purus eget est. Nulla facilisi. Vestibulum tincidunt sapien eu velit. Mauris purus. Maecenas eget mauris eu orci accumsan feugiat. Pellentesque eget velit. Nunc tincidunt.</p>\r\n</div>\r\n<div class="col-3">\r\n<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper</p>\r\n<p><strong style="color: #de036f;">Maecenas ullamcorper, odio vel tempus egestas, dui orci faucibus orci, sit amet aliquet lectus dolor et quam. Pellentesque consequat luctus purus.</strong></p>\r\n<p>Nunc et risus. Etiam a nibh. Phasellus dignissim metus eget nisi.</p>\r\n<div class="divider">&nbsp;</div>\r\n<p>To all of you, from all of us at Magento Store - Thank you and Happy eCommerce!</p>\r\n<p style="line-height: 1.2em;"><strong style="font: italic 2em Georgia, serif;">John Doe</strong><br /><small>Some important guy</small></p>\r\n</div>\r\n</div>', '2013-10-19 01:43:53', '2013-10-30 02:03:38', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Customer Service', 'three_columns', NULL, NULL, 'customer-service', NULL, '<div class="page-title">\r\n<h1>Customer Service</h1>\r\n</div>\r\n<ul class="disc">\r\n<li><a href="#answer1">Shipping &amp; Delivery</a></li>\r\n<li><a href="#answer2">Privacy &amp; Security</a></li>\r\n<li><a href="#answer3">Returns &amp; Replacements</a></li>\r\n<li><a href="#answer4">Ordering</a></li>\r\n<li><a href="#answer5">Payment, Pricing &amp; Promotions</a></li>\r\n<li><a href="#answer6">Viewing Orders</a></li>\r\n<li><a href="#answer7">Updating Account Information</a></li>\r\n</ul>\r\n<dl>\r\n<dt id="answer1">Shipping &amp; Delivery</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer2">Privacy &amp; Security</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer3">Returns &amp; Replacements</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer4">Ordering</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer5">Payment, Pricing &amp; Promotions</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer6">Viewing Orders</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n<dt id="answer7">Updating Account Information</dt>\r\n<dd>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi luctus. Duis lobortis. Nulla nec velit. Mauris pulvinar erat non massa. Suspendisse tortor turpis, porta nec, tempus vitae, iaculis semper, pede. Cras vel libero id lectus rhoncus porta. Suspendisse convallis felis ac enim. Vivamus tortor nisl, lobortis in, faucibus et, tempus at, dui. Nunc risus. Proin scelerisque augue. Nam ullamcorper. Phasellus id massa. Pellentesque nisl. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc augue. Aenean sed justo non leo vehicula laoreet. Praesent ipsum libero, auctor ac, tempus nec, tempor nec, justo.</dd>\r\n</dl>', '2013-10-19 01:43:53', '2013-10-19 01:43:53', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Enable Cookies', 'one_column', NULL, NULL, 'enable-cookies', NULL, '<div class="std">\r\n    <ul class="messages">\r\n        <li class="notice-msg">\r\n            <ul>\r\n                <li>Please enable cookies in your web browser to continue.</li>\r\n            </ul>\r\n        </li>\r\n    </ul>\r\n    <div class="page-title">\r\n        <h1><a name="top"></a>What are Cookies?</h1>\r\n    </div>\r\n    <p>Cookies are short pieces of data that are sent to your computer when you visit a website. On later visits, this data is then returned to that website. Cookies allow us to recognize you automatically whenever you visit our site so that we can personalize your experience and provide you with better service. We also use cookies (and similar browser data, such as Flash cookies) for fraud prevention and other purposes. If your web browser is set to refuse cookies from our website, you will not be able to complete a purchase or take advantage of certain features of our website, such as storing items in your Shopping Cart or receiving personalized recommendations. As a result, we strongly encourage you to configure your web browser to accept cookies from our website.</p>\r\n    <h2 class="subtitle">Enabling Cookies</h2>\r\n    <ul class="disc">\r\n        <li><a href="#ie7">Internet Explorer 7.x</a></li>\r\n        <li><a href="#ie6">Internet Explorer 6.x</a></li>\r\n        <li><a href="#firefox">Mozilla/Firefox</a></li>\r\n        <li><a href="#opera">Opera 7.x</a></li>\r\n    </ul>\r\n    <h3><a name="ie7"></a>Internet Explorer 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Start Internet Explorer</p>\r\n        </li>\r\n        <li>\r\n            <p>Under the <strong>Tools</strong> menu, click <strong>Internet Options</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Privacy</strong> tab</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-2.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Advanced</strong> button</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-3.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Put a check mark in the box for <strong>Override Automatic Cookie Handling</strong>, put another check mark in the <strong>Always accept session cookies </strong>box</p>\r\n            <p><img src="{{skin url="images/cookies/ie7-4.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-5.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie7-6.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Restart Internet Explore</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="ie6"></a>Internet Explorer 6.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Select <strong>Internet Options</strong> from the Tools menu</p>\r\n            <p><img src="{{skin url="images/cookies/ie6-1.gif"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> tab</p>\r\n        </li>\r\n        <li>\r\n            <p>Click the <strong>Default</strong> button (or manually slide the bar down to <strong>Medium</strong>) under <strong>Settings</strong>. Click <strong>OK</strong></p>\r\n            <p><img src="{{skin url="images/cookies/ie6-2.gif"}}" alt="" /></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="firefox"></a>Mozilla/Firefox</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong>-menu in Mozilla</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Options...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection in the left part of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/firefox.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>Expand the <strong>Cookies</strong> section</p>\r\n        </li>\r\n        <li>\r\n            <p>Check the <strong>Enable cookies</strong> and <strong>Accept cookies normally</strong> checkboxes</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong>.</p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n    <h3><a name="opera"></a>Opera 7.x</h3>\r\n    <ol>\r\n        <li>\r\n            <p>Click on the <strong>Tools</strong> menu in Opera</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Preferences...</strong> item in the menu - a new window open</p>\r\n        </li>\r\n        <li>\r\n            <p>Click on the <strong>Privacy</strong> selection near the bottom left of the window. (See image below)</p>\r\n            <p><img src="{{skin url="images/cookies/opera.png"}}" alt="" /></p>\r\n        </li>\r\n        <li>\r\n            <p>The <strong>Enable cookies</strong> checkbox must be checked, and <strong>Accept all cookies</strong> should be selected in the &quot;<strong>Normal cookies</strong>&quot; drop-down</p>\r\n        </li>\r\n        <li>\r\n            <p>Save changes by clicking <strong>Ok</strong></p>\r\n        </li>\r\n    </ol>\r\n    <p class="a-top"><a href="#top">Back to Top</a></p>\r\n</div>\r\n', '2013-10-19 01:43:53', '2013-10-19 01:43:53', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Privacy Policy', 'one_column', NULL, NULL, 'privacy-policy-cookie-restriction-mode', 'Privacy Policy', '<p style="color: #ff0000; font-weight: bold; font-size: 13px">\r\n    Please replace this text with you Privacy Policy.\r\n    Please add any additional cookies your website uses below (e.g., Google Analytics)\r\n</p>\r\n<p>\r\n    This privacy policy sets out how {{config path="general/store_information/name"}} uses and protects any information\r\n    that you give {{config path="general/store_information/name"}} when you use this website.\r\n    {{config path="general/store_information/name"}} is committed to ensuring that your privacy is protected.\r\n    Should we ask you to provide certain information by which you can be identified when using this website,\r\n    then you can be assured that it will only be used in accordance with this privacy statement.\r\n    {{config path="general/store_information/name"}} may change this policy from time to time by updating this page.\r\n    You should check this page from time to time to ensure that you are happy with any changes.\r\n</p>\r\n<h2>What we collect</h2>\r\n<p>We may collect the following information:</p>\r\n<ul>\r\n    <li>name</li>\r\n    <li>contact information including email address</li>\r\n    <li>demographic information such as postcode, preferences and interests</li>\r\n    <li>other information relevant to customer surveys and/or offers</li>\r\n</ul>\r\n<p>\r\n    For the exhaustive list of cookies we collect see the <a href="#list">List of cookies we collect</a> section.\r\n</p>\r\n<h2>What we do with the information we gather</h2>\r\n<p>\r\n    We require this information to understand your needs and provide you with a better service,\r\n    and in particular for the following reasons:\r\n</p>\r\n<ul>\r\n    <li>Internal record keeping.</li>\r\n    <li>We may use the information to improve our products and services.</li>\r\n    <li>\r\n        We may periodically send promotional emails about new products, special offers or other information which we\r\n        think you may find interesting using the email address which you have provided.\r\n    </li>\r\n    <li>\r\n        From time to time, we may also use your information to contact you for market research purposes.\r\n        We may contact you by email, phone, fax or mail. We may use the information to customise the website\r\n        according to your interests.\r\n    </li>\r\n</ul>\r\n<h2>Security</h2>\r\n<p>\r\n    We are committed to ensuring that your information is secure. In order to prevent unauthorised access or disclosure,\r\n    we have put in place suitable physical, electronic and managerial procedures to safeguard and secure\r\n    the information we collect online.\r\n</p>\r\n<h2>How we use cookies</h2>\r\n<p>\r\n    A cookie is a small file which asks permission to be placed on your computer''s hard drive.\r\n    Once you agree, the file is added and the cookie helps analyse web traffic or lets you know when you visit\r\n    a particular site. Cookies allow web applications to respond to you as an individual. The web application\r\n    can tailor its operations to your needs, likes and dislikes by gathering and remembering information about\r\n    your preferences.\r\n</p>\r\n<p>\r\n    We use traffic log cookies to identify which pages are being used. This helps us analyse data about web page traffic\r\n    and improve our website in order to tailor it to customer needs. We only use this information for statistical\r\n    analysis purposes and then the data is removed from the system.\r\n</p>\r\n<p>\r\n    Overall, cookies help us provide you with a better website, by enabling us to monitor which pages you find useful\r\n    and which you do not. A cookie in no way gives us access to your computer or any information about you,\r\n    other than the data you choose to share with us. You can choose to accept or decline cookies.\r\n    Most web browsers automatically accept cookies, but you can usually modify your browser setting\r\n    to decline cookies if you prefer. This may prevent you from taking full advantage of the website.\r\n</p>\r\n<h2>Links to other websites</h2>\r\n<p>\r\n    Our website may contain links to other websites of interest. However, once you have used these links\r\n    to leave our site, you should note that we do not have any control over that other website.\r\n    Therefore, we cannot be responsible for the protection and privacy of any information which you provide whilst\r\n    visiting such sites and such sites are not governed by this privacy statement.\r\n    You should exercise caution and look at the privacy statement applicable to the website in question.\r\n</p>\r\n<h2>Controlling your personal information</h2>\r\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\r\n<ul>\r\n    <li>\r\n        whenever you are asked to fill in a form on the website, look for the box that you can click to indicate\r\n        that you do not want the information to be used by anybody for direct marketing purposes\r\n    </li>\r\n    <li>\r\n        if you have previously agreed to us using your personal information for direct marketing purposes,\r\n        you may change your mind at any time by writing to or emailing us at\r\n        {{config path="trans_email/ident_general/email"}}\r\n    </li>\r\n</ul>\r\n<p>\r\n    We will not sell, distribute or lease your personal information to third parties unless we have your permission\r\n    or are required by law to do so. We may use your personal information to send you promotional information\r\n    about third parties which we think you may find interesting if you tell us that you wish this to happen.\r\n</p>\r\n<p>\r\n    You may request details of personal information which we hold about you under the Data Protection Act 1998.\r\n    A small fee will be payable. If you would like a copy of the information held on you please write to\r\n    {{config path="general/store_information/address"}}.\r\n</p>\r\n<p>\r\n    If you believe that any information we are holding on you is incorrect or incomplete,\r\n    please write to or email us as soon as possible, at the above address.\r\n    We will promptly correct any information found to be incorrect.\r\n</p>\r\n<h2><a name="list"></a>List of cookies we collect</h2>\r\n<p>The table below lists the cookies we collect and what information they store.</p>\r\n<table class="data-table">\r\n    <thead>\r\n        <tr>\r\n            <th>COOKIE name</th>\r\n            <th>COOKIE Description</th>\r\n        </tr>\r\n    </thead>\r\n    <tbody>\r\n        <tr>\r\n            <th>CART</th>\r\n            <td>The association with your shopping cart.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CATEGORY_INFO</th>\r\n            <td>Stores the category info on the page, that allows to display pages more quickly.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>COMPARE</th>\r\n            <td>The items that you have in the Compare Products list.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CURRENCY</th>\r\n            <td>Your preferred currency</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CUSTOMER</th>\r\n            <td>An encrypted version of your customer id with the store.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CUSTOMER_AUTH</th>\r\n            <td>An indicator if you are currently logged into the store.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CUSTOMER_INFO</th>\r\n            <td>An encrypted version of the customer group you belong to.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>CUSTOMER_SEGMENT_IDS</th>\r\n            <td>Stores the Customer Segment ID</td>\r\n        </tr>\r\n        <tr>\r\n            <th>EXTERNAL_NO_CACHE</th>\r\n            <td>A flag, which indicates whether caching is disabled or not.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>FRONTEND</th>\r\n            <td>You sesssion ID on the server.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>GUEST-VIEW</th>\r\n            <td>Allows guests to edit their orders.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>LAST_CATEGORY</th>\r\n            <td>The last category you visited.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>LAST_PRODUCT</th>\r\n            <td>The most recent product you have viewed.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>NEWMESSAGE</th>\r\n            <td>Indicates whether a new message has been received.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>NO_CACHE</th>\r\n            <td>Indicates whether it is allowed to use cache.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>PERSISTENT_SHOPPING_CART</th>\r\n            <td>A link to information about your cart and viewing history if you have asked the site.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>POLL</th>\r\n            <td>The ID of any polls you have recently voted in.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>POLLN</th>\r\n            <td>Information on what polls you have voted on.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>RECENTLYCOMPARED</th>\r\n            <td>The items that you have recently compared.            </td>\r\n        </tr>\r\n        <tr>\r\n            <th>STF</th>\r\n            <td>Information on products you have emailed to friends.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>STORE</th>\r\n            <td>The store view or language you have selected.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>USER_ALLOWED_SAVE_COOKIE</th>\r\n            <td>Indicates whether a customer allowed to use cookies.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>VIEWED_PRODUCT_IDS</th>\r\n            <td>The products that you have recently viewed.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>WISHLIST</th>\r\n            <td>An encrypted list of products added to your Wishlist.</td>\r\n        </tr>\r\n        <tr>\r\n            <th>WISHLIST_CNT</th>\r\n            <td>The number of items in your Wishlist.</td>\r\n        </tr>\r\n    </tbody>\r\n</table>', '2013-10-19 01:43:54', '2013-10-19 01:43:54', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_cms_page_store`
--

CREATE TABLE IF NOT EXISTS `mgnto_cms_page_store` (
  `page_id` smallint(6) NOT NULL COMMENT 'Page ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`page_id`,`store_id`),
  KEY `IDX_MGNTO_CMS_PAGE_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Page To Store Linkage Table';

--
-- Dumping data for table `mgnto_cms_page_store`
--

INSERT INTO `mgnto_cms_page_store` (`page_id`, `store_id`) VALUES
(1, 0),
(2, 0),
(4, 0),
(5, 0),
(6, 0),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_cache`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_cache` (
  `id` varchar(200) NOT NULL COMMENT 'Cache Id',
  `data` mediumblob COMMENT 'Cache Data',
  `create_time` int(11) DEFAULT NULL COMMENT 'Cache Creation Time',
  `update_time` int(11) DEFAULT NULL COMMENT 'Time of Cache Updating',
  `expire_time` int(11) DEFAULT NULL COMMENT 'Cache Expiration Time',
  PRIMARY KEY (`id`),
  KEY `IDX_MGNTO_CORE_CACHE_EXPIRE_TIME` (`expire_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Caches';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_cache_option`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_cache_option` (
  `code` varchar(32) NOT NULL COMMENT 'Code',
  `value` smallint(6) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache Options';

--
-- Dumping data for table `mgnto_core_cache_option`
--

INSERT INTO `mgnto_core_cache_option` (`code`, `value`) VALUES
('block_html', 1),
('collections', 1),
('config', 1),
('config_api', 1),
('config_api2', 1),
('eav', 1),
('layout', 1),
('translate', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_cache_tag`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_cache_tag` (
  `tag` varchar(100) NOT NULL COMMENT 'Tag',
  `cache_id` varchar(200) NOT NULL COMMENT 'Cache Id',
  PRIMARY KEY (`tag`,`cache_id`),
  KEY `IDX_MGNTO_CORE_CACHE_TAG_CACHE_ID` (`cache_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Caches';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_config_data`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_config_data` (
  `config_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Config Id',
  `scope` varchar(8) NOT NULL DEFAULT 'default' COMMENT 'Config Scope',
  `scope_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Config Scope Id',
  `path` varchar(255) NOT NULL DEFAULT 'general' COMMENT 'Config Path',
  `value` text COMMENT 'Config Value',
  PRIMARY KEY (`config_id`),
  UNIQUE KEY `UNQ_MGNTO_CORE_CONFIG_DATA_SCOPE_SCOPE_ID_PATH` (`scope`,`scope_id`,`path`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Config Data' AUTO_INCREMENT=80 ;

--
-- Dumping data for table `mgnto_core_config_data`
--

INSERT INTO `mgnto_core_config_data` (`config_id`, `scope`, `scope_id`, `path`, `value`) VALUES
(1, 'default', 0, 'general/region/display_all', '1'),
(2, 'default', 0, 'general/region/state_required', 'AT,CA,CH,DE,EE,ES,FI,FR,LT,LV,RO,US'),
(3, 'default', 0, 'catalog/category/root_id', '2'),
(4, 'default', 0, 'web/seo/use_rewrites', '1'),
(5, 'default', 0, 'admin/dashboard/enable_charts', '1'),
(6, 'default', 0, 'web/unsecure/base_url', 'http://localhost/magento_magento/dev/'),
(7, 'default', 0, 'web/secure/base_url', 'http://localhost/magento_magento/dev/'),
(8, 'default', 0, 'general/locale/code', 'en_US'),
(9, 'default', 0, 'general/locale/timezone', 'America/Los_Angeles'),
(10, 'default', 0, 'currency/options/base', 'USD'),
(11, 'default', 0, 'currency/options/default', 'USD'),
(12, 'default', 0, 'currency/options/allow', 'USD'),
(13, 'default', 0, 'advanced/modules_disable_output/Cm_RedisSession', '0'),
(14, 'default', 0, 'advanced/modules_disable_output/Mage_Admin', '0'),
(15, 'default', 0, 'advanced/modules_disable_output/Mage_AdminNotification', '0'),
(16, 'default', 0, 'advanced/modules_disable_output/Mage_Api', '0'),
(17, 'default', 0, 'advanced/modules_disable_output/Mage_Api2', '0'),
(18, 'default', 0, 'advanced/modules_disable_output/Mage_Authorizenet', '0'),
(19, 'default', 0, 'advanced/modules_disable_output/Mage_Backup', '0'),
(20, 'default', 0, 'advanced/modules_disable_output/Mage_Bundle', '0'),
(21, 'default', 0, 'advanced/modules_disable_output/Mage_Captcha', '0'),
(22, 'default', 0, 'advanced/modules_disable_output/Mage_Catalog', '0'),
(23, 'default', 0, 'advanced/modules_disable_output/Mage_CatalogIndex', '0'),
(24, 'default', 0, 'advanced/modules_disable_output/Mage_CatalogInventory', '0'),
(25, 'default', 0, 'advanced/modules_disable_output/Mage_CatalogRule', '0'),
(26, 'default', 0, 'advanced/modules_disable_output/Mage_CatalogSearch', '0'),
(27, 'default', 0, 'advanced/modules_disable_output/Mage_Centinel', '0'),
(28, 'default', 0, 'advanced/modules_disable_output/Mage_Checkout', '0'),
(29, 'default', 0, 'advanced/modules_disable_output/Mage_Cms', '0'),
(30, 'default', 0, 'advanced/modules_disable_output/Mage_Compiler', '0'),
(31, 'default', 0, 'advanced/modules_disable_output/Mage_Connect', '0'),
(32, 'default', 0, 'advanced/modules_disable_output/Mage_Contacts', '0'),
(33, 'default', 0, 'advanced/modules_disable_output/Mage_Core', '0'),
(34, 'default', 0, 'advanced/modules_disable_output/Mage_Cron', '0'),
(35, 'default', 0, 'advanced/modules_disable_output/Mage_CurrencySymbol', '0'),
(36, 'default', 0, 'advanced/modules_disable_output/Mage_Customer', '0'),
(37, 'default', 0, 'advanced/modules_disable_output/Mage_Dataflow', '0'),
(38, 'default', 0, 'advanced/modules_disable_output/Mage_Directory', '0'),
(39, 'default', 0, 'advanced/modules_disable_output/Mage_Downloadable', '0'),
(40, 'default', 0, 'advanced/modules_disable_output/Mage_Eav', '0'),
(41, 'default', 0, 'advanced/modules_disable_output/Mage_GiftMessage', '0'),
(42, 'default', 0, 'advanced/modules_disable_output/Mage_GoogleAnalytics', '0'),
(43, 'default', 0, 'advanced/modules_disable_output/Mage_GoogleCheckout', '0'),
(44, 'default', 0, 'advanced/modules_disable_output/Mage_ImportExport', '0'),
(45, 'default', 0, 'advanced/modules_disable_output/Mage_Index', '0'),
(46, 'default', 0, 'advanced/modules_disable_output/Mage_Install', '0'),
(47, 'default', 0, 'advanced/modules_disable_output/Mage_Log', '0'),
(48, 'default', 0, 'advanced/modules_disable_output/Mage_Media', '0'),
(49, 'default', 0, 'advanced/modules_disable_output/Mage_Newsletter', '0'),
(50, 'default', 0, 'advanced/modules_disable_output/Mage_Oauth', '0'),
(51, 'default', 0, 'advanced/modules_disable_output/Mage_Page', '0'),
(52, 'default', 0, 'advanced/modules_disable_output/Mage_PageCache', '0'),
(53, 'default', 0, 'advanced/modules_disable_output/Mage_Paygate', '0'),
(54, 'default', 0, 'advanced/modules_disable_output/Mage_Payment', '0'),
(55, 'default', 0, 'advanced/modules_disable_output/Mage_Paypal', '0'),
(56, 'default', 0, 'advanced/modules_disable_output/Mage_PaypalUk', '0'),
(57, 'default', 0, 'advanced/modules_disable_output/Mage_Persistent', '0'),
(58, 'default', 0, 'advanced/modules_disable_output/Mage_Poll', '0'),
(59, 'default', 0, 'advanced/modules_disable_output/Mage_ProductAlert', '0'),
(60, 'default', 0, 'advanced/modules_disable_output/Mage_Rating', '0'),
(61, 'default', 0, 'advanced/modules_disable_output/Mage_Reports', '0'),
(62, 'default', 0, 'advanced/modules_disable_output/Mage_Review', '0'),
(63, 'default', 0, 'advanced/modules_disable_output/Mage_Rss', '0'),
(64, 'default', 0, 'advanced/modules_disable_output/Mage_Rule', '0'),
(65, 'default', 0, 'advanced/modules_disable_output/Mage_Sales', '0'),
(66, 'default', 0, 'advanced/modules_disable_output/Mage_SalesRule', '0'),
(67, 'default', 0, 'advanced/modules_disable_output/Mage_Sendfriend', '0'),
(68, 'default', 0, 'advanced/modules_disable_output/Mage_Shipping', '0'),
(69, 'default', 0, 'advanced/modules_disable_output/Mage_Sitemap', '0'),
(70, 'default', 0, 'advanced/modules_disable_output/Mage_Tag', '0'),
(71, 'default', 0, 'advanced/modules_disable_output/Mage_Tax', '0'),
(72, 'default', 0, 'advanced/modules_disable_output/Mage_Usa', '0'),
(73, 'default', 0, 'advanced/modules_disable_output/Mage_Weee', '0'),
(74, 'default', 0, 'advanced/modules_disable_output/Mage_Widget', '0'),
(75, 'default', 0, 'advanced/modules_disable_output/Mage_Wishlist', '0'),
(76, 'default', 0, 'advanced/modules_disable_output/Mage_XmlConnect', '0'),
(77, 'default', 0, 'advanced/modules_disable_output/Magentotutorial_Configviewer', '0'),
(78, 'default', 0, 'advanced/modules_disable_output/Phoenix_Moneybookers', '0'),
(79, 'default', 0, 'ecard_section/ecard_group/ecard_field', '999000891');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_email_template`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_email_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) NOT NULL COMMENT 'Template Name',
  `template_text` text NOT NULL COMMENT 'Template Content',
  `template_styles` text COMMENT 'Templste Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) NOT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Creation',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Date of Template Modification',
  `orig_template_code` varchar(200) DEFAULT NULL COMMENT 'Original Template Code',
  `orig_template_variables` text COMMENT 'Original Template Variables',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `UNQ_MGNTO_CORE_EMAIL_TEMPLATE_TEMPLATE_CODE` (`template_code`),
  KEY `IDX_MGNTO_CORE_EMAIL_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_MGNTO_CORE_EMAIL_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Email Templates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_flag`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_flag` (
  `flag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Flag Id',
  `flag_code` varchar(255) NOT NULL COMMENT 'Flag Code',
  `state` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Flag State',
  `flag_data` text COMMENT 'Flag Data',
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of Last Flag Update',
  PRIMARY KEY (`flag_id`),
  KEY `IDX_MGNTO_CORE_FLAG_LAST_UPDATE` (`last_update`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Flag' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgnto_core_flag`
--

INSERT INTO `mgnto_core_flag` (`flag_id`, `flag_code`, `state`, `flag_data`, `last_update`) VALUES
(1, 'admin_notification_survey', 0, 'a:1:{s:13:"survey_viewed";b:1;}', '2013-10-19 01:46:12'),
(2, 'catalog_product_flat', 0, 'a:2:{s:8:"is_built";b:1;s:16:"is_store_built_1";b:1;}', '2013-10-19 01:47:00');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_layout_link`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_layout_link` (
  `layout_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `area` varchar(64) DEFAULT NULL COMMENT 'Area',
  `package` varchar(64) DEFAULT NULL COMMENT 'Package',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  PRIMARY KEY (`layout_link_id`),
  UNIQUE KEY `UNQ_MGNTO_CORE_LYT_LNK_STORE_ID_PACKAGE_THEME_LYT_UPDATE_ID` (`store_id`,`package`,`theme`,`layout_update_id`),
  KEY `IDX_MGNTO_CORE_LAYOUT_LINK_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_layout_update`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_layout_update` (
  `layout_update_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Layout Update Id',
  `handle` varchar(255) DEFAULT NULL COMMENT 'Handle',
  `xml` text COMMENT 'Xml',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`layout_update_id`),
  KEY `IDX_MGNTO_CORE_LAYOUT_UPDATE_HANDLE` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout Updates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_resource`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_resource` (
  `code` varchar(50) NOT NULL COMMENT 'Resource Code',
  `version` varchar(50) DEFAULT NULL COMMENT 'Resource Version',
  `data_version` varchar(50) DEFAULT NULL COMMENT 'Data Version',
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Resources';

--
-- Dumping data for table `mgnto_core_resource`
--

INSERT INTO `mgnto_core_resource` (`code`, `version`, `data_version`) VALUES
('adminnotification_setup', '1.6.0.0', '1.6.0.0'),
('admin_setup', '1.6.1.1', '1.6.1.1'),
('api2_setup', '1.0.0.0', '1.0.0.0'),
('api_setup', '1.6.0.1', '1.6.0.1'),
('backup_setup', '1.6.0.0', '1.6.0.0'),
('bundle_setup', '1.6.0.0.1', '1.6.0.0.1'),
('captcha_setup', '1.7.0.0.0', '1.7.0.0.0'),
('catalogindex_setup', '1.6.0.0', '1.6.0.0'),
('cataloginventory_setup', '1.6.0.0.2', '1.6.0.0.2'),
('catalogrule_setup', '1.6.0.3', '1.6.0.3'),
('catalogsearch_setup', '1.6.0.0', '1.6.0.0'),
('catalog_setup', '1.6.0.0.18', '1.6.0.0.18'),
('checkout_setup', '1.6.0.0', '1.6.0.0'),
('cms_setup', '1.6.0.0.1', '1.6.0.0.1'),
('compiler_setup', '1.6.0.0', '1.6.0.0'),
('complexworld_setup', '0.1.0', '0.1.0'),
('contacts_setup', '1.6.0.0', '1.6.0.0'),
('core_setup', '1.6.0.3', '1.6.0.3'),
('cron_setup', '1.6.0.0', '1.6.0.0'),
('customer_setup', '1.6.2.0.1', '1.6.2.0.1'),
('dataflow_setup', '1.6.0.0', '1.6.0.0'),
('directory_setup', '1.6.0.2', '1.6.0.2'),
('downloadable_setup', '1.6.0.0.2', '1.6.0.0.2'),
('eav_setup', '1.6.0.0', '1.6.0.0'),
('giftmessage_setup', '1.6.0.0', '1.6.0.0'),
('googlecheckout_setup', '1.6.0.1', '1.6.0.1'),
('importexport_setup', '1.6.0.2', '1.6.0.2'),
('index_setup', '1.6.0.0', '1.6.0.0'),
('log_setup', '1.6.0.0', '1.6.0.0'),
('moneybookers_setup', '1.6.0.0', '1.6.0.0'),
('newsletter_setup', '1.6.0.1', '1.6.0.1'),
('oauth_setup', '1.0.0.0', '1.0.0.0'),
('paygate_setup', '1.6.0.0', '1.6.0.0'),
('payment_setup', '1.6.0.0', '1.6.0.0'),
('paypaluk_setup', '1.6.0.0', '1.6.0.0'),
('paypal_setup', '1.6.0.4', '1.6.0.4'),
('persistent_setup', '1.0.0.0', '1.0.0.0'),
('pfaytest_setup', '0.1.0', '0.1.0'),
('poll_setup', '1.6.0.0', '1.6.0.0'),
('productalert_setup', '1.6.0.0', '1.6.0.0'),
('rating_setup', '1.6.0.0', '1.6.0.0'),
('reports_setup', '1.6.0.0.1', '1.6.0.0.1'),
('review_setup', '1.6.0.0', '1.6.0.0'),
('salesrule_setup', '1.6.0.3', '1.6.0.3'),
('sales_setup', '1.6.0.8', '1.6.0.8'),
('sendfriend_setup', '1.6.0.0', '1.6.0.0'),
('shipping_setup', '1.6.0.0', '1.6.0.0'),
('sitemap_setup', '1.6.0.0', '1.6.0.0'),
('tag_setup', '1.6.0.0', '1.6.0.0'),
('tax_setup', '1.6.0.4', '1.6.0.4'),
('test_setup', '0.1.0', '0.1.0'),
('usa_setup', '1.6.0.3', '1.6.0.3'),
('weblog_setup', '0.8.0', '0.8.0'),
('weee_setup', '1.6.0.0', '1.6.0.0'),
('widget_setup', '1.6.0.0', '1.6.0.0'),
('wishlist_setup', '1.6.0.0', '1.6.0.0'),
('xmlconnect_setup', '1.6.0.0.1', '1.6.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_session`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_session` (
  `session_id` varchar(255) NOT NULL COMMENT 'Session Id',
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Date of Session Expiration',
  `session_data` mediumblob NOT NULL COMMENT 'Session Data',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Database Sessions Storage';

--
-- Dumping data for table `mgnto_core_session`
--

INSERT INTO `mgnto_core_session` (`session_id`, `session_expires`, `session_data`) VALUES
('5ia8iqbh97h87vhib1shgrhgq6', 1383137838, 0x636f72657c613a363a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a31353a226a7573745f766f7465645f706f6c6c223b623a303b733a31323a2276697369746f725f64617461223b613a31363a7b733a303a22223b4e3b733a31313a227365727665725f61646472223b693a323133303730363433333b733a31313a2272656d6f74655f61646472223b693a323133303730363433333b733a31313a22687474705f736563757265223b623a303b733a393a22687474705f686f7374223b733a393a226c6f63616c686f7374223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b733a32303a22687474705f6163636570745f6c616e6775616765223b733a31343a22656e2d55532c656e3b713d302e35223b733a31393a22687474705f6163636570745f63686172736574223b733a303a22223b733a31313a22726571756573745f757269223b733a32383a222f6d6167656e746f5f6d6167656e746f2f6465762f73747564656e74223b733a31303a2273657373696f6e5f6964223b733a32363a223569613869716268393768383776686962317368677268677136223b733a31323a22687474705f72656665726572223b733a303a22223b733a31343a2266697273745f76697369745f6174223b733a31393a22323031332d31302d33302031313a30393a3232223b733a31343a2269735f6e65775f76697369746f72223b623a303b733a31333a226c6173745f76697369745f6174223b733a31393a22323031332d31302d33302031313a35373a3138223b733a31303a2276697369746f725f6964223b733a323a223339223b733a31313a226c6173745f75726c5f6964223b733a333a22323837223b7d733a383a226c6173745f75726c223b733a35353a22687474703a2f2f6c6f63616c686f73742f6d6167656e746f5f6d6167656e746f2f6465762f636d732f696e6465782f6e6f526f7574652f223b7d637573746f6d65725f626173657c613a343a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a31393a22776973686c6973745f6974656d5f636f756e74223b693a303b7d636865636b6f75747c613a333a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d7d636174616c6f677c613a343a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a32373a22636174616c6f675f636f6d706172655f6974656d735f636f756e74223b693a303b7d7265706f7274737c613a343a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a32363a2270726f647563745f696e6465785f7669657765645f636f756e74223b693a303b733a32383a2270726f647563745f696e6465785f636f6d70617265645f636f756e74223b693a303b7d);
INSERT INTO `mgnto_core_session` (`session_id`, `session_expires`, `session_data`) VALUES
('hlns71bm0mbmtfmv6o7qnso103', 1383136352, 0x636f72657c613a343a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a393a225f666f726d5f6b6579223b733a31363a2238625042706d75384f465958717a4f50223b733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d7d61646d696e68746d6c7c613a343a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a363a226c6f63616c65223b733a353a22656e5f5553223b733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4f3a33313a224d6167655f436f72655f4d6f64656c5f4d6573736167655f53756363657373223a363a7b733a383a22002a005f74797065223b733a373a2273756363657373223b733a383a22002a005f636f6465223b733a34333a22546865204d6167656e746f2063616368652073746f7261676520686173206265656e20666c75736865642e223b733a393a22002a005f636c617373223b733a303a22223b733a31303a22002a005f6d6574686f64223b733a303a22223b733a31343a22002a005f6964656e746966696572223b4e3b733a31323a22002a005f6973537469636b79223b623a303b7d7d7d61646d696e7c613a353a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a32333a2273796e635f70726f636573735f73746f705f7761746368223b623a303b733a343a2275736572223b4f3a32313a224d6167655f41646d696e5f4d6f64656c5f55736572223a31373a7b733a31353a22002a005f6576656e74507265666978223b733a31303a2261646d696e5f75736572223b733a383a22002a005f726f6c65223b4e3b733a32353a22002a005f686173417661696c61626c655265736f7572636573223b623a313b733a31353a22002a005f6576656e744f626a656374223b733a363a226f626a656374223b733a31363a22002a005f7265736f757263654e616d65223b733a31303a2261646d696e2f75736572223b733a31323a22002a005f7265736f75726365223b4e3b733a32363a22002a005f7265736f75726365436f6c6c656374696f6e4e616d65223b733a32313a2261646d696e2f757365725f636f6c6c656374696f6e223b733a31323a22002a005f6361636865546167223b623a303b733a31393a22002a005f6461746153617665416c6c6f776564223b623a313b733a31353a22002a005f69734f626a6563744e6577223b4e3b733a383a22002a005f64617461223b613a31353a7b733a373a22757365725f6964223b733a313a2231223b733a393a2266697273746e616d65223b733a363a2244656570616b223b733a383a226c6173746e616d65223b733a363a224d6f6b74616e223b733a353a22656d61696c223b733a32313a22646d6f6b74616e406c6573746572696e632e636f6d223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a383a2270617373776f7264223b733a36353a2235643037313337356366343866306435323339353439646632323830336532303a41596977586854624a6656554e50495748554f6437696172566e464369714c4b223b733a373a2263726561746564223b733a31393a22323031332d31302d31392030373a31363a3131223b733a383a226d6f646966696564223b733a31393a22323031332d31302d31392030373a31363a3131223b733a373a226c6f6764617465223b733a31393a22323031332d31302d33302031313a33393a3034223b733a363a226c6f676e756d223b733a323a223237223b733a31353a2272656c6f61645f61636c5f666c6167223b733a313a2230223b733a393a2269735f616374697665223b733a313a2231223b733a353a226578747261223b613a313a7b733a31313a22636f6e6669675374617465223b613a323a7b733a33313a22616476616e6365645f6d6f64756c65735f64697361626c655f6f7574707574223b733a313a2231223b733a32353a2265636172645f73656374696f6e5f65636172645f67726f7570223b733a313a2231223b7d7d733a383a2272705f746f6b656e223b4e3b733a31393a2272705f746f6b656e5f637265617465645f6174223b4e3b7d733a31383a22002a005f686173446174614368616e676573223b623a303b733a31323a22002a005f6f72696744617461223b613a31353a7b733a373a22757365725f6964223b733a313a2231223b733a393a2266697273746e616d65223b733a363a2244656570616b223b733a383a226c6173746e616d65223b733a363a224d6f6b74616e223b733a353a22656d61696c223b733a32313a22646d6f6b74616e406c6573746572696e632e636f6d223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a383a2270617373776f7264223b733a36353a2235643037313337356366343866306435323339353439646632323830336532303a41596977586854624a6656554e50495748554f6437696172566e464369714c4b223b733a373a2263726561746564223b733a31393a22323031332d31302d31392030373a31363a3131223b733a383a226d6f646966696564223b733a31393a22323031332d31302d31392030373a31363a3131223b733a373a226c6f6764617465223b733a31393a22323031332d31302d33302031313a33393a3034223b733a363a226c6f676e756d223b733a323a223237223b733a31353a2272656c6f61645f61636c5f666c6167223b733a313a2230223b733a393a2269735f616374697665223b733a313a2231223b733a353a226578747261223b613a313a7b733a31313a22636f6e6669675374617465223b613a323a7b733a33313a22616476616e6365645f6d6f64756c65735f64697361626c655f6f7574707574223b733a313a2231223b733a32353a2265636172645f73656374696f6e5f65636172645f67726f7570223b733a313a2231223b7d7d733a383a2272705f746f6b656e223b4e3b733a31393a2272705f746f6b656e5f637265617465645f6174223b4e3b7d733a31353a22002a005f69644669656c644e616d65223b733a373a22757365725f6964223b733a31333a22002a005f697344656c65746564223b623a303b733a31363a22002a005f6f6c644669656c64734d6170223b613a303a7b7d733a31373a22002a005f73796e634669656c64734d6170223b613a303a7b7d7d733a333a2261636c223b4f3a32303a224d6167655f41646d696e5f4d6f64656c5f41636c223a363a7b733a31363a22002a005f726f6c655265676973747279223b4f3a33343a224d6167655f41646d696e5f4d6f64656c5f41636c5f526f6c655f5265676973747279223a313a7b733a393a22002a005f726f6c6573223b613a323a7b733a323a224731223b613a333a7b733a383a22696e7374616e6365223b4f3a33313a224d6167655f41646d696e5f4d6f64656c5f41636c5f526f6c655f47726f7570223a313a7b733a31303a22002a005f726f6c654964223b733a323a224731223b7d733a373a22706172656e7473223b613a303a7b7d733a383a226368696c6472656e223b613a313a7b733a323a225531223b4f3a33303a224d6167655f41646d696e5f4d6f64656c5f41636c5f526f6c655f55736572223a313a7b733a31303a22002a005f726f6c654964223b733a323a225531223b7d7d7d733a323a225531223b613a333a7b733a383a22696e7374616e6365223b723a3130323b733a373a22706172656e7473223b613a313a7b733a323a224731223b723a39383b7d733a383a226368696c6472656e223b613a303a7b7d7d7d7d733a31333a22002a005f7265736f7572636573223b613a3230343a7b733a333a22616c6c223b613a333a7b733a383a22696e7374616e6365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a333a22616c6c223b7d733a363a22706172656e74223b4e3b733a383a226368696c6472656e223b613a303a7b7d7d733a353a2261646d696e223b613a333a7b733a383a22696e7374616e6365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a353a2261646d696e223b7d733a363a22706172656e74223b4e3b733a383a226368696c6472656e223b613a31323a7b733a31353a2261646d696e2f64617368626f617264223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31353a2261646d696e2f64617368626f617264223b7d733a31323a2261646d696e2f73797374656d223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31323a2261646d696e2f73797374656d223b7d733a31393a2261646d696e2f676c6f62616c5f736561726368223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f676c6f62616c5f736561726368223b7d733a393a2261646d696e2f636d73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a393a2261646d696e2f636d73223b7d733a31343a2261646d696e2f637573746f6d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31343a2261646d696e2f637573746f6d6572223b7d733a31333a2261646d696e2f636174616c6f67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31333a2261646d696e2f636174616c6f67223b7d733a31313a2261646d696e2f70726f6d6f223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31313a2261646d696e2f70726f6d6f223b7d733a31313a2261646d696e2f73616c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31313a2261646d696e2f73616c6573223b7d733a31323a2261646d696e2f7265706f7274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31323a2261646d696e2f7265706f7274223b7d733a31363a2261646d696e2f6e6577736c6574746572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31363a2261646d696e2f6e6577736c6574746572223b7d733a31363a2261646d696e2f706167655f6361636865223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31363a2261646d696e2f706167655f6361636865223b7d733a31363a2261646d696e2f786d6c636f6e6e656374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31363a2261646d696e2f786d6c636f6e6e656374223b7d7d7d733a31353a2261646d696e2f64617368626f617264223b613a333a7b733a383a22696e7374616e6365223b723a3132303b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a303a7b7d7d733a31323a2261646d696e2f73797374656d223b613a333a7b733a383a22696e7374616e6365223b723a3132323b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a31363a7b733a31363a2261646d696e2f73797374656d2f61636c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31363a2261646d696e2f73797374656d2f61636c223b7d733a31383a2261646d696e2f73797374656d2f73746f7265223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31383a2261646d696e2f73797374656d2f73746f7265223b7d733a31393a2261646d696e2f73797374656d2f64657369676e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f73797374656d2f64657369676e223b7d733a31393a2261646d696e2f73797374656d2f636f6e666967223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f73797374656d2f636f6e666967223b7d733a32313a2261646d696e2f73797374656d2f63757272656e6379223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f73797374656d2f63757272656e6379223b7d733a32373a2261646d696e2f73797374656d2f656d61696c5f74656d706c617465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f656d61696c5f74656d706c617465223b7d733a32313a2261646d696e2f73797374656d2f7661726961626c65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f73797374656d2f7661726961626c65223b7d733a32323a2261646d696e2f73797374656d2f6d796163636f756e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73797374656d2f6d796163636f756e74223b7d733a31383a2261646d696e2f73797374656d2f746f6f6c73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31383a2261646d696e2f73797374656d2f746f6f6c73223b7d733a32303a2261646d696e2f73797374656d2f636f6e76657274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32303a2261646d696e2f73797374656d2f636f6e76657274223b7d733a31383a2261646d696e2f73797374656d2f6361636865223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31383a2261646d696e2f73797374656d2f6361636865223b7d733a32333a2261646d696e2f73797374656d2f657874656e73696f6e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f657874656e73696f6e73223b7d733a33303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e223b7d733a31383a2261646d696e2f73797374656d2f696e646578223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31383a2261646d696e2f73797374656d2f696e646578223b7d733a32373a2261646d696e2f73797374656d2f6f726465725f7374617475736573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f6f726465725f7374617475736573223b7d733a31363a2261646d696e2f73797374656d2f617069223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31363a2261646d696e2f73797374656d2f617069223b7d7d7d733a31363a2261646d696e2f73797374656d2f61636c223b613a333a7b733a383a22696e7374616e6365223b723a3135323b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a323a7b733a32323a2261646d696e2f73797374656d2f61636c2f726f6c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73797374656d2f61636c2f726f6c6573223b7d733a32323a2261646d696e2f73797374656d2f61636c2f7573657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73797374656d2f61636c2f7573657273223b7d7d7d733a32323a2261646d696e2f73797374656d2f61636c2f726f6c6573223b613a333a7b733a383a22696e7374616e6365223b723a3138383b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f73797374656d2f61636c2f7573657273223b613a333a7b733a383a22696e7374616e6365223b723a3139303b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a31383a2261646d696e2f73797374656d2f73746f7265223b613a333a7b733a383a22696e7374616e6365223b723a3135343b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f73797374656d2f64657369676e223b613a333a7b733a383a22696e7374616e6365223b723a3135363b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f73797374656d2f636f6e666967223b613a333a7b733a383a22696e7374616e6365223b723a3135383b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a33383a7b733a32373a2261646d696e2f73797374656d2f636f6e6669672f67656e6572616c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e6669672f67656e6572616c223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f776562223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f776562223b7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f64657369676e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f73797374656d2f636f6e6669672f64657369676e223b7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f73797374656d223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f73797374656d2f636f6e6669672f73797374656d223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f616476616e636564223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f616476616e636564223b7d733a33313a2261646d696e2f73797374656d2f636f6e6669672f7472616e735f656d61696c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f73797374656d2f636f6e6669672f7472616e735f656d61696c223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f646576223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f646576223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f63757272656e6379223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f63757272656e6379223b7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f73656e64667269656e64223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f636f6e6669672f73656e64667269656e64223b7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f61646d696e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f636f6e6669672f61646d696e223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f636d73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f636d73223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f637573746f6d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f637573746f6d6572223b7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67223b7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e74223b7d733a33363a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e745f7365727669636573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33363a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e745f7365727669636573223b7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f73616c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f636f6e6669672f73616c6573223b7d733a33313a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f656d61696c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f656d61696c223b7d733a32393a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f706466223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f706466223b7d733a33363a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67696e76656e746f7279223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33363a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67696e76656e746f7279223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f7368697070696e67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f7368697070696e67223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f6361727269657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f6361727269657273223b7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f70726f6d6f223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f636f6e6669672f70726f6d6f223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f636865636b6f7574223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f636865636b6f7574223b7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f70617970616c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f73797374656d2f636f6e6669672f70617970616c223b7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f676f6f676c65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f73797374656d2f636f6e6669672f676f6f676c65223b7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f7265706f727473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e6669672f7265706f727473223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f746178223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f746178223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f776973686c697374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f776973686c697374223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f636f6e7461637473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f636f6e7461637473223b7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f736974656d6170223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e6669672f736974656d6170223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f727373223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f727373223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f617069223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f617069223b7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f6f61757468223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f636f6e6669672f6f61757468223b7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f6e6577736c6574746572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f636f6e6669672f6e6577736c6574746572223b7d733a33323a2261646d696e2f73797374656d2f636f6e6669672f646f776e6c6f616461626c65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73797374656d2f636f6e6669672f646f776e6c6f616461626c65223b7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f70657273697374656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f636f6e6669672f70657273697374656e74223b7d733a33333a2261646d696e2f73797374656d2f636f6e6669672f65636172645f73656374696f6e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73797374656d2f636f6e6669672f65636172645f73656374696f6e223b7d733a33323a2261646d696e2f73797374656d2f636f6e6669672f6d6f6e6579626f6f6b657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73797374656d2f636f6e6669672f6d6f6e6579626f6f6b657273223b7d7d7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f67656e6572616c223b613a333a7b733a383a22696e7374616e6365223b723a3231323b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f776562223b613a333a7b733a383a22696e7374616e6365223b723a3231343b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f64657369676e223b613a333a7b733a383a22696e7374616e6365223b723a3231363b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f73797374656d223b613a333a7b733a383a22696e7374616e6365223b723a3231383b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f616476616e636564223b613a333a7b733a383a22696e7374616e6365223b723a3232303b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f73797374656d2f636f6e6669672f7472616e735f656d61696c223b613a333a7b733a383a22696e7374616e6365223b723a3232323b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f646576223b613a333a7b733a383a22696e7374616e6365223b723a3232343b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f63757272656e6379223b613a333a7b733a383a22696e7374616e6365223b723a3232363b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f73656e64667269656e64223b613a333a7b733a383a22696e7374616e6365223b723a3232383b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f61646d696e223b613a333a7b733a383a22696e7374616e6365223b723a3233303b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f636d73223b613a333a7b733a383a22696e7374616e6365223b723a3233323b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f637573746f6d6572223b613a333a7b733a383a22696e7374616e6365223b723a3233343b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67223b613a333a7b733a383a22696e7374616e6365223b723a3233363b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3233383b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a33363a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e745f7365727669636573223b613a333a7b733a383a22696e7374616e6365223b723a3234303b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f73616c6573223b613a333a7b733a383a22696e7374616e6365223b723a3234323b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f656d61696c223b613a333a7b733a383a22696e7374616e6365223b723a3234343b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f706466223b613a333a7b733a383a22696e7374616e6365223b723a3234363b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a33363a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67696e76656e746f7279223b613a333a7b733a383a22696e7374616e6365223b723a3234383b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f7368697070696e67223b613a333a7b733a383a22696e7374616e6365223b723a3235303b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f6361727269657273223b613a333a7b733a383a22696e7374616e6365223b723a3235323b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f70726f6d6f223b613a333a7b733a383a22696e7374616e6365223b723a3235343b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f636865636b6f7574223b613a333a7b733a383a22696e7374616e6365223b723a3235363b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f70617970616c223b613a333a7b733a383a22696e7374616e6365223b723a3235383b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f676f6f676c65223b613a333a7b733a383a22696e7374616e6365223b723a3236303b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f7265706f727473223b613a333a7b733a383a22696e7374616e6365223b723a3236323b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f746178223b613a333a7b733a383a22696e7374616e6365223b723a3236343b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f776973686c697374223b613a333a7b733a383a22696e7374616e6365223b723a3236363b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f636f6e7461637473223b613a333a7b733a383a22696e7374616e6365223b723a3236383b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f736974656d6170223b613a333a7b733a383a22696e7374616e6365223b723a3237303b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f727373223b613a333a7b733a383a22696e7374616e6365223b723a3237323b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f617069223b613a333a7b733a383a22696e7374616e6365223b723a3237343b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f6f61757468223b613a333a7b733a383a22696e7374616e6365223b723a3237363b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f6e6577736c6574746572223b613a333a7b733a383a22696e7374616e6365223b723a3237383b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73797374656d2f636f6e6669672f646f776e6c6f616461626c65223b613a333a7b733a383a22696e7374616e6365223b723a3238303b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f70657273697374656e74223b613a333a7b733a383a22696e7374616e6365223b723a3238323b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73797374656d2f636f6e6669672f65636172645f73656374696f6e223b613a333a7b733a383a22696e7374616e6365223b723a3238343b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73797374656d2f636f6e6669672f6d6f6e6579626f6f6b657273223b613a333a7b733a383a22696e7374616e6365223b723a3238363b733a363a22706172656e74223b723a3135383b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f73797374656d2f63757272656e6379223b613a333a7b733a383a22696e7374616e6365223b723a3136303b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a323a7b733a32373a2261646d696e2f73797374656d2f63757272656e63792f7261746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f63757272656e63792f7261746573223b7d733a32393a2261646d696e2f73797374656d2f63757272656e63792f73796d626f6c73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73797374656d2f63757272656e63792f73796d626f6c73223b7d7d7d733a32373a2261646d696e2f73797374656d2f63757272656e63792f7261746573223b613a333a7b733a383a22696e7374616e6365223b723a3434343b733a363a22706172656e74223b723a3136303b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73797374656d2f63757272656e63792f73796d626f6c73223b613a333a7b733a383a22696e7374616e6365223b723a3434363b733a363a22706172656e74223b723a3136303b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f656d61696c5f74656d706c617465223b613a333a7b733a383a22696e7374616e6365223b723a3136323b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f73797374656d2f7661726961626c65223b613a333a7b733a383a22696e7374616e6365223b723a3136343b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f73797374656d2f6d796163636f756e74223b613a333a7b733a383a22696e7374616e6365223b723a3136363b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a303a7b7d7d733a31383a2261646d696e2f73797374656d2f746f6f6c73223b613a333a7b733a383a22696e7374616e6365223b723a3136383b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a323a7b733a32353a2261646d696e2f73797374656d2f746f6f6c732f6261636b7570223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f746f6f6c732f6261636b7570223b7d733a32373a2261646d696e2f73797374656d2f746f6f6c732f636f6d70696c6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f746f6f6c732f636f6d70696c6572223b7d7d7d733a32353a2261646d696e2f73797374656d2f746f6f6c732f6261636b7570223b613a333a7b733a383a22696e7374616e6365223b723a3437323b733a363a22706172656e74223b723a3136383b733a383a226368696c6472656e223b613a313a7b733a33343a2261646d696e2f73797374656d2f746f6f6c732f6261636b75702f726f6c6c6261636b223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33343a2261646d696e2f73797374656d2f746f6f6c732f6261636b75702f726f6c6c6261636b223b7d7d7d733a33343a2261646d696e2f73797374656d2f746f6f6c732f6261636b75702f726f6c6c6261636b223b613a333a7b733a383a22696e7374616e6365223b723a3438303b733a363a22706172656e74223b723a3437323b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f746f6f6c732f636f6d70696c6572223b613a333a7b733a383a22696e7374616e6365223b723a3437343b733a363a22706172656e74223b723a3136383b733a383a226368696c6472656e223b613a303a7b7d7d733a32303a2261646d696e2f73797374656d2f636f6e76657274223b613a333a7b733a383a22696e7374616e6365223b723a3137303b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a343a7b733a32343a2261646d696e2f73797374656d2f636f6e766572742f677569223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f73797374656d2f636f6e766572742f677569223b7d733a32393a2261646d696e2f73797374656d2f636f6e766572742f70726f66696c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73797374656d2f636f6e766572742f70726f66696c6573223b7d733a32373a2261646d696e2f73797374656d2f636f6e766572742f696d706f7274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e766572742f696d706f7274223b7d733a32373a2261646d696e2f73797374656d2f636f6e766572742f6578706f7274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e766572742f6578706f7274223b7d7d7d733a32343a2261646d696e2f73797374656d2f636f6e766572742f677569223b613a333a7b733a383a22696e7374616e6365223b723a3439343b733a363a22706172656e74223b723a3137303b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73797374656d2f636f6e766572742f70726f66696c6573223b613a333a7b733a383a22696e7374616e6365223b723a3439363b733a363a22706172656e74223b723a3137303b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e766572742f696d706f7274223b613a333a7b733a383a22696e7374616e6365223b723a3439383b733a363a22706172656e74223b723a3137303b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e766572742f6578706f7274223b613a333a7b733a383a22696e7374616e6365223b723a3530303b733a363a22706172656e74223b723a3137303b733a383a226368696c6472656e223b613a303a7b7d7d733a31383a2261646d696e2f73797374656d2f6361636865223b613a333a7b733a383a22696e7374616e6365223b723a3137323b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f657874656e73696f6e73223b613a333a7b733a383a22696e7374616e6365223b723a3137343b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a323a7b733a32393a2261646d696e2f73797374656d2f657874656e73696f6e732f6c6f63616c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73797374656d2f657874656e73696f6e732f6c6f63616c223b7d733a33303a2261646d696e2f73797374656d2f657874656e73696f6e732f637573746f6d223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f657874656e73696f6e732f637573746f6d223b7d7d7d733a32393a2261646d696e2f73797374656d2f657874656e73696f6e732f6c6f63616c223b613a333a7b733a383a22696e7374616e6365223b723a3532363b733a363a22706172656e74223b723a3137343b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73797374656d2f657874656e73696f6e732f637573746f6d223b613a333a7b733a383a22696e7374616e6365223b723a3532383b733a363a22706172656e74223b723a3137343b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e223b613a333a7b733a383a22696e7374616e6365223b723a3137363b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a343a7b733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f746f6f6c626172223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f746f6f6c626172223b7d733a34303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f6c697374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f6c697374223b7d733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f6d61726b5f61735f72656164223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f6d61726b5f61735f72656164223b7d733a33373a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f72656d6f7665223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33373a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f72656d6f7665223b7d7d7d733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f746f6f6c626172223b613a333a7b733a383a22696e7374616e6365223b723a3534323b733a363a22706172656e74223b723a3137363b733a383a226368696c6472656e223b613a303a7b7d7d733a34303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f6c697374223b613a333a7b733a383a22696e7374616e6365223b723a3534343b733a363a22706172656e74223b723a3137363b733a383a226368696c6472656e223b613a303a7b7d7d733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f6d61726b5f61735f72656164223b613a333a7b733a383a22696e7374616e6365223b723a3534363b733a363a22706172656e74223b723a3137363b733a383a226368696c6472656e223b613a303a7b7d7d733a33373a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f72656d6f7665223b613a333a7b733a383a22696e7374616e6365223b723a3534383b733a363a22706172656e74223b723a3137363b733a383a226368696c6472656e223b613a303a7b7d7d733a31383a2261646d696e2f73797374656d2f696e646578223b613a333a7b733a383a22696e7374616e6365223b723a3137383b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f6f726465725f7374617475736573223b613a333a7b733a383a22696e7374616e6365223b723a3138303b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a303a7b7d7d733a31363a2261646d696e2f73797374656d2f617069223b613a333a7b733a383a22696e7374616e6365223b723a3138323b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a373a7b733a32323a2261646d696e2f73797374656d2f6170692f7573657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73797374656d2f6170692f7573657273223b7d733a32323a2261646d696e2f73797374656d2f6170692f726f6c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73797374656d2f6170692f726f6c6573223b7d733a32353a2261646d696e2f73797374656d2f6170692f636f6e73756d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f6170692f636f6e73756d6572223b7d733a33333a2261646d696e2f73797374656d2f6170692f617574686f72697a6564546f6b656e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73797374656d2f6170692f617574686f72697a6564546f6b656e73223b7d733a33343a2261646d696e2f73797374656d2f6170692f6f617574685f61646d696e5f746f6b656e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33343a2261646d696e2f73797374656d2f6170692f6f617574685f61646d696e5f746f6b656e223b7d733a32373a2261646d696e2f73797374656d2f6170692f726573745f726f6c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f6170692f726573745f726f6c6573223b7d733a33323a2261646d696e2f73797374656d2f6170692f726573745f61747472696275746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73797374656d2f6170692f726573745f61747472696275746573223b7d7d7d733a32323a2261646d696e2f73797374656d2f6170692f7573657273223b613a333a7b733a383a22696e7374616e6365223b723a3537383b733a363a22706172656e74223b723a3138323b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f73797374656d2f6170692f726f6c6573223b613a333a7b733a383a22696e7374616e6365223b723a3538303b733a363a22706172656e74223b723a3138323b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f73797374656d2f6170692f636f6e73756d6572223b613a333a7b733a383a22696e7374616e6365223b723a3538323b733a363a22706172656e74223b723a3138323b733a383a226368696c6472656e223b613a323a7b733a33303a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f65646974223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f65646974223b7d733a33323a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f64656c657465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f64656c657465223b7d7d7d733a33303a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f65646974223b613a333a7b733a383a22696e7374616e6365223b723a3630343b733a363a22706172656e74223b723a3538323b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f64656c657465223b613a333a7b733a383a22696e7374616e6365223b723a3630363b733a363a22706172656e74223b723a3538323b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73797374656d2f6170692f617574686f72697a6564546f6b656e73223b613a333a7b733a383a22696e7374616e6365223b723a3538343b733a363a22706172656e74223b723a3138323b733a383a226368696c6472656e223b613a303a7b7d7d733a33343a2261646d696e2f73797374656d2f6170692f6f617574685f61646d696e5f746f6b656e223b613a333a7b733a383a22696e7374616e6365223b723a3538363b733a363a22706172656e74223b723a3138323b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f6170692f726573745f726f6c6573223b613a333a7b733a383a22696e7374616e6365223b723a3538383b733a363a22706172656e74223b723a3138323b733a383a226368696c6472656e223b613a333a7b733a33313a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f616464223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f616464223b7d733a33323a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f65646974223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f65646974223b7d733a33343a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f64656c657465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33343a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f64656c657465223b7d7d7d733a33313a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f616464223b613a333a7b733a383a22696e7374616e6365223b723a3632383b733a363a22706172656e74223b723a3538383b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f65646974223b613a333a7b733a383a22696e7374616e6365223b723a3633303b733a363a22706172656e74223b723a3538383b733a383a226368696c6472656e223b613a303a7b7d7d733a33343a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f64656c657465223b613a333a7b733a383a22696e7374616e6365223b723a3633323b733a363a22706172656e74223b723a3538383b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73797374656d2f6170692f726573745f61747472696275746573223b613a333a7b733a383a22696e7374616e6365223b723a3539303b733a363a22706172656e74223b723a3138323b733a383a226368696c6472656e223b613a313a7b733a33373a2261646d696e2f73797374656d2f6170692f726573745f617474726962757465732f65646974223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33373a2261646d696e2f73797374656d2f6170692f726573745f617474726962757465732f65646974223b7d7d7d733a33373a2261646d696e2f73797374656d2f6170692f726573745f617474726962757465732f65646974223b613a333a7b733a383a22696e7374616e6365223b723a3635303b733a363a22706172656e74223b723a3539303b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f676c6f62616c5f736561726368223b613a333a7b733a383a22696e7374616e6365223b723a3132343b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a303a7b7d7d733a393a2261646d696e2f636d73223b613a333a7b733a383a22696e7374616e6365223b723a3132363b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a353a7b733a31353a2261646d696e2f636d732f626c6f636b223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31353a2261646d696e2f636d732f626c6f636b223b7d733a31343a2261646d696e2f636d732f70616765223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31343a2261646d696e2f636d732f70616765223b7d733a32333a2261646d696e2f636d732f6d656469615f67616c6c657279223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f636d732f6d656469615f67616c6c657279223b7d733a31343a2261646d696e2f636d732f706f6c6c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31343a2261646d696e2f636d732f706f6c6c223b7d733a32353a2261646d696e2f636d732f7769646765745f696e7374616e6365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f636d732f7769646765745f696e7374616e6365223b7d7d7d733a31353a2261646d696e2f636d732f626c6f636b223b613a333a7b733a383a22696e7374616e6365223b723a3636343b733a363a22706172656e74223b723a3132363b733a383a226368696c6472656e223b613a303a7b7d7d733a31343a2261646d696e2f636d732f70616765223b613a333a7b733a383a22696e7374616e6365223b723a3636363b733a363a22706172656e74223b723a3132363b733a383a226368696c6472656e223b613a323a7b733a31393a2261646d696e2f636d732f706167652f73617665223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f636d732f706167652f73617665223b7d733a32313a2261646d696e2f636d732f706167652f64656c657465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f636d732f706167652f64656c657465223b7d7d7d733a31393a2261646d696e2f636d732f706167652f73617665223b613a333a7b733a383a22696e7374616e6365223b723a3638323b733a363a22706172656e74223b723a3636363b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f636d732f706167652f64656c657465223b613a333a7b733a383a22696e7374616e6365223b723a3638343b733a363a22706172656e74223b723a3636363b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f636d732f6d656469615f67616c6c657279223b613a333a7b733a383a22696e7374616e6365223b723a3636383b733a363a22706172656e74223b723a3132363b733a383a226368696c6472656e223b613a303a7b7d7d733a31343a2261646d696e2f636d732f706f6c6c223b613a333a7b733a383a22696e7374616e6365223b723a3637303b733a363a22706172656e74223b723a3132363b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f636d732f7769646765745f696e7374616e6365223b613a333a7b733a383a22696e7374616e6365223b723a3637323b733a363a22706172656e74223b723a3132363b733a383a226368696c6472656e223b613a303a7b7d7d733a31343a2261646d696e2f637573746f6d6572223b613a333a7b733a383a22696e7374616e6365223b723a3132383b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a333a7b733a32303a2261646d696e2f637573746f6d65722f67726f7570223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32303a2261646d696e2f637573746f6d65722f67726f7570223b7d733a32313a2261646d696e2f637573746f6d65722f6d616e616765223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f637573746f6d65722f6d616e616765223b7d733a32313a2261646d696e2f637573746f6d65722f6f6e6c696e65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f637573746f6d65722f6f6e6c696e65223b7d7d7d733a32303a2261646d696e2f637573746f6d65722f67726f7570223b613a333a7b733a383a22696e7374616e6365223b723a3731303b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f637573746f6d65722f6d616e616765223b613a333a7b733a383a22696e7374616e6365223b723a3731323b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f637573746f6d65722f6f6e6c696e65223b613a333a7b733a383a22696e7374616e6365223b723a3731343b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a303a7b7d7d733a31333a2261646d696e2f636174616c6f67223b613a333a7b733a383a22696e7374616e6365223b723a3133303b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a31303a7b733a32343a2261646d696e2f636174616c6f672f61747472696275746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f636174616c6f672f61747472696275746573223b7d733a32343a2261646d696e2f636174616c6f672f63617465676f72696573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f636174616c6f672f63617465676f72696573223b7d733a32323a2261646d696e2f636174616c6f672f70726f6475637473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f636174616c6f672f70726f6475637473223b7d733a33313a2261646d696e2f636174616c6f672f7570646174655f61747472696275746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f636174616c6f672f7570646174655f61747472696275746573223b7d733a32343a2261646d696e2f636174616c6f672f75726c72657772697465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f636174616c6f672f75726c72657772697465223b7d733a32303a2261646d696e2f636174616c6f672f736561726368223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32303a2261646d696e2f636174616c6f672f736561726368223b7d733a32393a2261646d696e2f636174616c6f672f726576696577735f726174696e6773223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f636174616c6f672f726576696577735f726174696e6773223b7d733a31373a2261646d696e2f636174616c6f672f746167223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31373a2261646d696e2f636174616c6f672f746167223b7d733a32313a2261646d696e2f636174616c6f672f736974656d6170223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f636174616c6f672f736974656d6170223b7d733a33303a2261646d696e2f636174616c6f672f73696e7461785f61646d696e666f726d223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f636174616c6f672f73696e7461785f61646d696e666f726d223b7d7d7d733a32343a2261646d696e2f636174616c6f672f61747472696275746573223b613a333a7b733a383a22696e7374616e6365223b723a3733323b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a323a7b733a33353a2261646d696e2f636174616c6f672f617474726962757465732f61747472696275746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33353a2261646d696e2f636174616c6f672f617474726962757465732f61747472696275746573223b7d733a32393a2261646d696e2f636174616c6f672f617474726962757465732f73657473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f636174616c6f672f617474726962757465732f73657473223b7d7d7d733a33353a2261646d696e2f636174616c6f672f617474726962757465732f61747472696275746573223b613a333a7b733a383a22696e7374616e6365223b723a3735363b733a363a22706172656e74223b723a3733323b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f636174616c6f672f617474726962757465732f73657473223b613a333a7b733a383a22696e7374616e6365223b723a3735383b733a363a22706172656e74223b723a3733323b733a383a226368696c6472656e223b613a303a7b7d7d733a32343a2261646d696e2f636174616c6f672f63617465676f72696573223b613a333a7b733a383a22696e7374616e6365223b723a3733343b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f636174616c6f672f70726f6475637473223b613a333a7b733a383a22696e7374616e6365223b723a3733363b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f636174616c6f672f7570646174655f61747472696275746573223b613a333a7b733a383a22696e7374616e6365223b723a3733383b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a303a7b7d7d733a32343a2261646d696e2f636174616c6f672f75726c72657772697465223b613a333a7b733a383a22696e7374616e6365223b723a3734303b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a303a7b7d7d733a32303a2261646d696e2f636174616c6f672f736561726368223b613a333a7b733a383a22696e7374616e6365223b723a3734323b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f636174616c6f672f726576696577735f726174696e6773223b613a333a7b733a383a22696e7374616e6365223b723a3734343b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a323a7b733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f72657669657773223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f72657669657773223b7d733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726174696e6773223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726174696e6773223b7d7d7d733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f72657669657773223b613a333a7b733a383a22696e7374616e6365223b723a3739323b733a363a22706172656e74223b723a3734343b733a383a226368696c6472656e223b613a323a7b733a34313a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f616c6c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34313a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f616c6c223b7d733a34353a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f70656e64696e67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34353a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f70656e64696e67223b7d7d7d733a34313a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f616c6c223b613a333a7b733a383a22696e7374616e6365223b723a3830303b733a363a22706172656e74223b723a3739323b733a383a226368696c6472656e223b613a303a7b7d7d733a34353a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f70656e64696e67223b613a333a7b733a383a22696e7374616e6365223b723a3830323b733a363a22706172656e74223b723a3739323b733a383a226368696c6472656e223b613a303a7b7d7d733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726174696e6773223b613a333a7b733a383a22696e7374616e6365223b723a3739343b733a363a22706172656e74223b723a3734343b733a383a226368696c6472656e223b613a303a7b7d7d733a31373a2261646d696e2f636174616c6f672f746167223b613a333a7b733a383a22696e7374616e6365223b723a3734363b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a323a7b733a32313a2261646d696e2f636174616c6f672f7461672f616c6c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f636174616c6f672f7461672f616c6c223b7d733a32353a2261646d696e2f636174616c6f672f7461672f70656e64696e67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f636174616c6f672f7461672f70656e64696e67223b7d7d7d733a32313a2261646d696e2f636174616c6f672f7461672f616c6c223b613a333a7b733a383a22696e7374616e6365223b723a3832303b733a363a22706172656e74223b723a3734363b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f636174616c6f672f7461672f70656e64696e67223b613a333a7b733a383a22696e7374616e6365223b723a3832323b733a363a22706172656e74223b723a3734363b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f636174616c6f672f736974656d6170223b613a333a7b733a383a22696e7374616e6365223b723a3734383b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f636174616c6f672f73696e7461785f61646d696e666f726d223b613a333a7b733a383a22696e7374616e6365223b723a3735303b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a303a7b7d7d733a31313a2261646d696e2f70726f6d6f223b613a333a7b733a383a22696e7374616e6365223b723a3133323b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a323a7b733a31393a2261646d696e2f70726f6d6f2f636174616c6f67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f70726f6d6f2f636174616c6f67223b7d733a31373a2261646d696e2f70726f6d6f2f71756f7465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31373a2261646d696e2f70726f6d6f2f71756f7465223b7d7d7d733a31393a2261646d696e2f70726f6d6f2f636174616c6f67223b613a333a7b733a383a22696e7374616e6365223b723a3834343b733a363a22706172656e74223b723a3133323b733a383a226368696c6472656e223b613a303a7b7d7d733a31373a2261646d696e2f70726f6d6f2f71756f7465223b613a333a7b733a383a22696e7374616e6365223b723a3834363b733a363a22706172656e74223b723a3133323b733a383a226368696c6472656e223b613a303a7b7d7d733a31313a2261646d696e2f73616c6573223b613a333a7b733a383a22696e7374616e6365223b723a3133343b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a393a7b733a31373a2261646d696e2f73616c65732f6f72646572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31373a2261646d696e2f73616c65732f6f72646572223b7d733a31393a2261646d696e2f73616c65732f696e766f696365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f73616c65732f696e766f696365223b7d733a32303a2261646d696e2f73616c65732f736869706d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32303a2261646d696e2f73616c65732f736869706d656e74223b7d733a32323a2261646d696e2f73616c65732f6372656469746d656d6f223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73616c65732f6372656469746d656d6f223b7d733a32343a2261646d696e2f73616c65732f7472616e73616374696f6e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f73616c65732f7472616e73616374696f6e73223b7d733a32393a2261646d696e2f73616c65732f726563757272696e675f70726f66696c65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73616c65732f726563757272696e675f70726f66696c65223b7d733a32393a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e74223b7d733a32393a2261646d696e2f73616c65732f636865636b6f757461677265656d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73616c65732f636865636b6f757461677265656d656e74223b7d733a31353a2261646d696e2f73616c65732f746178223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31353a2261646d696e2f73616c65732f746178223b7d7d7d733a31373a2261646d696e2f73616c65732f6f72646572223b613a333a7b733a383a22696e7374616e6365223b723a3836303b733a363a22706172656e74223b723a3133343b733a383a226368696c6472656e223b613a313a7b733a32353a2261646d696e2f73616c65732f6f726465722f616374696f6e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73616c65732f6f726465722f616374696f6e73223b7d7d7d733a32353a2261646d696e2f73616c65732f6f726465722f616374696f6e73223b613a333a7b733a383a22696e7374616e6365223b723a3838323b733a363a22706172656e74223b723a3836303b733a383a226368696c6472656e223b613a31353a7b733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f637265617465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f637265617465223b7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f76696577223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f76696577223b7d733a33313a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c223b7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f72656f72646572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f72656f72646572223b7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f65646974223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f65646974223b7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63616e63656c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63616e63656c223b7d733a34303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f7265766965775f7061796d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f7265766965775f7061796d656e74223b7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63617074757265223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63617074757265223b7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f696e766f696365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f696e766f696365223b7d733a33363a2261646d696e2f73616c65732f6f726465722f616374696f6e732f6372656469746d656d6f223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33363a2261646d696e2f73616c65732f6f726465722f616374696f6e732f6372656469746d656d6f223b7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f686f6c64223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f686f6c64223b7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f756e686f6c64223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f756e686f6c64223b7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f73686970223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f73686970223b7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f636f6d6d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f636f6d6d656e74223b7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c73223b7d7d7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f637265617465223b613a333a7b733a383a22696e7374616e6365223b723a3838383b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f76696577223b613a333a7b733a383a22696e7374616e6365223b723a3839303b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c223b613a333a7b733a383a22696e7374616e6365223b723a3839323b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f72656f72646572223b613a333a7b733a383a22696e7374616e6365223b723a3839343b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f65646974223b613a333a7b733a383a22696e7374616e6365223b723a3839363b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63616e63656c223b613a333a7b733a383a22696e7374616e6365223b723a3839383b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a34303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f7265766965775f7061796d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3930303b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63617074757265223b613a333a7b733a383a22696e7374616e6365223b723a3930323b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f696e766f696365223b613a333a7b733a383a22696e7374616e6365223b723a3930343b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33363a2261646d696e2f73616c65732f6f726465722f616374696f6e732f6372656469746d656d6f223b613a333a7b733a383a22696e7374616e6365223b723a3930363b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f686f6c64223b613a333a7b733a383a22696e7374616e6365223b723a3930383b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f756e686f6c64223b613a333a7b733a383a22696e7374616e6365223b723a3931303b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f73686970223b613a333a7b733a383a22696e7374616e6365223b723a3931323b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f636f6d6d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3931343b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c73223b613a333a7b733a383a22696e7374616e6365223b723a3931363b733a363a22706172656e74223b723a3838323b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f73616c65732f696e766f696365223b613a333a7b733a383a22696e7374616e6365223b723a3836323b733a363a22706172656e74223b723a3133343b733a383a226368696c6472656e223b613a303a7b7d7d733a32303a2261646d696e2f73616c65732f736869706d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3836343b733a363a22706172656e74223b723a3133343b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f73616c65732f6372656469746d656d6f223b613a333a7b733a383a22696e7374616e6365223b723a3836363b733a363a22706172656e74223b723a3133343b733a383a226368696c6472656e223b613a303a7b7d7d733a32343a2261646d696e2f73616c65732f7472616e73616374696f6e73223b613a333a7b733a383a22696e7374616e6365223b723a3836383b733a363a22706172656e74223b723a3133343b733a383a226368696c6472656e223b613a313a7b733a33303a2261646d696e2f73616c65732f7472616e73616374696f6e732f6665746368223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73616c65732f7472616e73616374696f6e732f6665746368223b7d7d7d733a33303a2261646d696e2f73616c65732f7472616e73616374696f6e732f6665746368223b613a333a7b733a383a22696e7374616e6365223b723a3939343b733a363a22706172656e74223b723a3836383b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73616c65732f726563757272696e675f70726f66696c65223b613a333a7b733a383a22696e7374616e6365223b723a3837303b733a363a22706172656e74223b723a3133343b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3837323b733a363a22706172656e74223b723a3133343b733a383a226368696c6472656e223b613a313a7b733a33373a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33373a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e73223b7d7d7d733a33373a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e73223b613a333a7b733a383a22696e7374616e6365223b723a313030383b733a363a22706172656e74223b723a3837323b733a383a226368696c6472656e223b613a333a7b733a34323a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f76696577223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34323a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f76696577223b7d733a34343a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f6d616e616765223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34343a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f6d616e616765223b7d733a34313a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f757365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34313a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f757365223b7d7d7d733a34323a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f76696577223b613a333a7b733a383a22696e7374616e6365223b723a313031343b733a363a22706172656e74223b723a313030383b733a383a226368696c6472656e223b613a303a7b7d7d733a34343a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f6d616e616765223b613a333a7b733a383a22696e7374616e6365223b723a313031363b733a363a22706172656e74223b723a313030383b733a383a226368696c6472656e223b613a303a7b7d7d733a34313a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f757365223b613a333a7b733a383a22696e7374616e6365223b723a313031383b733a363a22706172656e74223b723a313030383b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73616c65732f636865636b6f757461677265656d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3837343b733a363a22706172656e74223b723a3133343b733a383a226368696c6472656e223b613a303a7b7d7d733a31353a2261646d696e2f73616c65732f746178223b613a333a7b733a383a22696e7374616e6365223b723a3837363b733a363a22706172656e74223b723a3133343b733a383a226368696c6472656e223b613a353a7b733a33323a2261646d696e2f73616c65732f7461782f636c61737365735f637573746f6d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73616c65732f7461782f636c61737365735f637573746f6d6572223b7d733a33313a2261646d696e2f73616c65732f7461782f636c61737365735f70726f64756374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f73616c65732f7461782f636c61737365735f70726f64756374223b7d733a32393a2261646d696e2f73616c65732f7461782f696d706f72745f6578706f7274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73616c65732f7461782f696d706f72745f6578706f7274223b7d733a32313a2261646d696e2f73616c65732f7461782f7261746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f73616c65732f7461782f7261746573223b7d733a32313a2261646d696e2f73616c65732f7461782f72756c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f73616c65732f7461782f72756c6573223b7d7d7d733a33323a2261646d696e2f73616c65732f7461782f636c61737365735f637573746f6d6572223b613a333a7b733a383a22696e7374616e6365223b723a313034303b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f73616c65732f7461782f636c61737365735f70726f64756374223b613a333a7b733a383a22696e7374616e6365223b723a313034323b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73616c65732f7461782f696d706f72745f6578706f7274223b613a333a7b733a383a22696e7374616e6365223b723a313034343b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f73616c65732f7461782f7261746573223b613a333a7b733a383a22696e7374616e6365223b723a313034363b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f73616c65732f7461782f72756c6573223b613a333a7b733a383a22696e7374616e6365223b723a313034383b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a31323a2261646d696e2f7265706f7274223b613a333a7b733a383a22696e7374616e6365223b723a3133363b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a383a7b733a32323a2261646d696e2f7265706f72742f73616c6573726f6f74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f7265706f72742f73616c6573726f6f74223b7d733a32313a2261646d696e2f7265706f72742f73686f7063617274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f7265706f72742f73686f7063617274223b7d733a32313a2261646d696e2f7265706f72742f70726f6475637473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f7265706f72742f70726f6475637473223b7d733a32323a2261646d696e2f7265706f72742f637573746f6d657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f7265706f72742f637573746f6d657273223b7d733a31393a2261646d696e2f7265706f72742f726576696577223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f7265706f72742f726576696577223b7d733a31373a2261646d696e2f7265706f72742f74616773223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31373a2261646d696e2f7265706f72742f74616773223b7d733a31393a2261646d696e2f7265706f72742f736561726368223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f7265706f72742f736561726368223b7d733a32333a2261646d696e2f7265706f72742f73746174697374696373223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f7265706f72742f73746174697374696373223b7d7d7d733a32323a2261646d696e2f7265706f72742f73616c6573726f6f74223b613a333a7b733a383a22696e7374616e6365223b723a313037343b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a373a7b733a34383a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f727473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34383a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f727473223b7d733a32383a2261646d696e2f7265706f72742f73616c6573726f6f742f73616c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f7265706f72742f73616c6573726f6f742f73616c6573223b7d733a32363a2261646d696e2f7265706f72742f73616c6573726f6f742f746178223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f7265706f72742f73616c6573726f6f742f746178223b7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f7368697070696e67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f7368697070696e67223b7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f696e766f69636564223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f696e766f69636564223b7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f726566756e646564223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f726566756e646564223b7d733a33303a2261646d696e2f7265706f72742f73616c6573726f6f742f636f75706f6e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f7265706f72742f73616c6573726f6f742f636f75706f6e73223b7d7d7d733a34383a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f727473223b613a333a7b733a383a22696e7374616e6365223b723a313039343b733a363a22706172656e74223b723a313037343b733a383a226368696c6472656e223b613a323a7b733a35333a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f76696577223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a35333a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f76696577223b7d733a35343a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f6665746368223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a35343a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f6665746368223b7d7d7d733a35333a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f76696577223b613a333a7b733a383a22696e7374616e6365223b723a313131323b733a363a22706172656e74223b723a313039343b733a383a226368696c6472656e223b613a303a7b7d7d733a35343a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f6665746368223b613a333a7b733a383a22696e7374616e6365223b723a313131343b733a363a22706172656e74223b723a313039343b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f7265706f72742f73616c6573726f6f742f73616c6573223b613a333a7b733a383a22696e7374616e6365223b723a313039363b733a363a22706172656e74223b723a313037343b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f7265706f72742f73616c6573726f6f742f746178223b613a333a7b733a383a22696e7374616e6365223b723a313039383b733a363a22706172656e74223b723a313037343b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f7368697070696e67223b613a333a7b733a383a22696e7374616e6365223b723a313130303b733a363a22706172656e74223b723a313037343b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f696e766f69636564223b613a333a7b733a383a22696e7374616e6365223b723a313130323b733a363a22706172656e74223b723a313037343b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f726566756e646564223b613a333a7b733a383a22696e7374616e6365223b723a313130343b733a363a22706172656e74223b723a313037343b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f7265706f72742f73616c6573726f6f742f636f75706f6e73223b613a333a7b733a383a22696e7374616e6365223b723a313130363b733a363a22706172656e74223b723a313037343b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f7265706f72742f73686f7063617274223b613a333a7b733a383a22696e7374616e6365223b723a313037363b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a323a7b733a32393a2261646d696e2f7265706f72742f73686f70636172742f70726f64756374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f7265706f72742f73686f70636172742f70726f64756374223b7d733a33313a2261646d696e2f7265706f72742f73686f70636172742f6162616e646f6e6564223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f73686f70636172742f6162616e646f6e6564223b7d7d7d733a32393a2261646d696e2f7265706f72742f73686f70636172742f70726f64756374223b613a333a7b733a383a22696e7374616e6365223b723a313135323b733a363a22706172656e74223b723a313037363b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f7265706f72742f73686f70636172742f6162616e646f6e6564223b613a333a7b733a383a22696e7374616e6365223b723a313135343b733a363a22706172656e74223b723a313037363b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f7265706f72742f70726f6475637473223b613a333a7b733a383a22696e7374616e6365223b723a313037383b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a353a7b733a33333a2261646d696e2f7265706f72742f70726f64756374732f6265737473656c6c657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f7265706f72742f70726f64756374732f6265737473656c6c657273223b7d733a32363a2261646d696e2f7265706f72742f70726f64756374732f736f6c64223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f7265706f72742f70726f64756374732f736f6c64223b7d733a32383a2261646d696e2f7265706f72742f70726f64756374732f766965776564223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f7265706f72742f70726f64756374732f766965776564223b7d733a33303a2261646d696e2f7265706f72742f70726f64756374732f6c6f7773746f636b223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f7265706f72742f70726f64756374732f6c6f7773746f636b223b7d733a33313a2261646d696e2f7265706f72742f70726f64756374732f646f776e6c6f616473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f70726f64756374732f646f776e6c6f616473223b7d7d7d733a33333a2261646d696e2f7265706f72742f70726f64756374732f6265737473656c6c657273223b613a333a7b733a383a22696e7374616e6365223b723a313136383b733a363a22706172656e74223b723a313037383b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f7265706f72742f70726f64756374732f736f6c64223b613a333a7b733a383a22696e7374616e6365223b723a313137303b733a363a22706172656e74223b723a313037383b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f7265706f72742f70726f64756374732f766965776564223b613a333a7b733a383a22696e7374616e6365223b723a313137323b733a363a22706172656e74223b723a313037383b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f7265706f72742f70726f64756374732f6c6f7773746f636b223b613a333a7b733a383a22696e7374616e6365223b723a313137343b733a363a22706172656e74223b723a313037383b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f7265706f72742f70726f64756374732f646f776e6c6f616473223b613a333a7b733a383a22696e7374616e6365223b723a313137363b733a363a22706172656e74223b723a313037383b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f7265706f72742f637573746f6d657273223b613a333a7b733a383a22696e7374616e6365223b723a313038303b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a333a7b733a33313a2261646d696e2f7265706f72742f637573746f6d6572732f6163636f756e7473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f637573746f6d6572732f6163636f756e7473223b7d733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f746f74616c73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f746f74616c73223b7d733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f6f7264657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f6f7264657273223b7d7d7d733a33313a2261646d696e2f7265706f72742f637573746f6d6572732f6163636f756e7473223b613a333a7b733a383a22696e7374616e6365223b723a313230323b733a363a22706172656e74223b723a313038303b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f746f74616c73223b613a333a7b733a383a22696e7374616e6365223b723a313230343b733a363a22706172656e74223b723a313038303b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f6f7264657273223b613a333a7b733a383a22696e7374616e6365223b723a313230363b733a363a22706172656e74223b723a313038303b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f7265706f72742f726576696577223b613a333a7b733a383a22696e7374616e6365223b723a313038323b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a323a7b733a32383a2261646d696e2f7265706f72742f7265766965772f637573746f6d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f7265706f72742f7265766965772f637573746f6d6572223b7d733a32373a2261646d696e2f7265706f72742f7265766965772f70726f64756374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f7265706f72742f7265766965772f70726f64756374223b7d7d7d733a32383a2261646d696e2f7265706f72742f7265766965772f637573746f6d6572223b613a333a7b733a383a22696e7374616e6365223b723a313232343b733a363a22706172656e74223b723a313038323b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f7265706f72742f7265766965772f70726f64756374223b613a333a7b733a383a22696e7374616e6365223b723a313232363b733a363a22706172656e74223b723a313038323b733a383a226368696c6472656e223b613a303a7b7d7d733a31373a2261646d696e2f7265706f72742f74616773223b613a333a7b733a383a22696e7374616e6365223b723a313038343b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a333a7b733a32363a2261646d696e2f7265706f72742f746167732f637573746f6d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f7265706f72742f746167732f637573746f6d6572223b7d733a32353a2261646d696e2f7265706f72742f746167732f706f70756c6172223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f7265706f72742f746167732f706f70756c6172223b7d733a32353a2261646d696e2f7265706f72742f746167732f70726f64756374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f7265706f72742f746167732f70726f64756374223b7d7d7d733a32363a2261646d696e2f7265706f72742f746167732f637573746f6d6572223b613a333a7b733a383a22696e7374616e6365223b723a313234303b733a363a22706172656e74223b723a313038343b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f7265706f72742f746167732f706f70756c6172223b613a333a7b733a383a22696e7374616e6365223b723a313234323b733a363a22706172656e74223b723a313038343b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f7265706f72742f746167732f70726f64756374223b613a333a7b733a383a22696e7374616e6365223b723a313234343b733a363a22706172656e74223b723a313038343b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f7265706f72742f736561726368223b613a333a7b733a383a22696e7374616e6365223b723a313038363b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f7265706f72742f73746174697374696373223b613a333a7b733a383a22696e7374616e6365223b723a313038383b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a303a7b7d7d733a31363a2261646d696e2f6e6577736c6574746572223b613a333a7b733a383a22696e7374616e6365223b723a3133383b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a343a7b733a32343a2261646d696e2f6e6577736c65747465722f70726f626c656d223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f6e6577736c65747465722f70726f626c656d223b7d733a32323a2261646d696e2f6e6577736c65747465722f7175657565223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f6e6577736c65747465722f7175657565223b7d733a32373a2261646d696e2f6e6577736c65747465722f73756273637269626572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f6e6577736c65747465722f73756273637269626572223b7d733a32353a2261646d696e2f6e6577736c65747465722f74656d706c617465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f6e6577736c65747465722f74656d706c617465223b7d7d7d733a32343a2261646d696e2f6e6577736c65747465722f70726f626c656d223b613a333a7b733a383a22696e7374616e6365223b723a313237303b733a363a22706172656e74223b723a3133383b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f6e6577736c65747465722f7175657565223b613a333a7b733a383a22696e7374616e6365223b723a313237323b733a363a22706172656e74223b723a3133383b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f6e6577736c65747465722f73756273637269626572223b613a333a7b733a383a22696e7374616e6365223b723a313237343b733a363a22706172656e74223b723a3133383b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f6e6577736c65747465722f74656d706c617465223b613a333a7b733a383a22696e7374616e6365223b723a313237363b733a363a22706172656e74223b723a3133383b733a383a226368696c6472656e223b613a303a7b7d7d733a31363a2261646d696e2f706167655f6361636865223b613a333a7b733a383a22696e7374616e6365223b723a3134303b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a303a7b7d7d733a31363a2261646d696e2f786d6c636f6e6e656374223b613a333a7b733a383a22696e7374616e6365223b723a3134323b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a353a7b733a32333a2261646d696e2f786d6c636f6e6e6563742f6d6f62696c65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f786d6c636f6e6e6563742f6d6f62696c65223b7d733a32343a2261646d696e2f786d6c636f6e6e6563742f686973746f7279223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f786d6c636f6e6e6563742f686973746f7279223b7d733a32363a2261646d696e2f786d6c636f6e6e6563742f74656d706c61746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f786d6c636f6e6e6563742f74656d706c61746573223b7d733a32323a2261646d696e2f786d6c636f6e6e6563742f7175657565223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f786d6c636f6e6e6563742f7175657565223b7d733a33303a2261646d696e2f786d6c636f6e6e6563742f61646d696e5f636f6e6e656374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f786d6c636f6e6e6563742f61646d696e5f636f6e6e656374223b7d7d7d733a32333a2261646d696e2f786d6c636f6e6e6563742f6d6f62696c65223b613a333a7b733a383a22696e7374616e6365223b723a313330323b733a363a22706172656e74223b723a3134323b733a383a226368696c6472656e223b613a303a7b7d7d733a32343a2261646d696e2f786d6c636f6e6e6563742f686973746f7279223b613a333a7b733a383a22696e7374616e6365223b723a313330343b733a363a22706172656e74223b723a3134323b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f786d6c636f6e6e6563742f74656d706c61746573223b613a333a7b733a383a22696e7374616e6365223b723a313330363b733a363a22706172656e74223b723a3134323b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f786d6c636f6e6e6563742f7175657565223b613a333a7b733a383a22696e7374616e6365223b723a313330383b733a363a22706172656e74223b723a3134323b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f786d6c636f6e6e6563742f61646d696e5f636f6e6e656374223b613a333a7b733a383a22696e7374616e6365223b723a313331303b733a363a22706172656e74223b723a3134323b733a383a226368696c6472656e223b613a303a7b7d7d7d733a31373a22002a005f6973416c6c6f776564526f6c65223b723a3130323b733a32313a22002a005f6973416c6c6f7765645265736f75726365223b723a3236343b733a32323a22002a005f6973416c6c6f77656450726976696c656765223b4e3b733a393a22002a005f72756c6573223b613a323a7b733a31323a22616c6c5265736f7572636573223b613a323a7b733a383a22616c6c526f6c6573223b613a323a7b733a31333a22616c6c50726976696c65676573223b613a323a7b733a343a2274797065223b733a393a22545950455f44454e59223b733a363a22617373657274223b4e3b7d733a31333a22627950726976696c6567654964223b613a303a7b7d7d733a383a226279526f6c654964223b613a313a7b733a323a224731223b613a323a7b733a31333a22627950726976696c6567654964223b613a303a7b7d733a31333a22616c6c50726976696c65676573223b613a323a7b733a343a2274797065223b733a31303a22545950455f414c4c4f57223b733a363a22617373657274223b4e3b7d7d7d7d733a31323a2262795265736f757263654964223b613a313a7b733a333a22616c6c223b613a313a7b733a383a226279526f6c654964223b613a313a7b733a323a224731223b613a323a7b733a31333a22627950726976696c6567654964223b613a303a7b7d733a31333a22616c6c50726976696c65676573223b613a323a7b733a343a2274797065223b733a31303a22545950455f414c4c4f57223b733a363a22617373657274223b4e3b7d7d7d7d7d7d7d7d);
INSERT INTO `mgnto_core_session` (`session_id`, `session_expires`, `session_data`) VALUES
('ivo341h0o6cgtq59bguhh2vag4', 1383200888, 0x636f72657c613a343a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a393a225f666f726d5f6b6579223b733a31363a22324e6561466c586d7564396f42706e55223b733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d7d61646d696e68746d6c7c613a343a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a363a226c6f63616c65223b733a353a22656e5f5553223b733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d7d61646d696e7c613a353a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a32333a2273796e635f70726f636573735f73746f705f7761746368223b623a303b733a343a2275736572223b4f3a32313a224d6167655f41646d696e5f4d6f64656c5f55736572223a31373a7b733a31353a22002a005f6576656e74507265666978223b733a31303a2261646d696e5f75736572223b733a383a22002a005f726f6c65223b4e3b733a32353a22002a005f686173417661696c61626c655265736f7572636573223b623a313b733a31353a22002a005f6576656e744f626a656374223b733a363a226f626a656374223b733a31363a22002a005f7265736f757263654e616d65223b733a31303a2261646d696e2f75736572223b733a31323a22002a005f7265736f75726365223b4e3b733a32363a22002a005f7265736f75726365436f6c6c656374696f6e4e616d65223b733a32313a2261646d696e2f757365725f636f6c6c656374696f6e223b733a31323a22002a005f6361636865546167223b623a303b733a31393a22002a005f6461746153617665416c6c6f776564223b623a313b733a31353a22002a005f69734f626a6563744e6577223b4e3b733a383a22002a005f64617461223b613a31353a7b733a373a22757365725f6964223b733a313a2231223b733a393a2266697273746e616d65223b733a363a2244656570616b223b733a383a226c6173746e616d65223b733a363a224d6f6b74616e223b733a353a22656d61696c223b733a32313a22646d6f6b74616e406c6573746572696e632e636f6d223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a383a2270617373776f7264223b733a36353a2235643037313337356366343866306435323339353439646632323830336532303a41596977586854624a6656554e50495748554f6437696172566e464369714c4b223b733a373a2263726561746564223b733a31393a22323031332d31302d31392030373a31363a3131223b733a383a226d6f646966696564223b733a31393a22323031332d31302d31392030373a31363a3131223b733a373a226c6f6764617465223b733a31393a22323031332d31302d33312030363a30333a3132223b733a363a226c6f676e756d223b733a323a223238223b733a31353a2272656c6f61645f61636c5f666c6167223b733a313a2230223b733a393a2269735f616374697665223b733a313a2231223b733a353a226578747261223b613a313a7b733a31313a22636f6e6669675374617465223b613a323a7b733a33313a22616476616e6365645f6d6f64756c65735f64697361626c655f6f7574707574223b733a313a2231223b733a32353a2265636172645f73656374696f6e5f65636172645f67726f7570223b733a313a2231223b7d7d733a383a2272705f746f6b656e223b4e3b733a31393a2272705f746f6b656e5f637265617465645f6174223b4e3b7d733a31383a22002a005f686173446174614368616e676573223b623a303b733a31323a22002a005f6f72696744617461223b613a31353a7b733a373a22757365725f6964223b733a313a2231223b733a393a2266697273746e616d65223b733a363a2244656570616b223b733a383a226c6173746e616d65223b733a363a224d6f6b74616e223b733a353a22656d61696c223b733a32313a22646d6f6b74616e406c6573746572696e632e636f6d223b733a383a22757365726e616d65223b733a353a2261646d696e223b733a383a2270617373776f7264223b733a36353a2235643037313337356366343866306435323339353439646632323830336532303a41596977586854624a6656554e50495748554f6437696172566e464369714c4b223b733a373a2263726561746564223b733a31393a22323031332d31302d31392030373a31363a3131223b733a383a226d6f646966696564223b733a31393a22323031332d31302d31392030373a31363a3131223b733a373a226c6f6764617465223b733a31393a22323031332d31302d33312030363a30333a3132223b733a363a226c6f676e756d223b733a323a223238223b733a31353a2272656c6f61645f61636c5f666c6167223b733a313a2230223b733a393a2269735f616374697665223b733a313a2231223b733a353a226578747261223b613a313a7b733a31313a22636f6e6669675374617465223b613a323a7b733a33313a22616476616e6365645f6d6f64756c65735f64697361626c655f6f7574707574223b733a313a2231223b733a32353a2265636172645f73656374696f6e5f65636172645f67726f7570223b733a313a2231223b7d7d733a383a2272705f746f6b656e223b4e3b733a31393a2272705f746f6b656e5f637265617465645f6174223b4e3b7d733a31353a22002a005f69644669656c644e616d65223b733a373a22757365725f6964223b733a31333a22002a005f697344656c65746564223b623a303b733a31363a22002a005f6f6c644669656c64734d6170223b613a303a7b7d733a31373a22002a005f73796e634669656c64734d6170223b613a303a7b7d7d733a333a2261636c223b4f3a32303a224d6167655f41646d696e5f4d6f64656c5f41636c223a363a7b733a31363a22002a005f726f6c655265676973747279223b4f3a33343a224d6167655f41646d696e5f4d6f64656c5f41636c5f526f6c655f5265676973747279223a313a7b733a393a22002a005f726f6c6573223b613a323a7b733a323a224731223b613a333a7b733a383a22696e7374616e6365223b4f3a33313a224d6167655f41646d696e5f4d6f64656c5f41636c5f526f6c655f47726f7570223a313a7b733a31303a22002a005f726f6c654964223b733a323a224731223b7d733a373a22706172656e7473223b613a303a7b7d733a383a226368696c6472656e223b613a313a7b733a323a225531223b4f3a33303a224d6167655f41646d696e5f4d6f64656c5f41636c5f526f6c655f55736572223a313a7b733a31303a22002a005f726f6c654964223b733a323a225531223b7d7d7d733a323a225531223b613a333a7b733a383a22696e7374616e6365223b723a39363b733a373a22706172656e7473223b613a313a7b733a323a224731223b723a39323b7d733a383a226368696c6472656e223b613a303a7b7d7d7d7d733a31333a22002a005f7265736f7572636573223b613a3230343a7b733a333a22616c6c223b613a333a7b733a383a22696e7374616e6365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a333a22616c6c223b7d733a363a22706172656e74223b4e3b733a383a226368696c6472656e223b613a303a7b7d7d733a353a2261646d696e223b613a333a7b733a383a22696e7374616e6365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a353a2261646d696e223b7d733a363a22706172656e74223b4e3b733a383a226368696c6472656e223b613a31323a7b733a31353a2261646d696e2f64617368626f617264223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31353a2261646d696e2f64617368626f617264223b7d733a31323a2261646d696e2f73797374656d223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31323a2261646d696e2f73797374656d223b7d733a31393a2261646d696e2f676c6f62616c5f736561726368223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f676c6f62616c5f736561726368223b7d733a393a2261646d696e2f636d73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a393a2261646d696e2f636d73223b7d733a31343a2261646d696e2f637573746f6d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31343a2261646d696e2f637573746f6d6572223b7d733a31333a2261646d696e2f636174616c6f67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31333a2261646d696e2f636174616c6f67223b7d733a31313a2261646d696e2f70726f6d6f223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31313a2261646d696e2f70726f6d6f223b7d733a31313a2261646d696e2f73616c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31313a2261646d696e2f73616c6573223b7d733a31323a2261646d696e2f7265706f7274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31323a2261646d696e2f7265706f7274223b7d733a31363a2261646d696e2f6e6577736c6574746572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31363a2261646d696e2f6e6577736c6574746572223b7d733a31363a2261646d696e2f706167655f6361636865223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31363a2261646d696e2f706167655f6361636865223b7d733a31363a2261646d696e2f786d6c636f6e6e656374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31363a2261646d696e2f786d6c636f6e6e656374223b7d7d7d733a31353a2261646d696e2f64617368626f617264223b613a333a7b733a383a22696e7374616e6365223b723a3131343b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a303a7b7d7d733a31323a2261646d696e2f73797374656d223b613a333a7b733a383a22696e7374616e6365223b723a3131363b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a31363a7b733a31363a2261646d696e2f73797374656d2f61636c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31363a2261646d696e2f73797374656d2f61636c223b7d733a31383a2261646d696e2f73797374656d2f73746f7265223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31383a2261646d696e2f73797374656d2f73746f7265223b7d733a31393a2261646d696e2f73797374656d2f64657369676e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f73797374656d2f64657369676e223b7d733a31393a2261646d696e2f73797374656d2f636f6e666967223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f73797374656d2f636f6e666967223b7d733a32313a2261646d696e2f73797374656d2f63757272656e6379223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f73797374656d2f63757272656e6379223b7d733a32373a2261646d696e2f73797374656d2f656d61696c5f74656d706c617465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f656d61696c5f74656d706c617465223b7d733a32313a2261646d696e2f73797374656d2f7661726961626c65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f73797374656d2f7661726961626c65223b7d733a32323a2261646d696e2f73797374656d2f6d796163636f756e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73797374656d2f6d796163636f756e74223b7d733a31383a2261646d696e2f73797374656d2f746f6f6c73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31383a2261646d696e2f73797374656d2f746f6f6c73223b7d733a32303a2261646d696e2f73797374656d2f636f6e76657274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32303a2261646d696e2f73797374656d2f636f6e76657274223b7d733a31383a2261646d696e2f73797374656d2f6361636865223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31383a2261646d696e2f73797374656d2f6361636865223b7d733a32333a2261646d696e2f73797374656d2f657874656e73696f6e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f657874656e73696f6e73223b7d733a33303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e223b7d733a31383a2261646d696e2f73797374656d2f696e646578223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31383a2261646d696e2f73797374656d2f696e646578223b7d733a32373a2261646d696e2f73797374656d2f6f726465725f7374617475736573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f6f726465725f7374617475736573223b7d733a31363a2261646d696e2f73797374656d2f617069223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31363a2261646d696e2f73797374656d2f617069223b7d7d7d733a31363a2261646d696e2f73797374656d2f61636c223b613a333a7b733a383a22696e7374616e6365223b723a3134363b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a323a7b733a32323a2261646d696e2f73797374656d2f61636c2f726f6c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73797374656d2f61636c2f726f6c6573223b7d733a32323a2261646d696e2f73797374656d2f61636c2f7573657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73797374656d2f61636c2f7573657273223b7d7d7d733a32323a2261646d696e2f73797374656d2f61636c2f726f6c6573223b613a333a7b733a383a22696e7374616e6365223b723a3138323b733a363a22706172656e74223b723a3134363b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f73797374656d2f61636c2f7573657273223b613a333a7b733a383a22696e7374616e6365223b723a3138343b733a363a22706172656e74223b723a3134363b733a383a226368696c6472656e223b613a303a7b7d7d733a31383a2261646d696e2f73797374656d2f73746f7265223b613a333a7b733a383a22696e7374616e6365223b723a3134383b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f73797374656d2f64657369676e223b613a333a7b733a383a22696e7374616e6365223b723a3135303b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f73797374656d2f636f6e666967223b613a333a7b733a383a22696e7374616e6365223b723a3135323b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a33383a7b733a32373a2261646d696e2f73797374656d2f636f6e6669672f67656e6572616c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e6669672f67656e6572616c223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f776562223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f776562223b7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f64657369676e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f73797374656d2f636f6e6669672f64657369676e223b7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f73797374656d223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f73797374656d2f636f6e6669672f73797374656d223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f616476616e636564223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f616476616e636564223b7d733a33313a2261646d696e2f73797374656d2f636f6e6669672f7472616e735f656d61696c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f73797374656d2f636f6e6669672f7472616e735f656d61696c223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f646576223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f646576223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f63757272656e6379223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f63757272656e6379223b7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f73656e64667269656e64223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f636f6e6669672f73656e64667269656e64223b7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f61646d696e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f636f6e6669672f61646d696e223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f636d73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f636d73223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f637573746f6d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f637573746f6d6572223b7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67223b7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e74223b7d733a33363a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e745f7365727669636573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33363a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e745f7365727669636573223b7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f73616c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f636f6e6669672f73616c6573223b7d733a33313a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f656d61696c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f656d61696c223b7d733a32393a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f706466223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f706466223b7d733a33363a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67696e76656e746f7279223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33363a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67696e76656e746f7279223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f7368697070696e67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f7368697070696e67223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f6361727269657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f6361727269657273223b7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f70726f6d6f223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f636f6e6669672f70726f6d6f223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f636865636b6f7574223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f636865636b6f7574223b7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f70617970616c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f73797374656d2f636f6e6669672f70617970616c223b7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f676f6f676c65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f73797374656d2f636f6e6669672f676f6f676c65223b7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f7265706f727473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e6669672f7265706f727473223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f746178223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f746178223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f776973686c697374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f776973686c697374223b7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f636f6e7461637473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f73797374656d2f636f6e6669672f636f6e7461637473223b7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f736974656d6170223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e6669672f736974656d6170223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f727373223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f727373223b7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f617069223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f73797374656d2f636f6e6669672f617069223b7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f6f61757468223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f636f6e6669672f6f61757468223b7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f6e6577736c6574746572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f636f6e6669672f6e6577736c6574746572223b7d733a33323a2261646d696e2f73797374656d2f636f6e6669672f646f776e6c6f616461626c65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73797374656d2f636f6e6669672f646f776e6c6f616461626c65223b7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f70657273697374656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f636f6e6669672f70657273697374656e74223b7d733a33333a2261646d696e2f73797374656d2f636f6e6669672f65636172645f73656374696f6e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73797374656d2f636f6e6669672f65636172645f73656374696f6e223b7d733a33323a2261646d696e2f73797374656d2f636f6e6669672f6d6f6e6579626f6f6b657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73797374656d2f636f6e6669672f6d6f6e6579626f6f6b657273223b7d7d7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f67656e6572616c223b613a333a7b733a383a22696e7374616e6365223b723a3230363b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f776562223b613a333a7b733a383a22696e7374616e6365223b723a3230383b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f64657369676e223b613a333a7b733a383a22696e7374616e6365223b723a3231303b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f73797374656d223b613a333a7b733a383a22696e7374616e6365223b723a3231323b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f616476616e636564223b613a333a7b733a383a22696e7374616e6365223b723a3231343b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f73797374656d2f636f6e6669672f7472616e735f656d61696c223b613a333a7b733a383a22696e7374616e6365223b723a3231363b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f646576223b613a333a7b733a383a22696e7374616e6365223b723a3231383b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f63757272656e6379223b613a333a7b733a383a22696e7374616e6365223b723a3232303b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f73656e64667269656e64223b613a333a7b733a383a22696e7374616e6365223b723a3232323b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f61646d696e223b613a333a7b733a383a22696e7374616e6365223b723a3232343b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f636d73223b613a333a7b733a383a22696e7374616e6365223b723a3232363b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f637573746f6d6572223b613a333a7b733a383a22696e7374616e6365223b723a3232383b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67223b613a333a7b733a383a22696e7374616e6365223b723a3233303b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3233323b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a33363a2261646d696e2f73797374656d2f636f6e6669672f7061796d656e745f7365727669636573223b613a333a7b733a383a22696e7374616e6365223b723a3233343b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f73616c6573223b613a333a7b733a383a22696e7374616e6365223b723a3233363b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f656d61696c223b613a333a7b733a383a22696e7374616e6365223b723a3233383b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73797374656d2f636f6e6669672f73616c65735f706466223b613a333a7b733a383a22696e7374616e6365223b723a3234303b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a33363a2261646d696e2f73797374656d2f636f6e6669672f636174616c6f67696e76656e746f7279223b613a333a7b733a383a22696e7374616e6365223b723a3234323b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f7368697070696e67223b613a333a7b733a383a22696e7374616e6365223b723a3234343b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f6361727269657273223b613a333a7b733a383a22696e7374616e6365223b723a3234363b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f70726f6d6f223b613a333a7b733a383a22696e7374616e6365223b723a3234383b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f636865636b6f7574223b613a333a7b733a383a22696e7374616e6365223b723a3235303b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f70617970616c223b613a333a7b733a383a22696e7374616e6365223b723a3235323b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f73797374656d2f636f6e6669672f676f6f676c65223b613a333a7b733a383a22696e7374616e6365223b723a3235343b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f7265706f727473223b613a333a7b733a383a22696e7374616e6365223b723a3235363b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f746178223b613a333a7b733a383a22696e7374616e6365223b723a3235383b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f776973686c697374223b613a333a7b733a383a22696e7374616e6365223b723a3236303b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f73797374656d2f636f6e6669672f636f6e7461637473223b613a333a7b733a383a22696e7374616e6365223b723a3236323b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e6669672f736974656d6170223b613a333a7b733a383a22696e7374616e6365223b723a3236343b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f727373223b613a333a7b733a383a22696e7374616e6365223b723a3236363b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f636f6e6669672f617069223b613a333a7b733a383a22696e7374616e6365223b723a3236383b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f73797374656d2f636f6e6669672f6f61757468223b613a333a7b733a383a22696e7374616e6365223b723a3237303b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f6e6577736c6574746572223b613a333a7b733a383a22696e7374616e6365223b723a3237323b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73797374656d2f636f6e6669672f646f776e6c6f616461626c65223b613a333a7b733a383a22696e7374616e6365223b723a3237343b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73797374656d2f636f6e6669672f70657273697374656e74223b613a333a7b733a383a22696e7374616e6365223b723a3237363b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73797374656d2f636f6e6669672f65636172645f73656374696f6e223b613a333a7b733a383a22696e7374616e6365223b723a3237383b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73797374656d2f636f6e6669672f6d6f6e6579626f6f6b657273223b613a333a7b733a383a22696e7374616e6365223b723a3238303b733a363a22706172656e74223b723a3135323b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f73797374656d2f63757272656e6379223b613a333a7b733a383a22696e7374616e6365223b723a3135343b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a323a7b733a32373a2261646d696e2f73797374656d2f63757272656e63792f7261746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f63757272656e63792f7261746573223b7d733a32393a2261646d696e2f73797374656d2f63757272656e63792f73796d626f6c73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73797374656d2f63757272656e63792f73796d626f6c73223b7d7d7d733a32373a2261646d696e2f73797374656d2f63757272656e63792f7261746573223b613a333a7b733a383a22696e7374616e6365223b723a3433383b733a363a22706172656e74223b723a3135343b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73797374656d2f63757272656e63792f73796d626f6c73223b613a333a7b733a383a22696e7374616e6365223b723a3434303b733a363a22706172656e74223b723a3135343b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f656d61696c5f74656d706c617465223b613a333a7b733a383a22696e7374616e6365223b723a3135363b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f73797374656d2f7661726961626c65223b613a333a7b733a383a22696e7374616e6365223b723a3135383b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f73797374656d2f6d796163636f756e74223b613a333a7b733a383a22696e7374616e6365223b723a3136303b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a303a7b7d7d733a31383a2261646d696e2f73797374656d2f746f6f6c73223b613a333a7b733a383a22696e7374616e6365223b723a3136323b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a323a7b733a32353a2261646d696e2f73797374656d2f746f6f6c732f6261636b7570223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f746f6f6c732f6261636b7570223b7d733a32373a2261646d696e2f73797374656d2f746f6f6c732f636f6d70696c6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f746f6f6c732f636f6d70696c6572223b7d7d7d733a32353a2261646d696e2f73797374656d2f746f6f6c732f6261636b7570223b613a333a7b733a383a22696e7374616e6365223b723a3436363b733a363a22706172656e74223b723a3136323b733a383a226368696c6472656e223b613a313a7b733a33343a2261646d696e2f73797374656d2f746f6f6c732f6261636b75702f726f6c6c6261636b223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33343a2261646d696e2f73797374656d2f746f6f6c732f6261636b75702f726f6c6c6261636b223b7d7d7d733a33343a2261646d696e2f73797374656d2f746f6f6c732f6261636b75702f726f6c6c6261636b223b613a333a7b733a383a22696e7374616e6365223b723a3437343b733a363a22706172656e74223b723a3436363b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f746f6f6c732f636f6d70696c6572223b613a333a7b733a383a22696e7374616e6365223b723a3436383b733a363a22706172656e74223b723a3136323b733a383a226368696c6472656e223b613a303a7b7d7d733a32303a2261646d696e2f73797374656d2f636f6e76657274223b613a333a7b733a383a22696e7374616e6365223b723a3136343b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a343a7b733a32343a2261646d696e2f73797374656d2f636f6e766572742f677569223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f73797374656d2f636f6e766572742f677569223b7d733a32393a2261646d696e2f73797374656d2f636f6e766572742f70726f66696c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73797374656d2f636f6e766572742f70726f66696c6573223b7d733a32373a2261646d696e2f73797374656d2f636f6e766572742f696d706f7274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e766572742f696d706f7274223b7d733a32373a2261646d696e2f73797374656d2f636f6e766572742f6578706f7274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f636f6e766572742f6578706f7274223b7d7d7d733a32343a2261646d696e2f73797374656d2f636f6e766572742f677569223b613a333a7b733a383a22696e7374616e6365223b723a3438383b733a363a22706172656e74223b723a3136343b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73797374656d2f636f6e766572742f70726f66696c6573223b613a333a7b733a383a22696e7374616e6365223b723a3439303b733a363a22706172656e74223b723a3136343b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e766572742f696d706f7274223b613a333a7b733a383a22696e7374616e6365223b723a3439323b733a363a22706172656e74223b723a3136343b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f636f6e766572742f6578706f7274223b613a333a7b733a383a22696e7374616e6365223b723a3439343b733a363a22706172656e74223b723a3136343b733a383a226368696c6472656e223b613a303a7b7d7d733a31383a2261646d696e2f73797374656d2f6361636865223b613a333a7b733a383a22696e7374616e6365223b723a3136363b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f73797374656d2f657874656e73696f6e73223b613a333a7b733a383a22696e7374616e6365223b723a3136383b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a323a7b733a32393a2261646d696e2f73797374656d2f657874656e73696f6e732f6c6f63616c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73797374656d2f657874656e73696f6e732f6c6f63616c223b7d733a33303a2261646d696e2f73797374656d2f657874656e73696f6e732f637573746f6d223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f657874656e73696f6e732f637573746f6d223b7d7d7d733a32393a2261646d696e2f73797374656d2f657874656e73696f6e732f6c6f63616c223b613a333a7b733a383a22696e7374616e6365223b723a3532303b733a363a22706172656e74223b723a3136383b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73797374656d2f657874656e73696f6e732f637573746f6d223b613a333a7b733a383a22696e7374616e6365223b723a3532323b733a363a22706172656e74223b723a3136383b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e223b613a333a7b733a383a22696e7374616e6365223b723a3137303b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a343a7b733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f746f6f6c626172223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f746f6f6c626172223b7d733a34303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f6c697374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f6c697374223b7d733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f6d61726b5f61735f72656164223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f6d61726b5f61735f72656164223b7d733a33373a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f72656d6f7665223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33373a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f72656d6f7665223b7d7d7d733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f746f6f6c626172223b613a333a7b733a383a22696e7374616e6365223b723a3533363b733a363a22706172656e74223b723a3137303b733a383a226368696c6472656e223b613a303a7b7d7d733a34303a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f73686f775f6c697374223b613a333a7b733a383a22696e7374616e6365223b723a3533383b733a363a22706172656e74223b723a3137303b733a383a226368696c6472656e223b613a303a7b7d7d733a34333a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f6d61726b5f61735f72656164223b613a333a7b733a383a22696e7374616e6365223b723a3534303b733a363a22706172656e74223b723a3137303b733a383a226368696c6472656e223b613a303a7b7d7d733a33373a2261646d696e2f73797374656d2f61646d696e6e6f74696669636174696f6e2f72656d6f7665223b613a333a7b733a383a22696e7374616e6365223b723a3534323b733a363a22706172656e74223b723a3137303b733a383a226368696c6472656e223b613a303a7b7d7d733a31383a2261646d696e2f73797374656d2f696e646578223b613a333a7b733a383a22696e7374616e6365223b723a3137323b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f6f726465725f7374617475736573223b613a333a7b733a383a22696e7374616e6365223b723a3137343b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a303a7b7d7d733a31363a2261646d696e2f73797374656d2f617069223b613a333a7b733a383a22696e7374616e6365223b723a3137363b733a363a22706172656e74223b723a3131363b733a383a226368696c6472656e223b613a373a7b733a32323a2261646d696e2f73797374656d2f6170692f7573657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73797374656d2f6170692f7573657273223b7d733a32323a2261646d696e2f73797374656d2f6170692f726f6c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73797374656d2f6170692f726f6c6573223b7d733a32353a2261646d696e2f73797374656d2f6170692f636f6e73756d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73797374656d2f6170692f636f6e73756d6572223b7d733a33333a2261646d696e2f73797374656d2f6170692f617574686f72697a6564546f6b656e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73797374656d2f6170692f617574686f72697a6564546f6b656e73223b7d733a33343a2261646d696e2f73797374656d2f6170692f6f617574685f61646d696e5f746f6b656e223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33343a2261646d696e2f73797374656d2f6170692f6f617574685f61646d696e5f746f6b656e223b7d733a32373a2261646d696e2f73797374656d2f6170692f726573745f726f6c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f73797374656d2f6170692f726573745f726f6c6573223b7d733a33323a2261646d696e2f73797374656d2f6170692f726573745f61747472696275746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73797374656d2f6170692f726573745f61747472696275746573223b7d7d7d733a32323a2261646d696e2f73797374656d2f6170692f7573657273223b613a333a7b733a383a22696e7374616e6365223b723a3537323b733a363a22706172656e74223b723a3137363b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f73797374656d2f6170692f726f6c6573223b613a333a7b733a383a22696e7374616e6365223b723a3537343b733a363a22706172656e74223b723a3137363b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f73797374656d2f6170692f636f6e73756d6572223b613a333a7b733a383a22696e7374616e6365223b723a3537363b733a363a22706172656e74223b723a3137363b733a383a226368696c6472656e223b613a323a7b733a33303a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f65646974223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f65646974223b7d733a33323a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f64656c657465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f64656c657465223b7d7d7d733a33303a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f65646974223b613a333a7b733a383a22696e7374616e6365223b723a3539383b733a363a22706172656e74223b723a3537363b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73797374656d2f6170692f636f6e73756d65722f64656c657465223b613a333a7b733a383a22696e7374616e6365223b723a3630303b733a363a22706172656e74223b723a3537363b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73797374656d2f6170692f617574686f72697a6564546f6b656e73223b613a333a7b733a383a22696e7374616e6365223b723a3537383b733a363a22706172656e74223b723a3137363b733a383a226368696c6472656e223b613a303a7b7d7d733a33343a2261646d696e2f73797374656d2f6170692f6f617574685f61646d696e5f746f6b656e223b613a333a7b733a383a22696e7374616e6365223b723a3538303b733a363a22706172656e74223b723a3137363b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f73797374656d2f6170692f726573745f726f6c6573223b613a333a7b733a383a22696e7374616e6365223b723a3538323b733a363a22706172656e74223b723a3137363b733a383a226368696c6472656e223b613a333a7b733a33313a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f616464223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f616464223b7d733a33323a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f65646974223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f65646974223b7d733a33343a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f64656c657465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33343a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f64656c657465223b7d7d7d733a33313a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f616464223b613a333a7b733a383a22696e7374616e6365223b723a3632323b733a363a22706172656e74223b723a3538323b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f65646974223b613a333a7b733a383a22696e7374616e6365223b723a3632343b733a363a22706172656e74223b723a3538323b733a383a226368696c6472656e223b613a303a7b7d7d733a33343a2261646d696e2f73797374656d2f6170692f726573745f726f6c65732f64656c657465223b613a333a7b733a383a22696e7374616e6365223b723a3632363b733a363a22706172656e74223b723a3538323b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73797374656d2f6170692f726573745f61747472696275746573223b613a333a7b733a383a22696e7374616e6365223b723a3538343b733a363a22706172656e74223b723a3137363b733a383a226368696c6472656e223b613a313a7b733a33373a2261646d696e2f73797374656d2f6170692f726573745f617474726962757465732f65646974223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33373a2261646d696e2f73797374656d2f6170692f726573745f617474726962757465732f65646974223b7d7d7d733a33373a2261646d696e2f73797374656d2f6170692f726573745f617474726962757465732f65646974223b613a333a7b733a383a22696e7374616e6365223b723a3634343b733a363a22706172656e74223b723a3538343b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f676c6f62616c5f736561726368223b613a333a7b733a383a22696e7374616e6365223b723a3131383b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a303a7b7d7d733a393a2261646d696e2f636d73223b613a333a7b733a383a22696e7374616e6365223b723a3132303b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a353a7b733a31353a2261646d696e2f636d732f626c6f636b223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31353a2261646d696e2f636d732f626c6f636b223b7d733a31343a2261646d696e2f636d732f70616765223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31343a2261646d696e2f636d732f70616765223b7d733a32333a2261646d696e2f636d732f6d656469615f67616c6c657279223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f636d732f6d656469615f67616c6c657279223b7d733a31343a2261646d696e2f636d732f706f6c6c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31343a2261646d696e2f636d732f706f6c6c223b7d733a32353a2261646d696e2f636d732f7769646765745f696e7374616e6365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f636d732f7769646765745f696e7374616e6365223b7d7d7d733a31353a2261646d696e2f636d732f626c6f636b223b613a333a7b733a383a22696e7374616e6365223b723a3635383b733a363a22706172656e74223b723a3132303b733a383a226368696c6472656e223b613a303a7b7d7d733a31343a2261646d696e2f636d732f70616765223b613a333a7b733a383a22696e7374616e6365223b723a3636303b733a363a22706172656e74223b723a3132303b733a383a226368696c6472656e223b613a323a7b733a31393a2261646d696e2f636d732f706167652f73617665223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f636d732f706167652f73617665223b7d733a32313a2261646d696e2f636d732f706167652f64656c657465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f636d732f706167652f64656c657465223b7d7d7d733a31393a2261646d696e2f636d732f706167652f73617665223b613a333a7b733a383a22696e7374616e6365223b723a3637363b733a363a22706172656e74223b723a3636303b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f636d732f706167652f64656c657465223b613a333a7b733a383a22696e7374616e6365223b723a3637383b733a363a22706172656e74223b723a3636303b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f636d732f6d656469615f67616c6c657279223b613a333a7b733a383a22696e7374616e6365223b723a3636323b733a363a22706172656e74223b723a3132303b733a383a226368696c6472656e223b613a303a7b7d7d733a31343a2261646d696e2f636d732f706f6c6c223b613a333a7b733a383a22696e7374616e6365223b723a3636343b733a363a22706172656e74223b723a3132303b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f636d732f7769646765745f696e7374616e6365223b613a333a7b733a383a22696e7374616e6365223b723a3636363b733a363a22706172656e74223b723a3132303b733a383a226368696c6472656e223b613a303a7b7d7d733a31343a2261646d696e2f637573746f6d6572223b613a333a7b733a383a22696e7374616e6365223b723a3132323b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a333a7b733a32303a2261646d696e2f637573746f6d65722f67726f7570223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32303a2261646d696e2f637573746f6d65722f67726f7570223b7d733a32313a2261646d696e2f637573746f6d65722f6d616e616765223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f637573746f6d65722f6d616e616765223b7d733a32313a2261646d696e2f637573746f6d65722f6f6e6c696e65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f637573746f6d65722f6f6e6c696e65223b7d7d7d733a32303a2261646d696e2f637573746f6d65722f67726f7570223b613a333a7b733a383a22696e7374616e6365223b723a3730343b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f637573746f6d65722f6d616e616765223b613a333a7b733a383a22696e7374616e6365223b723a3730363b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f637573746f6d65722f6f6e6c696e65223b613a333a7b733a383a22696e7374616e6365223b723a3730383b733a363a22706172656e74223b723a3132323b733a383a226368696c6472656e223b613a303a7b7d7d733a31333a2261646d696e2f636174616c6f67223b613a333a7b733a383a22696e7374616e6365223b723a3132343b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a31303a7b733a32343a2261646d696e2f636174616c6f672f61747472696275746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f636174616c6f672f61747472696275746573223b7d733a32343a2261646d696e2f636174616c6f672f63617465676f72696573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f636174616c6f672f63617465676f72696573223b7d733a32323a2261646d696e2f636174616c6f672f70726f6475637473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f636174616c6f672f70726f6475637473223b7d733a33313a2261646d696e2f636174616c6f672f7570646174655f61747472696275746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f636174616c6f672f7570646174655f61747472696275746573223b7d733a32343a2261646d696e2f636174616c6f672f75726c72657772697465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f636174616c6f672f75726c72657772697465223b7d733a32303a2261646d696e2f636174616c6f672f736561726368223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32303a2261646d696e2f636174616c6f672f736561726368223b7d733a32393a2261646d696e2f636174616c6f672f726576696577735f726174696e6773223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f636174616c6f672f726576696577735f726174696e6773223b7d733a31373a2261646d696e2f636174616c6f672f746167223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31373a2261646d696e2f636174616c6f672f746167223b7d733a32313a2261646d696e2f636174616c6f672f736974656d6170223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f636174616c6f672f736974656d6170223b7d733a33303a2261646d696e2f636174616c6f672f73696e7461785f61646d696e666f726d223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f636174616c6f672f73696e7461785f61646d696e666f726d223b7d7d7d733a32343a2261646d696e2f636174616c6f672f61747472696275746573223b613a333a7b733a383a22696e7374616e6365223b723a3732363b733a363a22706172656e74223b723a3132343b733a383a226368696c6472656e223b613a323a7b733a33353a2261646d696e2f636174616c6f672f617474726962757465732f61747472696275746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33353a2261646d696e2f636174616c6f672f617474726962757465732f61747472696275746573223b7d733a32393a2261646d696e2f636174616c6f672f617474726962757465732f73657473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f636174616c6f672f617474726962757465732f73657473223b7d7d7d733a33353a2261646d696e2f636174616c6f672f617474726962757465732f61747472696275746573223b613a333a7b733a383a22696e7374616e6365223b723a3735303b733a363a22706172656e74223b723a3732363b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f636174616c6f672f617474726962757465732f73657473223b613a333a7b733a383a22696e7374616e6365223b723a3735323b733a363a22706172656e74223b723a3732363b733a383a226368696c6472656e223b613a303a7b7d7d733a32343a2261646d696e2f636174616c6f672f63617465676f72696573223b613a333a7b733a383a22696e7374616e6365223b723a3732383b733a363a22706172656e74223b723a3132343b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f636174616c6f672f70726f6475637473223b613a333a7b733a383a22696e7374616e6365223b723a3733303b733a363a22706172656e74223b723a3132343b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f636174616c6f672f7570646174655f61747472696275746573223b613a333a7b733a383a22696e7374616e6365223b723a3733323b733a363a22706172656e74223b723a3132343b733a383a226368696c6472656e223b613a303a7b7d7d733a32343a2261646d696e2f636174616c6f672f75726c72657772697465223b613a333a7b733a383a22696e7374616e6365223b723a3733343b733a363a22706172656e74223b723a3132343b733a383a226368696c6472656e223b613a303a7b7d7d733a32303a2261646d696e2f636174616c6f672f736561726368223b613a333a7b733a383a22696e7374616e6365223b723a3733363b733a363a22706172656e74223b723a3132343b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f636174616c6f672f726576696577735f726174696e6773223b613a333a7b733a383a22696e7374616e6365223b723a3733383b733a363a22706172656e74223b723a3132343b733a383a226368696c6472656e223b613a323a7b733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f72657669657773223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f72657669657773223b7d733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726174696e6773223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726174696e6773223b7d7d7d733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f72657669657773223b613a333a7b733a383a22696e7374616e6365223b723a3738363b733a363a22706172656e74223b723a3733383b733a383a226368696c6472656e223b613a323a7b733a34313a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f616c6c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34313a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f616c6c223b7d733a34353a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f70656e64696e67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34353a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f70656e64696e67223b7d7d7d733a34313a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f616c6c223b613a333a7b733a383a22696e7374616e6365223b723a3739343b733a363a22706172656e74223b723a3738363b733a383a226368696c6472656e223b613a303a7b7d7d733a34353a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726576696577732f70656e64696e67223b613a333a7b733a383a22696e7374616e6365223b723a3739363b733a363a22706172656e74223b723a3738363b733a383a226368696c6472656e223b613a303a7b7d7d733a33373a2261646d696e2f636174616c6f672f726576696577735f726174696e67732f726174696e6773223b613a333a7b733a383a22696e7374616e6365223b723a3738383b733a363a22706172656e74223b723a3733383b733a383a226368696c6472656e223b613a303a7b7d7d733a31373a2261646d696e2f636174616c6f672f746167223b613a333a7b733a383a22696e7374616e6365223b723a3734303b733a363a22706172656e74223b723a3132343b733a383a226368696c6472656e223b613a323a7b733a32313a2261646d696e2f636174616c6f672f7461672f616c6c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f636174616c6f672f7461672f616c6c223b7d733a32353a2261646d696e2f636174616c6f672f7461672f70656e64696e67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f636174616c6f672f7461672f70656e64696e67223b7d7d7d733a32313a2261646d696e2f636174616c6f672f7461672f616c6c223b613a333a7b733a383a22696e7374616e6365223b723a3831343b733a363a22706172656e74223b723a3734303b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f636174616c6f672f7461672f70656e64696e67223b613a333a7b733a383a22696e7374616e6365223b723a3831363b733a363a22706172656e74223b723a3734303b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f636174616c6f672f736974656d6170223b613a333a7b733a383a22696e7374616e6365223b723a3734323b733a363a22706172656e74223b723a3132343b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f636174616c6f672f73696e7461785f61646d696e666f726d223b613a333a7b733a383a22696e7374616e6365223b723a3734343b733a363a22706172656e74223b723a3132343b733a383a226368696c6472656e223b613a303a7b7d7d733a31313a2261646d696e2f70726f6d6f223b613a333a7b733a383a22696e7374616e6365223b723a3132363b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a323a7b733a31393a2261646d696e2f70726f6d6f2f636174616c6f67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f70726f6d6f2f636174616c6f67223b7d733a31373a2261646d696e2f70726f6d6f2f71756f7465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31373a2261646d696e2f70726f6d6f2f71756f7465223b7d7d7d733a31393a2261646d696e2f70726f6d6f2f636174616c6f67223b613a333a7b733a383a22696e7374616e6365223b723a3833383b733a363a22706172656e74223b723a3132363b733a383a226368696c6472656e223b613a303a7b7d7d733a31373a2261646d696e2f70726f6d6f2f71756f7465223b613a333a7b733a383a22696e7374616e6365223b723a3834303b733a363a22706172656e74223b723a3132363b733a383a226368696c6472656e223b613a303a7b7d7d733a31313a2261646d696e2f73616c6573223b613a333a7b733a383a22696e7374616e6365223b723a3132383b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a393a7b733a31373a2261646d696e2f73616c65732f6f72646572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31373a2261646d696e2f73616c65732f6f72646572223b7d733a31393a2261646d696e2f73616c65732f696e766f696365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f73616c65732f696e766f696365223b7d733a32303a2261646d696e2f73616c65732f736869706d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32303a2261646d696e2f73616c65732f736869706d656e74223b7d733a32323a2261646d696e2f73616c65732f6372656469746d656d6f223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f73616c65732f6372656469746d656d6f223b7d733a32343a2261646d696e2f73616c65732f7472616e73616374696f6e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f73616c65732f7472616e73616374696f6e73223b7d733a32393a2261646d696e2f73616c65732f726563757272696e675f70726f66696c65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73616c65732f726563757272696e675f70726f66696c65223b7d733a32393a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e74223b7d733a32393a2261646d696e2f73616c65732f636865636b6f757461677265656d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73616c65732f636865636b6f757461677265656d656e74223b7d733a31353a2261646d696e2f73616c65732f746178223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31353a2261646d696e2f73616c65732f746178223b7d7d7d733a31373a2261646d696e2f73616c65732f6f72646572223b613a333a7b733a383a22696e7374616e6365223b723a3835343b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a313a7b733a32353a2261646d696e2f73616c65732f6f726465722f616374696f6e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f73616c65732f6f726465722f616374696f6e73223b7d7d7d733a32353a2261646d696e2f73616c65732f6f726465722f616374696f6e73223b613a333a7b733a383a22696e7374616e6365223b723a3837363b733a363a22706172656e74223b723a3835343b733a383a226368696c6472656e223b613a31353a7b733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f637265617465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f637265617465223b7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f76696577223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f76696577223b7d733a33313a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c223b7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f72656f72646572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f72656f72646572223b7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f65646974223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f65646974223b7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63616e63656c223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63616e63656c223b7d733a34303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f7265766965775f7061796d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f7265766965775f7061796d656e74223b7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63617074757265223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63617074757265223b7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f696e766f696365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f696e766f696365223b7d733a33363a2261646d696e2f73616c65732f6f726465722f616374696f6e732f6372656469746d656d6f223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33363a2261646d696e2f73616c65732f6f726465722f616374696f6e732f6372656469746d656d6f223b7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f686f6c64223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f686f6c64223b7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f756e686f6c64223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f756e686f6c64223b7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f73686970223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f73686970223b7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f636f6d6d656e74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f636f6d6d656e74223b7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c73223b7d7d7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f637265617465223b613a333a7b733a383a22696e7374616e6365223b723a3838323b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f76696577223b613a333a7b733a383a22696e7374616e6365223b723a3838343b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c223b613a333a7b733a383a22696e7374616e6365223b723a3838363b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f72656f72646572223b613a333a7b733a383a22696e7374616e6365223b723a3838383b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f65646974223b613a333a7b733a383a22696e7374616e6365223b723a3839303b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63616e63656c223b613a333a7b733a383a22696e7374616e6365223b723a3839323b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a34303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f7265766965775f7061796d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3839343b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f63617074757265223b613a333a7b733a383a22696e7374616e6365223b723a3839363b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f696e766f696365223b613a333a7b733a383a22696e7374616e6365223b723a3839383b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33363a2261646d696e2f73616c65732f6f726465722f616374696f6e732f6372656469746d656d6f223b613a333a7b733a383a22696e7374616e6365223b723a3930303b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f686f6c64223b613a333a7b733a383a22696e7374616e6365223b723a3930323b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f756e686f6c64223b613a333a7b733a383a22696e7374616e6365223b723a3930343b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f73616c65732f6f726465722f616374696f6e732f73686970223b613a333a7b733a383a22696e7374616e6365223b723a3930363b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33333a2261646d696e2f73616c65732f6f726465722f616374696f6e732f636f6d6d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3930383b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a33323a2261646d696e2f73616c65732f6f726465722f616374696f6e732f656d61696c73223b613a333a7b733a383a22696e7374616e6365223b723a3931303b733a363a22706172656e74223b723a3837363b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f73616c65732f696e766f696365223b613a333a7b733a383a22696e7374616e6365223b723a3835363b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a303a7b7d7d733a32303a2261646d696e2f73616c65732f736869706d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3835383b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f73616c65732f6372656469746d656d6f223b613a333a7b733a383a22696e7374616e6365223b723a3836303b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a303a7b7d7d733a32343a2261646d696e2f73616c65732f7472616e73616374696f6e73223b613a333a7b733a383a22696e7374616e6365223b723a3836323b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a313a7b733a33303a2261646d696e2f73616c65732f7472616e73616374696f6e732f6665746368223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f73616c65732f7472616e73616374696f6e732f6665746368223b7d7d7d733a33303a2261646d696e2f73616c65732f7472616e73616374696f6e732f6665746368223b613a333a7b733a383a22696e7374616e6365223b723a3938383b733a363a22706172656e74223b723a3836323b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73616c65732f726563757272696e675f70726f66696c65223b613a333a7b733a383a22696e7374616e6365223b723a3836343b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3836363b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a313a7b733a33373a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33373a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e73223b7d7d7d733a33373a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e73223b613a333a7b733a383a22696e7374616e6365223b723a313030323b733a363a22706172656e74223b723a3836363b733a383a226368696c6472656e223b613a333a7b733a34323a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f76696577223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34323a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f76696577223b7d733a34343a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f6d616e616765223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34343a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f6d616e616765223b7d733a34313a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f757365223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34313a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f757365223b7d7d7d733a34323a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f76696577223b613a333a7b733a383a22696e7374616e6365223b723a313030383b733a363a22706172656e74223b723a313030323b733a383a226368696c6472656e223b613a303a7b7d7d733a34343a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f6d616e616765223b613a333a7b733a383a22696e7374616e6365223b723a313031303b733a363a22706172656e74223b723a313030323b733a383a226368696c6472656e223b613a303a7b7d7d733a34313a2261646d696e2f73616c65732f62696c6c696e675f61677265656d656e742f616374696f6e732f757365223b613a333a7b733a383a22696e7374616e6365223b723a313031323b733a363a22706172656e74223b723a313030323b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73616c65732f636865636b6f757461677265656d656e74223b613a333a7b733a383a22696e7374616e6365223b723a3836383b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a303a7b7d7d733a31353a2261646d696e2f73616c65732f746178223b613a333a7b733a383a22696e7374616e6365223b723a3837303b733a363a22706172656e74223b723a3132383b733a383a226368696c6472656e223b613a353a7b733a33323a2261646d696e2f73616c65732f7461782f636c61737365735f637573746f6d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33323a2261646d696e2f73616c65732f7461782f636c61737365735f637573746f6d6572223b7d733a33313a2261646d696e2f73616c65732f7461782f636c61737365735f70726f64756374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f73616c65732f7461782f636c61737365735f70726f64756374223b7d733a32393a2261646d696e2f73616c65732f7461782f696d706f72745f6578706f7274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f73616c65732f7461782f696d706f72745f6578706f7274223b7d733a32313a2261646d696e2f73616c65732f7461782f7261746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f73616c65732f7461782f7261746573223b7d733a32313a2261646d696e2f73616c65732f7461782f72756c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f73616c65732f7461782f72756c6573223b7d7d7d733a33323a2261646d696e2f73616c65732f7461782f636c61737365735f637573746f6d6572223b613a333a7b733a383a22696e7374616e6365223b723a313033343b733a363a22706172656e74223b723a3837303b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f73616c65732f7461782f636c61737365735f70726f64756374223b613a333a7b733a383a22696e7374616e6365223b723a313033363b733a363a22706172656e74223b723a3837303b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f73616c65732f7461782f696d706f72745f6578706f7274223b613a333a7b733a383a22696e7374616e6365223b723a313033383b733a363a22706172656e74223b723a3837303b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f73616c65732f7461782f7261746573223b613a333a7b733a383a22696e7374616e6365223b723a313034303b733a363a22706172656e74223b723a3837303b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f73616c65732f7461782f72756c6573223b613a333a7b733a383a22696e7374616e6365223b723a313034323b733a363a22706172656e74223b723a3837303b733a383a226368696c6472656e223b613a303a7b7d7d733a31323a2261646d696e2f7265706f7274223b613a333a7b733a383a22696e7374616e6365223b723a3133303b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a383a7b733a32323a2261646d696e2f7265706f72742f73616c6573726f6f74223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f7265706f72742f73616c6573726f6f74223b7d733a32313a2261646d696e2f7265706f72742f73686f7063617274223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f7265706f72742f73686f7063617274223b7d733a32313a2261646d696e2f7265706f72742f70726f6475637473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32313a2261646d696e2f7265706f72742f70726f6475637473223b7d733a32323a2261646d696e2f7265706f72742f637573746f6d657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f7265706f72742f637573746f6d657273223b7d733a31393a2261646d696e2f7265706f72742f726576696577223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f7265706f72742f726576696577223b7d733a31373a2261646d696e2f7265706f72742f74616773223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31373a2261646d696e2f7265706f72742f74616773223b7d733a31393a2261646d696e2f7265706f72742f736561726368223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a31393a2261646d696e2f7265706f72742f736561726368223b7d733a32333a2261646d696e2f7265706f72742f73746174697374696373223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f7265706f72742f73746174697374696373223b7d7d7d733a32323a2261646d696e2f7265706f72742f73616c6573726f6f74223b613a333a7b733a383a22696e7374616e6365223b723a313036383b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a373a7b733a34383a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f727473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a34383a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f727473223b7d733a32383a2261646d696e2f7265706f72742f73616c6573726f6f742f73616c6573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f7265706f72742f73616c6573726f6f742f73616c6573223b7d733a32363a2261646d696e2f7265706f72742f73616c6573726f6f742f746178223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f7265706f72742f73616c6573726f6f742f746178223b7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f7368697070696e67223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f7368697070696e67223b7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f696e766f69636564223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f696e766f69636564223b7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f726566756e646564223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f726566756e646564223b7d733a33303a2261646d696e2f7265706f72742f73616c6573726f6f742f636f75706f6e73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f7265706f72742f73616c6573726f6f742f636f75706f6e73223b7d7d7d733a34383a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f727473223b613a333a7b733a383a22696e7374616e6365223b723a313038383b733a363a22706172656e74223b723a313036383b733a383a226368696c6472656e223b613a323a7b733a35333a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f76696577223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a35333a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f76696577223b7d733a35343a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f6665746368223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a35343a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f6665746368223b7d7d7d733a35333a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f76696577223b613a333a7b733a383a22696e7374616e6365223b723a313130363b733a363a22706172656e74223b723a313038383b733a383a226368696c6472656e223b613a303a7b7d7d733a35343a2261646d696e2f7265706f72742f73616c6573726f6f742f70617970616c5f736574746c656d656e745f7265706f7274732f6665746368223b613a333a7b733a383a22696e7374616e6365223b723a313130383b733a363a22706172656e74223b723a313038383b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f7265706f72742f73616c6573726f6f742f73616c6573223b613a333a7b733a383a22696e7374616e6365223b723a313039303b733a363a22706172656e74223b723a313036383b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f7265706f72742f73616c6573726f6f742f746178223b613a333a7b733a383a22696e7374616e6365223b723a313039323b733a363a22706172656e74223b723a313036383b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f7368697070696e67223b613a333a7b733a383a22696e7374616e6365223b723a313039343b733a363a22706172656e74223b723a313036383b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f696e766f69636564223b613a333a7b733a383a22696e7374616e6365223b723a313039363b733a363a22706172656e74223b723a313036383b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f7265706f72742f73616c6573726f6f742f726566756e646564223b613a333a7b733a383a22696e7374616e6365223b723a313039383b733a363a22706172656e74223b723a313036383b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f7265706f72742f73616c6573726f6f742f636f75706f6e73223b613a333a7b733a383a22696e7374616e6365223b723a313130303b733a363a22706172656e74223b723a313036383b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f7265706f72742f73686f7063617274223b613a333a7b733a383a22696e7374616e6365223b723a313037303b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a323a7b733a32393a2261646d696e2f7265706f72742f73686f70636172742f70726f64756374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f7265706f72742f73686f70636172742f70726f64756374223b7d733a33313a2261646d696e2f7265706f72742f73686f70636172742f6162616e646f6e6564223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f73686f70636172742f6162616e646f6e6564223b7d7d7d733a32393a2261646d696e2f7265706f72742f73686f70636172742f70726f64756374223b613a333a7b733a383a22696e7374616e6365223b723a313134363b733a363a22706172656e74223b723a313037303b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f7265706f72742f73686f70636172742f6162616e646f6e6564223b613a333a7b733a383a22696e7374616e6365223b723a313134383b733a363a22706172656e74223b723a313037303b733a383a226368696c6472656e223b613a303a7b7d7d733a32313a2261646d696e2f7265706f72742f70726f6475637473223b613a333a7b733a383a22696e7374616e6365223b723a313037323b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a353a7b733a33333a2261646d696e2f7265706f72742f70726f64756374732f6265737473656c6c657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33333a2261646d696e2f7265706f72742f70726f64756374732f6265737473656c6c657273223b7d733a32363a2261646d696e2f7265706f72742f70726f64756374732f736f6c64223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f7265706f72742f70726f64756374732f736f6c64223b7d733a32383a2261646d696e2f7265706f72742f70726f64756374732f766965776564223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f7265706f72742f70726f64756374732f766965776564223b7d733a33303a2261646d696e2f7265706f72742f70726f64756374732f6c6f7773746f636b223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f7265706f72742f70726f64756374732f6c6f7773746f636b223b7d733a33313a2261646d696e2f7265706f72742f70726f64756374732f646f776e6c6f616473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f70726f64756374732f646f776e6c6f616473223b7d7d7d733a33333a2261646d696e2f7265706f72742f70726f64756374732f6265737473656c6c657273223b613a333a7b733a383a22696e7374616e6365223b723a313136323b733a363a22706172656e74223b723a313037323b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f7265706f72742f70726f64756374732f736f6c64223b613a333a7b733a383a22696e7374616e6365223b723a313136343b733a363a22706172656e74223b723a313037323b733a383a226368696c6472656e223b613a303a7b7d7d733a32383a2261646d696e2f7265706f72742f70726f64756374732f766965776564223b613a333a7b733a383a22696e7374616e6365223b723a313136363b733a363a22706172656e74223b723a313037323b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f7265706f72742f70726f64756374732f6c6f7773746f636b223b613a333a7b733a383a22696e7374616e6365223b723a313136383b733a363a22706172656e74223b723a313037323b733a383a226368696c6472656e223b613a303a7b7d7d733a33313a2261646d696e2f7265706f72742f70726f64756374732f646f776e6c6f616473223b613a333a7b733a383a22696e7374616e6365223b723a313137303b733a363a22706172656e74223b723a313037323b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f7265706f72742f637573746f6d657273223b613a333a7b733a383a22696e7374616e6365223b723a313037343b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a333a7b733a33313a2261646d696e2f7265706f72742f637573746f6d6572732f6163636f756e7473223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33313a2261646d696e2f7265706f72742f637573746f6d6572732f6163636f756e7473223b7d733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f746f74616c73223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f746f74616c73223b7d733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f6f7264657273223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f6f7264657273223b7d7d7d733a33313a2261646d696e2f7265706f72742f637573746f6d6572732f6163636f756e7473223b613a333a7b733a383a22696e7374616e6365223b723a313139363b733a363a22706172656e74223b723a313037343b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f746f74616c73223b613a333a7b733a383a22696e7374616e6365223b723a313139383b733a363a22706172656e74223b723a313037343b733a383a226368696c6472656e223b613a303a7b7d7d733a32393a2261646d696e2f7265706f72742f637573746f6d6572732f6f7264657273223b613a333a7b733a383a22696e7374616e6365223b723a313230303b733a363a22706172656e74223b723a313037343b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f7265706f72742f726576696577223b613a333a7b733a383a22696e7374616e6365223b723a313037363b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a323a7b733a32383a2261646d696e2f7265706f72742f7265766965772f637573746f6d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32383a2261646d696e2f7265706f72742f7265766965772f637573746f6d6572223b7d733a32373a2261646d696e2f7265706f72742f7265766965772f70726f64756374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f7265706f72742f7265766965772f70726f64756374223b7d7d7d733a32383a2261646d696e2f7265706f72742f7265766965772f637573746f6d6572223b613a333a7b733a383a22696e7374616e6365223b723a313231383b733a363a22706172656e74223b723a313037363b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f7265706f72742f7265766965772f70726f64756374223b613a333a7b733a383a22696e7374616e6365223b723a313232303b733a363a22706172656e74223b723a313037363b733a383a226368696c6472656e223b613a303a7b7d7d733a31373a2261646d696e2f7265706f72742f74616773223b613a333a7b733a383a22696e7374616e6365223b723a313037383b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a333a7b733a32363a2261646d696e2f7265706f72742f746167732f637573746f6d6572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f7265706f72742f746167732f637573746f6d6572223b7d733a32353a2261646d696e2f7265706f72742f746167732f706f70756c6172223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f7265706f72742f746167732f706f70756c6172223b7d733a32353a2261646d696e2f7265706f72742f746167732f70726f64756374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f7265706f72742f746167732f70726f64756374223b7d7d7d733a32363a2261646d696e2f7265706f72742f746167732f637573746f6d6572223b613a333a7b733a383a22696e7374616e6365223b723a313233343b733a363a22706172656e74223b723a313037383b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f7265706f72742f746167732f706f70756c6172223b613a333a7b733a383a22696e7374616e6365223b723a313233363b733a363a22706172656e74223b723a313037383b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f7265706f72742f746167732f70726f64756374223b613a333a7b733a383a22696e7374616e6365223b723a313233383b733a363a22706172656e74223b723a313037383b733a383a226368696c6472656e223b613a303a7b7d7d733a31393a2261646d696e2f7265706f72742f736561726368223b613a333a7b733a383a22696e7374616e6365223b723a313038303b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a303a7b7d7d733a32333a2261646d696e2f7265706f72742f73746174697374696373223b613a333a7b733a383a22696e7374616e6365223b723a313038323b733a363a22706172656e74223b723a3133303b733a383a226368696c6472656e223b613a303a7b7d7d733a31363a2261646d696e2f6e6577736c6574746572223b613a333a7b733a383a22696e7374616e6365223b723a3133323b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a343a7b733a32343a2261646d696e2f6e6577736c65747465722f70726f626c656d223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f6e6577736c65747465722f70726f626c656d223b7d733a32323a2261646d696e2f6e6577736c65747465722f7175657565223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f6e6577736c65747465722f7175657565223b7d733a32373a2261646d696e2f6e6577736c65747465722f73756273637269626572223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32373a2261646d696e2f6e6577736c65747465722f73756273637269626572223b7d733a32353a2261646d696e2f6e6577736c65747465722f74656d706c617465223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32353a2261646d696e2f6e6577736c65747465722f74656d706c617465223b7d7d7d733a32343a2261646d696e2f6e6577736c65747465722f70726f626c656d223b613a333a7b733a383a22696e7374616e6365223b723a313236343b733a363a22706172656e74223b723a3133323b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f6e6577736c65747465722f7175657565223b613a333a7b733a383a22696e7374616e6365223b723a313236363b733a363a22706172656e74223b723a3133323b733a383a226368696c6472656e223b613a303a7b7d7d733a32373a2261646d696e2f6e6577736c65747465722f73756273637269626572223b613a333a7b733a383a22696e7374616e6365223b723a313236383b733a363a22706172656e74223b723a3133323b733a383a226368696c6472656e223b613a303a7b7d7d733a32353a2261646d696e2f6e6577736c65747465722f74656d706c617465223b613a333a7b733a383a22696e7374616e6365223b723a313237303b733a363a22706172656e74223b723a3133323b733a383a226368696c6472656e223b613a303a7b7d7d733a31363a2261646d696e2f706167655f6361636865223b613a333a7b733a383a22696e7374616e6365223b723a3133343b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a303a7b7d7d733a31363a2261646d696e2f786d6c636f6e6e656374223b613a333a7b733a383a22696e7374616e6365223b723a3133363b733a363a22706172656e74223b723a3131303b733a383a226368696c6472656e223b613a353a7b733a32333a2261646d696e2f786d6c636f6e6e6563742f6d6f62696c65223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32333a2261646d696e2f786d6c636f6e6e6563742f6d6f62696c65223b7d733a32343a2261646d696e2f786d6c636f6e6e6563742f686973746f7279223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32343a2261646d696e2f786d6c636f6e6e6563742f686973746f7279223b7d733a32363a2261646d696e2f786d6c636f6e6e6563742f74656d706c61746573223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32363a2261646d696e2f786d6c636f6e6e6563742f74656d706c61746573223b7d733a32323a2261646d696e2f786d6c636f6e6e6563742f7175657565223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a32323a2261646d696e2f786d6c636f6e6e6563742f7175657565223b7d733a33303a2261646d696e2f786d6c636f6e6e6563742f61646d696e5f636f6e6e656374223b4f3a32393a224d6167655f41646d696e5f4d6f64656c5f41636c5f5265736f75726365223a313a7b733a31343a22002a005f7265736f757263654964223b733a33303a2261646d696e2f786d6c636f6e6e6563742f61646d696e5f636f6e6e656374223b7d7d7d733a32333a2261646d696e2f786d6c636f6e6e6563742f6d6f62696c65223b613a333a7b733a383a22696e7374616e6365223b723a313239363b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a303a7b7d7d733a32343a2261646d696e2f786d6c636f6e6e6563742f686973746f7279223b613a333a7b733a383a22696e7374616e6365223b723a313239383b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a303a7b7d7d733a32363a2261646d696e2f786d6c636f6e6e6563742f74656d706c61746573223b613a333a7b733a383a22696e7374616e6365223b723a313330303b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a303a7b7d7d733a32323a2261646d696e2f786d6c636f6e6e6563742f7175657565223b613a333a7b733a383a22696e7374616e6365223b723a313330323b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a303a7b7d7d733a33303a2261646d696e2f786d6c636f6e6e6563742f61646d696e5f636f6e6e656374223b613a333a7b733a383a22696e7374616e6365223b723a313330343b733a363a22706172656e74223b723a3133363b733a383a226368696c6472656e223b613a303a7b7d7d7d733a31373a22002a005f6973416c6c6f776564526f6c65223b723a39363b733a32313a22002a005f6973416c6c6f7765645265736f75726365223b723a3235383b733a32323a22002a005f6973416c6c6f77656450726976696c656765223b4e3b733a393a22002a005f72756c6573223b613a323a7b733a31323a22616c6c5265736f7572636573223b613a323a7b733a383a22616c6c526f6c6573223b613a323a7b733a31333a22616c6c50726976696c65676573223b613a323a7b733a343a2274797065223b733a393a22545950455f44454e59223b733a363a22617373657274223b4e3b7d733a31333a22627950726976696c6567654964223b613a303a7b7d7d733a383a226279526f6c654964223b613a313a7b733a323a224731223b613a323a7b733a31333a22627950726976696c6567654964223b613a303a7b7d733a31333a22616c6c50726976696c65676573223b613a323a7b733a343a2274797065223b733a31303a22545950455f414c4c4f57223b733a363a22617373657274223b4e3b7d7d7d7d733a31323a2262795265736f757263654964223b613a313a7b733a333a22616c6c223b613a313a7b733a383a226279526f6c654964223b613a313a7b733a323a224731223b613a323a7b733a31333a22627950726976696c6567654964223b613a303a7b7d733a31333a22616c6c50726976696c65676573223b613a323a7b733a343a2274797065223b733a31303a22545950455f414c4c4f57223b733a363a22617373657274223b4e3b7d7d7d7d7d7d7d7d);
INSERT INTO `mgnto_core_session` (`session_id`, `session_expires`, `session_data`) VALUES
('tk3b000btdnnt9hdt741mmk210', 1383203103, 0x636f72657c613a363a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a31353a226a7573745f766f7465645f706f6c6c223b623a303b733a31323a2276697369746f725f64617461223b613a31363a7b733a303a22223b4e3b733a31313a227365727665725f61646472223b693a323133303730363433333b733a31313a2272656d6f74655f61646472223b693a323133303730363433333b733a31313a22687474705f736563757265223b623a303b733a393a22687474705f686f7374223b733a393a226c6f63616c686f7374223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b733a32303a22687474705f6163636570745f6c616e6775616765223b733a31343a22656e2d55532c656e3b713d302e35223b733a31393a22687474705f6163636570745f63686172736574223b733a303a22223b733a31313a22726571756573745f757269223b733a32313a222f6d6167656e746f5f6d6167656e746f2f6465762f223b733a31303a2273657373696f6e5f6964223b733a32363a22746b33623030306274646e6e74396864743734316d6d6b323130223b733a31323a22687474705f72656665726572223b733a303a22223b733a31343a2266697273745f76697369745f6174223b733a31393a22323031332d31302d33312030363a30343a3438223b733a31343a2269735f6e65775f76697369746f72223b623a303b733a31333a226c6173745f76697369745f6174223b733a31393a22323031332d31302d33312030363a30353a3032223b733a31303a2276697369746f725f6964223b733a323a223430223b733a31313a226c6173745f75726c5f6964223b733a333a22323838223b7d733a383a226c6173745f75726c223b733a35333a22687474703a2f2f6c6f63616c686f73742f6d6167656e746f5f6d6167656e746f2f6465762f636d732f696e6465782f696e6465782f223b7d637573746f6d65725f626173657c613a343a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a31393a22776973686c6973745f6974656d5f636f756e74223b693a303b7d636865636b6f75747c613a333a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d7d636174616c6f677c613a343a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a383a226d65737361676573223b4f3a33343a224d6167655f436f72655f4d6f64656c5f4d6573736167655f436f6c6c656374696f6e223a323a7b733a31323a22002a005f6d65737361676573223b613a303a7b7d733a32303a22002a005f6c61737441646465644d657373616765223b4e3b7d733a32373a22636174616c6f675f636f6d706172655f6974656d735f636f756e74223b693a303b7d7265706f7274737c613a343a7b733a32333a225f73657373696f6e5f76616c696461746f725f64617461223b613a343a7b733a31313a2272656d6f74655f61646472223b733a393a223132372e302e302e31223b733a383a22687474705f766961223b733a303a22223b733a32303a22687474705f785f666f727761726465645f666f72223b733a303a22223b733a31353a22687474705f757365725f6167656e74223b733a36353a224d6f7a696c6c612f352e30202857696e646f7773204e5420352e313b2072763a32342e3029204765636b6f2f32303130303130312046697265666f782f32342e30223b7d733a31333a2273657373696f6e5f686f737473223b613a313a7b733a393a226c6f63616c686f7374223b623a313b7d733a32363a2270726f647563745f696e6465785f7669657765645f636f756e74223b693a303b733a32383a2270726f647563745f696e6465785f636f6d70617265645f636f756e74223b693a303b7d);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_store`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_store` (
  `store_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Store Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Sort Order',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Activity',
  PRIMARY KEY (`store_id`),
  UNIQUE KEY `UNQ_MGNTO_CORE_STORE_CODE` (`code`),
  KEY `IDX_MGNTO_CORE_STORE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGNTO_CORE_STORE_IS_ACTIVE_SORT_ORDER` (`is_active`,`sort_order`),
  KEY `IDX_MGNTO_CORE_STORE_GROUP_ID` (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Stores' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgnto_core_store`
--

INSERT INTO `mgnto_core_store` (`store_id`, `code`, `website_id`, `group_id`, `name`, `sort_order`, `is_active`) VALUES
(0, 'admin', 0, 0, 'Admin', 0, 1),
(1, 'default', 1, 1, 'Default Store View', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_store_group`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_store_group` (
  `group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Group Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `name` varchar(255) NOT NULL COMMENT 'Store Group Name',
  `root_category_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Root Category Id',
  `default_store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Store Id',
  PRIMARY KEY (`group_id`),
  KEY `IDX_MGNTO_CORE_STORE_GROUP_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGNTO_CORE_STORE_GROUP_DEFAULT_STORE_ID` (`default_store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Store Groups' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgnto_core_store_group`
--

INSERT INTO `mgnto_core_store_group` (`group_id`, `website_id`, `name`, `root_category_id`, `default_store_id`) VALUES
(0, 0, 'Default', 0, 0),
(1, 1, 'Main Website Store', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_translate`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_translate` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key Id of Translation',
  `string` varchar(255) NOT NULL DEFAULT 'Translate String' COMMENT 'Translation String',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `translate` varchar(255) DEFAULT NULL COMMENT 'Translate',
  `locale` varchar(20) NOT NULL DEFAULT 'en_US' COMMENT 'Locale',
  `crc_string` bigint(20) NOT NULL DEFAULT '1591228201' COMMENT 'Translation String CRC32 Hash',
  PRIMARY KEY (`key_id`),
  UNIQUE KEY `UNQ_MGNTO_CORE_TRANSLATE_STORE_ID_LOCALE_CRC_STRING_STRING` (`store_id`,`locale`,`crc_string`,`string`),
  KEY `IDX_MGNTO_CORE_TRANSLATE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Translations' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_url_rewrite`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_url_rewrite` (
  `url_rewrite_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rewrite Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `id_path` varchar(255) DEFAULT NULL COMMENT 'Id Path',
  `request_path` varchar(255) DEFAULT NULL COMMENT 'Request Path',
  `target_path` varchar(255) DEFAULT NULL COMMENT 'Target Path',
  `is_system` smallint(5) unsigned DEFAULT '1' COMMENT 'Defines is Rewrite System',
  `options` varchar(255) DEFAULT NULL COMMENT 'Options',
  `description` varchar(255) DEFAULT NULL COMMENT 'Deascription',
  `category_id` int(10) unsigned DEFAULT NULL COMMENT 'Category Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  PRIMARY KEY (`url_rewrite_id`),
  UNIQUE KEY `UNQ_MGNTO_CORE_URL_REWRITE_REQUEST_PATH_STORE_ID` (`request_path`,`store_id`),
  UNIQUE KEY `UNQ_MGNTO_CORE_URL_REWRITE_ID_PATH_IS_SYSTEM_STORE_ID` (`id_path`,`is_system`,`store_id`),
  KEY `IDX_MGNTO_CORE_URL_REWRITE_TARGET_PATH_STORE_ID` (`target_path`,`store_id`),
  KEY `IDX_MGNTO_CORE_URL_REWRITE_ID_PATH` (`id_path`),
  KEY `IDX_MGNTO_CORE_URL_REWRITE_STORE_ID` (`store_id`),
  KEY `FK_MGNTO_CORE_URL_REWRITE_CTGR_ID_MGNTO_CAT_CTGR_ENTT_ENTT_ID` (`category_id`),
  KEY `FK_MGNTO_CORE_URL_REWRITE_PRD_ID_MGNTO_CAT_CTGR_ENTT_ENTT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Url Rewrites' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_variable`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_variable` (
  `variable_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Variable Code',
  `name` varchar(255) DEFAULT NULL COMMENT 'Variable Name',
  PRIMARY KEY (`variable_id`),
  UNIQUE KEY `UNQ_MGNTO_CORE_VARIABLE_CODE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variables' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_variable_value`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_variable_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Variable Value Id',
  `variable_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Variable Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `plain_value` text COMMENT 'Plain Text Value',
  `html_value` text COMMENT 'Html Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CORE_VARIABLE_VALUE_VARIABLE_ID_STORE_ID` (`variable_id`,`store_id`),
  KEY `IDX_MGNTO_CORE_VARIABLE_VALUE_VARIABLE_ID` (`variable_id`),
  KEY `IDX_MGNTO_CORE_VARIABLE_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Variable Value' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_core_website`
--

CREATE TABLE IF NOT EXISTS `mgnto_core_website` (
  `website_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Website Id',
  `code` varchar(32) DEFAULT NULL COMMENT 'Code',
  `name` varchar(64) DEFAULT NULL COMMENT 'Website Name',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Group Id',
  `is_default` smallint(5) unsigned DEFAULT '0' COMMENT 'Defines Is Website Default',
  PRIMARY KEY (`website_id`),
  UNIQUE KEY `UNQ_MGNTO_CORE_WEBSITE_CODE` (`code`),
  KEY `IDX_MGNTO_CORE_WEBSITE_SORT_ORDER` (`sort_order`),
  KEY `IDX_MGNTO_CORE_WEBSITE_DEFAULT_GROUP_ID` (`default_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Websites' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgnto_core_website`
--

INSERT INTO `mgnto_core_website` (`website_id`, `code`, `name`, `sort_order`, `default_group_id`, `is_default`) VALUES
(0, 'admin', 'Admin', 0, 0, 0),
(1, 'base', 'Main Website', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_coupon_aggregated`
--

CREATE TABLE IF NOT EXISTS `mgnto_coupon_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGNTO_COUPON_AGGRED_PERIOD_STORE_ID_ORDER_STS_COUPON_CODE` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_MGNTO_COUPON_AGGREGATED_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_COUPON_AGGREGATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_coupon_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mgnto_coupon_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `87B15800A814F501325ACF96900B29BB` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_MGNTO_COUPON_AGGREGATED_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_COUPON_AGGREGATED_ORDER_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Coupon Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_coupon_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `mgnto_coupon_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date NOT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `coupon_code` varchar(50) DEFAULT NULL COMMENT 'Coupon Code',
  `coupon_uses` int(11) NOT NULL DEFAULT '0' COMMENT 'Coupon Uses',
  `subtotal_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `total_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount',
  `subtotal_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal Amount Actual',
  `discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount Actual',
  `total_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Amount Actual',
  `rule_name` varchar(255) DEFAULT NULL COMMENT 'Rule Name',
  PRIMARY KEY (`id`),
  UNIQUE KEY `0CA6A488A68CEBF54449ECB28BCA1AB1` (`period`,`store_id`,`order_status`,`coupon_code`),
  KEY `IDX_MGNTO_COUPON_AGGREGATED_UPDATED_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_COUPON_AGGREGATED_UPDATED_RULE_NAME` (`rule_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mgnto Coupon Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_cron_schedule`
--

CREATE TABLE IF NOT EXISTS `mgnto_cron_schedule` (
  `schedule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Schedule Id',
  `job_code` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Job Code',
  `status` varchar(7) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `messages` text COMMENT 'Messages',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `scheduled_at` timestamp NULL DEFAULT NULL COMMENT 'Scheduled At',
  `executed_at` timestamp NULL DEFAULT NULL COMMENT 'Executed At',
  `finished_at` timestamp NULL DEFAULT NULL COMMENT 'Finished At',
  PRIMARY KEY (`schedule_id`),
  KEY `IDX_MGNTO_CRON_SCHEDULE_JOB_CODE` (`job_code`),
  KEY `IDX_MGNTO_CRON_SCHEDULE_SCHEDULED_AT_STATUS` (`scheduled_at`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron Schedule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_address_entity`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_address_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_address_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_address_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CSTR_ADDR_ENTT_DTIME_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Datetime' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_address_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_address_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CSTR_ADDR_ENTT_DEC_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_address_entity_int`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_address_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CSTR_ADDR_ENTT_INT_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Int' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_address_entity_text`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_address_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Text' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_address_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_address_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ADDRESS_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CSTR_ADDR_ENTT_VCHR_ENTT_ID_ATTR_ID_VAL` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Address Entity Varchar' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `is_visible` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Visible',
  `input_filter` varchar(255) DEFAULT NULL COMMENT 'Input Filter',
  `multiline_count` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Multiline Count',
  `validate_rules` text COMMENT 'Validate Rules',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `data_model` varchar(255) DEFAULT NULL COMMENT 'Data Model',
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute';

--
-- Dumping data for table `mgnto_customer_eav_attribute`
--

INSERT INTO `mgnto_customer_eav_attribute` (`attribute_id`, `is_visible`, `input_filter`, `multiline_count`, `validate_rules`, `is_system`, `sort_order`, `data_model`) VALUES
(1, 1, NULL, 0, NULL, 1, 10, NULL),
(2, 0, NULL, 0, NULL, 1, 0, NULL),
(3, 1, NULL, 0, NULL, 1, 20, NULL),
(4, 0, NULL, 0, NULL, 0, 30, NULL),
(5, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(6, 0, NULL, 0, NULL, 0, 50, NULL),
(7, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(8, 0, NULL, 0, NULL, 0, 70, NULL),
(9, 1, NULL, 0, 'a:1:{s:16:"input_validation";s:5:"email";}', 1, 80, NULL),
(10, 1, NULL, 0, NULL, 1, 25, NULL),
(11, 0, 'date', 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 0, 90, NULL),
(12, 0, NULL, 0, NULL, 1, 0, NULL),
(13, 0, NULL, 0, NULL, 1, 0, NULL),
(14, 0, NULL, 0, NULL, 1, 0, NULL),
(15, 0, NULL, 0, 'a:1:{s:15:"max_text_length";i:255;}', 0, 100, NULL),
(16, 0, NULL, 0, NULL, 1, 0, NULL),
(17, 0, NULL, 0, NULL, 0, 0, NULL),
(18, 0, NULL, 0, 'a:0:{}', 0, 110, NULL),
(19, 0, NULL, 0, NULL, 0, 10, NULL),
(20, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 20, NULL),
(21, 0, NULL, 0, NULL, 0, 30, NULL),
(22, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 40, NULL),
(23, 0, NULL, 0, NULL, 0, 50, NULL),
(24, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 60, NULL),
(25, 1, NULL, 2, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 70, NULL),
(26, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 80, NULL),
(27, 1, NULL, 0, NULL, 1, 90, NULL),
(28, 1, NULL, 0, NULL, 1, 100, NULL),
(29, 1, NULL, 0, NULL, 1, 100, NULL),
(30, 1, NULL, 0, 'a:0:{}', 1, 110, 'customer/attribute_data_postcode'),
(31, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 120, NULL),
(32, 1, NULL, 0, 'a:2:{s:15:"max_text_length";i:255;s:15:"min_text_length";i:1;}', 1, 130, NULL),
(33, 0, NULL, 0, NULL, 1, 0, NULL),
(34, 0, NULL, 0, 'a:1:{s:16:"input_validation";s:4:"date";}', 1, 0, NULL),
(35, 1, NULL, 0, NULL, 1, 28, NULL),
(36, 1, NULL, 0, NULL, 1, 140, NULL),
(37, 0, NULL, 0, NULL, 1, 0, NULL),
(38, 0, NULL, 0, NULL, 1, 0, NULL),
(39, 0, NULL, 0, NULL, 1, 0, NULL),
(40, 0, NULL, 0, NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_eav_attribute_website`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_eav_attribute_website` (
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `is_visible` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Visible',
  `is_required` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Required',
  `default_value` text COMMENT 'Default Value',
  `multiline_count` smallint(5) unsigned DEFAULT NULL COMMENT 'Multiline Count',
  PRIMARY KEY (`attribute_id`,`website_id`),
  KEY `IDX_MGNTO_CUSTOMER_EAV_ATTRIBUTE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Eav Attribute Website';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_entity`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `website_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Website Id',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Group Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Active',
  `disable_auto_group_change` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Disable automatic group change based on VAT ID',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_EMAIL_WEBSITE_ID` (`email`,`website_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Datetime' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Decimal' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_entity_int`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Int' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_entity_text`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CUSTOMER_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Text' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID` (`entity_id`,`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_CUSTOMER_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_VALUE` (`entity_id`,`attribute_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Entity Varchar' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_form_attribute`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_form_attribute` (
  `form_code` varchar(32) NOT NULL COMMENT 'Form Code',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`form_code`,`attribute_id`),
  KEY `IDX_MGNTO_CUSTOMER_FORM_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Customer Form Attribute';

--
-- Dumping data for table `mgnto_customer_form_attribute`
--

INSERT INTO `mgnto_customer_form_attribute` (`form_code`, `attribute_id`) VALUES
('adminhtml_customer', 1),
('adminhtml_customer', 3),
('adminhtml_customer', 4),
('checkout_register', 4),
('customer_account_create', 4),
('customer_account_edit', 4),
('adminhtml_customer', 5),
('checkout_register', 5),
('customer_account_create', 5),
('customer_account_edit', 5),
('adminhtml_customer', 6),
('checkout_register', 6),
('customer_account_create', 6),
('customer_account_edit', 6),
('adminhtml_customer', 7),
('checkout_register', 7),
('customer_account_create', 7),
('customer_account_edit', 7),
('adminhtml_customer', 8),
('checkout_register', 8),
('customer_account_create', 8),
('customer_account_edit', 8),
('adminhtml_checkout', 9),
('adminhtml_customer', 9),
('checkout_register', 9),
('customer_account_create', 9),
('customer_account_edit', 9),
('adminhtml_checkout', 10),
('adminhtml_customer', 10),
('adminhtml_checkout', 11),
('adminhtml_customer', 11),
('checkout_register', 11),
('customer_account_create', 11),
('customer_account_edit', 11),
('adminhtml_checkout', 15),
('adminhtml_customer', 15),
('checkout_register', 15),
('customer_account_create', 15),
('customer_account_edit', 15),
('adminhtml_customer', 17),
('checkout_register', 17),
('customer_account_create', 17),
('customer_account_edit', 17),
('adminhtml_checkout', 18),
('adminhtml_customer', 18),
('checkout_register', 18),
('customer_account_create', 18),
('customer_account_edit', 18),
('adminhtml_customer_address', 19),
('customer_address_edit', 19),
('customer_register_address', 19),
('adminhtml_customer_address', 20),
('customer_address_edit', 20),
('customer_register_address', 20),
('adminhtml_customer_address', 21),
('customer_address_edit', 21),
('customer_register_address', 21),
('adminhtml_customer_address', 22),
('customer_address_edit', 22),
('customer_register_address', 22),
('adminhtml_customer_address', 23),
('customer_address_edit', 23),
('customer_register_address', 23),
('adminhtml_customer_address', 24),
('customer_address_edit', 24),
('customer_register_address', 24),
('adminhtml_customer_address', 25),
('customer_address_edit', 25),
('customer_register_address', 25),
('adminhtml_customer_address', 26),
('customer_address_edit', 26),
('customer_register_address', 26),
('adminhtml_customer_address', 27),
('customer_address_edit', 27),
('customer_register_address', 27),
('adminhtml_customer_address', 28),
('customer_address_edit', 28),
('customer_register_address', 28),
('adminhtml_customer_address', 29),
('customer_address_edit', 29),
('customer_register_address', 29),
('adminhtml_customer_address', 30),
('customer_address_edit', 30),
('customer_register_address', 30),
('adminhtml_customer_address', 31),
('customer_address_edit', 31),
('customer_register_address', 31),
('adminhtml_customer_address', 32),
('customer_address_edit', 32),
('customer_register_address', 32),
('adminhtml_customer', 35),
('adminhtml_customer_address', 36),
('customer_address_edit', 36),
('customer_register_address', 36);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_customer_group`
--

CREATE TABLE IF NOT EXISTS `mgnto_customer_group` (
  `customer_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Customer Group Id',
  `customer_group_code` varchar(32) NOT NULL COMMENT 'Customer Group Code',
  `tax_class_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tax Class Id',
  PRIMARY KEY (`customer_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Customer Group' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgnto_customer_group`
--

INSERT INTO `mgnto_customer_group` (`customer_group_id`, `customer_group_code`, `tax_class_id`) VALUES
(0, 'NOT LOGGED IN', 3),
(1, 'General', 3),
(2, 'Wholesale', 3),
(3, 'Retailer', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_dataflow_batch`
--

CREATE TABLE IF NOT EXISTS `mgnto_dataflow_batch` (
  `batch_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `adapter` varchar(128) DEFAULT NULL COMMENT 'Adapter',
  `params` text COMMENT 'Parameters',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`batch_id`),
  KEY `IDX_MGNTO_DATAFLOW_BATCH_PROFILE_ID` (`profile_id`),
  KEY `IDX_MGNTO_DATAFLOW_BATCH_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_DATAFLOW_BATCH_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_dataflow_batch_export`
--

CREATE TABLE IF NOT EXISTS `mgnto_dataflow_batch_export` (
  `batch_export_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Export Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_export_id`),
  KEY `IDX_MGNTO_DATAFLOW_BATCH_EXPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Export' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_dataflow_batch_import`
--

CREATE TABLE IF NOT EXISTS `mgnto_dataflow_batch_import` (
  `batch_import_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Batch Import Id',
  `batch_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Batch Id',
  `batch_data` longtext COMMENT 'Batch Data',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`batch_import_id`),
  KEY `IDX_MGNTO_DATAFLOW_BATCH_IMPORT_BATCH_ID` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Batch Import' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_dataflow_import_data`
--

CREATE TABLE IF NOT EXISTS `mgnto_dataflow_import_data` (
  `import_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Import Id',
  `session_id` int(11) DEFAULT NULL COMMENT 'Session Id',
  `serial_number` int(11) NOT NULL DEFAULT '0' COMMENT 'Serial Number',
  `value` text COMMENT 'Value',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`import_id`),
  KEY `IDX_MGNTO_DATAFLOW_IMPORT_DATA_SESSION_ID` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Import Data' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_dataflow_profile`
--

CREATE TABLE IF NOT EXISTS `mgnto_dataflow_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `actions_xml` text COMMENT 'Actions Xml',
  `gui_data` text COMMENT 'Gui Data',
  `direction` varchar(6) DEFAULT NULL COMMENT 'Direction',
  `entity_type` varchar(64) DEFAULT NULL COMMENT 'Entity Type',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `data_transfer` varchar(11) DEFAULT NULL COMMENT 'Data Transfer',
  PRIMARY KEY (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `mgnto_dataflow_profile`
--

INSERT INTO `mgnto_dataflow_profile` (`profile_id`, `name`, `created_at`, `updated_at`, `actions_xml`, `gui_data`, `direction`, `entity_type`, `store_id`, `data_transfer`) VALUES
(1, 'Export All Products', '2013-10-19 01:43:51', '2013-10-19 01:43:51', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(2, 'Export Product Stocks', '2013-10-19 01:43:51', '2013-10-19 01:43:51', '<action type="catalog/convert_adapter_product" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="catalog/convert_parser_product" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_all_products.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:25:"export_product_stocks.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:4:"true";s:7:"product";a:2:{s:2:"db";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}s:4:"file";a:4:{i:1;s:5:"store";i:2;s:3:"sku";i:3;s:3:"qty";i:4;s:11:"is_in_stock";}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'product', 0, 'file'),
(3, 'Import All Products', '2013-10-19 01:43:52', '2013-10-19 01:43:52', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:23:"export_all_products.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(4, 'Import Product Stocks', '2013-10-19 01:43:52', '2013-10-19 01:43:52', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">catalog/convert_adapter_product</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:18:"export_product.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'product', 0, 'interactive'),
(5, 'Export Customers', '2013-10-19 01:43:52', '2013-10-19 01:43:52', '<action type="customer/convert_adapter_customer" method="load">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="filter/adressType"><![CDATA[default_billing]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="customer/convert_parser_customer" method="unparse">\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_mapper_column" method="map">\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_parser_csv" method="unparse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n</action>\\r\\n\\r\\n<action type="dataflow/convert_adapter_io" method="save">\\r\\n    <var name="type">file</var>\\r\\n    <var name="path">var/export</var>\\r\\n    <var name="filename"><![CDATA[export_customers.csv]]></var>\\r\\n</action>\\r\\n\\r\\n', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:20:"export_customers.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'export', 'customer', 0, 'file'),
(6, 'Import Customers', '2013-10-19 01:43:52', '2013-10-19 01:43:52', '<action type="dataflow/convert_parser_csv" method="parse">\\r\\n    <var name="delimiter"><![CDATA[,]]></var>\\r\\n    <var name="enclose"><![CDATA["]]></var>\\r\\n    <var name="fieldnames">true</var>\\r\\n    <var name="store"><![CDATA[0]]></var>\\r\\n    <var name="adapter">customer/convert_adapter_customer</var>\\r\\n    <var name="method">parse</var>\\r\\n</action>', 'a:5:{s:4:"file";a:7:{s:4:"type";s:4:"file";s:8:"filename";s:19:"export_customer.csv";s:4:"path";s:10:"var/export";s:4:"host";s:0:"";s:4:"user";s:0:"";s:8:"password";s:0:"";s:7:"passive";s:0:"";}s:5:"parse";a:5:{s:4:"type";s:3:"csv";s:12:"single_sheet";s:0:"";s:9:"delimiter";s:1:",";s:7:"enclose";s:1:""";s:10:"fieldnames";s:4:"true";}s:3:"map";a:3:{s:14:"only_specified";s:0:"";s:7:"product";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}s:8:"customer";a:2:{s:2:"db";a:0:{}s:4:"file";a:0:{}}}s:7:"product";a:1:{s:6:"filter";a:8:{s:4:"name";s:0:"";s:3:"sku";s:0:"";s:4:"type";s:1:"0";s:13:"attribute_set";s:0:"";s:5:"price";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:3:"qty";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}s:10:"visibility";s:1:"0";s:6:"status";s:1:"0";}}s:8:"customer";a:1:{s:6:"filter";a:10:{s:9:"firstname";s:0:"";s:8:"lastname";s:0:"";s:5:"email";s:0:"";s:5:"group";s:1:"0";s:10:"adressType";s:15:"default_billing";s:9:"telephone";s:0:"";s:8:"postcode";s:0:"";s:7:"country";s:0:"";s:6:"region";s:0:"";s:10:"created_at";a:2:{s:4:"from";s:0:"";s:2:"to";s:0:"";}}}}', 'import', 'customer', 0, 'interactive');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_dataflow_profile_history`
--

CREATE TABLE IF NOT EXISTS `mgnto_dataflow_profile_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `action_code` varchar(64) DEFAULT NULL COMMENT 'Action Code',
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'User Id',
  `performed_at` timestamp NULL DEFAULT NULL COMMENT 'Performed At',
  PRIMARY KEY (`history_id`),
  KEY `IDX_MGNTO_DATAFLOW_PROFILE_HISTORY_PROFILE_ID` (`profile_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Dataflow Profile History' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `mgnto_dataflow_profile_history`
--

INSERT INTO `mgnto_dataflow_profile_history` (`history_id`, `profile_id`, `action_code`, `user_id`, `performed_at`) VALUES
(1, 1, 'create', 0, '2013-10-19 01:43:51'),
(2, 2, 'create', 0, '2013-10-19 01:43:52'),
(3, 3, 'create', 0, '2013-10-19 01:43:52'),
(4, 4, 'create', 0, '2013-10-19 01:43:52'),
(5, 5, 'create', 0, '2013-10-19 01:43:52'),
(6, 6, 'create', 0, '2013-10-19 01:43:52');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_dataflow_session`
--

CREATE TABLE IF NOT EXISTS `mgnto_dataflow_session` (
  `session_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Session Id',
  `user_id` int(11) NOT NULL COMMENT 'User Id',
  `created_date` timestamp NULL DEFAULT NULL COMMENT 'Created Date',
  `file` varchar(255) DEFAULT NULL COMMENT 'File',
  `type` varchar(32) DEFAULT NULL COMMENT 'Type',
  `direction` varchar(32) DEFAULT NULL COMMENT 'Direction',
  `comment` varchar(255) DEFAULT NULL COMMENT 'Comment',
  PRIMARY KEY (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Dataflow Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_design_change`
--

CREATE TABLE IF NOT EXISTS `mgnto_design_change` (
  `design_change_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Design Change Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `design` varchar(255) DEFAULT NULL COMMENT 'Design',
  `date_from` date DEFAULT NULL COMMENT 'First Date of Design Activity',
  `date_to` date DEFAULT NULL COMMENT 'Last Date of Design Activity',
  PRIMARY KEY (`design_change_id`),
  KEY `IDX_MGNTO_DESIGN_CHANGE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Design Changes' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_directory_country`
--

CREATE TABLE IF NOT EXISTS `mgnto_directory_country` (
  `country_id` varchar(2) NOT NULL DEFAULT '' COMMENT 'Country Id in ISO-2',
  `iso2_code` varchar(2) DEFAULT NULL COMMENT 'Country ISO-2 format',
  `iso3_code` varchar(3) DEFAULT NULL COMMENT 'Country ISO-3',
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country';

--
-- Dumping data for table `mgnto_directory_country`
--

INSERT INTO `mgnto_directory_country` (`country_id`, `iso2_code`, `iso3_code`) VALUES
('AD', 'AD', 'AND'),
('AE', 'AE', 'ARE'),
('AF', 'AF', 'AFG'),
('AG', 'AG', 'ATG'),
('AI', 'AI', 'AIA'),
('AL', 'AL', 'ALB'),
('AM', 'AM', 'ARM'),
('AN', 'AN', 'ANT'),
('AO', 'AO', 'AGO'),
('AQ', 'AQ', 'ATA'),
('AR', 'AR', 'ARG'),
('AS', 'AS', 'ASM'),
('AT', 'AT', 'AUT'),
('AU', 'AU', 'AUS'),
('AW', 'AW', 'ABW'),
('AX', 'AX', 'ALA'),
('AZ', 'AZ', 'AZE'),
('BA', 'BA', 'BIH'),
('BB', 'BB', 'BRB'),
('BD', 'BD', 'BGD'),
('BE', 'BE', 'BEL'),
('BF', 'BF', 'BFA'),
('BG', 'BG', 'BGR'),
('BH', 'BH', 'BHR'),
('BI', 'BI', 'BDI'),
('BJ', 'BJ', 'BEN'),
('BL', 'BL', 'BLM'),
('BM', 'BM', 'BMU'),
('BN', 'BN', 'BRN'),
('BO', 'BO', 'BOL'),
('BR', 'BR', 'BRA'),
('BS', 'BS', 'BHS'),
('BT', 'BT', 'BTN'),
('BV', 'BV', 'BVT'),
('BW', 'BW', 'BWA'),
('BY', 'BY', 'BLR'),
('BZ', 'BZ', 'BLZ'),
('CA', 'CA', 'CAN'),
('CC', 'CC', 'CCK'),
('CD', 'CD', 'COD'),
('CF', 'CF', 'CAF'),
('CG', 'CG', 'COG'),
('CH', 'CH', 'CHE'),
('CI', 'CI', 'CIV'),
('CK', 'CK', 'COK'),
('CL', 'CL', 'CHL'),
('CM', 'CM', 'CMR'),
('CN', 'CN', 'CHN'),
('CO', 'CO', 'COL'),
('CR', 'CR', 'CRI'),
('CU', 'CU', 'CUB'),
('CV', 'CV', 'CPV'),
('CX', 'CX', 'CXR'),
('CY', 'CY', 'CYP'),
('CZ', 'CZ', 'CZE'),
('DE', 'DE', 'DEU'),
('DJ', 'DJ', 'DJI'),
('DK', 'DK', 'DNK'),
('DM', 'DM', 'DMA'),
('DO', 'DO', 'DOM'),
('DZ', 'DZ', 'DZA'),
('EC', 'EC', 'ECU'),
('EE', 'EE', 'EST'),
('EG', 'EG', 'EGY'),
('EH', 'EH', 'ESH'),
('ER', 'ER', 'ERI'),
('ES', 'ES', 'ESP'),
('ET', 'ET', 'ETH'),
('FI', 'FI', 'FIN'),
('FJ', 'FJ', 'FJI'),
('FK', 'FK', 'FLK'),
('FM', 'FM', 'FSM'),
('FO', 'FO', 'FRO'),
('FR', 'FR', 'FRA'),
('GA', 'GA', 'GAB'),
('GB', 'GB', 'GBR'),
('GD', 'GD', 'GRD'),
('GE', 'GE', 'GEO'),
('GF', 'GF', 'GUF'),
('GG', 'GG', 'GGY'),
('GH', 'GH', 'GHA'),
('GI', 'GI', 'GIB'),
('GL', 'GL', 'GRL'),
('GM', 'GM', 'GMB'),
('GN', 'GN', 'GIN'),
('GP', 'GP', 'GLP'),
('GQ', 'GQ', 'GNQ'),
('GR', 'GR', 'GRC'),
('GS', 'GS', 'SGS'),
('GT', 'GT', 'GTM'),
('GU', 'GU', 'GUM'),
('GW', 'GW', 'GNB'),
('GY', 'GY', 'GUY'),
('HK', 'HK', 'HKG'),
('HM', 'HM', 'HMD'),
('HN', 'HN', 'HND'),
('HR', 'HR', 'HRV'),
('HT', 'HT', 'HTI'),
('HU', 'HU', 'HUN'),
('ID', 'ID', 'IDN'),
('IE', 'IE', 'IRL'),
('IL', 'IL', 'ISR'),
('IM', 'IM', 'IMN'),
('IN', 'IN', 'IND'),
('IO', 'IO', 'IOT'),
('IQ', 'IQ', 'IRQ'),
('IR', 'IR', 'IRN'),
('IS', 'IS', 'ISL'),
('IT', 'IT', 'ITA'),
('JE', 'JE', 'JEY'),
('JM', 'JM', 'JAM'),
('JO', 'JO', 'JOR'),
('JP', 'JP', 'JPN'),
('KE', 'KE', 'KEN'),
('KG', 'KG', 'KGZ'),
('KH', 'KH', 'KHM'),
('KI', 'KI', 'KIR'),
('KM', 'KM', 'COM'),
('KN', 'KN', 'KNA'),
('KP', 'KP', 'PRK'),
('KR', 'KR', 'KOR'),
('KW', 'KW', 'KWT'),
('KY', 'KY', 'CYM'),
('KZ', 'KZ', 'KAZ'),
('LA', 'LA', 'LAO'),
('LB', 'LB', 'LBN'),
('LC', 'LC', 'LCA'),
('LI', 'LI', 'LIE'),
('LK', 'LK', 'LKA'),
('LR', 'LR', 'LBR'),
('LS', 'LS', 'LSO'),
('LT', 'LT', 'LTU'),
('LU', 'LU', 'LUX'),
('LV', 'LV', 'LVA'),
('LY', 'LY', 'LBY'),
('MA', 'MA', 'MAR'),
('MC', 'MC', 'MCO'),
('MD', 'MD', 'MDA'),
('ME', 'ME', 'MNE'),
('MF', 'MF', 'MAF'),
('MG', 'MG', 'MDG'),
('MH', 'MH', 'MHL'),
('MK', 'MK', 'MKD'),
('ML', 'ML', 'MLI'),
('MM', 'MM', 'MMR'),
('MN', 'MN', 'MNG'),
('MO', 'MO', 'MAC'),
('MP', 'MP', 'MNP'),
('MQ', 'MQ', 'MTQ'),
('MR', 'MR', 'MRT'),
('MS', 'MS', 'MSR'),
('MT', 'MT', 'MLT'),
('MU', 'MU', 'MUS'),
('MV', 'MV', 'MDV'),
('MW', 'MW', 'MWI'),
('MX', 'MX', 'MEX'),
('MY', 'MY', 'MYS'),
('MZ', 'MZ', 'MOZ'),
('NA', 'NA', 'NAM'),
('NC', 'NC', 'NCL'),
('NE', 'NE', 'NER'),
('NF', 'NF', 'NFK'),
('NG', 'NG', 'NGA'),
('NI', 'NI', 'NIC'),
('NL', 'NL', 'NLD'),
('NO', 'NO', 'NOR'),
('NP', 'NP', 'NPL'),
('NR', 'NR', 'NRU'),
('NU', 'NU', 'NIU'),
('NZ', 'NZ', 'NZL'),
('OM', 'OM', 'OMN'),
('PA', 'PA', 'PAN'),
('PE', 'PE', 'PER'),
('PF', 'PF', 'PYF'),
('PG', 'PG', 'PNG'),
('PH', 'PH', 'PHL'),
('PK', 'PK', 'PAK'),
('PL', 'PL', 'POL'),
('PM', 'PM', 'SPM'),
('PN', 'PN', 'PCN'),
('PR', 'PR', 'PRI'),
('PS', 'PS', 'PSE'),
('PT', 'PT', 'PRT'),
('PW', 'PW', 'PLW'),
('PY', 'PY', 'PRY'),
('QA', 'QA', 'QAT'),
('RE', 'RE', 'REU'),
('RO', 'RO', 'ROU'),
('RS', 'RS', 'SRB'),
('RU', 'RU', 'RUS'),
('RW', 'RW', 'RWA'),
('SA', 'SA', 'SAU'),
('SB', 'SB', 'SLB'),
('SC', 'SC', 'SYC'),
('SD', 'SD', 'SDN'),
('SE', 'SE', 'SWE'),
('SG', 'SG', 'SGP'),
('SH', 'SH', 'SHN'),
('SI', 'SI', 'SVN'),
('SJ', 'SJ', 'SJM'),
('SK', 'SK', 'SVK'),
('SL', 'SL', 'SLE'),
('SM', 'SM', 'SMR'),
('SN', 'SN', 'SEN'),
('SO', 'SO', 'SOM'),
('SR', 'SR', 'SUR'),
('ST', 'ST', 'STP'),
('SV', 'SV', 'SLV'),
('SY', 'SY', 'SYR'),
('SZ', 'SZ', 'SWZ'),
('TC', 'TC', 'TCA'),
('TD', 'TD', 'TCD'),
('TF', 'TF', 'ATF'),
('TG', 'TG', 'TGO'),
('TH', 'TH', 'THA'),
('TJ', 'TJ', 'TJK'),
('TK', 'TK', 'TKL'),
('TL', 'TL', 'TLS'),
('TM', 'TM', 'TKM'),
('TN', 'TN', 'TUN'),
('TO', 'TO', 'TON'),
('TR', 'TR', 'TUR'),
('TT', 'TT', 'TTO'),
('TV', 'TV', 'TUV'),
('TW', 'TW', 'TWN'),
('TZ', 'TZ', 'TZA'),
('UA', 'UA', 'UKR'),
('UG', 'UG', 'UGA'),
('UM', 'UM', 'UMI'),
('US', 'US', 'USA'),
('UY', 'UY', 'URY'),
('UZ', 'UZ', 'UZB'),
('VA', 'VA', 'VAT'),
('VC', 'VC', 'VCT'),
('VE', 'VE', 'VEN'),
('VG', 'VG', 'VGB'),
('VI', 'VI', 'VIR'),
('VN', 'VN', 'VNM'),
('VU', 'VU', 'VUT'),
('WF', 'WF', 'WLF'),
('WS', 'WS', 'WSM'),
('YE', 'YE', 'YEM'),
('YT', 'YT', 'MYT'),
('ZA', 'ZA', 'ZAF'),
('ZM', 'ZM', 'ZMB'),
('ZW', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_directory_country_format`
--

CREATE TABLE IF NOT EXISTS `mgnto_directory_country_format` (
  `country_format_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Country Format Id',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id in ISO-2',
  `type` varchar(30) DEFAULT NULL COMMENT 'Country Format Type',
  `format` text NOT NULL COMMENT 'Country Format',
  PRIMARY KEY (`country_format_id`),
  UNIQUE KEY `UNQ_MGNTO_DIRECTORY_COUNTRY_FORMAT_COUNTRY_ID_TYPE` (`country_id`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Format' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_directory_country_region`
--

CREATE TABLE IF NOT EXISTS `mgnto_directory_country_region` (
  `region_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Region Id',
  `country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Country Id in ISO-2',
  `code` varchar(32) DEFAULT NULL COMMENT 'Region code',
  `default_name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`region_id`),
  KEY `IDX_MGNTO_DIRECTORY_COUNTRY_REGION_COUNTRY_ID` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Directory Country Region' AUTO_INCREMENT=485 ;

--
-- Dumping data for table `mgnto_directory_country_region`
--

INSERT INTO `mgnto_directory_country_region` (`region_id`, `country_id`, `code`, `default_name`) VALUES
(1, 'US', 'AL', 'Alabama'),
(2, 'US', 'AK', 'Alaska'),
(3, 'US', 'AS', 'American Samoa'),
(4, 'US', 'AZ', 'Arizona'),
(5, 'US', 'AR', 'Arkansas'),
(6, 'US', 'AF', 'Armed Forces Africa'),
(7, 'US', 'AA', 'Armed Forces Americas'),
(8, 'US', 'AC', 'Armed Forces Canada'),
(9, 'US', 'AE', 'Armed Forces Europe'),
(10, 'US', 'AM', 'Armed Forces Middle East'),
(11, 'US', 'AP', 'Armed Forces Pacific'),
(12, 'US', 'CA', 'California'),
(13, 'US', 'CO', 'Colorado'),
(14, 'US', 'CT', 'Connecticut'),
(15, 'US', 'DE', 'Delaware'),
(16, 'US', 'DC', 'District of Columbia'),
(17, 'US', 'FM', 'Federated States Of Micronesia'),
(18, 'US', 'FL', 'Florida'),
(19, 'US', 'GA', 'Georgia'),
(20, 'US', 'GU', 'Guam'),
(21, 'US', 'HI', 'Hawaii'),
(22, 'US', 'ID', 'Idaho'),
(23, 'US', 'IL', 'Illinois'),
(24, 'US', 'IN', 'Indiana'),
(25, 'US', 'IA', 'Iowa'),
(26, 'US', 'KS', 'Kansas'),
(27, 'US', 'KY', 'Kentucky'),
(28, 'US', 'LA', 'Louisiana'),
(29, 'US', 'ME', 'Maine'),
(30, 'US', 'MH', 'Marshall Islands'),
(31, 'US', 'MD', 'Maryland'),
(32, 'US', 'MA', 'Massachusetts'),
(33, 'US', 'MI', 'Michigan'),
(34, 'US', 'MN', 'Minnesota'),
(35, 'US', 'MS', 'Mississippi'),
(36, 'US', 'MO', 'Missouri'),
(37, 'US', 'MT', 'Montana'),
(38, 'US', 'NE', 'Nebraska'),
(39, 'US', 'NV', 'Nevada'),
(40, 'US', 'NH', 'New Hampshire'),
(41, 'US', 'NJ', 'New Jersey'),
(42, 'US', 'NM', 'New Mexico'),
(43, 'US', 'NY', 'New York'),
(44, 'US', 'NC', 'North Carolina'),
(45, 'US', 'ND', 'North Dakota'),
(46, 'US', 'MP', 'Northern Mariana Islands'),
(47, 'US', 'OH', 'Ohio'),
(48, 'US', 'OK', 'Oklahoma'),
(49, 'US', 'OR', 'Oregon'),
(50, 'US', 'PW', 'Palau'),
(51, 'US', 'PA', 'Pennsylvania'),
(52, 'US', 'PR', 'Puerto Rico'),
(53, 'US', 'RI', 'Rhode Island'),
(54, 'US', 'SC', 'South Carolina'),
(55, 'US', 'SD', 'South Dakota'),
(56, 'US', 'TN', 'Tennessee'),
(57, 'US', 'TX', 'Texas'),
(58, 'US', 'UT', 'Utah'),
(59, 'US', 'VT', 'Vermont'),
(60, 'US', 'VI', 'Virgin Islands'),
(61, 'US', 'VA', 'Virginia'),
(62, 'US', 'WA', 'Washington'),
(63, 'US', 'WV', 'West Virginia'),
(64, 'US', 'WI', 'Wisconsin'),
(65, 'US', 'WY', 'Wyoming'),
(66, 'CA', 'AB', 'Alberta'),
(67, 'CA', 'BC', 'British Columbia'),
(68, 'CA', 'MB', 'Manitoba'),
(69, 'CA', 'NL', 'Newfoundland and Labrador'),
(70, 'CA', 'NB', 'New Brunswick'),
(71, 'CA', 'NS', 'Nova Scotia'),
(72, 'CA', 'NT', 'Northwest Territories'),
(73, 'CA', 'NU', 'Nunavut'),
(74, 'CA', 'ON', 'Ontario'),
(75, 'CA', 'PE', 'Prince Edward Island'),
(76, 'CA', 'QC', 'Quebec'),
(77, 'CA', 'SK', 'Saskatchewan'),
(78, 'CA', 'YT', 'Yukon Territory'),
(79, 'DE', 'NDS', 'Niedersachsen'),
(80, 'DE', 'BAW', 'Baden-Württemberg'),
(81, 'DE', 'BAY', 'Bayern'),
(82, 'DE', 'BER', 'Berlin'),
(83, 'DE', 'BRG', 'Brandenburg'),
(84, 'DE', 'BRE', 'Bremen'),
(85, 'DE', 'HAM', 'Hamburg'),
(86, 'DE', 'HES', 'Hessen'),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern'),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen'),
(89, 'DE', 'RHE', 'Rheinland-Pfalz'),
(90, 'DE', 'SAR', 'Saarland'),
(91, 'DE', 'SAS', 'Sachsen'),
(92, 'DE', 'SAC', 'Sachsen-Anhalt'),
(93, 'DE', 'SCN', 'Schleswig-Holstein'),
(94, 'DE', 'THE', 'Thüringen'),
(95, 'AT', 'WI', 'Wien'),
(96, 'AT', 'NO', 'Niederösterreich'),
(97, 'AT', 'OO', 'Oberösterreich'),
(98, 'AT', 'SB', 'Salzburg'),
(99, 'AT', 'KN', 'Kärnten'),
(100, 'AT', 'ST', 'Steiermark'),
(101, 'AT', 'TI', 'Tirol'),
(102, 'AT', 'BL', 'Burgenland'),
(103, 'AT', 'VB', 'Voralberg'),
(104, 'CH', 'AG', 'Aargau'),
(105, 'CH', 'AI', 'Appenzell Innerrhoden'),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden'),
(107, 'CH', 'BE', 'Bern'),
(108, 'CH', 'BL', 'Basel-Landschaft'),
(109, 'CH', 'BS', 'Basel-Stadt'),
(110, 'CH', 'FR', 'Freiburg'),
(111, 'CH', 'GE', 'Genf'),
(112, 'CH', 'GL', 'Glarus'),
(113, 'CH', 'GR', 'Graubünden'),
(114, 'CH', 'JU', 'Jura'),
(115, 'CH', 'LU', 'Luzern'),
(116, 'CH', 'NE', 'Neuenburg'),
(117, 'CH', 'NW', 'Nidwalden'),
(118, 'CH', 'OW', 'Obwalden'),
(119, 'CH', 'SG', 'St. Gallen'),
(120, 'CH', 'SH', 'Schaffhausen'),
(121, 'CH', 'SO', 'Solothurn'),
(122, 'CH', 'SZ', 'Schwyz'),
(123, 'CH', 'TG', 'Thurgau'),
(124, 'CH', 'TI', 'Tessin'),
(125, 'CH', 'UR', 'Uri'),
(126, 'CH', 'VD', 'Waadt'),
(127, 'CH', 'VS', 'Wallis'),
(128, 'CH', 'ZG', 'Zug'),
(129, 'CH', 'ZH', 'Zürich'),
(130, 'ES', 'A Coruсa', 'A Coruña'),
(131, 'ES', 'Alava', 'Alava'),
(132, 'ES', 'Albacete', 'Albacete'),
(133, 'ES', 'Alicante', 'Alicante'),
(134, 'ES', 'Almeria', 'Almeria'),
(135, 'ES', 'Asturias', 'Asturias'),
(136, 'ES', 'Avila', 'Avila'),
(137, 'ES', 'Badajoz', 'Badajoz'),
(138, 'ES', 'Baleares', 'Baleares'),
(139, 'ES', 'Barcelona', 'Barcelona'),
(140, 'ES', 'Burgos', 'Burgos'),
(141, 'ES', 'Caceres', 'Caceres'),
(142, 'ES', 'Cadiz', 'Cadiz'),
(143, 'ES', 'Cantabria', 'Cantabria'),
(144, 'ES', 'Castellon', 'Castellon'),
(145, 'ES', 'Ceuta', 'Ceuta'),
(146, 'ES', 'Ciudad Real', 'Ciudad Real'),
(147, 'ES', 'Cordoba', 'Cordoba'),
(148, 'ES', 'Cuenca', 'Cuenca'),
(149, 'ES', 'Girona', 'Girona'),
(150, 'ES', 'Granada', 'Granada'),
(151, 'ES', 'Guadalajara', 'Guadalajara'),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa'),
(153, 'ES', 'Huelva', 'Huelva'),
(154, 'ES', 'Huesca', 'Huesca'),
(155, 'ES', 'Jaen', 'Jaen'),
(156, 'ES', 'La Rioja', 'La Rioja'),
(157, 'ES', 'Las Palmas', 'Las Palmas'),
(158, 'ES', 'Leon', 'Leon'),
(159, 'ES', 'Lleida', 'Lleida'),
(160, 'ES', 'Lugo', 'Lugo'),
(161, 'ES', 'Madrid', 'Madrid'),
(162, 'ES', 'Malaga', 'Malaga'),
(163, 'ES', 'Melilla', 'Melilla'),
(164, 'ES', 'Murcia', 'Murcia'),
(165, 'ES', 'Navarra', 'Navarra'),
(166, 'ES', 'Ourense', 'Ourense'),
(167, 'ES', 'Palencia', 'Palencia'),
(168, 'ES', 'Pontevedra', 'Pontevedra'),
(169, 'ES', 'Salamanca', 'Salamanca'),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 'ES', 'Segovia', 'Segovia'),
(172, 'ES', 'Sevilla', 'Sevilla'),
(173, 'ES', 'Soria', 'Soria'),
(174, 'ES', 'Tarragona', 'Tarragona'),
(175, 'ES', 'Teruel', 'Teruel'),
(176, 'ES', 'Toledo', 'Toledo'),
(177, 'ES', 'Valencia', 'Valencia'),
(178, 'ES', 'Valladolid', 'Valladolid'),
(179, 'ES', 'Vizcaya', 'Vizcaya'),
(180, 'ES', 'Zamora', 'Zamora'),
(181, 'ES', 'Zaragoza', 'Zaragoza'),
(182, 'FR', '1', 'Ain'),
(183, 'FR', '2', 'Aisne'),
(184, 'FR', '3', 'Allier'),
(185, 'FR', '4', 'Alpes-de-Haute-Provence'),
(186, 'FR', '5', 'Hautes-Alpes'),
(187, 'FR', '6', 'Alpes-Maritimes'),
(188, 'FR', '7', 'Ardèche'),
(189, 'FR', '8', 'Ardennes'),
(190, 'FR', '9', 'Ariège'),
(191, 'FR', '10', 'Aube'),
(192, 'FR', '11', 'Aude'),
(193, 'FR', '12', 'Aveyron'),
(194, 'FR', '13', 'Bouches-du-Rhône'),
(195, 'FR', '14', 'Calvados'),
(196, 'FR', '15', 'Cantal'),
(197, 'FR', '16', 'Charente'),
(198, 'FR', '17', 'Charente-Maritime'),
(199, 'FR', '18', 'Cher'),
(200, 'FR', '19', 'Corrèze'),
(201, 'FR', '2A', 'Corse-du-Sud'),
(202, 'FR', '2B', 'Haute-Corse'),
(203, 'FR', '21', 'Côte-d''Or'),
(204, 'FR', '22', 'Côtes-d''Armor'),
(205, 'FR', '23', 'Creuse'),
(206, 'FR', '24', 'Dordogne'),
(207, 'FR', '25', 'Doubs'),
(208, 'FR', '26', 'Drôme'),
(209, 'FR', '27', 'Eure'),
(210, 'FR', '28', 'Eure-et-Loir'),
(211, 'FR', '29', 'Finistère'),
(212, 'FR', '30', 'Gard'),
(213, 'FR', '31', 'Haute-Garonne'),
(214, 'FR', '32', 'Gers'),
(215, 'FR', '33', 'Gironde'),
(216, 'FR', '34', 'Hérault'),
(217, 'FR', '35', 'Ille-et-Vilaine'),
(218, 'FR', '36', 'Indre'),
(219, 'FR', '37', 'Indre-et-Loire'),
(220, 'FR', '38', 'Isère'),
(221, 'FR', '39', 'Jura'),
(222, 'FR', '40', 'Landes'),
(223, 'FR', '41', 'Loir-et-Cher'),
(224, 'FR', '42', 'Loire'),
(225, 'FR', '43', 'Haute-Loire'),
(226, 'FR', '44', 'Loire-Atlantique'),
(227, 'FR', '45', 'Loiret'),
(228, 'FR', '46', 'Lot'),
(229, 'FR', '47', 'Lot-et-Garonne'),
(230, 'FR', '48', 'Lozère'),
(231, 'FR', '49', 'Maine-et-Loire'),
(232, 'FR', '50', 'Manche'),
(233, 'FR', '51', 'Marne'),
(234, 'FR', '52', 'Haute-Marne'),
(235, 'FR', '53', 'Mayenne'),
(236, 'FR', '54', 'Meurthe-et-Moselle'),
(237, 'FR', '55', 'Meuse'),
(238, 'FR', '56', 'Morbihan'),
(239, 'FR', '57', 'Moselle'),
(240, 'FR', '58', 'Nièvre'),
(241, 'FR', '59', 'Nord'),
(242, 'FR', '60', 'Oise'),
(243, 'FR', '61', 'Orne'),
(244, 'FR', '62', 'Pas-de-Calais'),
(245, 'FR', '63', 'Puy-de-Dôme'),
(246, 'FR', '64', 'Pyrénées-Atlantiques'),
(247, 'FR', '65', 'Hautes-Pyrénées'),
(248, 'FR', '66', 'Pyrénées-Orientales'),
(249, 'FR', '67', 'Bas-Rhin'),
(250, 'FR', '68', 'Haut-Rhin'),
(251, 'FR', '69', 'Rhône'),
(252, 'FR', '70', 'Haute-Saône'),
(253, 'FR', '71', 'Saône-et-Loire'),
(254, 'FR', '72', 'Sarthe'),
(255, 'FR', '73', 'Savoie'),
(256, 'FR', '74', 'Haute-Savoie'),
(257, 'FR', '75', 'Paris'),
(258, 'FR', '76', 'Seine-Maritime'),
(259, 'FR', '77', 'Seine-et-Marne'),
(260, 'FR', '78', 'Yvelines'),
(261, 'FR', '79', 'Deux-Sèvres'),
(262, 'FR', '80', 'Somme'),
(263, 'FR', '81', 'Tarn'),
(264, 'FR', '82', 'Tarn-et-Garonne'),
(265, 'FR', '83', 'Var'),
(266, 'FR', '84', 'Vaucluse'),
(267, 'FR', '85', 'Vendée'),
(268, 'FR', '86', 'Vienne'),
(269, 'FR', '87', 'Haute-Vienne'),
(270, 'FR', '88', 'Vosges'),
(271, 'FR', '89', 'Yonne'),
(272, 'FR', '90', 'Territoire-de-Belfort'),
(273, 'FR', '91', 'Essonne'),
(274, 'FR', '92', 'Hauts-de-Seine'),
(275, 'FR', '93', 'Seine-Saint-Denis'),
(276, 'FR', '94', 'Val-de-Marne'),
(277, 'FR', '95', 'Val-d''Oise'),
(278, 'RO', 'AB', 'Alba'),
(279, 'RO', 'AR', 'Arad'),
(280, 'RO', 'AG', 'Argeş'),
(281, 'RO', 'BC', 'Bacău'),
(282, 'RO', 'BH', 'Bihor'),
(283, 'RO', 'BN', 'Bistriţa-Năsăud'),
(284, 'RO', 'BT', 'Botoşani'),
(285, 'RO', 'BV', 'Braşov'),
(286, 'RO', 'BR', 'Brăila'),
(287, 'RO', 'B', 'Bucureşti'),
(288, 'RO', 'BZ', 'Buzău'),
(289, 'RO', 'CS', 'Caraş-Severin'),
(290, 'RO', 'CL', 'Călăraşi'),
(291, 'RO', 'CJ', 'Cluj'),
(292, 'RO', 'CT', 'Constanţa'),
(293, 'RO', 'CV', 'Covasna'),
(294, 'RO', 'DB', 'Dâmboviţa'),
(295, 'RO', 'DJ', 'Dolj'),
(296, 'RO', 'GL', 'Galaţi'),
(297, 'RO', 'GR', 'Giurgiu'),
(298, 'RO', 'GJ', 'Gorj'),
(299, 'RO', 'HR', 'Harghita'),
(300, 'RO', 'HD', 'Hunedoara'),
(301, 'RO', 'IL', 'Ialomiţa'),
(302, 'RO', 'IS', 'Iaşi'),
(303, 'RO', 'IF', 'Ilfov'),
(304, 'RO', 'MM', 'Maramureş'),
(305, 'RO', 'MH', 'Mehedinţi'),
(306, 'RO', 'MS', 'Mureş'),
(307, 'RO', 'NT', 'Neamţ'),
(308, 'RO', 'OT', 'Olt'),
(309, 'RO', 'PH', 'Prahova'),
(310, 'RO', 'SM', 'Satu-Mare'),
(311, 'RO', 'SJ', 'Sălaj'),
(312, 'RO', 'SB', 'Sibiu'),
(313, 'RO', 'SV', 'Suceava'),
(314, 'RO', 'TR', 'Teleorman'),
(315, 'RO', 'TM', 'Timiş'),
(316, 'RO', 'TL', 'Tulcea'),
(317, 'RO', 'VS', 'Vaslui'),
(318, 'RO', 'VL', 'Vâlcea'),
(319, 'RO', 'VN', 'Vrancea'),
(320, 'FI', 'Lappi', 'Lappi'),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa'),
(322, 'FI', 'Kainuu', 'Kainuu'),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala'),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo'),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo'),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa'),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa'),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa'),
(329, 'FI', 'Satakunta', 'Satakunta'),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa'),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi'),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi'),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala'),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme'),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme'),
(336, 'FI', 'Uusimaa', 'Uusimaa'),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa'),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso'),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa'),
(340, 'EE', 'EE-37', 'Harjumaa'),
(341, 'EE', 'EE-39', 'Hiiumaa'),
(342, 'EE', 'EE-44', 'Ida-Virumaa'),
(343, 'EE', 'EE-49', 'Jõgevamaa'),
(344, 'EE', 'EE-51', 'Järvamaa'),
(345, 'EE', 'EE-57', 'Läänemaa'),
(346, 'EE', 'EE-59', 'Lääne-Virumaa'),
(347, 'EE', 'EE-65', 'Põlvamaa'),
(348, 'EE', 'EE-67', 'Pärnumaa'),
(349, 'EE', 'EE-70', 'Raplamaa'),
(350, 'EE', 'EE-74', 'Saaremaa'),
(351, 'EE', 'EE-78', 'Tartumaa'),
(352, 'EE', 'EE-82', 'Valgamaa'),
(353, 'EE', 'EE-84', 'Viljandimaa'),
(354, 'EE', 'EE-86', 'Võrumaa'),
(355, 'LV', 'LV-DGV', 'Daugavpils'),
(356, 'LV', 'LV-JEL', 'Jelgava'),
(357, 'LV', 'Jēkabpils', 'Jēkabpils'),
(358, 'LV', 'LV-JUR', 'Jūrmala'),
(359, 'LV', 'LV-LPX', 'Liepāja'),
(360, 'LV', 'LV-LE', 'Liepājas novads'),
(361, 'LV', 'LV-REZ', 'Rēzekne'),
(362, 'LV', 'LV-RIX', 'Rīga'),
(363, 'LV', 'LV-RI', 'Rīgas novads'),
(364, 'LV', 'Valmiera', 'Valmiera'),
(365, 'LV', 'LV-VEN', 'Ventspils'),
(366, 'LV', 'Aglonas novads', 'Aglonas novads'),
(367, 'LV', 'LV-AI', 'Aizkraukles novads'),
(368, 'LV', 'Aizputes novads', 'Aizputes novads'),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads'),
(370, 'LV', 'Alojas novads', 'Alojas novads'),
(371, 'LV', 'Alsungas novads', 'Alsungas novads'),
(372, 'LV', 'LV-AL', 'Alūksnes novads'),
(373, 'LV', 'Amatas novads', 'Amatas novads'),
(374, 'LV', 'Apes novads', 'Apes novads'),
(375, 'LV', 'Auces novads', 'Auces novads'),
(376, 'LV', 'Babītes novads', 'Babītes novads'),
(377, 'LV', 'Baldones novads', 'Baldones novads'),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads'),
(379, 'LV', 'LV-BL', 'Balvu novads'),
(380, 'LV', 'LV-BU', 'Bauskas novads'),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads'),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads'),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads'),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads'),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads'),
(386, 'LV', 'Ciblas novads', 'Ciblas novads'),
(387, 'LV', 'LV-CE', 'Cēsu novads'),
(388, 'LV', 'Dagdas novads', 'Dagdas novads'),
(389, 'LV', 'LV-DA', 'Daugavpils novads'),
(390, 'LV', 'LV-DO', 'Dobeles novads'),
(391, 'LV', 'Dundagas novads', 'Dundagas novads'),
(392, 'LV', 'Durbes novads', 'Durbes novads'),
(393, 'LV', 'Engures novads', 'Engures novads'),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads'),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads'),
(396, 'LV', 'LV-GU', 'Gulbenes novads'),
(397, 'LV', 'Iecavas novads', 'Iecavas novads'),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads'),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads'),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads'),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads'),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads'),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads'),
(404, 'LV', 'LV-JL', 'Jelgavas novads'),
(405, 'LV', 'LV-JK', 'Jēkabpils novads'),
(406, 'LV', 'Kandavas novads', 'Kandavas novads'),
(407, 'LV', 'Kokneses novads', 'Kokneses novads'),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads'),
(409, 'LV', 'Krustpils novads', 'Krustpils novads'),
(410, 'LV', 'LV-KR', 'Krāslavas novads'),
(411, 'LV', 'LV-KU', 'Kuldīgas novads'),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads'),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads'),
(414, 'LV', 'LV-LM', 'Limbažu novads'),
(415, 'LV', 'Lubānas novads', 'Lubānas novads'),
(416, 'LV', 'LV-LU', 'Ludzas novads'),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads'),
(418, 'LV', 'Līvānu novads', 'Līvānu novads'),
(419, 'LV', 'LV-MA', 'Madonas novads'),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads'),
(421, 'LV', 'Mālpils novads', 'Mālpils novads'),
(422, 'LV', 'Mārupes novads', 'Mārupes novads'),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads'),
(424, 'LV', 'Neretas novads', 'Neretas novads'),
(425, 'LV', 'Nīcas novads', 'Nīcas novads'),
(426, 'LV', 'LV-OG', 'Ogres novads'),
(427, 'LV', 'Olaines novads', 'Olaines novads'),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads'),
(429, 'LV', 'LV-PR', 'Preiļu novads'),
(430, 'LV', 'Priekules novads', 'Priekules novads'),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads'),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads'),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads'),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads'),
(435, 'LV', 'Raunas novads', 'Raunas novads'),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads'),
(437, 'LV', 'Rojas novads', 'Rojas novads'),
(438, 'LV', 'Ropažu novads', 'Ropažu novads'),
(439, 'LV', 'Rucavas novads', 'Rucavas novads'),
(440, 'LV', 'Rugāju novads', 'Rugāju novads'),
(441, 'LV', 'Rundāles novads', 'Rundāles novads'),
(442, 'LV', 'LV-RE', 'Rēzeknes novads'),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads'),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads'),
(445, 'LV', 'Salas novads', 'Salas novads'),
(446, 'LV', 'Salaspils novads', 'Salaspils novads'),
(447, 'LV', 'LV-SA', 'Saldus novads'),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads'),
(449, 'LV', 'Siguldas novads', 'Siguldas novads'),
(450, 'LV', 'Skrundas novads', 'Skrundas novads'),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads'),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads'),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads'),
(454, 'LV', 'Strenču novads', 'Strenču novads'),
(455, 'LV', 'Sējas novads', 'Sējas novads'),
(456, 'LV', 'LV-TA', 'Talsu novads'),
(457, 'LV', 'LV-TU', 'Tukuma novads'),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads'),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads'),
(460, 'LV', 'LV-VK', 'Valkas novads'),
(461, 'LV', 'LV-VM', 'Valmieras novads'),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads'),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads'),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads'),
(465, 'LV', 'LV-VE', 'Ventspils novads'),
(466, 'LV', 'Viesītes novads', 'Viesītes novads'),
(467, 'LV', 'Viļakas novads', 'Viļakas novads'),
(468, 'LV', 'Viļānu novads', 'Viļānu novads'),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads'),
(470, 'LV', 'Zilupes novads', 'Zilupes novads'),
(471, 'LV', 'Ādažu novads', 'Ādažu novads'),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads'),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads'),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads'),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis'),
(476, 'LT', 'LT-KU', 'Kauno Apskritis'),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis'),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis'),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis'),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis'),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis'),
(482, 'LT', 'LT-TE', 'Telšių Apskritis'),
(483, 'LT', 'LT-UT', 'Utenos Apskritis'),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_directory_country_region_name`
--

CREATE TABLE IF NOT EXISTS `mgnto_directory_country_region_name` (
  `locale` varchar(8) NOT NULL DEFAULT '' COMMENT 'Locale',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Region Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Region Name',
  PRIMARY KEY (`locale`,`region_id`),
  KEY `IDX_MGNTO_DIRECTORY_COUNTRY_REGION_NAME_REGION_ID` (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Country Region Name';

--
-- Dumping data for table `mgnto_directory_country_region_name`
--

INSERT INTO `mgnto_directory_country_region_name` (`locale`, `region_id`, `name`) VALUES
('en_US', 1, 'Alabama'),
('en_US', 2, 'Alaska'),
('en_US', 3, 'American Samoa'),
('en_US', 4, 'Arizona'),
('en_US', 5, 'Arkansas'),
('en_US', 6, 'Armed Forces Africa'),
('en_US', 7, 'Armed Forces Americas'),
('en_US', 8, 'Armed Forces Canada'),
('en_US', 9, 'Armed Forces Europe'),
('en_US', 10, 'Armed Forces Middle East'),
('en_US', 11, 'Armed Forces Pacific'),
('en_US', 12, 'California'),
('en_US', 13, 'Colorado'),
('en_US', 14, 'Connecticut'),
('en_US', 15, 'Delaware'),
('en_US', 16, 'District of Columbia'),
('en_US', 17, 'Federated States Of Micronesia'),
('en_US', 18, 'Florida'),
('en_US', 19, 'Georgia'),
('en_US', 20, 'Guam'),
('en_US', 21, 'Hawaii'),
('en_US', 22, 'Idaho'),
('en_US', 23, 'Illinois'),
('en_US', 24, 'Indiana'),
('en_US', 25, 'Iowa'),
('en_US', 26, 'Kansas'),
('en_US', 27, 'Kentucky'),
('en_US', 28, 'Louisiana'),
('en_US', 29, 'Maine'),
('en_US', 30, 'Marshall Islands'),
('en_US', 31, 'Maryland'),
('en_US', 32, 'Massachusetts'),
('en_US', 33, 'Michigan'),
('en_US', 34, 'Minnesota'),
('en_US', 35, 'Mississippi'),
('en_US', 36, 'Missouri'),
('en_US', 37, 'Montana'),
('en_US', 38, 'Nebraska'),
('en_US', 39, 'Nevada'),
('en_US', 40, 'New Hampshire'),
('en_US', 41, 'New Jersey'),
('en_US', 42, 'New Mexico'),
('en_US', 43, 'New York'),
('en_US', 44, 'North Carolina'),
('en_US', 45, 'North Dakota'),
('en_US', 46, 'Northern Mariana Islands'),
('en_US', 47, 'Ohio'),
('en_US', 48, 'Oklahoma'),
('en_US', 49, 'Oregon'),
('en_US', 50, 'Palau'),
('en_US', 51, 'Pennsylvania'),
('en_US', 52, 'Puerto Rico'),
('en_US', 53, 'Rhode Island'),
('en_US', 54, 'South Carolina'),
('en_US', 55, 'South Dakota'),
('en_US', 56, 'Tennessee'),
('en_US', 57, 'Texas'),
('en_US', 58, 'Utah'),
('en_US', 59, 'Vermont'),
('en_US', 60, 'Virgin Islands'),
('en_US', 61, 'Virginia'),
('en_US', 62, 'Washington'),
('en_US', 63, 'West Virginia'),
('en_US', 64, 'Wisconsin'),
('en_US', 65, 'Wyoming'),
('en_US', 66, 'Alberta'),
('en_US', 67, 'British Columbia'),
('en_US', 68, 'Manitoba'),
('en_US', 69, 'Newfoundland and Labrador'),
('en_US', 70, 'New Brunswick'),
('en_US', 71, 'Nova Scotia'),
('en_US', 72, 'Northwest Territories'),
('en_US', 73, 'Nunavut'),
('en_US', 74, 'Ontario'),
('en_US', 75, 'Prince Edward Island'),
('en_US', 76, 'Quebec'),
('en_US', 77, 'Saskatchewan'),
('en_US', 78, 'Yukon Territory'),
('en_US', 79, 'Niedersachsen'),
('en_US', 80, 'Baden-Württemberg'),
('en_US', 81, 'Bayern'),
('en_US', 82, 'Berlin'),
('en_US', 83, 'Brandenburg'),
('en_US', 84, 'Bremen'),
('en_US', 85, 'Hamburg'),
('en_US', 86, 'Hessen'),
('en_US', 87, 'Mecklenburg-Vorpommern'),
('en_US', 88, 'Nordrhein-Westfalen'),
('en_US', 89, 'Rheinland-Pfalz'),
('en_US', 90, 'Saarland'),
('en_US', 91, 'Sachsen'),
('en_US', 92, 'Sachsen-Anhalt'),
('en_US', 93, 'Schleswig-Holstein'),
('en_US', 94, 'Thüringen'),
('en_US', 95, 'Wien'),
('en_US', 96, 'Niederösterreich'),
('en_US', 97, 'Oberösterreich'),
('en_US', 98, 'Salzburg'),
('en_US', 99, 'Kärnten'),
('en_US', 100, 'Steiermark'),
('en_US', 101, 'Tirol'),
('en_US', 102, 'Burgenland'),
('en_US', 103, 'Voralberg'),
('en_US', 104, 'Aargau'),
('en_US', 105, 'Appenzell Innerrhoden'),
('en_US', 106, 'Appenzell Ausserrhoden'),
('en_US', 107, 'Bern'),
('en_US', 108, 'Basel-Landschaft'),
('en_US', 109, 'Basel-Stadt'),
('en_US', 110, 'Freiburg'),
('en_US', 111, 'Genf'),
('en_US', 112, 'Glarus'),
('en_US', 113, 'Graubünden'),
('en_US', 114, 'Jura'),
('en_US', 115, 'Luzern'),
('en_US', 116, 'Neuenburg'),
('en_US', 117, 'Nidwalden'),
('en_US', 118, 'Obwalden'),
('en_US', 119, 'St. Gallen'),
('en_US', 120, 'Schaffhausen'),
('en_US', 121, 'Solothurn'),
('en_US', 122, 'Schwyz'),
('en_US', 123, 'Thurgau'),
('en_US', 124, 'Tessin'),
('en_US', 125, 'Uri'),
('en_US', 126, 'Waadt'),
('en_US', 127, 'Wallis'),
('en_US', 128, 'Zug'),
('en_US', 129, 'Zürich'),
('en_US', 130, 'A Coruña'),
('en_US', 131, 'Alava'),
('en_US', 132, 'Albacete'),
('en_US', 133, 'Alicante'),
('en_US', 134, 'Almeria'),
('en_US', 135, 'Asturias'),
('en_US', 136, 'Avila'),
('en_US', 137, 'Badajoz'),
('en_US', 138, 'Baleares'),
('en_US', 139, 'Barcelona'),
('en_US', 140, 'Burgos'),
('en_US', 141, 'Caceres'),
('en_US', 142, 'Cadiz'),
('en_US', 143, 'Cantabria'),
('en_US', 144, 'Castellon'),
('en_US', 145, 'Ceuta'),
('en_US', 146, 'Ciudad Real'),
('en_US', 147, 'Cordoba'),
('en_US', 148, 'Cuenca'),
('en_US', 149, 'Girona'),
('en_US', 150, 'Granada'),
('en_US', 151, 'Guadalajara'),
('en_US', 152, 'Guipuzcoa'),
('en_US', 153, 'Huelva'),
('en_US', 154, 'Huesca'),
('en_US', 155, 'Jaen'),
('en_US', 156, 'La Rioja'),
('en_US', 157, 'Las Palmas'),
('en_US', 158, 'Leon'),
('en_US', 159, 'Lleida'),
('en_US', 160, 'Lugo'),
('en_US', 161, 'Madrid'),
('en_US', 162, 'Malaga'),
('en_US', 163, 'Melilla'),
('en_US', 164, 'Murcia'),
('en_US', 165, 'Navarra'),
('en_US', 166, 'Ourense'),
('en_US', 167, 'Palencia'),
('en_US', 168, 'Pontevedra'),
('en_US', 169, 'Salamanca'),
('en_US', 170, 'Santa Cruz de Tenerife'),
('en_US', 171, 'Segovia'),
('en_US', 172, 'Sevilla'),
('en_US', 173, 'Soria'),
('en_US', 174, 'Tarragona'),
('en_US', 175, 'Teruel'),
('en_US', 176, 'Toledo'),
('en_US', 177, 'Valencia'),
('en_US', 178, 'Valladolid'),
('en_US', 179, 'Vizcaya'),
('en_US', 180, 'Zamora'),
('en_US', 181, 'Zaragoza'),
('en_US', 182, 'Ain'),
('en_US', 183, 'Aisne'),
('en_US', 184, 'Allier'),
('en_US', 185, 'Alpes-de-Haute-Provence'),
('en_US', 186, 'Hautes-Alpes'),
('en_US', 187, 'Alpes-Maritimes'),
('en_US', 188, 'Ardèche'),
('en_US', 189, 'Ardennes'),
('en_US', 190, 'Ariège'),
('en_US', 191, 'Aube'),
('en_US', 192, 'Aude'),
('en_US', 193, 'Aveyron'),
('en_US', 194, 'Bouches-du-Rhône'),
('en_US', 195, 'Calvados'),
('en_US', 196, 'Cantal'),
('en_US', 197, 'Charente'),
('en_US', 198, 'Charente-Maritime'),
('en_US', 199, 'Cher'),
('en_US', 200, 'Corrèze'),
('en_US', 201, 'Corse-du-Sud'),
('en_US', 202, 'Haute-Corse'),
('en_US', 203, 'Côte-d''Or'),
('en_US', 204, 'Côtes-d''Armor'),
('en_US', 205, 'Creuse'),
('en_US', 206, 'Dordogne'),
('en_US', 207, 'Doubs'),
('en_US', 208, 'Drôme'),
('en_US', 209, 'Eure'),
('en_US', 210, 'Eure-et-Loir'),
('en_US', 211, 'Finistère'),
('en_US', 212, 'Gard'),
('en_US', 213, 'Haute-Garonne'),
('en_US', 214, 'Gers'),
('en_US', 215, 'Gironde'),
('en_US', 216, 'Hérault'),
('en_US', 217, 'Ille-et-Vilaine'),
('en_US', 218, 'Indre'),
('en_US', 219, 'Indre-et-Loire'),
('en_US', 220, 'Isère'),
('en_US', 221, 'Jura'),
('en_US', 222, 'Landes'),
('en_US', 223, 'Loir-et-Cher'),
('en_US', 224, 'Loire'),
('en_US', 225, 'Haute-Loire'),
('en_US', 226, 'Loire-Atlantique'),
('en_US', 227, 'Loiret'),
('en_US', 228, 'Lot'),
('en_US', 229, 'Lot-et-Garonne'),
('en_US', 230, 'Lozère'),
('en_US', 231, 'Maine-et-Loire'),
('en_US', 232, 'Manche'),
('en_US', 233, 'Marne'),
('en_US', 234, 'Haute-Marne'),
('en_US', 235, 'Mayenne'),
('en_US', 236, 'Meurthe-et-Moselle'),
('en_US', 237, 'Meuse'),
('en_US', 238, 'Morbihan'),
('en_US', 239, 'Moselle'),
('en_US', 240, 'Nièvre'),
('en_US', 241, 'Nord'),
('en_US', 242, 'Oise'),
('en_US', 243, 'Orne'),
('en_US', 244, 'Pas-de-Calais'),
('en_US', 245, 'Puy-de-Dôme'),
('en_US', 246, 'Pyrénées-Atlantiques'),
('en_US', 247, 'Hautes-Pyrénées'),
('en_US', 248, 'Pyrénées-Orientales'),
('en_US', 249, 'Bas-Rhin'),
('en_US', 250, 'Haut-Rhin'),
('en_US', 251, 'Rhône'),
('en_US', 252, 'Haute-Saône'),
('en_US', 253, 'Saône-et-Loire'),
('en_US', 254, 'Sarthe'),
('en_US', 255, 'Savoie'),
('en_US', 256, 'Haute-Savoie'),
('en_US', 257, 'Paris'),
('en_US', 258, 'Seine-Maritime'),
('en_US', 259, 'Seine-et-Marne'),
('en_US', 260, 'Yvelines'),
('en_US', 261, 'Deux-Sèvres'),
('en_US', 262, 'Somme'),
('en_US', 263, 'Tarn'),
('en_US', 264, 'Tarn-et-Garonne'),
('en_US', 265, 'Var'),
('en_US', 266, 'Vaucluse'),
('en_US', 267, 'Vendée'),
('en_US', 268, 'Vienne'),
('en_US', 269, 'Haute-Vienne'),
('en_US', 270, 'Vosges'),
('en_US', 271, 'Yonne'),
('en_US', 272, 'Territoire-de-Belfort'),
('en_US', 273, 'Essonne'),
('en_US', 274, 'Hauts-de-Seine'),
('en_US', 275, 'Seine-Saint-Denis'),
('en_US', 276, 'Val-de-Marne'),
('en_US', 277, 'Val-d''Oise'),
('en_US', 278, 'Alba'),
('en_US', 279, 'Arad'),
('en_US', 280, 'Argeş'),
('en_US', 281, 'Bacău'),
('en_US', 282, 'Bihor'),
('en_US', 283, 'Bistriţa-Năsăud'),
('en_US', 284, 'Botoşani'),
('en_US', 285, 'Braşov'),
('en_US', 286, 'Brăila'),
('en_US', 287, 'Bucureşti'),
('en_US', 288, 'Buzău'),
('en_US', 289, 'Caraş-Severin'),
('en_US', 290, 'Călăraşi'),
('en_US', 291, 'Cluj'),
('en_US', 292, 'Constanţa'),
('en_US', 293, 'Covasna'),
('en_US', 294, 'Dâmboviţa'),
('en_US', 295, 'Dolj'),
('en_US', 296, 'Galaţi'),
('en_US', 297, 'Giurgiu'),
('en_US', 298, 'Gorj'),
('en_US', 299, 'Harghita'),
('en_US', 300, 'Hunedoara'),
('en_US', 301, 'Ialomiţa'),
('en_US', 302, 'Iaşi'),
('en_US', 303, 'Ilfov'),
('en_US', 304, 'Maramureş'),
('en_US', 305, 'Mehedinţi'),
('en_US', 306, 'Mureş'),
('en_US', 307, 'Neamţ'),
('en_US', 308, 'Olt'),
('en_US', 309, 'Prahova'),
('en_US', 310, 'Satu-Mare'),
('en_US', 311, 'Sălaj'),
('en_US', 312, 'Sibiu'),
('en_US', 313, 'Suceava'),
('en_US', 314, 'Teleorman'),
('en_US', 315, 'Timiş'),
('en_US', 316, 'Tulcea'),
('en_US', 317, 'Vaslui'),
('en_US', 318, 'Vâlcea'),
('en_US', 319, 'Vrancea'),
('en_US', 320, 'Lappi'),
('en_US', 321, 'Pohjois-Pohjanmaa'),
('en_US', 322, 'Kainuu'),
('en_US', 323, 'Pohjois-Karjala'),
('en_US', 324, 'Pohjois-Savo'),
('en_US', 325, 'Etelä-Savo'),
('en_US', 326, 'Etelä-Pohjanmaa'),
('en_US', 327, 'Pohjanmaa'),
('en_US', 328, 'Pirkanmaa'),
('en_US', 329, 'Satakunta'),
('en_US', 330, 'Keski-Pohjanmaa'),
('en_US', 331, 'Keski-Suomi'),
('en_US', 332, 'Varsinais-Suomi'),
('en_US', 333, 'Etelä-Karjala'),
('en_US', 334, 'Päijät-Häme'),
('en_US', 335, 'Kanta-Häme'),
('en_US', 336, 'Uusimaa'),
('en_US', 337, 'Itä-Uusimaa'),
('en_US', 338, 'Kymenlaakso'),
('en_US', 339, 'Ahvenanmaa'),
('en_US', 340, 'Harjumaa'),
('en_US', 341, 'Hiiumaa'),
('en_US', 342, 'Ida-Virumaa'),
('en_US', 343, 'Jõgevamaa'),
('en_US', 344, 'Järvamaa'),
('en_US', 345, 'Läänemaa'),
('en_US', 346, 'Lääne-Virumaa'),
('en_US', 347, 'Põlvamaa'),
('en_US', 348, 'Pärnumaa'),
('en_US', 349, 'Raplamaa'),
('en_US', 350, 'Saaremaa'),
('en_US', 351, 'Tartumaa'),
('en_US', 352, 'Valgamaa'),
('en_US', 353, 'Viljandimaa'),
('en_US', 354, 'Võrumaa'),
('en_US', 355, 'Daugavpils'),
('en_US', 356, 'Jelgava'),
('en_US', 357, 'Jēkabpils'),
('en_US', 358, 'Jūrmala'),
('en_US', 359, 'Liepāja'),
('en_US', 360, 'Liepājas novads'),
('en_US', 361, 'Rēzekne'),
('en_US', 362, 'Rīga'),
('en_US', 363, 'Rīgas novads'),
('en_US', 364, 'Valmiera'),
('en_US', 365, 'Ventspils'),
('en_US', 366, 'Aglonas novads'),
('en_US', 367, 'Aizkraukles novads'),
('en_US', 368, 'Aizputes novads'),
('en_US', 369, 'Aknīstes novads'),
('en_US', 370, 'Alojas novads'),
('en_US', 371, 'Alsungas novads'),
('en_US', 372, 'Alūksnes novads'),
('en_US', 373, 'Amatas novads'),
('en_US', 374, 'Apes novads'),
('en_US', 375, 'Auces novads'),
('en_US', 376, 'Babītes novads'),
('en_US', 377, 'Baldones novads'),
('en_US', 378, 'Baltinavas novads'),
('en_US', 379, 'Balvu novads'),
('en_US', 380, 'Bauskas novads'),
('en_US', 381, 'Beverīnas novads'),
('en_US', 382, 'Brocēnu novads'),
('en_US', 383, 'Burtnieku novads'),
('en_US', 384, 'Carnikavas novads'),
('en_US', 385, 'Cesvaines novads'),
('en_US', 386, 'Ciblas novads'),
('en_US', 387, 'Cēsu novads'),
('en_US', 388, 'Dagdas novads'),
('en_US', 389, 'Daugavpils novads'),
('en_US', 390, 'Dobeles novads'),
('en_US', 391, 'Dundagas novads'),
('en_US', 392, 'Durbes novads'),
('en_US', 393, 'Engures novads'),
('en_US', 394, 'Garkalnes novads'),
('en_US', 395, 'Grobiņas novads'),
('en_US', 396, 'Gulbenes novads'),
('en_US', 397, 'Iecavas novads'),
('en_US', 398, 'Ikšķiles novads'),
('en_US', 399, 'Ilūkstes novads'),
('en_US', 400, 'Inčukalna novads'),
('en_US', 401, 'Jaunjelgavas novads'),
('en_US', 402, 'Jaunpiebalgas novads'),
('en_US', 403, 'Jaunpils novads'),
('en_US', 404, 'Jelgavas novads'),
('en_US', 405, 'Jēkabpils novads'),
('en_US', 406, 'Kandavas novads'),
('en_US', 407, 'Kokneses novads'),
('en_US', 408, 'Krimuldas novads'),
('en_US', 409, 'Krustpils novads'),
('en_US', 410, 'Krāslavas novads'),
('en_US', 411, 'Kuldīgas novads'),
('en_US', 412, 'Kārsavas novads'),
('en_US', 413, 'Lielvārdes novads'),
('en_US', 414, 'Limbažu novads'),
('en_US', 415, 'Lubānas novads'),
('en_US', 416, 'Ludzas novads'),
('en_US', 417, 'Līgatnes novads'),
('en_US', 418, 'Līvānu novads'),
('en_US', 419, 'Madonas novads'),
('en_US', 420, 'Mazsalacas novads'),
('en_US', 421, 'Mālpils novads'),
('en_US', 422, 'Mārupes novads'),
('en_US', 423, 'Naukšēnu novads'),
('en_US', 424, 'Neretas novads'),
('en_US', 425, 'Nīcas novads'),
('en_US', 426, 'Ogres novads'),
('en_US', 427, 'Olaines novads'),
('en_US', 428, 'Ozolnieku novads'),
('en_US', 429, 'Preiļu novads'),
('en_US', 430, 'Priekules novads'),
('en_US', 431, 'Priekuļu novads'),
('en_US', 432, 'Pārgaujas novads'),
('en_US', 433, 'Pāvilostas novads'),
('en_US', 434, 'Pļaviņu novads'),
('en_US', 435, 'Raunas novads'),
('en_US', 436, 'Riebiņu novads'),
('en_US', 437, 'Rojas novads'),
('en_US', 438, 'Ropažu novads'),
('en_US', 439, 'Rucavas novads'),
('en_US', 440, 'Rugāju novads'),
('en_US', 441, 'Rundāles novads'),
('en_US', 442, 'Rēzeknes novads'),
('en_US', 443, 'Rūjienas novads'),
('en_US', 444, 'Salacgrīvas novads'),
('en_US', 445, 'Salas novads'),
('en_US', 446, 'Salaspils novads'),
('en_US', 447, 'Saldus novads'),
('en_US', 448, 'Saulkrastu novads'),
('en_US', 449, 'Siguldas novads'),
('en_US', 450, 'Skrundas novads'),
('en_US', 451, 'Skrīveru novads'),
('en_US', 452, 'Smiltenes novads'),
('en_US', 453, 'Stopiņu novads'),
('en_US', 454, 'Strenču novads'),
('en_US', 455, 'Sējas novads'),
('en_US', 456, 'Talsu novads'),
('en_US', 457, 'Tukuma novads'),
('en_US', 458, 'Tērvetes novads'),
('en_US', 459, 'Vaiņodes novads'),
('en_US', 460, 'Valkas novads'),
('en_US', 461, 'Valmieras novads'),
('en_US', 462, 'Varakļānu novads'),
('en_US', 463, 'Vecpiebalgas novads'),
('en_US', 464, 'Vecumnieku novads'),
('en_US', 465, 'Ventspils novads'),
('en_US', 466, 'Viesītes novads'),
('en_US', 467, 'Viļakas novads'),
('en_US', 468, 'Viļānu novads'),
('en_US', 469, 'Vārkavas novads'),
('en_US', 470, 'Zilupes novads'),
('en_US', 471, 'Ādažu novads'),
('en_US', 472, 'Ērgļu novads'),
('en_US', 473, 'Ķeguma novads'),
('en_US', 474, 'Ķekavas novads'),
('en_US', 475, 'Alytaus Apskritis'),
('en_US', 476, 'Kauno Apskritis'),
('en_US', 477, 'Klaipėdos Apskritis'),
('en_US', 478, 'Marijampolės Apskritis'),
('en_US', 479, 'Panevėžio Apskritis'),
('en_US', 480, 'Šiaulių Apskritis'),
('en_US', 481, 'Tauragės Apskritis'),
('en_US', 482, 'Telšių Apskritis'),
('en_US', 483, 'Utenos Apskritis'),
('en_US', 484, 'Vilniaus Apskritis');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_directory_currency_rate`
--

CREATE TABLE IF NOT EXISTS `mgnto_directory_currency_rate` (
  `currency_from` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert From',
  `currency_to` varchar(3) NOT NULL DEFAULT '' COMMENT 'Currency Code Convert To',
  `rate` decimal(24,12) NOT NULL DEFAULT '0.000000000000' COMMENT 'Currency Conversion Rate',
  PRIMARY KEY (`currency_from`,`currency_to`),
  KEY `IDX_MGNTO_DIRECTORY_CURRENCY_RATE_CURRENCY_TO` (`currency_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Directory Currency Rate';

--
-- Dumping data for table `mgnto_directory_currency_rate`
--

INSERT INTO `mgnto_directory_currency_rate` (`currency_from`, `currency_to`, `rate`) VALUES
('EUR', 'EUR', '1.000000000000'),
('EUR', 'USD', '1.415000000000'),
('USD', 'EUR', '0.706700000000'),
('USD', 'USD', '1.000000000000');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_downloadable_link`
--

CREATE TABLE IF NOT EXISTS `mgnto_downloadable_link` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  `number_of_downloads` int(11) DEFAULT NULL COMMENT 'Number of downloads',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(20) DEFAULT NULL COMMENT 'Link Type',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample Url',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample File',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  PRIMARY KEY (`link_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_PRODUCT_ID_SORT_ORDER` (`product_id`,`sort_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_downloadable_link_price`
--

CREATE TABLE IF NOT EXISTS `mgnto_downloadable_link_price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Price ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  PRIMARY KEY (`price_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_PRICE_LINK_ID` (`link_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Price Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_downloadable_link_purchased`
--

CREATE TABLE IF NOT EXISTS `mgnto_downloadable_link_purchased` (
  `purchased_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Purchased ID',
  `order_id` int(10) unsigned DEFAULT '0' COMMENT 'Order ID',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment ID',
  `order_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Item ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of creation',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of modification',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer ID',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product name',
  `product_sku` varchar(255) DEFAULT NULL COMMENT 'Product sku',
  `link_section_title` varchar(255) DEFAULT NULL COMMENT 'Link_section_title',
  PRIMARY KEY (`purchased_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_PURCHASED_ORDER_ID` (`order_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_PURCHASED_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_PURCHASED_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_downloadable_link_purchased_item`
--

CREATE TABLE IF NOT EXISTS `mgnto_downloadable_link_purchased_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item ID',
  `purchased_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Purchased ID',
  `order_item_id` int(10) unsigned DEFAULT '0' COMMENT 'Order Item ID',
  `product_id` int(10) unsigned DEFAULT '0' COMMENT 'Product ID',
  `link_hash` varchar(255) DEFAULT NULL COMMENT 'Link hash',
  `number_of_downloads_bought` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads bought',
  `number_of_downloads_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of downloads used',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `link_title` varchar(255) DEFAULT NULL COMMENT 'Link Title',
  `is_shareable` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Shareable Flag',
  `link_url` varchar(255) DEFAULT NULL COMMENT 'Link Url',
  `link_file` varchar(255) DEFAULT NULL COMMENT 'Link File',
  `link_type` varchar(255) DEFAULT NULL COMMENT 'Link Type',
  `status` varchar(50) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Update Time',
  PRIMARY KEY (`item_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_PURCHASED_ITEM_LINK_HASH` (`link_hash`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_PURCHASED_ITEM_ORDER_ITEM_ID` (`order_item_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_PURCHASED_ITEM_PURCHASED_ID` (`purchased_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Link Purchased Item Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_downloadable_link_title`
--

CREATE TABLE IF NOT EXISTS `mgnto_downloadable_link_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Link ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_MGNTO_DOWNLOADABLE_LINK_TITLE_LINK_ID_STORE_ID` (`link_id`,`store_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_TITLE_LINK_ID` (`link_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_LINK_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Link Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_downloadable_sample`
--

CREATE TABLE IF NOT EXISTS `mgnto_downloadable_sample` (
  `sample_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sample ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `sample_url` varchar(255) DEFAULT NULL COMMENT 'Sample URL',
  `sample_file` varchar(255) DEFAULT NULL COMMENT 'Sample file',
  `sample_type` varchar(20) DEFAULT NULL COMMENT 'Sample Type',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`sample_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_SAMPLE_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_downloadable_sample_title`
--

CREATE TABLE IF NOT EXISTS `mgnto_downloadable_sample_title` (
  `title_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Title ID',
  `sample_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sample ID',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store ID',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  PRIMARY KEY (`title_id`),
  UNIQUE KEY `UNQ_MGNTO_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID_STORE_ID` (`sample_id`,`store_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_SAMPLE_TITLE_SAMPLE_ID` (`sample_id`),
  KEY `IDX_MGNTO_DOWNLOADABLE_SAMPLE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Downloadable Sample Title Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eavblog_posts`
--

CREATE TABLE IF NOT EXISTS `mgnto_eavblog_posts` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) NOT NULL DEFAULT '' COMMENT 'Increment Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Main Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eavblog_posts_char`
--

CREATE TABLE IF NOT EXISTS `mgnto_eavblog_posts_char` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_CHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_CHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_CHAR_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_CHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_CHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_CHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eavblog_posts_datetime`
--

CREATE TABLE IF NOT EXISTS `mgnto_eavblog_posts_datetime` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eavblog_posts_decimal`
--

CREATE TABLE IF NOT EXISTS `mgnto_eavblog_posts_decimal` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eavblog_posts_int`
--

CREATE TABLE IF NOT EXISTS `mgnto_eavblog_posts_int` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_INT_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eavblog_posts_text`
--

CREATE TABLE IF NOT EXISTS `mgnto_eavblog_posts_text` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eavblog_posts_varchar`
--

CREATE TABLE IF NOT EXISTS `mgnto_eavblog_posts_varchar` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGNTO_EAVBLOG_POSTS_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_attribute`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_attribute` (
  `attribute_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_code` varchar(255) DEFAULT NULL COMMENT 'Attribute Code',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `backend_model` varchar(255) DEFAULT NULL COMMENT 'Backend Model',
  `backend_type` varchar(8) NOT NULL DEFAULT 'static' COMMENT 'Backend Type',
  `backend_table` varchar(255) DEFAULT NULL COMMENT 'Backend Table',
  `frontend_model` varchar(255) DEFAULT NULL COMMENT 'Frontend Model',
  `frontend_input` varchar(50) DEFAULT NULL COMMENT 'Frontend Input',
  `frontend_label` varchar(255) DEFAULT NULL COMMENT 'Frontend Label',
  `frontend_class` varchar(255) DEFAULT NULL COMMENT 'Frontend Class',
  `source_model` varchar(255) DEFAULT NULL COMMENT 'Source Model',
  `is_required` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Required',
  `is_user_defined` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is User Defined',
  `default_value` text COMMENT 'Default Value',
  `is_unique` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Defines Is Unique',
  `note` varchar(255) DEFAULT NULL COMMENT 'Note',
  PRIMARY KEY (`attribute_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_ATTRIBUTE_ENTITY_TYPE_ID_ATTRIBUTE_CODE` (`entity_type_id`,`attribute_code`),
  KEY `IDX_MGNTO_EAV_ATTRIBUTE_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute' AUTO_INCREMENT=138 ;

--
-- Dumping data for table `mgnto_eav_attribute`
--

INSERT INTO `mgnto_eav_attribute` (`attribute_id`, `entity_type_id`, `attribute_code`, `attribute_model`, `backend_model`, `backend_type`, `backend_table`, `frontend_model`, `frontend_input`, `frontend_label`, `frontend_class`, `source_model`, `is_required`, `is_user_defined`, `default_value`, `is_unique`, `note`) VALUES
(1, 1, 'website_id', NULL, 'customer/customer_attribute_backend_website', 'static', NULL, NULL, 'select', 'Associate to Website', NULL, 'customer/customer_attribute_source_website', 1, 0, NULL, 0, NULL),
(2, 1, 'store_id', NULL, 'customer/customer_attribute_backend_store', 'static', NULL, NULL, 'select', 'Create In', NULL, 'customer/customer_attribute_source_store', 1, 0, NULL, 0, NULL),
(3, 1, 'created_in', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Created From', NULL, NULL, 0, 0, NULL, 0, NULL),
(4, 1, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(5, 1, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(6, 1, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(7, 1, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(8, 1, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(9, 1, 'email', NULL, NULL, 'static', NULL, NULL, 'text', 'Email', NULL, NULL, 1, 0, NULL, 0, NULL),
(10, 1, 'group_id', NULL, NULL, 'static', NULL, NULL, 'select', 'Group', NULL, 'customer/customer_attribute_source_group', 1, 0, NULL, 0, NULL),
(11, 1, 'dob', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, 'eav/entity_attribute_frontend_datetime', 'date', 'Date Of Birth', NULL, NULL, 0, 0, NULL, 0, NULL),
(12, 1, 'password_hash', NULL, 'customer/customer_attribute_backend_password', 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(13, 1, 'default_billing', NULL, 'customer/customer_attribute_backend_billing', 'int', NULL, NULL, 'text', 'Default Billing Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(14, 1, 'default_shipping', NULL, 'customer/customer_attribute_backend_shipping', 'int', NULL, NULL, 'text', 'Default Shipping Address', NULL, NULL, 0, 0, NULL, 0, NULL),
(15, 1, 'taxvat', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Tax/VAT Number', NULL, NULL, 0, 0, NULL, 0, NULL),
(16, 1, 'confirmation', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Is Confirmed', NULL, NULL, 0, 0, NULL, 0, NULL),
(17, 1, 'created_at', NULL, NULL, 'static', NULL, NULL, 'date', 'Created At', NULL, NULL, 0, 0, NULL, 0, NULL),
(18, 1, 'gender', NULL, NULL, 'int', NULL, NULL, 'select', 'Gender', NULL, 'eav/entity_attribute_source_table', 0, 0, NULL, 0, NULL),
(19, 2, 'prefix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Prefix', NULL, NULL, 0, 0, NULL, 0, NULL),
(20, 2, 'firstname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'First Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(21, 2, 'middlename', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Middle Name/Initial', NULL, NULL, 0, 0, NULL, 0, NULL),
(22, 2, 'lastname', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Last Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(23, 2, 'suffix', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Suffix', NULL, NULL, 0, 0, NULL, 0, NULL),
(24, 2, 'company', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Company', NULL, NULL, 0, 0, NULL, 0, NULL),
(25, 2, 'street', NULL, 'customer/entity_address_attribute_backend_street', 'text', NULL, NULL, 'multiline', 'Street Address', NULL, NULL, 1, 0, NULL, 0, NULL),
(26, 2, 'city', NULL, NULL, 'varchar', NULL, NULL, 'text', 'City', NULL, NULL, 1, 0, NULL, 0, NULL),
(27, 2, 'country_id', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country', NULL, 'customer/entity_address_attribute_source_country', 1, 0, NULL, 0, NULL),
(28, 2, 'region', NULL, 'customer/entity_address_attribute_backend_region', 'varchar', NULL, NULL, 'text', 'State/Province', NULL, NULL, 0, 0, NULL, 0, NULL),
(29, 2, 'region_id', NULL, NULL, 'int', NULL, NULL, 'hidden', 'State/Province', NULL, 'customer/entity_address_attribute_source_region', 0, 0, NULL, 0, NULL),
(30, 2, 'postcode', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Zip/Postal Code', NULL, NULL, 1, 0, NULL, 0, NULL),
(31, 2, 'telephone', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Telephone', NULL, NULL, 1, 0, NULL, 0, NULL),
(32, 2, 'fax', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Fax', NULL, NULL, 0, 0, NULL, 0, NULL),
(33, 1, 'rp_token', NULL, NULL, 'varchar', NULL, NULL, 'hidden', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(34, 1, 'rp_token_created_at', NULL, NULL, 'datetime', NULL, NULL, 'date', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(35, 1, 'disable_auto_group_change', NULL, 'customer/attribute_backend_data_boolean', 'static', NULL, NULL, 'boolean', 'Disable Automatic Group Change Based on VAT ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(36, 2, 'vat_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number', NULL, NULL, 0, 0, NULL, 0, NULL),
(37, 2, 'vat_is_valid', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validity', NULL, NULL, 0, 0, NULL, 0, NULL),
(38, 2, 'vat_request_id', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request ID', NULL, NULL, 0, 0, NULL, 0, NULL),
(39, 2, 'vat_request_date', NULL, NULL, 'varchar', NULL, NULL, 'text', 'VAT number validation request date', NULL, NULL, 0, 0, NULL, 0, NULL),
(40, 2, 'vat_request_success', NULL, NULL, 'int', NULL, NULL, 'text', 'VAT number validation request success', NULL, NULL, 0, 0, NULL, 0, NULL),
(41, 3, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(42, 3, 'is_active', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Active', NULL, 'eav/entity_attribute_source_boolean', 1, 0, NULL, 0, NULL),
(43, 3, 'url_key', NULL, 'catalog/category_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(44, 3, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(45, 3, 'image', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(46, 3, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Page Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(47, 3, 'meta_keywords', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(48, 3, 'meta_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, NULL),
(49, 3, 'display_mode', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Mode', NULL, 'catalog/category_attribute_source_mode', 0, 0, NULL, 0, NULL),
(50, 3, 'landing_page', NULL, NULL, 'int', NULL, NULL, 'select', 'CMS Block', NULL, 'catalog/category_attribute_source_page', 0, 0, NULL, 0, NULL),
(51, 3, 'is_anchor', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Anchor', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(52, 3, 'path', NULL, NULL, 'static', NULL, NULL, 'text', 'Path', NULL, NULL, 0, 0, NULL, 0, NULL),
(53, 3, 'position', NULL, NULL, 'static', NULL, NULL, 'text', 'Position', NULL, NULL, 0, 0, NULL, 0, NULL),
(54, 3, 'all_children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(55, 3, 'path_in_store', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(56, 3, 'children', NULL, NULL, 'text', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(57, 3, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(58, 3, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(59, 3, 'custom_design_from', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(60, 3, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(61, 3, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/category_attribute_source_layout', 0, 0, NULL, 0, NULL),
(62, 3, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(63, 3, 'level', NULL, NULL, 'static', NULL, NULL, 'text', 'Level', NULL, NULL, 0, 0, NULL, 0, NULL),
(64, 3, 'children_count', NULL, NULL, 'static', NULL, NULL, 'text', 'Children Count', NULL, NULL, 0, 0, NULL, 0, NULL),
(65, 3, 'available_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'text', NULL, NULL, 'multiselect', 'Available Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(66, 3, 'default_sort_by', NULL, 'catalog/category_attribute_backend_sortby', 'varchar', NULL, NULL, 'select', 'Default Product Listing Sort By', NULL, 'catalog/category_attribute_source_sortby', 1, 0, NULL, 0, NULL),
(67, 3, 'include_in_menu', NULL, NULL, 'int', NULL, NULL, 'select', 'Include in Navigation Menu', NULL, 'eav/entity_attribute_source_boolean', 1, 0, '1', 0, NULL),
(68, 3, 'custom_use_parent_settings', NULL, NULL, 'int', NULL, NULL, 'select', 'Use Parent Category Settings', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(69, 3, 'custom_apply_to_products', NULL, NULL, 'int', NULL, NULL, 'select', 'Apply To Products', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(70, 3, 'filter_price_range', NULL, NULL, 'decimal', NULL, NULL, 'text', 'Layered Navigation Price Step', NULL, NULL, 0, 0, NULL, 0, NULL),
(71, 4, 'name', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Name', NULL, NULL, 1, 0, NULL, 0, NULL),
(72, 4, 'description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(73, 4, 'short_description', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Short Description', NULL, NULL, 1, 0, NULL, 0, NULL),
(74, 4, 'sku', NULL, 'catalog/product_attribute_backend_sku', 'static', NULL, NULL, 'text', 'SKU', NULL, NULL, 1, 0, NULL, 1, NULL),
(75, 4, 'price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Price', NULL, NULL, 1, 0, NULL, 0, NULL),
(76, 4, 'special_price', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Special Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(77, 4, 'special_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Special Price From Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(78, 4, 'special_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Special Price To Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(79, 4, 'cost', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Cost', NULL, NULL, 0, 1, NULL, 0, NULL),
(80, 4, 'weight', NULL, NULL, 'decimal', NULL, NULL, 'weight', 'Weight', NULL, NULL, 1, 0, NULL, 0, NULL),
(81, 4, 'manufacturer', NULL, NULL, 'int', NULL, NULL, 'select', 'Manufacturer', NULL, NULL, 0, 1, NULL, 0, NULL),
(82, 4, 'meta_title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Meta Title', NULL, NULL, 0, 0, NULL, 0, NULL),
(83, 4, 'meta_keyword', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Meta Keywords', NULL, NULL, 0, 0, NULL, 0, NULL),
(84, 4, 'meta_description', NULL, NULL, 'varchar', NULL, NULL, 'textarea', 'Meta Description', NULL, NULL, 0, 0, NULL, 0, 'Maximum 255 chars'),
(85, 4, 'image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Base Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(86, 4, 'small_image', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Small Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(87, 4, 'thumbnail', NULL, NULL, 'varchar', NULL, 'catalog/product_attribute_frontend_image', 'media_image', 'Thumbnail', NULL, NULL, 0, 0, NULL, 0, NULL),
(88, 4, 'media_gallery', NULL, 'catalog/product_attribute_backend_media', 'varchar', NULL, NULL, 'gallery', 'Media Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(89, 4, 'old_id', NULL, NULL, 'int', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(90, 4, 'group_price', NULL, 'catalog/product_attribute_backend_groupprice', 'decimal', NULL, NULL, 'text', 'Group Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(91, 4, 'tier_price', NULL, 'catalog/product_attribute_backend_tierprice', 'decimal', NULL, NULL, 'text', 'Tier Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(92, 4, 'color', NULL, NULL, 'int', NULL, NULL, 'select', 'Color', NULL, NULL, 0, 1, NULL, 0, NULL),
(93, 4, 'news_from_date', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Set Product as New from Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(94, 4, 'news_to_date', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Set Product as New to Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(95, 4, 'gallery', NULL, NULL, 'varchar', NULL, NULL, 'gallery', 'Image Gallery', NULL, NULL, 0, 0, NULL, 0, NULL),
(96, 4, 'status', NULL, NULL, 'int', NULL, NULL, 'select', 'Status', NULL, 'catalog/product_status', 1, 0, NULL, 0, NULL),
(97, 4, 'url_key', NULL, 'catalog/product_attribute_backend_urlkey', 'varchar', NULL, NULL, 'text', 'URL Key', NULL, NULL, 0, 0, NULL, 0, NULL),
(98, 4, 'url_path', NULL, NULL, 'varchar', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(99, 4, 'minimal_price', NULL, NULL, 'decimal', NULL, NULL, 'price', 'Minimal Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(100, 4, 'is_recurring', NULL, NULL, 'int', NULL, NULL, 'select', 'Enable Recurring Profile', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, 'Products with recurring profile participate in catalog as nominal items.'),
(101, 4, 'recurring_profile', NULL, 'catalog/product_attribute_backend_recurring', 'text', NULL, NULL, 'text', 'Recurring Payment Profile', NULL, NULL, 0, 0, NULL, 0, NULL),
(102, 4, 'visibility', NULL, NULL, 'int', NULL, NULL, 'select', 'Visibility', NULL, 'catalog/product_visibility', 1, 0, '4', 0, NULL),
(103, 4, 'custom_design', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Custom Design', NULL, 'core/design_source_design', 0, 0, NULL, 0, NULL),
(104, 4, 'custom_design_from', NULL, 'catalog/product_attribute_backend_startdate', 'datetime', NULL, NULL, 'date', 'Active From', NULL, NULL, 0, 0, NULL, 0, NULL),
(105, 4, 'custom_design_to', NULL, 'eav/entity_attribute_backend_datetime', 'datetime', NULL, NULL, 'date', 'Active To', NULL, NULL, 0, 0, NULL, 0, NULL),
(106, 4, 'custom_layout_update', NULL, 'catalog/attribute_backend_customlayoutupdate', 'text', NULL, NULL, 'textarea', 'Custom Layout Update', NULL, NULL, 0, 0, NULL, 0, NULL),
(107, 4, 'page_layout', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Page Layout', NULL, 'catalog/product_attribute_source_layout', 0, 0, NULL, 0, NULL),
(108, 4, 'category_ids', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(109, 4, 'options_container', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Display Product Options In', NULL, 'catalog/entity_product_attribute_design_options_container', 0, 0, 'container2', 0, NULL),
(110, 4, 'required_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(111, 4, 'has_options', NULL, NULL, 'static', NULL, NULL, 'text', NULL, NULL, NULL, 0, 0, NULL, 0, NULL),
(112, 4, 'image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(113, 4, 'small_image_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Small Image Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(114, 4, 'thumbnail_label', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Thumbnail Label', NULL, NULL, 0, 0, NULL, 0, NULL),
(115, 4, 'created_at', NULL, 'eav/entity_attribute_backend_time_created', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(116, 4, 'updated_at', NULL, 'eav/entity_attribute_backend_time_updated', 'static', NULL, NULL, 'text', NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(117, 4, 'country_of_manufacture', NULL, NULL, 'varchar', NULL, NULL, 'select', 'Country of Manufacture', NULL, 'catalog/product_attribute_source_countryofmanufacture', 0, 0, NULL, 0, NULL),
(118, 4, 'msrp_enabled', NULL, 'catalog/product_attribute_backend_msrp', 'varchar', NULL, NULL, 'select', 'Apply MAP', NULL, 'catalog/product_attribute_source_msrp_type_enabled', 0, 0, '2', 0, NULL),
(119, 4, 'msrp_display_actual_price_type', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Display Actual Price', NULL, 'catalog/product_attribute_source_msrp_type_price', 0, 0, '4', 0, NULL),
(120, 4, 'msrp', NULL, 'catalog/product_attribute_backend_price', 'decimal', NULL, NULL, 'price', 'Manufacturer''s Suggested Retail Price', NULL, NULL, 0, 0, NULL, 0, NULL),
(121, 4, 'enable_googlecheckout', NULL, NULL, 'int', NULL, NULL, 'select', 'Is Product Available for Purchase with Google Checkout', NULL, 'eav/entity_attribute_source_boolean', 0, 0, '1', 0, NULL),
(122, 4, 'tax_class_id', NULL, NULL, 'int', NULL, NULL, 'select', 'Tax Class', NULL, 'tax/class_source_product', 1, 0, NULL, 0, NULL),
(123, 4, 'gift_message_available', NULL, 'catalog/product_attribute_backend_boolean', 'varchar', NULL, NULL, 'select', 'Allow Gift Message', NULL, 'eav/entity_attribute_source_boolean', 0, 0, NULL, 0, NULL),
(124, 4, 'price_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(125, 4, 'sku_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(126, 4, 'weight_type', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0, NULL),
(127, 4, 'price_view', NULL, NULL, 'int', NULL, NULL, 'select', 'Price View', NULL, 'bundle/product_attribute_source_price_view', 1, 0, NULL, 0, NULL),
(128, 4, 'shipment_type', NULL, NULL, 'int', NULL, NULL, NULL, 'Shipment', NULL, NULL, 1, 0, NULL, 0, NULL),
(129, 4, 'links_purchased_separately', NULL, NULL, 'int', NULL, NULL, NULL, 'Links can be purchased separately', NULL, NULL, 1, 0, NULL, 0, NULL),
(130, 4, 'samples_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Samples title', NULL, NULL, 1, 0, NULL, 0, NULL),
(131, 4, 'links_title', NULL, NULL, 'varchar', NULL, NULL, NULL, 'Links title', NULL, NULL, 1, 0, NULL, 0, NULL),
(132, 4, 'links_exist', NULL, NULL, 'int', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '0', 0, NULL),
(133, 3, 'thumbnail', NULL, 'catalog/category_attribute_backend_image', 'varchar', NULL, NULL, 'image', 'Thumbnail Image', NULL, NULL, 0, 0, NULL, 0, NULL),
(134, 9, 'title', NULL, NULL, 'varchar', NULL, NULL, 'text', 'Title', NULL, NULL, 1, 1, NULL, 0, NULL),
(135, 9, 'content', NULL, NULL, 'text', NULL, NULL, 'textarea', 'Content', NULL, NULL, 1, 0, NULL, 0, NULL),
(136, 9, 'date', NULL, NULL, 'datetime', NULL, NULL, 'datetime', 'Post Date', NULL, NULL, 0, 0, NULL, 0, NULL),
(137, 4, 'my_field', NULL, NULL, 'int', NULL, NULL, 'select', 'My Field', NULL, 'eav/entity_attribute_source_boolean', 0, 0, '0', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_attribute_group`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_attribute_group` (
  `attribute_group_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Group Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Group Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `default_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Default Id',
  PRIMARY KEY (`attribute_group_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_ATTR_GROUP_ATTR_SET_ID_ATTR_GROUP_NAME` (`attribute_set_id`,`attribute_group_name`),
  KEY `IDX_MGNTO_EAV_ATTRIBUTE_GROUP_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Group' AUTO_INCREMENT=20 ;

--
-- Dumping data for table `mgnto_eav_attribute_group`
--

INSERT INTO `mgnto_eav_attribute_group` (`attribute_group_id`, `attribute_set_id`, `attribute_group_name`, `sort_order`, `default_id`) VALUES
(1, 1, 'General', 1, 1),
(2, 2, 'General', 1, 1),
(3, 3, 'General', 10, 1),
(4, 3, 'General Information', 2, 0),
(5, 3, 'Display Settings', 20, 0),
(6, 3, 'Custom Design', 30, 0),
(7, 4, 'General', 1, 1),
(8, 4, 'Prices', 2, 0),
(9, 4, 'Meta Information', 3, 0),
(10, 4, 'Images', 4, 0),
(11, 4, 'Recurring Profile', 5, 0),
(12, 4, 'Design', 6, 0),
(13, 5, 'General', 1, 1),
(14, 6, 'General', 1, 1),
(15, 7, 'General', 1, 1),
(16, 8, 'General', 1, 1),
(17, 4, 'Gift Options', 7, 0),
(18, 9, 'General', 1, 1),
(19, 4, 'My Field', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_attribute_label`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_attribute_label` (
  `attribute_label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Label Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`attribute_label_id`),
  KEY `IDX_MGNTO_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAV_ATTRIBUTE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAV_ATTRIBUTE_LABEL_ATTRIBUTE_ID_STORE_ID` (`attribute_id`,`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Label' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_attribute_option`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_attribute_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MGNTO_EAV_ATTRIBUTE_OPTION_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgnto_eav_attribute_option`
--

INSERT INTO `mgnto_eav_attribute_option` (`option_id`, `attribute_id`, `sort_order`) VALUES
(1, 18, 0),
(2, 18, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_attribute_option_value`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_attribute_option_value` (
  `value_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Option Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Value',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGNTO_EAV_ATTRIBUTE_OPTION_VALUE_OPTION_ID` (`option_id`),
  KEY `IDX_MGNTO_EAV_ATTRIBUTE_OPTION_VALUE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Option Value' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgnto_eav_attribute_option_value`
--

INSERT INTO `mgnto_eav_attribute_option_value` (`value_id`, `option_id`, `store_id`, `value`) VALUES
(1, 1, 0, 'Male'),
(2, 2, 0, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_attribute_set`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_attribute_set` (
  `attribute_set_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Attribute Set Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_name` varchar(255) DEFAULT NULL COMMENT 'Attribute Set Name',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`attribute_set_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_ATTRIBUTE_SET_NAME` (`entity_type_id`,`attribute_set_name`),
  KEY `IDX_MGNTO_EAV_ATTRIBUTE_SET_ENTITY_TYPE_ID_SORT_ORDER` (`entity_type_id`,`sort_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Attribute Set' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mgnto_eav_attribute_set`
--

INSERT INTO `mgnto_eav_attribute_set` (`attribute_set_id`, `entity_type_id`, `attribute_set_name`, `sort_order`) VALUES
(1, 1, 'Default', 1),
(2, 2, 'Default', 1),
(3, 3, 'Default', 1),
(4, 4, 'Default', 1),
(5, 5, 'Default', 1),
(6, 6, 'Default', 1),
(7, 7, 'Default', 1),
(8, 8, 'Default', 1),
(9, 9, 'Default', 11);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_entity`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_entity` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Parent Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `is_active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Entity Active',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_entity_attribute`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_entity_attribute` (
  `entity_attribute_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Set Id',
  `attribute_group_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `sort_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`entity_attribute_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_ATTRIBUTE_ID` (`attribute_set_id`,`attribute_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_GROUP_ID_ATTRIBUTE_ID` (`attribute_group_id`,`attribute_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_SET_ID_SORT_ORDER` (`attribute_set_id`,`sort_order`),
  KEY `IDX_MGNTO_EAV_ENTITY_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Attributes' AUTO_INCREMENT=135 ;

--
-- Dumping data for table `mgnto_eav_entity_attribute`
--

INSERT INTO `mgnto_eav_entity_attribute` (`entity_attribute_id`, `entity_type_id`, `attribute_set_id`, `attribute_group_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, 1, 1, 1, 10),
(2, 1, 1, 1, 2, 0),
(3, 1, 1, 1, 3, 20),
(4, 1, 1, 1, 4, 30),
(5, 1, 1, 1, 5, 40),
(6, 1, 1, 1, 6, 50),
(7, 1, 1, 1, 7, 60),
(8, 1, 1, 1, 8, 70),
(9, 1, 1, 1, 9, 80),
(10, 1, 1, 1, 10, 25),
(11, 1, 1, 1, 11, 90),
(12, 1, 1, 1, 12, 0),
(13, 1, 1, 1, 13, 0),
(14, 1, 1, 1, 14, 0),
(15, 1, 1, 1, 15, 100),
(16, 1, 1, 1, 16, 0),
(17, 1, 1, 1, 17, 86),
(18, 1, 1, 1, 18, 110),
(19, 2, 2, 2, 19, 10),
(20, 2, 2, 2, 20, 20),
(21, 2, 2, 2, 21, 30),
(22, 2, 2, 2, 22, 40),
(23, 2, 2, 2, 23, 50),
(24, 2, 2, 2, 24, 60),
(25, 2, 2, 2, 25, 70),
(26, 2, 2, 2, 26, 80),
(27, 2, 2, 2, 27, 90),
(28, 2, 2, 2, 28, 100),
(29, 2, 2, 2, 29, 100),
(30, 2, 2, 2, 30, 110),
(31, 2, 2, 2, 31, 120),
(32, 2, 2, 2, 32, 130),
(33, 1, 1, 1, 33, 111),
(34, 1, 1, 1, 34, 112),
(35, 1, 1, 1, 35, 28),
(36, 2, 2, 2, 36, 140),
(37, 2, 2, 2, 37, 132),
(38, 2, 2, 2, 38, 133),
(39, 2, 2, 2, 39, 134),
(40, 2, 2, 2, 40, 135),
(41, 3, 3, 4, 41, 1),
(42, 3, 3, 4, 42, 2),
(43, 3, 3, 4, 43, 3),
(44, 3, 3, 4, 44, 4),
(45, 3, 3, 4, 45, 5),
(46, 3, 3, 4, 46, 6),
(47, 3, 3, 4, 47, 7),
(48, 3, 3, 4, 48, 8),
(49, 3, 3, 5, 49, 10),
(50, 3, 3, 5, 50, 20),
(51, 3, 3, 5, 51, 30),
(52, 3, 3, 4, 52, 12),
(53, 3, 3, 4, 53, 13),
(54, 3, 3, 4, 54, 14),
(55, 3, 3, 4, 55, 15),
(56, 3, 3, 4, 56, 16),
(57, 3, 3, 4, 57, 17),
(58, 3, 3, 6, 58, 10),
(59, 3, 3, 6, 59, 30),
(60, 3, 3, 6, 60, 40),
(61, 3, 3, 6, 61, 50),
(62, 3, 3, 6, 62, 60),
(63, 3, 3, 4, 63, 24),
(64, 3, 3, 4, 64, 25),
(65, 3, 3, 5, 65, 40),
(66, 3, 3, 5, 66, 50),
(67, 3, 3, 4, 67, 10),
(68, 3, 3, 6, 68, 5),
(69, 3, 3, 6, 69, 6),
(70, 3, 3, 5, 70, 51),
(71, 4, 4, 7, 71, 1),
(72, 4, 4, 7, 72, 2),
(73, 4, 4, 7, 73, 3),
(74, 4, 4, 7, 74, 4),
(75, 4, 4, 8, 75, 1),
(76, 4, 4, 8, 76, 3),
(77, 4, 4, 8, 77, 4),
(78, 4, 4, 8, 78, 5),
(79, 4, 4, 8, 79, 6),
(80, 4, 4, 7, 80, 5),
(81, 4, 4, 9, 82, 1),
(82, 4, 4, 9, 83, 2),
(83, 4, 4, 9, 84, 3),
(84, 4, 4, 10, 85, 1),
(85, 4, 4, 10, 86, 2),
(86, 4, 4, 10, 87, 3),
(87, 4, 4, 10, 88, 4),
(88, 4, 4, 7, 89, 6),
(89, 4, 4, 8, 90, 2),
(90, 4, 4, 8, 91, 7),
(91, 4, 4, 7, 93, 7),
(92, 4, 4, 7, 94, 8),
(93, 4, 4, 10, 95, 5),
(94, 4, 4, 7, 96, 9),
(95, 4, 4, 7, 97, 10),
(96, 4, 4, 7, 98, 11),
(97, 4, 4, 8, 99, 8),
(98, 4, 4, 11, 100, 1),
(99, 4, 4, 11, 101, 2),
(100, 4, 4, 7, 102, 12),
(101, 4, 4, 12, 103, 1),
(102, 4, 4, 12, 104, 2),
(103, 4, 4, 12, 105, 3),
(104, 4, 4, 12, 106, 4),
(105, 4, 4, 12, 107, 5),
(106, 4, 4, 7, 108, 13),
(107, 4, 4, 12, 109, 6),
(108, 4, 4, 7, 110, 14),
(109, 4, 4, 7, 111, 15),
(110, 4, 4, 7, 112, 16),
(111, 4, 4, 7, 113, 17),
(112, 4, 4, 7, 114, 18),
(113, 4, 4, 7, 115, 19),
(114, 4, 4, 7, 116, 20),
(115, 4, 4, 7, 117, 21),
(116, 4, 4, 8, 118, 9),
(117, 4, 4, 8, 119, 10),
(118, 4, 4, 8, 120, 11),
(119, 4, 4, 8, 121, 12),
(120, 4, 4, 8, 122, 13),
(121, 4, 4, 17, 123, 1),
(122, 4, 4, 7, 124, 22),
(123, 4, 4, 7, 125, 23),
(124, 4, 4, 7, 126, 24),
(125, 4, 4, 8, 127, 14),
(126, 4, 4, 7, 128, 25),
(127, 4, 4, 7, 129, 26),
(128, 4, 4, 7, 130, 27),
(129, 4, 4, 7, 131, 28),
(130, 4, 4, 7, 132, 29),
(131, 3, 3, 4, 133, 4),
(132, 9, 9, 18, 135, 1),
(133, 9, 9, 18, 136, 2),
(134, 4, 4, 19, 137, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_entity_datetime`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_entity_datetime` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_ENTITY_DATETIME_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_DATETIME_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_DATETIME_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_DATETIME_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_DATETIME_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGNTO_EAV_ENTITY_DATETIME_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_entity_decimal`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_entity_decimal` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_ENTITY_DECIMAL_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_DECIMAL_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_DECIMAL_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_DECIMAL_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGNTO_EAV_ENTITY_DECIMAL_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_entity_int`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_entity_int` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` int(11) NOT NULL DEFAULT '0' COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_ENTITY_INT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_INT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_INT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_INT_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_INT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_INT_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGNTO_EAV_ENTITY_INT_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_entity_store`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_entity_store` (
  `entity_store_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Store Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `increment_prefix` varchar(20) DEFAULT NULL COMMENT 'Increment Prefix',
  `increment_last_id` varchar(50) DEFAULT NULL COMMENT 'Last Incremented Id',
  PRIMARY KEY (`entity_store_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_STORE_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Store' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_entity_text`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_entity_text` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` text NOT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_ENTITY_TEXT_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_TEXT_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_TEXT_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_TEXT_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_TEXT_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_entity_type`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_entity_type` (
  `entity_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Type Id',
  `entity_type_code` varchar(50) NOT NULL COMMENT 'Entity Type Code',
  `entity_model` varchar(255) NOT NULL COMMENT 'Entity Model',
  `attribute_model` varchar(255) DEFAULT NULL COMMENT 'Attribute Model',
  `entity_table` varchar(255) DEFAULT NULL COMMENT 'Entity Table',
  `value_table_prefix` varchar(255) DEFAULT NULL COMMENT 'Value Table Prefix',
  `entity_id_field` varchar(255) DEFAULT NULL COMMENT 'Entity Id Field',
  `is_data_sharing` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Defines Is Data Sharing',
  `data_sharing_key` varchar(100) DEFAULT 'default' COMMENT 'Data Sharing Key',
  `default_attribute_set_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Default Attribute Set Id',
  `increment_model` varchar(255) DEFAULT '' COMMENT 'Increment Model',
  `increment_per_store` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Increment Per Store',
  `increment_pad_length` smallint(5) unsigned NOT NULL DEFAULT '8' COMMENT 'Increment Pad Length',
  `increment_pad_char` varchar(1) NOT NULL DEFAULT '0' COMMENT 'Increment Pad Char',
  `additional_attribute_table` varchar(255) DEFAULT '' COMMENT 'Additional Attribute Table',
  `entity_attribute_collection` varchar(255) DEFAULT NULL COMMENT 'Entity Attribute Collection',
  PRIMARY KEY (`entity_type_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_TYPE_ENTITY_TYPE_CODE` (`entity_type_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Entity Type' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mgnto_eav_entity_type`
--

INSERT INTO `mgnto_eav_entity_type` (`entity_type_id`, `entity_type_code`, `entity_model`, `attribute_model`, `entity_table`, `value_table_prefix`, `entity_id_field`, `is_data_sharing`, `data_sharing_key`, `default_attribute_set_id`, `increment_model`, `increment_per_store`, `increment_pad_length`, `increment_pad_char`, `additional_attribute_table`, `entity_attribute_collection`) VALUES
(1, 'customer', 'customer/customer', 'customer/attribute', 'customer/entity', NULL, NULL, 1, 'default', 1, 'eav/entity_increment_numeric', 0, 8, '0', 'customer/eav_attribute', 'customer/attribute_collection'),
(2, 'customer_address', 'customer/address', 'customer/attribute', 'customer/address_entity', NULL, NULL, 1, 'default', 2, NULL, 0, 8, '0', 'customer/eav_attribute', 'customer/address_attribute_collection'),
(3, 'catalog_category', 'catalog/category', 'catalog/resource_eav_attribute', 'catalog/category', NULL, NULL, 1, 'default', 3, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/category_attribute_collection'),
(4, 'catalog_product', 'catalog/product', 'catalog/resource_eav_attribute', 'catalog/product', NULL, NULL, 1, 'default', 4, NULL, 0, 8, '0', 'catalog/eav_attribute', 'catalog/product_attribute_collection'),
(5, 'order', 'sales/order', NULL, 'sales/order', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(6, 'invoice', 'sales/order_invoice', NULL, 'sales/invoice', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(7, 'creditmemo', 'sales/order_creditmemo', NULL, 'sales/creditmemo', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(8, 'shipment', 'sales/order_shipment', NULL, 'sales/shipment', NULL, NULL, 1, 'default', 0, 'eav/entity_increment_numeric', 1, 8, '0', NULL, NULL),
(9, 'complexworld_eavblogpost', 'complexworld/eavblogpost', NULL, 'eavblog_posts', NULL, NULL, 1, 'default', 0, NULL, 0, 8, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_entity_varchar`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_entity_varchar` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `entity_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Type Id',
  `attribute_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Attribute Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `value` varchar(255) DEFAULT NULL COMMENT 'Attribute Value',
  PRIMARY KEY (`value_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_ENTITY_VARCHAR_ENTITY_ID_ATTRIBUTE_ID_STORE_ID` (`entity_id`,`attribute_id`,`store_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID` (`entity_type_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID` (`attribute_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_VARCHAR_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_VARCHAR_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_EAV_ENTITY_VARCHAR_ATTRIBUTE_ID_VALUE` (`attribute_id`,`value`),
  KEY `IDX_MGNTO_EAV_ENTITY_VARCHAR_ENTITY_TYPE_ID_VALUE` (`entity_type_id`,`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Entity Value Prefix' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_form_element`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_form_element` (
  `element_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Element Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `fieldset_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Fieldset Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`element_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_FORM_ELEMENT_TYPE_ID_ATTRIBUTE_ID` (`type_id`,`attribute_id`),
  KEY `IDX_MGNTO_EAV_FORM_ELEMENT_TYPE_ID` (`type_id`),
  KEY `IDX_MGNTO_EAV_FORM_ELEMENT_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_MGNTO_EAV_FORM_ELEMENT_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Element' AUTO_INCREMENT=53 ;

--
-- Dumping data for table `mgnto_eav_form_element`
--

INSERT INTO `mgnto_eav_form_element` (`element_id`, `type_id`, `fieldset_id`, `attribute_id`, `sort_order`) VALUES
(1, 1, NULL, 20, 0),
(2, 1, NULL, 22, 1),
(3, 1, NULL, 24, 2),
(4, 1, NULL, 9, 3),
(5, 1, NULL, 25, 4),
(6, 1, NULL, 26, 5),
(7, 1, NULL, 28, 6),
(8, 1, NULL, 30, 7),
(9, 1, NULL, 27, 8),
(10, 1, NULL, 31, 9),
(11, 1, NULL, 32, 10),
(12, 2, NULL, 20, 0),
(13, 2, NULL, 22, 1),
(14, 2, NULL, 24, 2),
(15, 2, NULL, 9, 3),
(16, 2, NULL, 25, 4),
(17, 2, NULL, 26, 5),
(18, 2, NULL, 28, 6),
(19, 2, NULL, 30, 7),
(20, 2, NULL, 27, 8),
(21, 2, NULL, 31, 9),
(22, 2, NULL, 32, 10),
(23, 3, NULL, 20, 0),
(24, 3, NULL, 22, 1),
(25, 3, NULL, 24, 2),
(26, 3, NULL, 25, 3),
(27, 3, NULL, 26, 4),
(28, 3, NULL, 28, 5),
(29, 3, NULL, 30, 6),
(30, 3, NULL, 27, 7),
(31, 3, NULL, 31, 8),
(32, 3, NULL, 32, 9),
(33, 4, NULL, 20, 0),
(34, 4, NULL, 22, 1),
(35, 4, NULL, 24, 2),
(36, 4, NULL, 25, 3),
(37, 4, NULL, 26, 4),
(38, 4, NULL, 28, 5),
(39, 4, NULL, 30, 6),
(40, 4, NULL, 27, 7),
(41, 4, NULL, 31, 8),
(42, 4, NULL, 32, 9),
(43, 5, 1, 5, 0),
(44, 5, 1, 7, 1),
(45, 5, 1, 9, 2),
(46, 5, 2, 24, 0),
(47, 5, 2, 31, 1),
(48, 5, 2, 25, 2),
(49, 5, 2, 26, 3),
(50, 5, 2, 28, 4),
(51, 5, 2, 30, 5),
(52, 5, 2, 27, 6);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_form_fieldset`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_form_fieldset` (
  `fieldset_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Fieldset Id',
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `sort_order` int(11) NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  PRIMARY KEY (`fieldset_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_FORM_FIELDSET_TYPE_ID_CODE` (`type_id`,`code`),
  KEY `IDX_MGNTO_EAV_FORM_FIELDSET_TYPE_ID` (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgnto_eav_form_fieldset`
--

INSERT INTO `mgnto_eav_form_fieldset` (`fieldset_id`, `type_id`, `code`, `sort_order`) VALUES
(1, 5, 'general', 1),
(2, 5, 'address', 2);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_form_fieldset_label`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_form_fieldset_label` (
  `fieldset_id` smallint(5) unsigned NOT NULL COMMENT 'Fieldset Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`fieldset_id`,`store_id`),
  KEY `IDX_MGNTO_EAV_FORM_FIELDSET_LABEL_FIELDSET_ID` (`fieldset_id`),
  KEY `IDX_MGNTO_EAV_FORM_FIELDSET_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Fieldset Label';

--
-- Dumping data for table `mgnto_eav_form_fieldset_label`
--

INSERT INTO `mgnto_eav_form_fieldset_label` (`fieldset_id`, `store_id`, `label`) VALUES
(1, 0, 'Personal Information'),
(2, 0, 'Address Information');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_form_type`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_form_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type Id',
  `code` varchar(64) NOT NULL COMMENT 'Code',
  `label` varchar(255) NOT NULL COMMENT 'Label',
  `is_system` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is System',
  `theme` varchar(64) DEFAULT NULL COMMENT 'Theme',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`type_id`),
  UNIQUE KEY `UNQ_MGNTO_EAV_FORM_TYPE_CODE_THEME_STORE_ID` (`code`,`theme`,`store_id`),
  KEY `IDX_MGNTO_EAV_FORM_TYPE_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Eav Form Type' AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mgnto_eav_form_type`
--

INSERT INTO `mgnto_eav_form_type` (`type_id`, `code`, `label`, `is_system`, `theme`, `store_id`) VALUES
(1, 'checkout_onepage_register', 'checkout_onepage_register', 1, '', 0),
(2, 'checkout_onepage_register_guest', 'checkout_onepage_register_guest', 1, '', 0),
(3, 'checkout_onepage_billing_address', 'checkout_onepage_billing_address', 1, '', 0),
(4, 'checkout_onepage_shipping_address', 'checkout_onepage_shipping_address', 1, '', 0),
(5, 'checkout_multishipping_register', 'checkout_multishipping_register', 1, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_eav_form_type_entity`
--

CREATE TABLE IF NOT EXISTS `mgnto_eav_form_type_entity` (
  `type_id` smallint(5) unsigned NOT NULL COMMENT 'Type Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`type_id`,`entity_type_id`),
  KEY `IDX_MGNTO_EAV_FORM_TYPE_ENTITY_ENTITY_TYPE_ID` (`entity_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Eav Form Type Entity';

--
-- Dumping data for table `mgnto_eav_form_type_entity`
--

INSERT INTO `mgnto_eav_form_type_entity` (`type_id`, `entity_type_id`) VALUES
(1, 1),
(2, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_gift_message`
--

CREATE TABLE IF NOT EXISTS `mgnto_gift_message` (
  `gift_message_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'GiftMessage Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `sender` varchar(255) DEFAULT NULL COMMENT 'Sender',
  `recipient` varchar(255) DEFAULT NULL COMMENT 'Recipient',
  `message` text COMMENT 'Message',
  PRIMARY KEY (`gift_message_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Gift Message' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_googlecheckout_notification`
--

CREATE TABLE IF NOT EXISTS `mgnto_googlecheckout_notification` (
  `serial_number` varchar(64) NOT NULL COMMENT 'Serial Number',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  PRIMARY KEY (`serial_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Checkout Notification Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_importexport_importdata`
--

CREATE TABLE IF NOT EXISTS `mgnto_importexport_importdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `entity` varchar(50) NOT NULL COMMENT 'Entity',
  `behavior` varchar(10) NOT NULL DEFAULT 'append' COMMENT 'Behavior',
  `data` longtext COMMENT 'Data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Import Data Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_index_event`
--

CREATE TABLE IF NOT EXISTS `mgnto_index_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `type` varchar(64) NOT NULL COMMENT 'Type',
  `entity` varchar(64) NOT NULL COMMENT 'Entity',
  `entity_pk` bigint(20) DEFAULT NULL COMMENT 'Entity Primary Key',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `old_data` mediumtext COMMENT 'Old Data',
  `new_data` mediumtext COMMENT 'New Data',
  PRIMARY KEY (`event_id`),
  UNIQUE KEY `UNQ_MGNTO_INDEX_EVENT_TYPE_ENTITY_ENTITY_PK` (`type`,`entity`,`entity_pk`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Event' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgnto_index_event`
--

INSERT INTO `mgnto_index_event` (`event_id`, `type`, `entity`, `entity_pk`, `created_at`, `old_data`, `new_data`) VALUES
(1, 'save', 'catalog_category', 1, '2013-10-19 01:44:16', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}'),
(2, 'save', 'catalog_category', 2, '2013-10-19 01:44:17', NULL, 'a:5:{s:35:"cataloginventory_stock_match_result";b:0;s:34:"catalog_product_price_match_result";b:0;s:24:"catalog_url_match_result";b:1;s:37:"catalog_category_product_match_result";b:1;s:35:"catalogsearch_fulltext_match_result";b:1;}');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_index_process`
--

CREATE TABLE IF NOT EXISTS `mgnto_index_process` (
  `process_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Process Id',
  `indexer_code` varchar(32) NOT NULL COMMENT 'Indexer Code',
  `status` varchar(15) NOT NULL DEFAULT 'pending' COMMENT 'Status',
  `started_at` timestamp NULL DEFAULT NULL COMMENT 'Started At',
  `ended_at` timestamp NULL DEFAULT NULL COMMENT 'Ended At',
  `mode` varchar(9) NOT NULL DEFAULT 'real_time' COMMENT 'Mode',
  PRIMARY KEY (`process_id`),
  UNIQUE KEY `UNQ_MGNTO_INDEX_PROCESS_INDEXER_CODE` (`indexer_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Index Process' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `mgnto_index_process`
--

INSERT INTO `mgnto_index_process` (`process_id`, `indexer_code`, `status`, `started_at`, `ended_at`, `mode`) VALUES
(1, 'catalog_product_attribute', 'pending', '2013-10-19 01:46:58', '2013-10-19 01:46:58', 'real_time'),
(2, 'catalog_product_price', 'pending', '2013-10-19 01:46:58', '2013-10-19 01:46:59', 'real_time'),
(3, 'catalog_url', 'pending', '2013-10-19 01:46:59', '2013-10-19 01:46:59', 'real_time'),
(4, 'catalog_product_flat', 'pending', '2013-10-19 01:46:59', '2013-10-19 01:47:00', 'real_time'),
(5, 'catalog_category_flat', 'pending', '2013-10-19 01:47:00', '2013-10-19 01:47:00', 'real_time'),
(6, 'catalog_category_product', 'pending', '2013-10-19 01:47:00', '2013-10-19 01:47:00', 'real_time'),
(7, 'catalogsearch_fulltext', 'pending', '2013-10-19 01:47:00', '2013-10-19 01:47:00', 'real_time'),
(8, 'cataloginventory_stock', 'pending', '2013-10-19 01:46:58', '2013-10-19 01:46:58', 'real_time'),
(9, 'tag_summary', 'pending', '2013-10-19 01:47:00', '2013-10-19 01:47:00', 'real_time');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_index_process_event`
--

CREATE TABLE IF NOT EXISTS `mgnto_index_process_event` (
  `process_id` int(10) unsigned NOT NULL COMMENT 'Process Id',
  `event_id` bigint(20) unsigned NOT NULL COMMENT 'Event Id',
  `status` varchar(7) NOT NULL DEFAULT 'new' COMMENT 'Status',
  PRIMARY KEY (`process_id`,`event_id`),
  KEY `IDX_MGNTO_INDEX_PROCESS_EVENT_EVENT_ID` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Index Process Event';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_log_customer`
--

CREATE TABLE IF NOT EXISTS `mgnto_log_customer` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `customer_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `login_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Login Time',
  `logout_at` timestamp NULL DEFAULT NULL COMMENT 'Logout Time',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_MGNTO_LOG_CUSTOMER_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Customers Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_log_quote`
--

CREATE TABLE IF NOT EXISTS `mgnto_log_quote` (
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Creation Time',
  `deleted_at` timestamp NULL DEFAULT NULL COMMENT 'Deletion Time',
  PRIMARY KEY (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Quotes Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_log_summary`
--

CREATE TABLE IF NOT EXISTS `mgnto_log_summary` (
  `summary_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Summary ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  `type_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Type ID',
  `visitor_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Visitor Count',
  `customer_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Customer Count',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date',
  PRIMARY KEY (`summary_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Summary Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_log_summary_type`
--

CREATE TABLE IF NOT EXISTS `mgnto_log_summary_type` (
  `type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Type ID',
  `type_code` varchar(64) DEFAULT NULL COMMENT 'Type Code',
  `period` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Period',
  `period_type` varchar(6) NOT NULL DEFAULT 'MINUTE' COMMENT 'Period Type',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Summary Types Table' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgnto_log_summary_type`
--

INSERT INTO `mgnto_log_summary_type` (`type_id`, `type_code`, `period`, `period_type`) VALUES
(1, 'hour', 1, 'HOUR'),
(2, 'day', 1, 'DAY');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_log_url`
--

CREATE TABLE IF NOT EXISTS `mgnto_log_url` (
  `url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'URL ID',
  `visitor_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Visitor ID',
  `visit_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Visit Time',
  PRIMARY KEY (`url_id`),
  KEY `IDX_MGNTO_LOG_URL_VISITOR_ID` (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log URL Table';

--
-- Dumping data for table `mgnto_log_url`
--

INSERT INTO `mgnto_log_url` (`url_id`, `visitor_id`, `visit_time`) VALUES
(1, 1, '2013-10-19 01:46:26'),
(2, 1, '2013-10-19 01:54:24'),
(3, 1, '2013-10-19 02:01:45'),
(4, 1, '2013-10-19 02:01:47'),
(5, 1, '2013-10-19 02:10:41'),
(6, 1, '2013-10-19 03:10:16'),
(7, 1, '2013-10-19 03:31:10'),
(8, 1, '2013-10-19 03:31:53'),
(9, 1, '2013-10-19 03:31:59'),
(10, 1, '2013-10-19 03:32:28'),
(11, 1, '2013-10-19 03:33:37'),
(12, 1, '2013-10-19 03:33:39'),
(13, 1, '2013-10-19 03:35:45'),
(14, 1, '2013-10-19 04:02:13'),
(15, 1, '2013-10-19 04:02:21'),
(16, 1, '2013-10-19 04:02:29'),
(17, 1, '2013-10-19 04:02:37'),
(18, 1, '2013-10-19 04:02:51'),
(19, 1, '2013-10-19 04:03:05'),
(20, 1, '2013-10-19 04:03:08'),
(21, 1, '2013-10-19 04:07:17'),
(22, 1, '2013-10-19 04:07:20'),
(23, 1, '2013-10-19 04:07:52'),
(24, 1, '2013-10-19 04:08:54'),
(25, 1, '2013-10-19 04:09:10'),
(26, 1, '2013-10-19 04:09:20'),
(27, 1, '2013-10-19 04:09:23'),
(28, 1, '2013-10-19 04:10:45'),
(29, 1, '2013-10-19 04:10:55'),
(30, 1, '2013-10-19 04:11:39'),
(31, 1, '2013-10-19 04:11:45'),
(32, 1, '2013-10-19 04:11:50'),
(33, 1, '2013-10-19 04:11:57'),
(34, 1, '2013-10-19 04:12:02'),
(35, 1, '2013-10-19 04:12:06'),
(36, 1, '2013-10-19 04:18:38'),
(37, 1, '2013-10-19 04:18:59'),
(38, 1, '2013-10-19 04:20:08'),
(39, 1, '2013-10-19 04:23:29'),
(40, 1, '2013-10-19 04:38:13'),
(41, 1, '2013-10-19 04:38:38'),
(42, 1, '2013-10-19 04:38:43'),
(43, 1, '2013-10-19 04:39:39'),
(44, 1, '2013-10-19 04:39:44'),
(45, 1, '2013-10-19 04:40:23'),
(46, 1, '2013-10-19 04:40:34'),
(47, 1, '2013-10-19 04:43:02'),
(48, 1, '2013-10-19 04:43:07'),
(49, 1, '2013-10-19 04:43:07'),
(50, 1, '2013-10-19 04:43:08'),
(51, 1, '2013-10-19 04:43:10'),
(52, 1, '2013-10-19 04:49:56'),
(53, 1, '2013-10-19 05:06:03'),
(54, 1, '2013-10-19 05:06:45'),
(55, 1, '2013-10-19 05:06:49'),
(56, 1, '2013-10-19 05:06:55'),
(57, 1, '2013-10-19 05:28:25'),
(58, 1, '2013-10-19 05:28:28'),
(59, 1, '2013-10-19 05:29:19'),
(60, 1, '2013-10-19 05:29:22'),
(61, 1, '2013-10-19 05:29:25'),
(62, 1, '2013-10-19 05:29:27'),
(63, 1, '2013-10-19 05:29:40'),
(64, 1, '2013-10-19 05:30:54'),
(65, 1, '2013-10-19 05:31:01'),
(66, 1, '2013-10-19 05:31:18'),
(67, 1, '2013-10-19 05:31:20'),
(68, 1, '2013-10-19 05:32:42'),
(69, 1, '2013-10-19 05:32:58'),
(70, 1, '2013-10-19 05:37:39'),
(71, 1, '2013-10-19 05:37:47'),
(72, 1, '2013-10-19 05:38:20'),
(73, 1, '2013-10-19 05:38:22'),
(74, 1, '2013-10-19 05:39:14'),
(75, 1, '2013-10-19 05:39:31'),
(76, 1, '2013-10-19 05:45:53'),
(77, 1, '2013-10-19 05:45:57'),
(78, 1, '2013-10-19 05:46:01'),
(79, 1, '2013-10-19 05:46:09'),
(80, 2, '2013-10-21 03:32:40'),
(81, 2, '2013-10-21 03:32:56'),
(82, 2, '2013-10-21 03:33:00'),
(83, 2, '2013-10-21 03:33:22'),
(84, 2, '2013-10-21 03:33:26'),
(85, 2, '2013-10-21 03:33:29'),
(86, 2, '2013-10-21 03:34:07'),
(87, 2, '2013-10-21 03:42:29'),
(88, 2, '2013-10-21 03:42:31'),
(89, 2, '2013-10-21 03:42:33'),
(90, 3, '2013-10-21 05:30:07'),
(91, 3, '2013-10-21 05:30:11'),
(92, 3, '2013-10-21 05:39:53'),
(93, 3, '2013-10-21 06:01:20'),
(94, 3, '2013-10-21 06:01:25'),
(95, 3, '2013-10-21 06:37:40'),
(96, 3, '2013-10-21 06:39:02'),
(97, 3, '2013-10-21 06:39:09'),
(98, 3, '2013-10-21 06:39:10'),
(99, 3, '2013-10-21 06:39:11'),
(100, 3, '2013-10-21 06:39:11'),
(101, 3, '2013-10-21 06:39:12'),
(102, 3, '2013-10-21 06:39:12'),
(103, 3, '2013-10-21 06:39:12'),
(104, 3, '2013-10-21 06:39:12'),
(105, 3, '2013-10-21 06:39:12'),
(106, 3, '2013-10-21 06:39:38'),
(107, 3, '2013-10-21 07:06:33'),
(108, 3, '2013-10-21 07:09:11'),
(109, 3, '2013-10-21 07:09:13'),
(110, 3, '2013-10-21 07:09:15'),
(111, 4, '2013-10-21 23:31:19'),
(112, 5, '2013-10-21 23:31:36'),
(113, 6, '2013-10-22 22:23:15'),
(114, 6, '2013-10-22 22:31:34'),
(115, 6, '2013-10-22 22:31:37'),
(116, 6, '2013-10-22 22:31:58'),
(117, 6, '2013-10-22 22:33:37'),
(118, 6, '2013-10-22 22:34:10'),
(119, 6, '2013-10-22 22:35:33'),
(120, 6, '2013-10-22 22:35:36'),
(121, 6, '2013-10-22 22:36:38'),
(122, 6, '2013-10-22 22:39:45'),
(123, 6, '2013-10-22 22:39:55'),
(124, 6, '2013-10-22 22:53:00'),
(125, 6, '2013-10-22 23:00:24'),
(126, 6, '2013-10-22 23:00:37'),
(127, 6, '2013-10-22 23:00:50'),
(128, 6, '2013-10-22 23:00:52'),
(129, 6, '2013-10-22 23:00:52'),
(130, 6, '2013-10-22 23:00:52'),
(131, 6, '2013-10-22 23:01:37'),
(132, 6, '2013-10-22 23:02:25'),
(133, 6, '2013-10-22 23:03:29'),
(134, 6, '2013-10-22 23:03:43'),
(135, 6, '2013-10-22 23:03:59'),
(136, 6, '2013-10-22 23:04:00'),
(137, 6, '2013-10-22 23:04:01'),
(138, 6, '2013-10-22 23:05:08'),
(139, 6, '2013-10-22 23:05:54'),
(140, 6, '2013-10-22 23:06:35'),
(141, 6, '2013-10-22 23:08:28'),
(142, 6, '2013-10-22 23:09:12'),
(143, 6, '2013-10-22 23:10:19'),
(144, 6, '2013-10-22 23:11:10'),
(145, 6, '2013-10-22 23:11:49'),
(146, 6, '2013-10-22 23:12:28'),
(147, 6, '2013-10-22 23:13:28'),
(148, 6, '2013-10-22 23:13:45'),
(149, 6, '2013-10-22 23:13:58'),
(150, 6, '2013-10-22 23:16:07'),
(151, 6, '2013-10-22 23:17:23'),
(152, 6, '2013-10-22 23:19:06'),
(153, 6, '2013-10-22 23:19:33'),
(154, 6, '2013-10-22 23:20:28'),
(155, 6, '2013-10-22 23:20:34'),
(156, 6, '2013-10-23 00:29:34'),
(157, 6, '2013-10-23 00:29:46'),
(158, 6, '2013-10-23 00:29:53'),
(159, 6, '2013-10-23 00:32:27'),
(160, 6, '2013-10-23 00:32:31'),
(161, 6, '2013-10-23 00:33:36'),
(162, 6, '2013-10-23 00:33:50'),
(163, 6, '2013-10-23 00:34:14'),
(164, 6, '2013-10-23 00:34:18'),
(165, 6, '2013-10-23 00:34:57'),
(166, 6, '2013-10-23 00:35:09'),
(167, 6, '2013-10-23 00:35:14'),
(168, 6, '2013-10-23 00:36:54'),
(169, 6, '2013-10-23 00:52:53'),
(170, 6, '2013-10-23 00:56:10'),
(171, 6, '2013-10-23 00:57:01'),
(172, 6, '2013-10-23 00:57:45'),
(173, 7, '2013-10-23 04:29:00'),
(174, 7, '2013-10-23 04:29:02'),
(175, 7, '2013-10-23 04:29:06'),
(176, 7, '2013-10-23 04:30:46'),
(177, 7, '2013-10-23 04:31:03'),
(178, 7, '2013-10-23 04:31:16'),
(179, 7, '2013-10-23 04:31:17'),
(180, 7, '2013-10-23 04:31:24'),
(181, 7, '2013-10-23 04:31:38'),
(182, 7, '2013-10-23 04:32:50'),
(183, 7, '2013-10-23 04:33:13'),
(184, 7, '2013-10-23 04:33:15'),
(185, 7, '2013-10-23 04:33:17'),
(186, 7, '2013-10-23 04:40:41'),
(187, 7, '2013-10-23 04:42:04'),
(188, 7, '2013-10-23 04:42:16'),
(189, 7, '2013-10-23 04:42:30'),
(190, 7, '2013-10-23 04:42:32'),
(191, 7, '2013-10-23 04:43:06'),
(192, 7, '2013-10-23 04:47:19'),
(193, 7, '2013-10-23 04:48:19'),
(194, 7, '2013-10-23 05:01:34'),
(195, 7, '2013-10-23 05:28:09'),
(196, 8, '2013-10-24 00:14:25'),
(197, 8, '2013-10-24 00:57:56'),
(198, 35, '2013-10-24 06:43:52'),
(199, 36, '2013-10-29 00:01:36'),
(200, 36, '2013-10-29 00:02:06'),
(201, 36, '2013-10-29 00:05:32'),
(202, 36, '2013-10-29 00:05:38'),
(203, 36, '2013-10-29 00:05:43'),
(204, 36, '2013-10-29 00:05:47'),
(205, 36, '2013-10-29 00:10:03'),
(206, 36, '2013-10-29 00:10:10'),
(207, 36, '2013-10-29 00:10:15'),
(208, 36, '2013-10-29 00:10:18'),
(209, 36, '2013-10-29 00:10:23'),
(210, 36, '2013-10-29 00:10:28'),
(211, 36, '2013-10-29 00:10:49'),
(212, 36, '2013-10-29 00:10:53'),
(213, 36, '2013-10-29 00:11:00'),
(214, 36, '2013-10-29 00:15:50'),
(215, 36, '2013-10-29 00:15:55'),
(216, 36, '2013-10-29 01:12:09'),
(217, 36, '2013-10-29 01:12:19'),
(218, 36, '2013-10-29 01:16:01'),
(219, 36, '2013-10-29 01:16:04'),
(220, 36, '2013-10-29 01:16:06'),
(221, 36, '2013-10-29 01:16:25'),
(222, 36, '2013-10-29 01:16:31'),
(223, 36, '2013-10-29 01:19:01'),
(224, 36, '2013-10-29 01:19:04'),
(225, 36, '2013-10-29 01:19:18'),
(226, 36, '2013-10-29 01:20:04'),
(227, 36, '2013-10-29 01:20:07'),
(228, 36, '2013-10-29 01:20:09'),
(229, 36, '2013-10-29 01:20:10'),
(230, 36, '2013-10-29 01:20:11'),
(231, 36, '2013-10-29 01:20:15'),
(232, 36, '2013-10-29 01:20:39'),
(233, 36, '2013-10-29 01:20:44'),
(234, 36, '2013-10-29 01:22:09'),
(235, 36, '2013-10-29 01:22:11'),
(236, 36, '2013-10-29 01:29:12'),
(237, 36, '2013-10-29 01:29:15'),
(238, 36, '2013-10-29 01:29:32'),
(239, 36, '2013-10-29 01:55:49'),
(240, 36, '2013-10-29 01:55:52'),
(241, 36, '2013-10-29 01:57:06'),
(242, 36, '2013-10-29 02:12:05'),
(243, 36, '2013-10-29 02:12:19'),
(244, 36, '2013-10-29 02:12:20'),
(245, 37, '2013-10-29 23:40:16'),
(246, 37, '2013-10-29 23:40:43'),
(247, 37, '2013-10-29 23:42:51'),
(248, 37, '2013-10-29 23:44:31'),
(249, 37, '2013-10-29 23:44:40'),
(250, 37, '2013-10-29 23:44:47'),
(251, 37, '2013-10-29 23:52:18'),
(252, 37, '2013-10-29 23:52:30'),
(253, 37, '2013-10-29 23:53:11'),
(254, 37, '2013-10-29 23:53:12'),
(255, 37, '2013-10-29 23:53:43'),
(256, 37, '2013-10-29 23:56:32'),
(257, 37, '2013-10-30 00:02:45'),
(258, 37, '2013-10-30 00:02:59'),
(259, 37, '2013-10-30 00:09:34'),
(260, 37, '2013-10-30 00:09:46'),
(261, 37, '2013-10-30 00:10:10'),
(262, 37, '2013-10-30 00:11:25'),
(263, 37, '2013-10-30 00:11:27'),
(264, 37, '2013-10-30 01:05:02'),
(265, 37, '2013-10-30 01:05:36'),
(266, 37, '2013-10-30 02:02:12'),
(267, 37, '2013-10-30 02:02:22'),
(268, 37, '2013-10-30 02:02:29'),
(269, 37, '2013-10-30 02:02:36'),
(270, 38, '2013-10-30 02:03:34'),
(271, 37, '2013-10-30 02:13:28'),
(272, 37, '2013-10-30 03:09:34'),
(273, 37, '2013-10-30 03:09:39'),
(274, 37, '2013-10-30 03:15:09'),
(275, 37, '2013-10-30 03:20:33'),
(276, 37, '2013-10-30 03:20:36'),
(277, 39, '2013-10-30 05:39:23'),
(278, 39, '2013-10-30 05:41:46'),
(279, 39, '2013-10-30 05:42:56'),
(280, 39, '2013-10-30 05:43:12'),
(281, 39, '2013-10-30 05:43:31'),
(282, 39, '2013-10-30 05:43:35'),
(283, 39, '2013-10-30 05:43:36'),
(284, 39, '2013-10-30 05:43:36'),
(285, 39, '2013-10-30 05:43:48'),
(286, 39, '2013-10-30 06:27:13'),
(287, 39, '2013-10-30 06:27:18'),
(288, 40, '2013-10-31 00:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_log_url_info`
--

CREATE TABLE IF NOT EXISTS `mgnto_log_url_info` (
  `url_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'URL ID',
  `url` varchar(255) DEFAULT NULL COMMENT 'URL',
  `referer` varchar(255) DEFAULT NULL COMMENT 'Referrer',
  PRIMARY KEY (`url_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log URL Info Table' AUTO_INCREMENT=289 ;

--
-- Dumping data for table `mgnto_log_url_info`
--

INSERT INTO `mgnto_log_url_info` (`url_id`, `url`, `referer`) VALUES
(1, 'http://localhost/magento_magento/dev/index.php/', 'http://localhost/magento_magento/dev/index.php/install/wizard/end/'),
(2, 'http://localhost/magento_magento/dev/', 'http://localhost/magento_magento/dev/index.php/'),
(3, 'http://localhost/magento_magento/dev/', 'http://localhost/magento_magento/dev/'),
(4, 'http://localhost/magento_magento/dev/', 'http://localhost/magento_magento/dev/'),
(5, 'http://localhost/magento_magento/dev/', NULL),
(6, 'http://localhost/magento_magento/dev/', NULL),
(7, 'http://localhost/magento_magento/dev/?showConfig=true', NULL),
(8, 'http://localhost/magento_magento/dev/?showConfig=true', NULL),
(9, 'http://localhost/magento_magento/dev/?showConfig=true', NULL),
(10, 'http://localhost/magento_magento/dev/?showConfig=true', NULL),
(11, 'http://localhost/magento_magento/dev/?showConfig=true', NULL),
(12, 'http://localhost/magento_magento/dev/?showConfig=true', NULL),
(13, 'http://localhost/magento_magento/dev/?showConfig=true', NULL),
(14, 'http://localhost/magento_magento/dev/hellowoorld/', NULL),
(15, 'http://localhost/magento_magento/dev/helloworld/', NULL),
(16, 'http://localhost/magento_magento/dev/helloworld/index/index/', NULL),
(17, 'http://localhost/magento_magento/dev/helloworld', NULL),
(18, 'http://localhost/magento_magento/dev/helloworld', NULL),
(19, 'http://localhost/magento_magento/dev/helloworld', NULL),
(20, 'http://localhost/magento_magento/dev/helloworld', NULL),
(21, 'http://localhost/magento_magento/dev/helloworld', NULL),
(22, 'http://localhost/magento_magento/dev/helloworld', NULL),
(23, 'http://localhost/magento_magento/dev/helloworld', NULL),
(24, 'http://localhost/magento_magento/dev/helloworld', NULL),
(25, 'http://localhost/magento_magento/dev/helloworld', NULL),
(26, 'http://localhost/magento_magento/dev/helloworld', NULL),
(27, 'http://localhost/magento_magento/dev/helloworld', NULL),
(28, 'http://localhost/magento_magento/dev/helloworld', NULL),
(29, 'http://localhost/magento_magento/dev/helloworld', NULL),
(30, 'http://localhost/magento_magento/dev/helloworld/index', NULL),
(31, 'http://localhost/magento_magento/dev/helloworld/index/index', NULL),
(32, 'http://localhost/magento_magento/dev/helloworld/index/index/index', NULL),
(33, 'http://localhost/magento_magento/dev/helloworld/index/index/index/index/index/index', NULL),
(34, 'http://localhost/magento_magento/dev/helloworld/1234', NULL),
(35, 'http://localhost/magento_magento/dev/helloworld', NULL),
(36, 'http://localhost/magento_magento/dev/helloworld/goodbye', NULL),
(37, 'http://localhost/magento_magento/dev/helloworld/index/goodbye', NULL),
(38, 'http://localhost/magento_magento/dev/helloworld/index/params?foo=bar&baz=eof', NULL),
(39, 'http://localhost/magento_magento/dev/helloworld/messages/goodbye', NULL),
(40, 'http://localhost/magento_magento/dev/helloworld/', NULL),
(41, 'http://localhost/magento_magento/dev/helloworld/', NULL),
(42, 'http://localhost/magento_magento/dev/helloworld/index/', NULL),
(43, 'http://localhost/magento_magento/dev/helloworld/index/', NULL),
(44, 'http://localhost/magento_magento/dev/helloworld/', NULL),
(45, 'http://localhost/magento_magento/dev/helloworld/', NULL),
(46, 'http://localhost/magento_magento/dev/helloworld/index/', NULL),
(47, 'http://localhost/magento_magento/dev/helloworld/index/', NULL),
(48, 'http://localhost/magento_magento/dev/helloworld/', NULL),
(49, 'http://localhost/magento_magento/dev/helloworld/index/', NULL),
(50, 'http://localhost/magento_magento/dev/helloworld/', NULL),
(51, 'http://localhost/magento_magento/dev/helloworld/messages/goodbye', NULL),
(52, 'http://localhost/magento_magento/dev/helloworld/index/index?showLayout=page', NULL),
(53, 'http://localhost/magento_magento/dev/helloworld/index/index?showLayout=page', NULL),
(54, 'http://localhost/magento_magento/dev/layourviewer/index/index?showLayout=page', NULL),
(55, 'http://localhost/magento_magento/dev/layourviewer/index/index?showLayout=page', NULL),
(56, 'http://localhost/magento_magento/dev/layoutviewer/index/index?showLayout=page', NULL),
(57, 'http://localhost/magento_magento/dev/', NULL),
(58, 'http://localhost/magento_magento/dev/', NULL),
(59, 'http://localhost/magento_magento/dev/', NULL),
(60, 'http://localhost/magento_magento/dev/', NULL),
(61, 'http://localhost/magento_magento/dev/', NULL),
(62, 'http://localhost/magento_magento/dev/', NULL),
(63, 'http://localhost/magento_magento/dev/', NULL),
(64, 'http://localhost/magento_magento/dev/helloworld/index/goodbye', NULL),
(65, 'http://localhost/magento_magento/dev/helloworld/index/goodbye', NULL),
(66, 'http://localhost/magento_magento/dev/helloworld/index/goodbye', NULL),
(67, 'http://localhost/magento_magento/dev/helloworld/index/goodbye', NULL),
(68, 'http://localhost/magento_magento/dev/helloworld/index/goodbye', NULL),
(69, 'http://localhost/magento_magento/dev/helloworld/index/goodbye', NULL),
(70, 'http://localhost/magento_magento/dev/helloworld/index/goodbye', NULL),
(71, 'http://localhost/magento_magento/dev/helloworld/index', NULL),
(72, 'http://localhost/magento_magento/dev/helloworld/index', NULL),
(73, 'http://localhost/magento_magento/dev/helloworld/index', NULL),
(74, 'http://localhost/magento_magento/dev/helloworld/index', NULL),
(75, 'http://localhost/magento_magento/dev/helloworld/index', NULL),
(76, 'http://localhost/magento_magento/dev/helloworld/index', NULL),
(77, 'http://localhost/magento_magento/dev/helloworld/index', NULL),
(78, 'http://localhost/magento_magento/dev/', 'http://localhost/magento_magento/dev/helloworld/index'),
(79, 'http://localhost/magento_magento/dev/helloworld/', NULL),
(80, 'http://localhost/magento_magento/dev/', NULL),
(81, 'http://localhost/magento_magento/dev/index/testModel', NULL),
(82, 'http://localhost/magento_magento/dev/index/testModel', NULL),
(83, 'http://localhost/magento_magento/dev/index/testModel', NULL),
(84, 'http://localhost/magento_magento/dev/index/testModel', NULL),
(85, 'http://localhost/magento_magento/dev/index/testModel', NULL),
(86, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(87, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(88, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(89, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(90, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(91, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(92, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(93, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(94, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(95, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(96, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(97, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(98, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(99, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(100, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(101, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(102, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(103, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(104, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(105, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(106, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(107, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(108, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(109, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(110, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(111, 'http://localhost/magento_magento/dev/', NULL),
(112, 'http://localhost/magento_magento/dev/', NULL),
(113, 'http://localhost/magento_magento/dev/', NULL),
(114, 'http://localhost/magento_magento/dev/', NULL),
(115, 'http://localhost/magento_magento/dev/', NULL),
(116, 'http://localhost/magento_magento/dev/', NULL),
(117, 'http://localhost/magento_magento/dev/', NULL),
(118, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(119, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(120, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(121, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(122, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(123, 'http://localhost/magento_magento/dev/weblog/index/testModel', NULL),
(124, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(125, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(126, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(127, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(128, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(129, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(130, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(131, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(132, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(133, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(134, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(135, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(136, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(137, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(138, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(139, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(140, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(141, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(142, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(143, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(144, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(145, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(146, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(147, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(148, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(149, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(150, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(151, 'http://localhost/magento_magento/dev/weblog/index/createNewPost', NULL),
(152, 'http://localhost/magento_magento/dev/weblog/index/createNewPost', NULL),
(153, 'http://localhost/magento_magento/dev/weblog/index/editFirstPost', NULL),
(154, 'http://localhost/magento_magento/dev/weblog/index/deletefirstpost', NULL),
(155, 'http://localhost/magento_magento/dev/weblog/index/deleteFirstPost', NULL),
(156, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(157, 'http://localhost/magento_magento/dev/weblog/index', NULL),
(158, 'http://localhost/magento_magento/dev/weblog/', NULL),
(159, 'http://localhost/magento_magento/dev/weblog/', NULL),
(160, 'http://localhost/magento_magento/dev/weblog/', NULL),
(161, 'http://localhost/magento_magento/dev/weblog/', NULL),
(162, 'http://localhost/magento_magento/dev/weblog/', NULL),
(163, 'http://localhost/magento_magento/dev/weblog/', NULL),
(164, 'http://localhost/magento_magento/dev/weblog/index/', NULL),
(165, 'http://localhost/magento_magento/dev/weblog/index/', NULL),
(166, 'http://localhost/magento_magento/dev/weblog/index/', NULL),
(167, 'http://localhost/magento_magento/dev/weblog/index/', NULL),
(168, 'http://localhost/magento_magento/dev/weblog/index/createNewPost', NULL),
(169, 'http://localhost/magento_magento/dev/weblog/index/testModel/id/1', NULL),
(170, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(171, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(172, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(173, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(174, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(175, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(176, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(177, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(178, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(179, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(180, 'http://localhost/magento_magento/dev/weblog/index', NULL),
(181, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(182, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(183, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(184, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(185, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(186, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(187, 'http://localhost/magento_magento/dev/weblog/index/showAllBlogPosts', NULL),
(188, 'http://localhost/magento_magento/dev/weblog/index', NULL),
(189, 'http://localhost/magento_magento/dev/', 'http://localhost/magento_magento/dev/weblog/index'),
(190, 'http://localhost/magento_magento/dev/', 'http://localhost/magento_magento/dev/'),
(191, 'http://localhost/magento_magento/dev/', 'http://localhost/magento_magento/dev/'),
(192, 'http://localhost/magento_magento/dev/', 'http://localhost/magento_magento/dev/'),
(193, 'http://localhost/magento_magento/dev/', 'http://localhost/magento_magento/dev/'),
(194, 'http://localhost/magento_magento/dev/', 'http://localhost/magento_magento/dev/'),
(195, 'http://localhost/magento_magento/dev/complexworld', NULL),
(196, 'http://localhost/magento_magento/dev/', NULL),
(197, 'http://localhost/magento_magento/dev/complexworld', NULL),
(198, 'http://localhost/magento_magento/dev/index.php', NULL),
(199, 'http://localhost/magento_magento/dev/', NULL),
(200, 'http://localhost/magento_magento/dev/test', NULL),
(201, 'http://localhost/magento_magento/dev/test', NULL),
(202, 'http://localhost/magento_magento/dev/routeurfrontend/index/', NULL),
(203, 'http://localhost/magento_magento/dev/routeurfrontend/index', NULL),
(204, 'http://localhost/magento_magento/dev/index', NULL),
(205, 'http://localhost/magento_magento/dev/index', NULL),
(206, 'http://localhost/magento_magento/dev/Test', NULL),
(207, 'http://localhost/magento_magento/dev/test', NULL),
(208, 'http://localhost/magento_magento/dev/test', NULL),
(209, 'http://localhost/magento_magento/dev/Test', NULL),
(210, 'http://localhost/magento_magento/dev/test', NULL),
(211, 'http://localhost/magento_magento/dev/test', NULL),
(212, 'http://localhost/magento_magento/dev/test/mamethode', NULL),
(213, 'http://localhost/magento_magento/dev/test/index/mamethode', NULL),
(214, 'http://localhost/magento_magento/dev/test/index', NULL),
(215, 'http://localhost/magento_magento/dev/test', NULL),
(216, 'http://localhost/magento_magento/dev/test', NULL),
(217, 'http://localhost/magento_magento/dev/test', NULL),
(218, 'http://localhost/magento_magento/dev/test', NULL),
(219, 'http://localhost/magento_magento/dev/test', NULL),
(220, 'http://localhost/magento_magento/dev/test', NULL),
(221, 'http://localhost/magento_magento/dev/test', NULL),
(222, 'http://localhost/magento_magento/dev/test/index', NULL),
(223, 'http://localhost/magento_magento/dev/test/index', NULL),
(224, 'http://localhost/magento_magento/dev/test/index', NULL),
(225, 'http://localhost/magento_magento/dev/test/index', NULL),
(226, 'http://localhost/magento_magento/dev/test/index', NULL),
(227, 'http://localhost/magento_magento/dev/test/index', NULL),
(228, 'http://localhost/magento_magento/dev/test/index', NULL),
(229, 'http://localhost/magento_magento/dev/test/index', NULL),
(230, 'http://localhost/magento_magento/dev/test/index', NULL),
(231, 'http://localhost/magento_magento/dev/test/index', NULL),
(232, 'http://localhost/magento_magento/dev/test/index', NULL),
(233, 'http://localhost/magento_magento/dev/test/index', NULL),
(234, 'http://localhost/magento_magento/dev/test/index', NULL),
(235, 'http://localhost/magento_magento/dev/test/index', NULL),
(236, 'http://localhost/magento_magento/dev/test/index', NULL),
(237, 'http://localhost/magento_magento/dev/test/index', NULL),
(238, 'http://localhost/magento_magento/dev/test/index', NULL),
(239, 'http://localhost/magento_magento/dev/test/index', NULL),
(240, 'http://localhost/magento_magento/dev/test/index', NULL),
(241, 'http://localhost/magento_magento/dev/test/index', NULL),
(242, 'http://localhost/magento_magento/dev/test/index', NULL),
(243, 'http://localhost/magento_magento/dev/test/index/save/', 'http://localhost/magento_magento/dev/test/index'),
(244, 'http://localhost/magento_magento/dev/test/index/index/', 'http://localhost/magento_magento/dev/test/index'),
(245, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admin/dashboard/index/key/499b65840ab8834758e06afe4ec6dc73/'),
(246, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admin/dashboard/index/key/499b65840ab8834758e06afe4ec6dc73/'),
(247, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admin/cache/index/key/5dc80d73b40fa08a2a0b4c702deda875/'),
(248, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admin/dashboard/index/key/499b65840ab8834758e06afe4ec6dc73/'),
(249, 'http://localhost/magento_magento/dev/admin/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', NULL),
(250, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admin/cache/index/key/5dc80d73b40fa08a2a0b4c702deda875/'),
(251, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admin/cache/index/key/5dc80d73b40fa08a2a0b4c702deda875/'),
(252, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admin/cache/index/key/5dc80d73b40fa08a2a0b4c702deda875/'),
(253, 'http://localhost/magento_magento/dev/index.php/admintest/index/save/', 'http://localhost/magento_magento/dev/index.php/admintest/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/'),
(254, 'http://localhost/magento_magento/dev/admintest/index/index/', 'http://localhost/magento_magento/dev/index.php/admintest/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/'),
(255, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admintest/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/'),
(256, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admintest/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/'),
(257, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admintest/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/'),
(258, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admintest/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/'),
(259, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_myform/index/key/590d015104a3f5b2ca307b2a220dce09/', 'http://localhost/magento_magento/dev/index.php/admintest/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/'),
(260, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/', 'http://localhost/magento_magento/dev/index.php/admintest/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/'),
(261, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/', 'http://localhost/magento_magento/dev/index.php/admintest/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/'),
(262, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/', 'http://localhost/magento_magento/dev/index.php/admintest/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/'),
(263, 'http://localhost/magento_magento/dev/index.php/sintax/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/', 'http://localhost/magento_magento/dev/index.php/admintest/adminhtml_index/index/key/e21b295b0502dd1bf1f92f958e53d908/'),
(264, 'http://localhost/magento_magento/dev/', NULL),
(265, 'http://localhost/magento_magento/dev/', NULL),
(266, 'http://localhost/magento_magento/dev/test', NULL),
(267, 'http://localhost/magento_magento/dev/index/test', NULL),
(268, 'http://localhost/magento_magento/dev/test', NULL),
(269, 'http://localhost/magento_magento/dev/test/index', NULL),
(270, 'http://localhost/magento_magento/dev/skin/adminhtml/base/default/images/media/about_us_img.jpg', NULL),
(271, 'http://localhost/magento_magento/dev/ecard', NULL),
(272, 'http://localhost/magento_magento/dev/', NULL),
(273, 'http://localhost/magento_magento/dev/test', NULL),
(274, 'http://localhost/magento_magento/dev/test', NULL),
(275, 'http://localhost/magento_magento/dev/test', NULL),
(276, 'http://localhost/magento_magento/dev/test', NULL),
(277, 'http://localhost/magento_magento/dev/', NULL),
(278, 'http://localhost/magento_magento/dev/may', NULL),
(279, 'http://localhost/magento_magento/dev/may', NULL),
(280, 'http://localhost/magento_magento/dev/may', NULL),
(281, 'http://localhost/magento_magento/dev/may', NULL),
(282, 'http://localhost/magento_magento/dev/may', NULL),
(283, 'http://localhost/magento_magento/dev/may', NULL),
(284, 'http://localhost/magento_magento/dev/may', NULL),
(285, 'http://localhost/magento_magento/dev/may', NULL),
(286, 'http://localhost/magento_magento/dev/may', NULL),
(287, 'http://localhost/magento_magento/dev/student', NULL),
(288, 'http://localhost/magento_magento/dev/', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_log_visitor`
--

CREATE TABLE IF NOT EXISTS `mgnto_log_visitor` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `session_id` varchar(64) DEFAULT NULL COMMENT 'Session ID',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Last Visit Time',
  `last_url_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Last URL ID',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store ID',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Log Visitors Table' AUTO_INCREMENT=41 ;

--
-- Dumping data for table `mgnto_log_visitor`
--

INSERT INTO `mgnto_log_visitor` (`visitor_id`, `session_id`, `first_visit_at`, `last_visit_at`, `last_url_id`, `store_id`) VALUES
(1, '4l56mqcgpt0oa9uo3hdq6lldn0', '2013-10-19 01:46:25', '2013-10-19 05:46:09', 79, 1),
(2, '266etms76c25lfaiagsg4q6233', '2013-10-21 03:32:38', '2013-10-21 03:42:33', 89, 1),
(3, '73qg6uj69kaolgdhjp69jmu0s0', '2013-10-21 05:30:07', '2013-10-21 07:09:15', 110, 1),
(4, 'g6ic22rbln9s7s7gc980t60ol5', '2013-10-21 23:31:12', '2013-10-21 23:31:19', 111, 1),
(5, 'mk58j8mfgv221vt1dmvaeri050', '2013-10-21 23:31:36', '2013-10-21 23:31:36', 112, 1),
(6, '1qv0utk4p88jqai0f4pc9arm50', '2013-10-22 22:23:11', '2013-10-23 00:57:45', 172, 1),
(7, 'au6c0huicfodlatr0oqbej24h4', '2013-10-23 04:28:59', '2013-10-23 05:28:09', 195, 1),
(8, '1fqon0lrdfn7vc3m961nt87eb3', '2013-10-24 00:14:22', '2013-10-24 00:57:56', 197, 1),
(9, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:20:15', '2013-10-24 03:20:15', 0, 1),
(10, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:22:07', '2013-10-24 03:22:07', 0, 1),
(11, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:22:10', '2013-10-24 03:22:10', 0, 1),
(12, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:33:03', '2013-10-24 03:33:03', 0, 1),
(13, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:33:06', '2013-10-24 03:33:06', 0, 1),
(14, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:33:22', '2013-10-24 03:33:22', 0, 1),
(15, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:35:48', '2013-10-24 03:35:48', 0, 1),
(16, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:35:50', '2013-10-24 03:35:50', 0, 1),
(17, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:35:55', '2013-10-24 03:35:55', 0, 1),
(18, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:35:58', '2013-10-24 03:35:58', 0, 1),
(19, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:36:01', '2013-10-24 03:36:01', 0, 1),
(20, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:36:06', '2013-10-24 03:36:06', 0, 1),
(21, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:36:08', '2013-10-24 03:36:08', 0, 1),
(22, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:36:11', '2013-10-24 03:36:11', 0, 1),
(23, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:36:13', '2013-10-24 03:36:13', 0, 1),
(24, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:39:02', '2013-10-24 03:39:02', 0, 1),
(25, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:42:29', '2013-10-24 03:42:29', 0, 1),
(26, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:42:32', '2013-10-24 03:42:32', 0, 1),
(27, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:42:39', '2013-10-24 03:42:39', 0, 1),
(28, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:42:50', '2013-10-24 03:42:50', 0, 1),
(29, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:42:53', '2013-10-24 03:42:53', 0, 1),
(30, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:44:05', '2013-10-24 03:44:05', 0, 1),
(31, 'odahgtl87pgdn4agt6noicuh15', '2013-10-24 03:44:14', '2013-10-24 03:44:14', 0, 1),
(32, '94m5qkup1c9fe8c2vmn4t4ja12', '2013-10-24 06:42:06', '2013-10-24 06:42:06', 0, 1),
(33, '94m5qkup1c9fe8c2vmn4t4ja12', '2013-10-24 06:43:23', '2013-10-24 06:43:23', 0, 1),
(34, '94m5qkup1c9fe8c2vmn4t4ja12', '2013-10-24 06:43:38', '2013-10-24 06:43:38', 0, 1),
(35, '94m5qkup1c9fe8c2vmn4t4ja12', '2013-10-24 06:43:49', '2013-10-24 06:43:52', 198, 1),
(36, 'bbsunn6ouuvkk1c37fll5v2nd7', '2013-10-29 00:01:33', '2013-10-29 02:12:20', 244, 1),
(37, '6hspaf14gn8fteqhve4n89u5e4', '2013-10-29 23:40:12', '2013-10-30 03:20:36', 276, 1),
(38, '6v9tfjfcob3pb8k7e2uvsbffj0', '2013-10-30 02:03:34', '2013-10-30 02:03:34', 270, 1),
(39, '5ia8iqbh97h87vhib1shgrhgq6', '2013-10-30 05:39:22', '2013-10-30 06:27:18', 287, 1),
(40, 'tk3b000btdnnt9hdt741mmk210', '2013-10-31 00:34:48', '2013-10-31 00:35:02', 288, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_log_visitor_info`
--

CREATE TABLE IF NOT EXISTS `mgnto_log_visitor_info` (
  `visitor_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Visitor ID',
  `http_referer` varchar(255) DEFAULT NULL COMMENT 'HTTP Referrer',
  `http_user_agent` varchar(255) DEFAULT NULL COMMENT 'HTTP User-Agent',
  `http_accept_charset` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Charset',
  `http_accept_language` varchar(255) DEFAULT NULL COMMENT 'HTTP Accept-Language',
  `server_addr` bigint(20) DEFAULT NULL COMMENT 'Server Address',
  `remote_addr` bigint(20) DEFAULT NULL COMMENT 'Remote Address',
  PRIMARY KEY (`visitor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Info Table';

--
-- Dumping data for table `mgnto_log_visitor_info`
--

INSERT INTO `mgnto_log_visitor_info` (`visitor_id`, `http_referer`, `http_user_agent`, `http_accept_charset`, `http_accept_language`, `server_addr`, `remote_addr`) VALUES
(1, 'http://localhost/magento_magento/dev/index.php/install/wizard/end/', 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(2, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(3, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(4, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(5, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(6, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(7, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(8, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(9, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(10, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(11, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(12, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(13, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(14, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(15, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(16, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(17, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(18, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(19, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(20, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(21, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(22, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(23, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(24, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(25, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(26, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(27, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(28, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(29, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(30, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(31, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(32, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(33, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(34, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(35, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(36, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(37, 'http://localhost/magento_magento/dev/index.php/admin/dashboard/index/key/499b65840ab8834758e06afe4ec6dc73/', 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(38, NULL, NULL, NULL, NULL, 2130706433, 2130706433),
(39, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433),
(40, NULL, 'Mozilla/5.0 (Windows NT 5.1; rv:24.0) Gecko/20100101 Firefox/24.0', NULL, 'en-US,en;q=0.5', 2130706433, 2130706433);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_log_visitor_online`
--

CREATE TABLE IF NOT EXISTS `mgnto_log_visitor_online` (
  `visitor_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Visitor ID',
  `visitor_type` varchar(1) NOT NULL COMMENT 'Visitor Type',
  `remote_addr` bigint(20) NOT NULL COMMENT 'Remote Address',
  `first_visit_at` timestamp NULL DEFAULT NULL COMMENT 'First Visit Time',
  `last_visit_at` timestamp NULL DEFAULT NULL COMMENT 'Last Visit Time',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer ID',
  `last_url` varchar(255) DEFAULT NULL COMMENT 'Last URL',
  PRIMARY KEY (`visitor_id`),
  KEY `IDX_MGNTO_LOG_VISITOR_ONLINE_VISITOR_TYPE` (`visitor_type`),
  KEY `IDX_MGNTO_LOG_VISITOR_ONLINE_FIRST_VISIT_AT_LAST_VISIT_AT` (`first_visit_at`,`last_visit_at`),
  KEY `IDX_MGNTO_LOG_VISITOR_ONLINE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Log Visitor Online Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_newsletter_problem`
--

CREATE TABLE IF NOT EXISTS `mgnto_newsletter_problem` (
  `problem_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Problem Id',
  `subscriber_id` int(10) unsigned DEFAULT NULL COMMENT 'Subscriber Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `problem_error_code` int(10) unsigned DEFAULT '0' COMMENT 'Problem Error Code',
  `problem_error_text` varchar(200) DEFAULT NULL COMMENT 'Problem Error Text',
  PRIMARY KEY (`problem_id`),
  KEY `IDX_MGNTO_NEWSLETTER_PROBLEM_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_MGNTO_NEWSLETTER_PROBLEM_QUEUE_ID` (`queue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Problems' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_newsletter_queue`
--

CREATE TABLE IF NOT EXISTS `mgnto_newsletter_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `template_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Template Id',
  `newsletter_type` int(11) DEFAULT NULL COMMENT 'Newsletter Type',
  `newsletter_text` text COMMENT 'Newsletter Text',
  `newsletter_styles` text COMMENT 'Newsletter Styles',
  `newsletter_subject` varchar(200) DEFAULT NULL COMMENT 'Newsletter Subject',
  `newsletter_sender_name` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Name',
  `newsletter_sender_email` varchar(200) DEFAULT NULL COMMENT 'Newsletter Sender Email',
  `queue_status` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Status',
  `queue_start_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Start At',
  `queue_finish_at` timestamp NULL DEFAULT NULL COMMENT 'Queue Finish At',
  PRIMARY KEY (`queue_id`),
  KEY `IDX_MGNTO_NEWSLETTER_QUEUE_TEMPLATE_ID` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_newsletter_queue_link`
--

CREATE TABLE IF NOT EXISTS `mgnto_newsletter_queue_link` (
  `queue_link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Link Id',
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `subscriber_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subscriber Id',
  `letter_sent_at` timestamp NULL DEFAULT NULL COMMENT 'Letter Sent At',
  PRIMARY KEY (`queue_link_id`),
  KEY `IDX_MGNTO_NEWSLETTER_QUEUE_LINK_SUBSCRIBER_ID` (`subscriber_id`),
  KEY `IDX_MGNTO_NEWSLETTER_QUEUE_LINK_QUEUE_ID` (`queue_id`),
  KEY `IDX_MGNTO_NEWSLETTER_QUEUE_LINK_QUEUE_ID_LETTER_SENT_AT` (`queue_id`,`letter_sent_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Link' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_newsletter_queue_store_link`
--

CREATE TABLE IF NOT EXISTS `mgnto_newsletter_queue_store_link` (
  `queue_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Queue Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`queue_id`,`store_id`),
  KEY `IDX_MGNTO_NEWSLETTER_QUEUE_STORE_LINK_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Queue Store Link';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_newsletter_subscriber`
--

CREATE TABLE IF NOT EXISTS `mgnto_newsletter_subscriber` (
  `subscriber_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subscriber Id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store Id',
  `change_status_at` timestamp NULL DEFAULT NULL COMMENT 'Change Status At',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `subscriber_email` varchar(150) DEFAULT NULL COMMENT 'Subscriber Email',
  `subscriber_status` int(11) NOT NULL DEFAULT '0' COMMENT 'Subscriber Status',
  `subscriber_confirm_code` varchar(32) DEFAULT 'NULL' COMMENT 'Subscriber Confirm Code',
  PRIMARY KEY (`subscriber_id`),
  KEY `IDX_MGNTO_NEWSLETTER_SUBSCRIBER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGNTO_NEWSLETTER_SUBSCRIBER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Subscriber' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_newsletter_template`
--

CREATE TABLE IF NOT EXISTS `mgnto_newsletter_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `template_code` varchar(150) DEFAULT NULL COMMENT 'Template Code',
  `template_text` text COMMENT 'Template Text',
  `template_text_preprocessed` text COMMENT 'Template Text Preprocessed',
  `template_styles` text COMMENT 'Template Styles',
  `template_type` int(10) unsigned DEFAULT NULL COMMENT 'Template Type',
  `template_subject` varchar(200) DEFAULT NULL COMMENT 'Template Subject',
  `template_sender_name` varchar(200) DEFAULT NULL COMMENT 'Template Sender Name',
  `template_sender_email` varchar(200) DEFAULT NULL COMMENT 'Template Sender Email',
  `template_actual` smallint(5) unsigned DEFAULT '1' COMMENT 'Template Actual',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Added At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  PRIMARY KEY (`template_id`),
  KEY `IDX_MGNTO_NEWSLETTER_TEMPLATE_TEMPLATE_ACTUAL` (`template_actual`),
  KEY `IDX_MGNTO_NEWSLETTER_TEMPLATE_ADDED_AT` (`added_at`),
  KEY `IDX_MGNTO_NEWSLETTER_TEMPLATE_MODIFIED_AT` (`modified_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Newsletter Template' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_oauth_consumer`
--

CREATE TABLE IF NOT EXISTS `mgnto_oauth_consumer` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `name` varchar(255) NOT NULL COMMENT 'Name of consumer',
  `key` varchar(32) NOT NULL COMMENT 'Key code',
  `secret` varchar(32) NOT NULL COMMENT 'Secret code',
  `callback_url` varchar(255) DEFAULT NULL COMMENT 'Callback URL',
  `rejected_callback_url` varchar(255) NOT NULL COMMENT 'Rejected callback URL',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_MGNTO_OAUTH_CONSUMER_KEY` (`key`),
  UNIQUE KEY `UNQ_MGNTO_MGNTO_OAUTH_CONSUMER_SECRET` (`secret`),
  KEY `IDX_MGNTO_OAUTH_CONSUMER_CREATED_AT` (`created_at`),
  KEY `IDX_MGNTO_OAUTH_CONSUMER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Consumers' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_oauth_nonce`
--

CREATE TABLE IF NOT EXISTS `mgnto_oauth_nonce` (
  `nonce` varchar(32) NOT NULL COMMENT 'Nonce String',
  `timestamp` int(10) unsigned NOT NULL COMMENT 'Nonce Timestamp',
  UNIQUE KEY `UNQ_MGNTO_MGNTO_OAUTH_NONCE_NONCE` (`nonce`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='mgnto_oauth_nonce';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_oauth_token`
--

CREATE TABLE IF NOT EXISTS `mgnto_oauth_token` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity ID',
  `consumer_id` int(10) unsigned NOT NULL COMMENT 'Consumer ID',
  `admin_id` int(10) unsigned DEFAULT NULL COMMENT 'Admin user ID',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer user ID',
  `type` varchar(16) NOT NULL COMMENT 'Token Type',
  `token` varchar(32) NOT NULL COMMENT 'Token',
  `secret` varchar(32) NOT NULL COMMENT 'Token Secret',
  `verifier` varchar(32) DEFAULT NULL COMMENT 'Token Verifier',
  `callback_url` varchar(255) NOT NULL COMMENT 'Token Callback URL',
  `revoked` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token revoked',
  `authorized` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Token authorized',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Token creation timestamp',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_MGNTO_OAUTH_TOKEN_TOKEN` (`token`),
  KEY `IDX_MGNTO_MGNTO_OAUTH_TOKEN_CONSUMER_ID` (`consumer_id`),
  KEY `FK_MGNTO_OAUTH_TOKEN_ADMIN_ID_MGNTO_MGNTO_ADMIN_USER_USER_ID` (`admin_id`),
  KEY `FK_MGNTO_OAUTH_TOKEN_CSTR_ID_MGNTO_MGNTO_CSTR_ENTT_ENTT_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='OAuth Tokens' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_paypal_cert`
--

CREATE TABLE IF NOT EXISTS `mgnto_paypal_cert` (
  `cert_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Cert Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `content` text COMMENT 'Content',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`cert_id`),
  KEY `IDX_MGNTO_PAYPAL_CERT_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Certificate Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_paypal_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `mgnto_paypal_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_MGNTO_PAYPAL_PAYMENT_TRANSACTION_TXN_ID` (`txn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PayPal Payflow Link Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_paypal_settlement_report`
--

CREATE TABLE IF NOT EXISTS `mgnto_paypal_settlement_report` (
  `report_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Report Id',
  `report_date` timestamp NULL DEFAULT NULL COMMENT 'Report Date',
  `account_id` varchar(64) DEFAULT NULL COMMENT 'Account Id',
  `filename` varchar(24) DEFAULT NULL COMMENT 'Filename',
  `last_modified` timestamp NULL DEFAULT NULL COMMENT 'Last Modified',
  PRIMARY KEY (`report_id`),
  UNIQUE KEY `UNQ_MGNTO_PAYPAL_SETTLEMENT_REPORT_REPORT_DATE_ACCOUNT_ID` (`report_date`,`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_paypal_settlement_report_row`
--

CREATE TABLE IF NOT EXISTS `mgnto_paypal_settlement_report_row` (
  `row_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Row Id',
  `report_id` int(10) unsigned NOT NULL COMMENT 'Report Id',
  `transaction_id` varchar(19) DEFAULT NULL COMMENT 'Transaction Id',
  `invoice_id` varchar(127) DEFAULT NULL COMMENT 'Invoice Id',
  `paypal_reference_id` varchar(19) DEFAULT NULL COMMENT 'Paypal Reference Id',
  `paypal_reference_id_type` varchar(3) DEFAULT NULL COMMENT 'Paypal Reference Id Type',
  `transaction_event_code` varchar(5) DEFAULT NULL COMMENT 'Transaction Event Code',
  `transaction_initiation_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Initiation Date',
  `transaction_completion_date` timestamp NULL DEFAULT NULL COMMENT 'Transaction Completion Date',
  `transaction_debit_or_credit` varchar(2) NOT NULL DEFAULT 'CR' COMMENT 'Transaction Debit Or Credit',
  `gross_transaction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Gross Transaction Amount',
  `gross_transaction_currency` varchar(3) DEFAULT '' COMMENT 'Gross Transaction Currency',
  `fee_debit_or_credit` varchar(2) DEFAULT NULL COMMENT 'Fee Debit Or Credit',
  `fee_amount` decimal(20,6) NOT NULL DEFAULT '0.000000' COMMENT 'Fee Amount',
  `fee_currency` varchar(3) DEFAULT NULL COMMENT 'Fee Currency',
  `custom_field` varchar(255) DEFAULT NULL COMMENT 'Custom Field',
  `consumer_id` varchar(127) DEFAULT NULL COMMENT 'Consumer Id',
  `payment_tracking_id` varchar(255) DEFAULT NULL COMMENT 'Payment Tracking ID',
  `store_id` varchar(50) DEFAULT NULL COMMENT 'Store ID',
  PRIMARY KEY (`row_id`),
  KEY `IDX_MGNTO_PAYPAL_SETTLEMENT_REPORT_ROW_REPORT_ID` (`report_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Paypal Settlement Report Row Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_persistent_session`
--

CREATE TABLE IF NOT EXISTS `mgnto_persistent_session` (
  `persistent_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Session id',
  `key` varchar(50) NOT NULL COMMENT 'Unique cookie key',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  `info` text COMMENT 'Session Data',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`persistent_id`),
  UNIQUE KEY `IDX_MGNTO_PERSISTENT_SESSION_KEY` (`key`),
  UNIQUE KEY `IDX_MGNTO_PERSISTENT_SESSION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGNTO_PERSISTENT_SESSION_UPDATED_AT` (`updated_at`),
  KEY `FK_MGNTO_PERSISTENT_SESS_WS_ID_MGNTO_CORE_WS_WS_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Persistent Session' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_pfay_test`
--

CREATE TABLE IF NOT EXISTS `mgnto_pfay_test` (
  `id_pfay_test` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pfay_test`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `mgnto_pfay_test`
--

INSERT INTO `mgnto_pfay_test` (`id_pfay_test`, `nom`, `prenom`, `telephone`) VALUES
(2, 'Pra', 'Stha', '7468164613'),
(4, 'FelloEdited', 'FyiEdited', '982211277'),
(5, 'Yo yo', 'Honey Singh', '1563165'),
(6, 'Yes', 'Yes', '234565');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_poll`
--

CREATE TABLE IF NOT EXISTS `mgnto_poll` (
  `poll_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Poll Id',
  `poll_title` varchar(255) DEFAULT NULL COMMENT 'Poll title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  `date_posted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date posted',
  `date_closed` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  `active` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Is active',
  `closed` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is closed',
  `answers_display` smallint(6) DEFAULT NULL COMMENT 'Answers display',
  PRIMARY KEY (`poll_id`),
  KEY `IDX_MGNTO_POLL_STORE_ID` (`store_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgnto_poll`
--

INSERT INTO `mgnto_poll` (`poll_id`, `poll_title`, `votes_count`, `store_id`, `date_posted`, `date_closed`, `active`, `closed`, `answers_display`) VALUES
(1, 'What is your favorite color', 7, 0, '2013-10-19 01:44:19', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_poll_answer`
--

CREATE TABLE IF NOT EXISTS `mgnto_poll_answer` (
  `answer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Answer Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `answer_title` varchar(255) DEFAULT NULL COMMENT 'Answer title',
  `votes_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Votes Count',
  `answer_order` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Answers display',
  PRIMARY KEY (`answer_id`),
  KEY `IDX_MGNTO_POLL_ANSWER_POLL_ID` (`poll_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Poll Answers' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mgnto_poll_answer`
--

INSERT INTO `mgnto_poll_answer` (`answer_id`, `poll_id`, `answer_title`, `votes_count`, `answer_order`) VALUES
(1, 1, 'Green', 4, 0),
(2, 1, 'Red', 1, 0),
(3, 1, 'Black', 0, 0),
(4, 1, 'Magenta', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_poll_store`
--

CREATE TABLE IF NOT EXISTS `mgnto_poll_store` (
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`poll_id`,`store_id`),
  KEY `IDX_MGNTO_POLL_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Store';

--
-- Dumping data for table `mgnto_poll_store`
--

INSERT INTO `mgnto_poll_store` (`poll_id`, `store_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_poll_vote`
--

CREATE TABLE IF NOT EXISTS `mgnto_poll_vote` (
  `vote_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote Id',
  `poll_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll Id',
  `poll_answer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Poll answer id',
  `ip_address` bigint(20) DEFAULT NULL COMMENT 'Poll answer id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer id',
  `vote_time` timestamp NULL DEFAULT NULL COMMENT 'Date closed',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_MGNTO_POLL_VOTE_POLL_ANSWER_ID` (`poll_answer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Poll Vote' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_product_alert_price`
--

CREATE TABLE IF NOT EXISTS `mgnto_product_alert_price` (
  `alert_price_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert price id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price amount',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `last_send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert last send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert send count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_price_id`),
  KEY `IDX_MGNTO_PRODUCT_ALERT_PRICE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGNTO_PRODUCT_ALERT_PRICE_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGNTO_PRODUCT_ALERT_PRICE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Price' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_product_alert_stock`
--

CREATE TABLE IF NOT EXISTS `mgnto_product_alert_stock` (
  `alert_stock_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Product alert stock id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website id',
  `add_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Product alert add date',
  `send_date` timestamp NULL DEFAULT NULL COMMENT 'Product alert send date',
  `send_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Send Count',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Product alert status',
  PRIMARY KEY (`alert_stock_id`),
  KEY `IDX_MGNTO_PRODUCT_ALERT_STOCK_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGNTO_PRODUCT_ALERT_STOCK_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGNTO_PRODUCT_ALERT_STOCK_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Product Alert Stock' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_rating`
--

CREATE TABLE IF NOT EXISTS `mgnto_rating` (
  `rating_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Id',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `rating_code` varchar(64) NOT NULL COMMENT 'Rating Code',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Position On Frontend',
  PRIMARY KEY (`rating_id`),
  UNIQUE KEY `UNQ_MGNTO_RATING_RATING_CODE` (`rating_code`),
  KEY `IDX_MGNTO_RATING_ENTITY_ID` (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Ratings' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgnto_rating`
--

INSERT INTO `mgnto_rating` (`rating_id`, `entity_id`, `rating_code`, `position`) VALUES
(1, 1, 'Quality', 0),
(2, 1, 'Value', 0),
(3, 1, 'Price', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_rating_entity`
--

CREATE TABLE IF NOT EXISTS `mgnto_rating_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `entity_code` varchar(64) NOT NULL COMMENT 'Entity Code',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_RATING_ENTITY_ENTITY_CODE` (`entity_code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating entities' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgnto_rating_entity`
--

INSERT INTO `mgnto_rating_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'product_review'),
(3, 'review');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_rating_option`
--

CREATE TABLE IF NOT EXISTS `mgnto_rating_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rating Option Id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `code` varchar(32) NOT NULL COMMENT 'Rating Option Code',
  `value` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Option Value',
  `position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Ration option position on frontend',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MGNTO_RATING_OPTION_RATING_ID` (`rating_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Rating options' AUTO_INCREMENT=16 ;

--
-- Dumping data for table `mgnto_rating_option`
--

INSERT INTO `mgnto_rating_option` (`option_id`, `rating_id`, `code`, `value`, `position`) VALUES
(1, 1, '1', 1, 1),
(2, 1, '2', 2, 2),
(3, 1, '3', 3, 3),
(4, 1, '4', 4, 4),
(5, 1, '5', 5, 5),
(6, 2, '1', 1, 1),
(7, 2, '2', 2, 2),
(8, 2, '3', 3, 3),
(9, 2, '4', 4, 4),
(10, 2, '5', 5, 5),
(11, 3, '1', 1, 1),
(12, 3, '2', 2, 2),
(13, 3, '3', 3, 3),
(14, 3, '4', 4, 4),
(15, 3, '5', 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_rating_option_vote`
--

CREATE TABLE IF NOT EXISTS `mgnto_rating_option_vote` (
  `vote_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Vote id',
  `option_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote option id',
  `remote_ip` varchar(16) NOT NULL COMMENT 'Customer IP',
  `remote_ip_long` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Customer IP converted to long integer format',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `review_id` bigint(20) unsigned DEFAULT NULL COMMENT 'Review id',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Percent amount',
  `value` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote option value',
  PRIMARY KEY (`vote_id`),
  KEY `IDX_MGNTO_RATING_OPTION_VOTE_OPTION_ID` (`option_id`),
  KEY `FK_MGNTO_RATING_OPTION_VOTE_REVIEW_ID_MGNTO_REVIEW_REVIEW_ID` (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating option values' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_rating_option_vote_aggregated`
--

CREATE TABLE IF NOT EXISTS `mgnto_rating_option_vote_aggregated` (
  `primary_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Vote aggregation id',
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `entity_pk_value` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `vote_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Vote dty',
  `vote_value_sum` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'General vote sum',
  `percent` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Vote percent',
  `percent_approved` smallint(6) DEFAULT '0' COMMENT 'Vote percent approved by admin',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_MGNTO_RATING_OPTION_VOTE_AGGREGATED_RATING_ID` (`rating_id`),
  KEY `IDX_MGNTO_RATING_OPTION_VOTE_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating vote aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_rating_store`
--

CREATE TABLE IF NOT EXISTS `mgnto_rating_store` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_MGNTO_RATING_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Store';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_rating_title`
--

CREATE TABLE IF NOT EXISTS `mgnto_rating_title` (
  `rating_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Rating Label',
  PRIMARY KEY (`rating_id`,`store_id`),
  KEY `IDX_MGNTO_RATING_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Rating Title';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_report_compared_product_index`
--

CREATE TABLE IF NOT EXISTS `mgnto_report_compared_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_MGNTO_REPORT_COMPARED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_MGNTO_REPORT_COMPARED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_MGNTO_REPORT_COMPARED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_REPORT_COMPARED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_MGNTO_REPORT_COMPARED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Compared Product Index Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_report_event`
--

CREATE TABLE IF NOT EXISTS `mgnto_report_event` (
  `event_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Id',
  `logged_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Logged At',
  `event_type_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Event Type Id',
  `object_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Object Id',
  `subject_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Subject Id',
  `subtype` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Subtype',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`event_id`),
  KEY `IDX_MGNTO_REPORT_EVENT_EVENT_TYPE_ID` (`event_type_id`),
  KEY `IDX_MGNTO_REPORT_EVENT_SUBJECT_ID` (`subject_id`),
  KEY `IDX_MGNTO_REPORT_EVENT_OBJECT_ID` (`object_id`),
  KEY `IDX_MGNTO_REPORT_EVENT_SUBTYPE` (`subtype`),
  KEY `IDX_MGNTO_REPORT_EVENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Event Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_report_event_types`
--

CREATE TABLE IF NOT EXISTS `mgnto_report_event_types` (
  `event_type_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Event Type Id',
  `event_name` varchar(64) NOT NULL COMMENT 'Event Name',
  `customer_login` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Login',
  PRIMARY KEY (`event_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Reports Event Type Table' AUTO_INCREMENT=7 ;

--
-- Dumping data for table `mgnto_report_event_types`
--

INSERT INTO `mgnto_report_event_types` (`event_type_id`, `event_name`, `customer_login`) VALUES
(1, 'catalog_product_view', 0),
(2, 'sendfriend_product', 0),
(3, 'catalog_product_compare_add_product', 0),
(4, 'checkout_cart_add_product', 0),
(5, 'wishlist_add_product', 0),
(6, 'wishlist_share', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_report_viewed_product_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `mgnto_report_viewed_product_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGNTO_REPORT_VIEWED_PRD_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGNTO_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_REPORT_VIEWED_PRODUCT_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Daily' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_report_viewed_product_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `mgnto_report_viewed_product_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `3547DAA03EC334CE9F5905B81C35F724` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGNTO_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_REPORT_VIEWED_PRODUCT_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Monthly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_report_viewed_product_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `mgnto_report_viewed_product_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `views_num` int(11) NOT NULL DEFAULT '0' COMMENT 'Number of Views',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGNTO_REPORT_VIEWED_PRD_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGNTO_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_REPORT_VIEWED_PRODUCT_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Most Viewed Products Aggregated Yearly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_report_viewed_product_index`
--

CREATE TABLE IF NOT EXISTS `mgnto_report_viewed_product_index` (
  `index_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Index Id',
  `visitor_id` int(10) unsigned DEFAULT NULL COMMENT 'Visitor Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `added_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Added At',
  PRIMARY KEY (`index_id`),
  UNIQUE KEY `UNQ_MGNTO_REPORT_VIEWED_PRODUCT_INDEX_VISITOR_ID_PRODUCT_ID` (`visitor_id`,`product_id`),
  UNIQUE KEY `UNQ_MGNTO_REPORT_VIEWED_PRODUCT_INDEX_CUSTOMER_ID_PRODUCT_ID` (`customer_id`,`product_id`),
  KEY `IDX_MGNTO_REPORT_VIEWED_PRODUCT_INDEX_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_REPORT_VIEWED_PRODUCT_INDEX_ADDED_AT` (`added_at`),
  KEY `IDX_MGNTO_REPORT_VIEWED_PRODUCT_INDEX_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Reports Viewed Product Index Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_review`
--

CREATE TABLE IF NOT EXISTS `mgnto_review` (
  `review_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Review create date',
  `entity_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity id',
  `entity_pk_value` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product id',
  `status_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status code',
  PRIMARY KEY (`review_id`),
  KEY `IDX_MGNTO_REVIEW_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_REVIEW_STATUS_ID` (`status_id`),
  KEY `IDX_MGNTO_REVIEW_ENTITY_PK_VALUE` (`entity_pk_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review base information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_review_detail`
--

CREATE TABLE IF NOT EXISTS `mgnto_review_detail` (
  `detail_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review detail id',
  `review_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Review id',
  `store_id` smallint(5) unsigned DEFAULT '0' COMMENT 'Store id',
  `title` varchar(255) NOT NULL COMMENT 'Title',
  `detail` text NOT NULL COMMENT 'Detail description',
  `nickname` varchar(128) NOT NULL COMMENT 'User nickname',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  PRIMARY KEY (`detail_id`),
  KEY `IDX_MGNTO_REVIEW_DETAIL_REVIEW_ID` (`review_id`),
  KEY `IDX_MGNTO_REVIEW_DETAIL_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_REVIEW_DETAIL_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review detail information' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_review_entity`
--

CREATE TABLE IF NOT EXISTS `mgnto_review_entity` (
  `entity_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Review entity id',
  `entity_code` varchar(32) NOT NULL COMMENT 'Review entity code',
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review entities' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgnto_review_entity`
--

INSERT INTO `mgnto_review_entity` (`entity_id`, `entity_code`) VALUES
(1, 'product'),
(2, 'customer'),
(3, 'category');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_review_entity_summary`
--

CREATE TABLE IF NOT EXISTS `mgnto_review_entity_summary` (
  `primary_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Summary review entity id',
  `entity_pk_value` bigint(20) NOT NULL DEFAULT '0' COMMENT 'Product id',
  `entity_type` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Entity type id',
  `reviews_count` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Qty of reviews',
  `rating_summary` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Summarized rating',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`primary_id`),
  KEY `IDX_MGNTO_REVIEW_ENTITY_SUMMARY_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review aggregates' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_review_status`
--

CREATE TABLE IF NOT EXISTS `mgnto_review_status` (
  `status_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Status id',
  `status_code` varchar(32) NOT NULL COMMENT 'Status code',
  PRIMARY KEY (`status_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Review statuses' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mgnto_review_status`
--

INSERT INTO `mgnto_review_status` (`status_id`, `status_code`) VALUES
(1, 'Approved'),
(2, 'Pending'),
(3, 'Not Approved');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_review_store`
--

CREATE TABLE IF NOT EXISTS `mgnto_review_store` (
  `review_id` bigint(20) unsigned NOT NULL COMMENT 'Review Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  PRIMARY KEY (`review_id`,`store_id`),
  KEY `IDX_MGNTO_REVIEW_STORE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Review Store';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_salesrule`
--

CREATE TABLE IF NOT EXISTS `mgnto_salesrule` (
  `rule_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `uses_per_customer` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Customer',
  `is_active` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Active',
  `conditions_serialized` mediumtext COMMENT 'Conditions Serialized',
  `actions_serialized` mediumtext COMMENT 'Actions Serialized',
  `stop_rules_processing` smallint(6) NOT NULL DEFAULT '1' COMMENT 'Stop Rules Processing',
  `is_advanced` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Advanced',
  `product_ids` text COMMENT 'Product Ids',
  `sort_order` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort Order',
  `simple_action` varchar(32) DEFAULT NULL COMMENT 'Simple Action',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `discount_qty` decimal(12,4) DEFAULT NULL COMMENT 'Discount Qty',
  `discount_step` int(10) unsigned NOT NULL COMMENT 'Discount Step',
  `simple_free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Simple Free Shipping',
  `apply_to_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Apply To Shipping',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `is_rss` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Is Rss',
  `coupon_type` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Coupon Type',
  `use_auto_generation` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Use Auto Generation',
  `uses_per_coupon` int(11) NOT NULL DEFAULT '0' COMMENT 'Uses Per Coupon',
  PRIMARY KEY (`rule_id`),
  KEY `IDX_MGNTO_SALESRULE_IS_ACTIVE_SORT_ORDER_TO_DATE_FROM_DATE` (`is_active`,`sort_order`,`to_date`,`from_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_salesrule_coupon`
--

CREATE TABLE IF NOT EXISTS `mgnto_salesrule_coupon` (
  `coupon_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Coupon Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `usage_limit` int(10) unsigned DEFAULT NULL COMMENT 'Usage Limit',
  `usage_per_customer` int(10) unsigned DEFAULT NULL COMMENT 'Usage Per Customer',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  `expiration_date` timestamp NULL DEFAULT NULL COMMENT 'Expiration Date',
  `is_primary` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Primary',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Coupon Code Creation Date',
  `type` smallint(6) DEFAULT '0' COMMENT 'Coupon Code Type',
  PRIMARY KEY (`coupon_id`),
  UNIQUE KEY `UNQ_MGNTO_SALESRULE_COUPON_CODE` (`code`),
  UNIQUE KEY `UNQ_MGNTO_SALESRULE_COUPON_RULE_ID_IS_PRIMARY` (`rule_id`,`is_primary`),
  KEY `IDX_MGNTO_SALESRULE_COUPON_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_salesrule_coupon_usage`
--

CREATE TABLE IF NOT EXISTS `mgnto_salesrule_coupon_usage` (
  `coupon_id` int(10) unsigned NOT NULL COMMENT 'Coupon Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `times_used` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`coupon_id`,`customer_id`),
  KEY `IDX_MGNTO_SALESRULE_COUPON_USAGE_COUPON_ID` (`coupon_id`),
  KEY `IDX_MGNTO_SALESRULE_COUPON_USAGE_CUSTOMER_ID` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Coupon Usage';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_salesrule_customer`
--

CREATE TABLE IF NOT EXISTS `mgnto_salesrule_customer` (
  `rule_customer_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rule Customer Id',
  `rule_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Rule Id',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer Id',
  `times_used` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Times Used',
  PRIMARY KEY (`rule_customer_id`),
  KEY `IDX_MGNTO_SALESRULE_CUSTOMER_RULE_ID_CUSTOMER_ID` (`rule_id`,`customer_id`),
  KEY `IDX_MGNTO_SALESRULE_CUSTOMER_CUSTOMER_ID_RULE_ID` (`customer_id`,`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Customer' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_salesrule_customer_group`
--

CREATE TABLE IF NOT EXISTS `mgnto_salesrule_customer_group` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  PRIMARY KEY (`rule_id`,`customer_group_id`),
  KEY `IDX_MGNTO_SALESRULE_CUSTOMER_GROUP_RULE_ID` (`rule_id`),
  KEY `IDX_MGNTO_SALESRULE_CUSTOMER_GROUP_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Customer Groups Relations';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_salesrule_label`
--

CREATE TABLE IF NOT EXISTS `mgnto_salesrule_label` (
  `label_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Label Id',
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(255) DEFAULT NULL COMMENT 'Label',
  PRIMARY KEY (`label_id`),
  UNIQUE KEY `UNQ_MGNTO_SALESRULE_LABEL_RULE_ID_STORE_ID` (`rule_id`,`store_id`),
  KEY `IDX_MGNTO_SALESRULE_LABEL_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALESRULE_LABEL_RULE_ID` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Label' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_salesrule_product_attribute`
--

CREATE TABLE IF NOT EXISTS `mgnto_salesrule_product_attribute` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  PRIMARY KEY (`rule_id`,`website_id`,`customer_group_id`,`attribute_id`),
  KEY `IDX_MGNTO_SALESRULE_PRODUCT_ATTRIBUTE_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGNTO_SALESRULE_PRODUCT_ATTRIBUTE_CUSTOMER_GROUP_ID` (`customer_group_id`),
  KEY `IDX_MGNTO_SALESRULE_PRODUCT_ATTRIBUTE_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Salesrule Product Attribute';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_salesrule_website`
--

CREATE TABLE IF NOT EXISTS `mgnto_salesrule_website` (
  `rule_id` int(10) unsigned NOT NULL COMMENT 'Rule Id',
  `website_id` smallint(5) unsigned NOT NULL COMMENT 'Website Id',
  PRIMARY KEY (`rule_id`,`website_id`),
  KEY `IDX_MGNTO_SALESRULE_WEBSITE_RULE_ID` (`rule_id`),
  KEY `IDX_MGNTO_SALESRULE_WEBSITE_WEBSITE_ID` (`website_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Rules To Websites Relations';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_bestsellers_aggregated_daily`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_bestsellers_aggregated_daily` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_BESTSELLERS_AGGRED_DAILY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGNTO_SALES_BESTSELLERS_AGGREGATED_DAILY_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALES_BESTSELLERS_AGGREGATED_DAILY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Daily' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_bestsellers_aggregated_monthly`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_bestsellers_aggregated_monthly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `535E26D83B48108EC5FAFF0EB3A16BC6` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGNTO_SALES_BESTSELLERS_AGGREGATED_MONTHLY_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALES_BESTSELLERS_AGGREGATED_MONTHLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Monthly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_bestsellers_aggregated_yearly`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_bestsellers_aggregated_yearly` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_name` varchar(255) DEFAULT NULL COMMENT 'Product Name',
  `product_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Product Price',
  `qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `rating_pos` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Rating Pos',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_BESTSELLERS_AGGRED_YEARLY_PERIOD_STORE_ID_PRD_ID` (`period`,`store_id`,`product_id`),
  KEY `IDX_MGNTO_SALES_BESTSELLERS_AGGREGATED_YEARLY_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALES_BESTSELLERS_AGGREGATED_YEARLY_PRODUCT_ID` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Bestsellers Aggregated Yearly' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_billing_agreement`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_billing_agreement` (
  `agreement_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Agreement Id',
  `customer_id` int(10) unsigned NOT NULL COMMENT 'Customer Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `reference_id` varchar(32) NOT NULL COMMENT 'Reference Id',
  `status` varchar(20) NOT NULL COMMENT 'Status',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `agreement_label` varchar(255) DEFAULT NULL COMMENT 'Agreement Label',
  PRIMARY KEY (`agreement_id`),
  KEY `IDX_MGNTO_SALES_BILLING_AGREEMENT_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGNTO_SALES_BILLING_AGREEMENT_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_billing_agreement_order`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_billing_agreement_order` (
  `agreement_id` int(10) unsigned NOT NULL COMMENT 'Agreement Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  PRIMARY KEY (`agreement_id`,`order_id`),
  KEY `IDX_MGNTO_SALES_BILLING_AGREEMENT_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Billing Agreement Order';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_creditmemo`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_creditmemo` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `adjustment` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_FLAT_CREDITMEMO_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_ORDER_ID` (`order_id`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_STATE` (`state`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_creditmemo_comment`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_creditmemo_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_creditmemo_grid`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_creditmemo_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `creditmemo_status` int(11) DEFAULT NULL COMMENT 'Creditmemo Status',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `invoice_id` int(11) DEFAULT NULL COMMENT 'Invoice Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_FLAT_CREDITMEMO_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_GRID_CREDITMEMO_STATUS` (`creditmemo_status`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_GRID_STATE` (`state`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Grid';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_creditmemo_item`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_creditmemo_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_SALES_FLAT_CREDITMEMO_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Creditmemo Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_invoice`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_invoice` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `is_used_for_refund` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Used For Refund',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `can_void_flag` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Void Flag',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `transaction_id` varchar(255) DEFAULT NULL COMMENT 'Transaction Id',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_FLAT_INVOICE_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_ORDER_ID` (`order_id`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_STATE` (`state`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_invoice_comment`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_invoice_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_invoice_grid`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_invoice_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `state` int(11) DEFAULT NULL COMMENT 'State',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `order_currency_code` varchar(3) DEFAULT NULL COMMENT 'Order Currency Code',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_FLAT_INVOICE_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_GRID_STATE` (`state`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_GRID_BILLING_NAME` (`billing_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Grid';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_invoice_item`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_invoice_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `base_row_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_SALES_FLAT_INVOICE_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Invoice Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_order`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_order` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `state` varchar(32) DEFAULT NULL COMMENT 'State',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `protect_code` varchar(255) DEFAULT NULL COMMENT 'Protect Code',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Amount',
  `base_discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Canceled',
  `base_discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Invoiced',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `base_shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Canceled',
  `base_shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Invoiced',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `base_shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Refunded',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `base_subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Canceled',
  `base_subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Invoiced',
  `base_subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Refunded',
  `base_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Amount',
  `base_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Canceled',
  `base_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Invoiced',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Order Rate',
  `base_total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Canceled',
  `base_total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced',
  `base_total_invoiced_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Invoiced Cost',
  `base_total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Offline Refunded',
  `base_total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Online Refunded',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `base_total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Qty Ordered',
  `base_total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Refunded',
  `discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Discount Amount',
  `discount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Discount Canceled',
  `discount_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Discount Invoiced',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `shipping_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Canceled',
  `shipping_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Invoiced',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `shipping_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Refunded',
  `store_to_base_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Base Rate',
  `store_to_order_rate` decimal(12,4) DEFAULT NULL COMMENT 'Store To Order Rate',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `subtotal_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Canceled',
  `subtotal_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Invoiced',
  `subtotal_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Refunded',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Tax Invoiced',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `total_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Total Canceled',
  `total_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Total Invoiced',
  `total_offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Offline Refunded',
  `total_online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Online Refunded',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `total_qty_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty Ordered',
  `total_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Total Refunded',
  `can_ship_partially` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially',
  `can_ship_partially_item` smallint(5) unsigned DEFAULT NULL COMMENT 'Can Ship Partially Item',
  `customer_is_guest` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Is Guest',
  `customer_note_notify` smallint(5) unsigned DEFAULT NULL COMMENT 'Customer Note Notify',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `customer_group_id` smallint(6) DEFAULT NULL COMMENT 'Customer Group Id',
  `edit_increment` int(11) DEFAULT NULL COMMENT 'Edit Increment',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `forced_shipment_with_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Forced Do Shipment With Invoice',
  `payment_auth_expiration` int(11) DEFAULT NULL COMMENT 'Payment Authorization Expiration',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `quote_id` int(11) DEFAULT NULL COMMENT 'Quote Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Negative',
  `adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Adjustment Positive',
  `base_adjustment_negative` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Negative',
  `base_adjustment_positive` decimal(12,4) DEFAULT NULL COMMENT 'Base Adjustment Positive',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `base_subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Incl Tax',
  `base_total_due` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Due',
  `payment_authorization_amount` decimal(12,4) DEFAULT NULL COMMENT 'Payment Authorization Amount',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `total_due` decimal(12,4) DEFAULT NULL COMMENT 'Total Due',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_middlename` varchar(255) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_prefix` varchar(255) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_suffix` varchar(255) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `ext_customer_id` varchar(255) DEFAULT NULL COMMENT 'Ext Customer Id',
  `ext_order_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Id',
  `global_currency_code` varchar(3) DEFAULT NULL COMMENT 'Global Currency Code',
  `hold_before_state` varchar(255) DEFAULT NULL COMMENT 'Hold Before State',
  `hold_before_status` varchar(255) DEFAULT NULL COMMENT 'Hold Before Status',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `original_increment_id` varchar(50) DEFAULT NULL COMMENT 'Original Increment Id',
  `relation_child_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Id',
  `relation_child_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Child Real Id',
  `relation_parent_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Id',
  `relation_parent_real_id` varchar(32) DEFAULT NULL COMMENT 'Relation Parent Real Id',
  `remote_ip` varchar(255) DEFAULT NULL COMMENT 'Remote Ip',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `store_currency_code` varchar(3) DEFAULT NULL COMMENT 'Store Currency Code',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `x_forwarded_for` varchar(255) DEFAULT NULL COMMENT 'X Forwarded For',
  `customer_note` text COMMENT 'Customer Note',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `total_item_count` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Total Item Count',
  `customer_gender` int(11) DEFAULT NULL COMMENT 'Customer Gender',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `coupon_rule_name` varchar(255) DEFAULT NULL COMMENT 'Coupon Sales Rule Name',
  `paypal_ipn_customer_notified` int(11) DEFAULT '0' COMMENT 'Paypal Ipn Customer Notified',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_FLAT_ORDER_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_STATUS` (`status`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_STATE` (`state`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_CREATED_AT` (`created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_EXT_ORDER_ID` (`ext_order_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_QUOTE_ID` (`quote_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_order_address`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_order_address` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `customer_address_id` int(11) DEFAULT NULL COMMENT 'Customer Address Id',
  `quote_address_id` int(11) DEFAULT NULL COMMENT 'Quote Address Id',
  `region_id` int(11) DEFAULT NULL COMMENT 'Region Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `country_id` varchar(2) DEFAULT NULL COMMENT 'Country Id',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `prefix` varchar(255) DEFAULT NULL COMMENT 'Prefix',
  `middlename` varchar(255) DEFAULT NULL COMMENT 'Middlename',
  `suffix` varchar(255) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_ADDRESS_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Address' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_order_grid`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_order_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `store_name` varchar(255) DEFAULT NULL COMMENT 'Store Name',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `base_grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Base Grand Total',
  `base_total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Total Paid',
  `grand_total` decimal(12,4) DEFAULT NULL COMMENT 'Grand Total',
  `total_paid` decimal(12,4) DEFAULT NULL COMMENT 'Total Paid',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `base_currency_code` varchar(3) DEFAULT NULL COMMENT 'Base Currency Code',
  `order_currency_code` varchar(255) DEFAULT NULL COMMENT 'Order Currency Code',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  `billing_name` varchar(255) DEFAULT NULL COMMENT 'Billing Name',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_FLAT_ORDER_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_GRID_STATUS` (`status`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_GRID_BASE_GRAND_TOTAL` (`base_grand_total`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_GRID_BASE_TOTAL_PAID` (`base_total_paid`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_GRID_GRAND_TOTAL` (`grand_total`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_GRID_TOTAL_PAID` (`total_paid`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_GRID_SHIPPING_NAME` (`shipping_name`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_GRID_BILLING_NAME` (`billing_name`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_GRID_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_GRID_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Grid';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_order_item`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_order_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Quote Item Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `product_options` text COMMENT 'Product Options',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'No Discount',
  `qty_backordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Backordered',
  `qty_canceled` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Canceled',
  `qty_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Invoiced',
  `qty_ordered` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Ordered',
  `qty_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Refunded',
  `qty_shipped` decimal(12,4) DEFAULT '0.0000' COMMENT 'Qty Shipped',
  `base_cost` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Cost',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `original_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Price',
  `base_original_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Original Price',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Invoiced',
  `base_tax_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Invoiced',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Invoiced',
  `base_discount_invoiced` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Invoiced',
  `amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Amount Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Amount Refunded',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Invoiced',
  `base_row_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Invoiced',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `ext_order_item_id` varchar(255) DEFAULT NULL COMMENT 'Ext Order Item Id',
  `locked_do_invoice` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Invoice',
  `locked_do_ship` smallint(5) unsigned DEFAULT NULL COMMENT 'Locked Do Ship',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Invoiced',
  `base_hidden_tax_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Invoiced',
  `hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Refunded',
  `base_hidden_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Refunded',
  `is_nominal` int(11) NOT NULL DEFAULT '0' COMMENT 'Is Nominal',
  `tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Tax Canceled',
  `hidden_tax_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Canceled',
  `tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Tax Refunded',
  `base_tax_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Refunded',
  `discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Discount Refunded',
  `base_discount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Discount Refunded',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `gift_message_available` int(11) DEFAULT NULL COMMENT 'Gift Message Available',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  PRIMARY KEY (`item_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_ITEM_ORDER_ID` (`order_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_order_payment`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_order_payment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `base_shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Captured',
  `shipping_captured` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Captured',
  `amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Amount Refunded',
  `base_amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid',
  `amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Amount Canceled',
  `base_amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Authorized',
  `base_amount_paid_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Paid Online',
  `base_amount_refunded_online` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded Online',
  `base_shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Amount',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `amount_paid` decimal(12,4) DEFAULT NULL COMMENT 'Amount Paid',
  `amount_authorized` decimal(12,4) DEFAULT NULL COMMENT 'Amount Authorized',
  `base_amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Ordered',
  `base_shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Refunded',
  `shipping_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Refunded',
  `base_amount_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Refunded',
  `amount_ordered` decimal(12,4) DEFAULT NULL COMMENT 'Amount Ordered',
  `base_amount_canceled` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount Canceled',
  `quote_payment_id` int(11) DEFAULT NULL COMMENT 'Quote Payment Id',
  `additional_data` text COMMENT 'Additional Data',
  `cc_exp_month` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Month',
  `cc_ss_start_year` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Year',
  `echeck_bank_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Bank Name',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_debug_request_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Request Body',
  `cc_secure_verify` varchar(255) DEFAULT NULL COMMENT 'Cc Secure Verify',
  `protection_eligibility` varchar(255) DEFAULT NULL COMMENT 'Protection Eligibility',
  `cc_approval` varchar(255) DEFAULT NULL COMMENT 'Cc Approval',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_status_description` varchar(255) DEFAULT NULL COMMENT 'Cc Status Description',
  `echeck_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Type',
  `cc_debug_response_serialized` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Serialized',
  `cc_ss_start_month` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Start Month',
  `echeck_account_type` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Type',
  `last_trans_id` varchar(255) DEFAULT NULL COMMENT 'Last Trans Id',
  `cc_cid_status` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Status',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `cc_exp_year` varchar(255) DEFAULT NULL COMMENT 'Cc Exp Year',
  `cc_status` varchar(255) DEFAULT NULL COMMENT 'Cc Status',
  `echeck_routing_number` varchar(255) DEFAULT NULL COMMENT 'Echeck Routing Number',
  `account_status` varchar(255) DEFAULT NULL COMMENT 'Account Status',
  `anet_trans_method` varchar(255) DEFAULT NULL COMMENT 'Anet Trans Method',
  `cc_debug_response_body` varchar(255) DEFAULT NULL COMMENT 'Cc Debug Response Body',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `echeck_account_name` varchar(255) DEFAULT NULL COMMENT 'Echeck Account Name',
  `cc_avs_status` varchar(255) DEFAULT NULL COMMENT 'Cc Avs Status',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_trans_id` varchar(255) DEFAULT NULL COMMENT 'Cc Trans Id',
  `paybox_request_number` varchar(255) DEFAULT NULL COMMENT 'Paybox Request Number',
  `address_status` varchar(255) DEFAULT NULL COMMENT 'Address Status',
  `additional_information` text COMMENT 'Additional Information',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_PAYMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Payment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_order_status_history`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_order_status_history` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `status` varchar(32) DEFAULT NULL COMMENT 'Status',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `entity_name` varchar(32) DEFAULT NULL COMMENT 'Shows what entity history is bind to.',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_STATUS_HISTORY_PARENT_ID` (`parent_id`),
  KEY `IDX_MGNTO_SALES_FLAT_ORDER_STATUS_HISTORY_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Order Status History' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_quote`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_quote` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `converted_at` timestamp NULL DEFAULT NULL COMMENT 'Converted At',
  `is_active` smallint(5) unsigned DEFAULT '1' COMMENT 'Is Active',
  `is_virtual` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Virtual',
  `is_multi_shipping` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Multi Shipping',
  `items_count` int(10) unsigned DEFAULT '0' COMMENT 'Items Count',
  `items_qty` decimal(12,4) DEFAULT '0.0000' COMMENT 'Items Qty',
  `orig_order_id` int(10) unsigned DEFAULT '0' COMMENT 'Orig Order Id',
  `store_to_base_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Base Rate',
  `store_to_quote_rate` decimal(12,4) DEFAULT '0.0000' COMMENT 'Store To Quote Rate',
  `base_currency_code` varchar(255) DEFAULT NULL COMMENT 'Base Currency Code',
  `store_currency_code` varchar(255) DEFAULT NULL COMMENT 'Store Currency Code',
  `quote_currency_code` varchar(255) DEFAULT NULL COMMENT 'Quote Currency Code',
  `grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `checkout_method` varchar(255) DEFAULT NULL COMMENT 'Checkout Method',
  `customer_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Id',
  `customer_tax_class_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Tax Class Id',
  `customer_group_id` int(10) unsigned DEFAULT '0' COMMENT 'Customer Group Id',
  `customer_email` varchar(255) DEFAULT NULL COMMENT 'Customer Email',
  `customer_prefix` varchar(40) DEFAULT NULL COMMENT 'Customer Prefix',
  `customer_firstname` varchar(255) DEFAULT NULL COMMENT 'Customer Firstname',
  `customer_middlename` varchar(40) DEFAULT NULL COMMENT 'Customer Middlename',
  `customer_lastname` varchar(255) DEFAULT NULL COMMENT 'Customer Lastname',
  `customer_suffix` varchar(40) DEFAULT NULL COMMENT 'Customer Suffix',
  `customer_dob` datetime DEFAULT NULL COMMENT 'Customer Dob',
  `customer_note` varchar(255) DEFAULT NULL COMMENT 'Customer Note',
  `customer_note_notify` smallint(5) unsigned DEFAULT '1' COMMENT 'Customer Note Notify',
  `customer_is_guest` smallint(5) unsigned DEFAULT '0' COMMENT 'Customer Is Guest',
  `remote_ip` varchar(32) DEFAULT NULL COMMENT 'Remote Ip',
  `applied_rule_ids` varchar(255) DEFAULT NULL COMMENT 'Applied Rule Ids',
  `reserved_order_id` varchar(64) DEFAULT NULL COMMENT 'Reserved Order Id',
  `password_hash` varchar(255) DEFAULT NULL COMMENT 'Password Hash',
  `coupon_code` varchar(255) DEFAULT NULL COMMENT 'Coupon Code',
  `global_currency_code` varchar(255) DEFAULT NULL COMMENT 'Global Currency Code',
  `base_to_global_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Global Rate',
  `base_to_quote_rate` decimal(12,4) DEFAULT NULL COMMENT 'Base To Quote Rate',
  `customer_taxvat` varchar(255) DEFAULT NULL COMMENT 'Customer Taxvat',
  `customer_gender` varchar(255) DEFAULT NULL COMMENT 'Customer Gender',
  `subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal With Discount',
  `is_changed` int(10) unsigned DEFAULT NULL COMMENT 'Is Changed',
  `trigger_recollect` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Trigger Recollect',
  `ext_shipping_info` text COMMENT 'Ext Shipping Info',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `is_persistent` smallint(5) unsigned DEFAULT '0' COMMENT 'Is Quote Persistent',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_CUSTOMER_ID_STORE_ID_IS_ACTIVE` (`customer_id`,`store_id`,`is_active`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_quote_address`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_quote_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `save_in_address_book` smallint(6) DEFAULT '0' COMMENT 'Save In Address Book',
  `customer_address_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Address Id',
  `address_type` varchar(255) DEFAULT NULL COMMENT 'Address Type',
  `email` varchar(255) DEFAULT NULL COMMENT 'Email',
  `prefix` varchar(40) DEFAULT NULL COMMENT 'Prefix',
  `firstname` varchar(255) DEFAULT NULL COMMENT 'Firstname',
  `middlename` varchar(40) DEFAULT NULL COMMENT 'Middlename',
  `lastname` varchar(255) DEFAULT NULL COMMENT 'Lastname',
  `suffix` varchar(40) DEFAULT NULL COMMENT 'Suffix',
  `company` varchar(255) DEFAULT NULL COMMENT 'Company',
  `street` varchar(255) DEFAULT NULL COMMENT 'Street',
  `city` varchar(255) DEFAULT NULL COMMENT 'City',
  `region` varchar(255) DEFAULT NULL COMMENT 'Region',
  `region_id` int(10) unsigned DEFAULT NULL COMMENT 'Region Id',
  `postcode` varchar(255) DEFAULT NULL COMMENT 'Postcode',
  `country_id` varchar(255) DEFAULT NULL COMMENT 'Country Id',
  `telephone` varchar(255) DEFAULT NULL COMMENT 'Telephone',
  `fax` varchar(255) DEFAULT NULL COMMENT 'Fax',
  `same_as_billing` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Same As Billing',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `collect_shipping_rates` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Collect Shipping Rates',
  `shipping_method` varchar(255) DEFAULT NULL COMMENT 'Shipping Method',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `weight` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Weight',
  `subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal',
  `base_subtotal` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal',
  `subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Subtotal With Discount',
  `base_subtotal_with_discount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Subtotal With Discount',
  `tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Shipping Amount',
  `base_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Shipping Amount',
  `shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Tax Amount',
  `base_shipping_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Tax Amount',
  `discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Grand Total',
  `base_grand_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Grand Total',
  `customer_notes` text COMMENT 'Customer Notes',
  `applied_taxes` text COMMENT 'Applied Taxes',
  `discount_description` varchar(255) DEFAULT NULL COMMENT 'Discount Description',
  `shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Discount Amount',
  `base_shipping_discount_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Discount Amount',
  `subtotal_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Subtotal Incl Tax',
  `base_subtotal_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Subtotal Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `shipping_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Hidden Tax Amount',
  `base_shipping_hidden_tax_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Hidden Tax Amount',
  `shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Incl Tax',
  `base_shipping_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Shipping Incl Tax',
  `vat_id` text COMMENT 'Vat Id',
  `vat_is_valid` smallint(6) DEFAULT NULL COMMENT 'Vat Is Valid',
  `vat_request_id` text COMMENT 'Vat Request Id',
  `vat_request_date` text COMMENT 'Vat Request Date',
  `vat_request_success` smallint(6) DEFAULT NULL COMMENT 'Vat Request Success',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_ADDRESS_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_quote_address_item`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_quote_address_item` (
  `address_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Address Item Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `quote_address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Address Id',
  `quote_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Item Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `super_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Super Product Id',
  `parent_product_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Product Id',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `image` varchar(255) DEFAULT NULL COMMENT 'Image',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `free_shipping` int(10) unsigned DEFAULT NULL COMMENT 'Free Shipping',
  `is_qty_decimal` int(10) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `discount_percent` decimal(12,4) DEFAULT NULL COMMENT 'Discount Percent',
  `no_discount` int(10) unsigned DEFAULT NULL COMMENT 'No Discount',
  `tax_percent` decimal(12,4) DEFAULT NULL COMMENT 'Tax Percent',
  `base_price` decimal(12,4) DEFAULT NULL COMMENT 'Base Price',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  PRIMARY KEY (`address_item_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ADDRESS_ID` (`quote_address_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_ADDRESS_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_ADDRESS_ITEM_QUOTE_ITEM_ID` (`quote_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Address Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_quote_item`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_quote_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Item Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `product_id` int(10) unsigned DEFAULT NULL COMMENT 'Product Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `parent_item_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Item Id',
  `is_virtual` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Virtual',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `description` text COMMENT 'Description',
  `applied_rule_ids` text COMMENT 'Applied Rule Ids',
  `additional_data` text COMMENT 'Additional Data',
  `free_shipping` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Free Shipping',
  `is_qty_decimal` smallint(5) unsigned DEFAULT NULL COMMENT 'Is Qty Decimal',
  `no_discount` smallint(5) unsigned DEFAULT '0' COMMENT 'No Discount',
  `weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Weight',
  `qty` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Qty',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `base_price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Price',
  `custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Custom Price',
  `discount_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Percent',
  `discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Discount Amount',
  `base_discount_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Discount Amount',
  `tax_percent` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Percent',
  `tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Tax Amount',
  `base_tax_amount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Base Tax Amount',
  `row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Row Total',
  `base_row_total` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Base Row Total',
  `row_total_with_discount` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Total With Discount',
  `row_weight` decimal(12,4) DEFAULT '0.0000' COMMENT 'Row Weight',
  `product_type` varchar(255) DEFAULT NULL COMMENT 'Product Type',
  `base_tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Base Tax Before Discount',
  `tax_before_discount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Before Discount',
  `original_custom_price` decimal(12,4) DEFAULT NULL COMMENT 'Original Custom Price',
  `redirect_url` varchar(255) DEFAULT NULL COMMENT 'Redirect Url',
  `base_cost` decimal(12,4) DEFAULT NULL COMMENT 'Base Cost',
  `price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Price Incl Tax',
  `base_price_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Price Incl Tax',
  `row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Row Total Incl Tax',
  `base_row_total_incl_tax` decimal(12,4) DEFAULT NULL COMMENT 'Base Row Total Incl Tax',
  `hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Hidden Tax Amount',
  `base_hidden_tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Hidden Tax Amount',
  `gift_message_id` int(11) DEFAULT NULL COMMENT 'Gift Message Id',
  `weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Disposition',
  `weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Row Disposition',
  `base_weee_tax_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Disposition',
  `base_weee_tax_row_disposition` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Row Disposition',
  `weee_tax_applied` text COMMENT 'Weee Tax Applied',
  `weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Amount',
  `weee_tax_applied_row_amount` decimal(12,4) DEFAULT NULL COMMENT 'Weee Tax Applied Row Amount',
  `base_weee_tax_applied_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Amount',
  `base_weee_tax_applied_row_amnt` decimal(12,4) DEFAULT NULL COMMENT 'Base Weee Tax Applied Row Amnt',
  PRIMARY KEY (`item_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_ITEM_PARENT_ITEM_ID` (`parent_item_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_ITEM_QUOTE_ID` (`quote_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_quote_item_option`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_quote_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_ITEM_OPTION_ITEM_ID` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Item Option' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_quote_payment`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_quote_payment` (
  `payment_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Payment Id',
  `quote_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quote Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `cc_type` varchar(255) DEFAULT NULL COMMENT 'Cc Type',
  `cc_number_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Number Enc',
  `cc_last4` varchar(255) DEFAULT NULL COMMENT 'Cc Last4',
  `cc_cid_enc` varchar(255) DEFAULT NULL COMMENT 'Cc Cid Enc',
  `cc_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Owner',
  `cc_exp_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Month',
  `cc_exp_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Exp Year',
  `cc_ss_owner` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Owner',
  `cc_ss_start_month` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Month',
  `cc_ss_start_year` smallint(5) unsigned DEFAULT '0' COMMENT 'Cc Ss Start Year',
  `po_number` varchar(255) DEFAULT NULL COMMENT 'Po Number',
  `additional_data` text COMMENT 'Additional Data',
  `cc_ss_issue` varchar(255) DEFAULT NULL COMMENT 'Cc Ss Issue',
  `additional_information` text COMMENT 'Additional Information',
  `paypal_payer_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Id',
  `paypal_payer_status` varchar(255) DEFAULT NULL COMMENT 'Paypal Payer Status',
  `paypal_correlation_id` varchar(255) DEFAULT NULL COMMENT 'Paypal Correlation Id',
  PRIMARY KEY (`payment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_PAYMENT_QUOTE_ID` (`quote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Payment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_quote_shipping_rate`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_quote_shipping_rate` (
  `rate_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Rate Id',
  `address_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Address Id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Updated At',
  `carrier` varchar(255) DEFAULT NULL COMMENT 'Carrier',
  `carrier_title` varchar(255) DEFAULT NULL COMMENT 'Carrier Title',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `method` varchar(255) DEFAULT NULL COMMENT 'Method',
  `method_description` text COMMENT 'Method Description',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `error_message` text COMMENT 'Error Message',
  `method_title` text COMMENT 'Method Title',
  PRIMARY KEY (`rate_id`),
  KEY `IDX_MGNTO_SALES_FLAT_QUOTE_SHIPPING_RATE_ADDRESS_ID` (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Quote Shipping Rate' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_shipment`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_shipment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_weight` decimal(12,4) DEFAULT NULL COMMENT 'Total Weight',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `email_sent` smallint(5) unsigned DEFAULT NULL COMMENT 'Email Sent',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `customer_id` int(11) DEFAULT NULL COMMENT 'Customer Id',
  `shipping_address_id` int(11) DEFAULT NULL COMMENT 'Shipping Address Id',
  `billing_address_id` int(11) DEFAULT NULL COMMENT 'Billing Address Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `packages` text COMMENT 'Packed Products in Packages',
  `shipping_label` mediumblob COMMENT 'Shipping Label Content',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_FLAT_SHIPMENT_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_TOTAL_QTY` (`total_qty`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_ORDER_ID` (`order_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_UPDATED_AT` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_shipment_comment`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_shipment_comment` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `is_customer_notified` int(11) DEFAULT NULL COMMENT 'Is Customer Notified',
  `is_visible_on_front` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Visible On Front',
  `comment` text COMMENT 'Comment',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_COMMENT_CREATED_AT` (`created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_COMMENT_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Comment' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_shipment_grid`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_shipment_grid` (
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Entity Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `total_qty` decimal(12,4) DEFAULT NULL COMMENT 'Total Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `shipment_status` int(11) DEFAULT NULL COMMENT 'Shipment Status',
  `increment_id` varchar(50) DEFAULT NULL COMMENT 'Increment Id',
  `order_increment_id` varchar(50) DEFAULT NULL COMMENT 'Order Increment Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `order_created_at` timestamp NULL DEFAULT NULL COMMENT 'Order Created At',
  `shipping_name` varchar(255) DEFAULT NULL COMMENT 'Shipping Name',
  PRIMARY KEY (`entity_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_FLAT_SHIPMENT_GRID_INCREMENT_ID` (`increment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_GRID_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_GRID_TOTAL_QTY` (`total_qty`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_GRID_ORDER_ID` (`order_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_GRID_SHIPMENT_STATUS` (`shipment_status`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_GRID_ORDER_INCREMENT_ID` (`order_increment_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_GRID_CREATED_AT` (`created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_GRID_ORDER_CREATED_AT` (`order_created_at`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_GRID_SHIPPING_NAME` (`shipping_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Grid';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_shipment_item`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_shipment_item` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `row_total` decimal(12,4) DEFAULT NULL COMMENT 'Row Total',
  `price` decimal(12,4) DEFAULT NULL COMMENT 'Price',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `product_id` int(11) DEFAULT NULL COMMENT 'Product Id',
  `order_item_id` int(11) DEFAULT NULL COMMENT 'Order Item Id',
  `additional_data` text COMMENT 'Additional Data',
  `description` text COMMENT 'Description',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `sku` varchar(255) DEFAULT NULL COMMENT 'Sku',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_ITEM_PARENT_ID` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_flat_shipment_track`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_flat_shipment_track` (
  `entity_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Entity Id',
  `parent_id` int(10) unsigned NOT NULL COMMENT 'Parent Id',
  `weight` decimal(12,4) DEFAULT NULL COMMENT 'Weight',
  `qty` decimal(12,4) DEFAULT NULL COMMENT 'Qty',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `track_number` text COMMENT 'Number',
  `description` text COMMENT 'Description',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `carrier_code` varchar(32) DEFAULT NULL COMMENT 'Carrier Code',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  PRIMARY KEY (`entity_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_TRACK_PARENT_ID` (`parent_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_TRACK_ORDER_ID` (`order_id`),
  KEY `IDX_MGNTO_SALES_FLAT_SHIPMENT_TRACK_CREATED_AT` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Flat Shipment Track' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_invoiced_aggregated`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_invoiced_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_INVOICED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGNTO_SALES_INVOICED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_invoiced_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_invoiced_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `orders_invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Orders Invoiced',
  `invoiced` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced',
  `invoiced_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Captured',
  `invoiced_not_captured` decimal(12,4) DEFAULT NULL COMMENT 'Invoiced Not Captured',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_INVOICED_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGNTO_SALES_INVOICED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Invoiced Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_ORDER_AGGRED_CREATED_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGNTO_SALES_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Aggregated Created' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_qty_ordered` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Ordered',
  `total_qty_invoiced` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Qty Invoiced',
  `total_income_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Income Amount',
  `total_revenue_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Revenue Amount',
  `total_profit_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Profit Amount',
  `total_invoiced_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Invoiced Amount',
  `total_canceled_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Canceled Amount',
  `total_paid_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Paid Amount',
  `total_refunded_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Refunded Amount',
  `total_tax_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount',
  `total_tax_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Tax Amount Actual',
  `total_shipping_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount',
  `total_shipping_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Shipping Amount Actual',
  `total_discount_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount',
  `total_discount_amount_actual` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total Discount Amount Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_ORDER_AGGRED_UPDATED_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGNTO_SALES_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mgnto Sales Order Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_order_status`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_order_status` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `mgnto_sales_order_status`
--

INSERT INTO `mgnto_sales_order_status` (`status`, `label`) VALUES
('canceled', 'Canceled'),
('closed', 'Closed'),
('complete', 'Complete'),
('fraud', 'Suspected Fraud'),
('holded', 'On Hold'),
('payment_review', 'Payment Review'),
('paypal_canceled_reversal', 'PayPal Canceled Reversal'),
('paypal_reversed', 'PayPal Reversed'),
('pending', 'Pending'),
('pending_payment', 'Pending Payment'),
('pending_paypal', 'Pending PayPal'),
('processing', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_order_status_label`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_order_status_label` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `label` varchar(128) NOT NULL COMMENT 'Label',
  PRIMARY KEY (`status`,`store_id`),
  KEY `IDX_MGNTO_SALES_ORDER_STATUS_LABEL_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Label Table';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_order_status_state`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_order_status_state` (
  `status` varchar(32) NOT NULL COMMENT 'Status',
  `state` varchar(32) NOT NULL COMMENT 'Label',
  `is_default` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Is Default',
  PRIMARY KEY (`status`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Status Table';

--
-- Dumping data for table `mgnto_sales_order_status_state`
--

INSERT INTO `mgnto_sales_order_status_state` (`status`, `state`, `is_default`) VALUES
('canceled', 'canceled', 1),
('closed', 'closed', 1),
('complete', 'complete', 1),
('fraud', 'payment_review', 0),
('holded', 'holded', 1),
('payment_review', 'payment_review', 1),
('pending', 'new', 1),
('pending_payment', 'pending_payment', 1),
('processing', 'processing', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_order_tax`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_order_tax` (
  `tax_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Id',
  `order_id` int(10) unsigned NOT NULL COMMENT 'Order Id',
  `code` varchar(255) DEFAULT NULL COMMENT 'Code',
  `title` varchar(255) DEFAULT NULL COMMENT 'Title',
  `percent` decimal(12,4) DEFAULT NULL COMMENT 'Percent',
  `amount` decimal(12,4) DEFAULT NULL COMMENT 'Amount',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `base_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Amount',
  `process` smallint(6) NOT NULL COMMENT 'Process',
  `base_real_amount` decimal(12,4) DEFAULT NULL COMMENT 'Base Real Amount',
  `hidden` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Hidden',
  PRIMARY KEY (`tax_id`),
  KEY `IDX_MGNTO_SALES_ORDER_TAX_ORDER_ID_PRIORITY_POSITION` (`order_id`,`priority`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_order_tax_item`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_order_tax_item` (
  `tax_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tax Item Id',
  `tax_id` int(10) unsigned NOT NULL COMMENT 'Tax Id',
  `item_id` int(10) unsigned NOT NULL COMMENT 'Item Id',
  `tax_percent` decimal(12,4) NOT NULL COMMENT 'Real Tax Percent For Item',
  PRIMARY KEY (`tax_item_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_ORDER_TAX_ITEM_TAX_ID_ITEM_ID` (`tax_id`,`item_id`),
  KEY `IDX_MGNTO_SALES_ORDER_TAX_ITEM_TAX_ID` (`tax_id`),
  KEY `IDX_MGNTO_SALES_ORDER_TAX_ITEM_ITEM_ID` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Order Tax Item' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_payment_transaction`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_payment_transaction` (
  `transaction_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Transaction Id',
  `parent_id` int(10) unsigned DEFAULT NULL COMMENT 'Parent Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  `payment_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Payment Id',
  `txn_id` varchar(100) DEFAULT NULL COMMENT 'Txn Id',
  `parent_txn_id` varchar(100) DEFAULT NULL COMMENT 'Parent Txn Id',
  `txn_type` varchar(15) DEFAULT NULL COMMENT 'Txn Type',
  `is_closed` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Is Closed',
  `additional_information` blob COMMENT 'Additional Information',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`transaction_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_PAYMENT_TRANSACTION_ORDER_ID_PAYMENT_ID_TXN_ID` (`order_id`,`payment_id`,`txn_id`),
  KEY `IDX_MGNTO_SALES_PAYMENT_TRANSACTION_ORDER_ID` (`order_id`),
  KEY `IDX_MGNTO_SALES_PAYMENT_TRANSACTION_PARENT_ID` (`parent_id`),
  KEY `IDX_MGNTO_SALES_PAYMENT_TRANSACTION_PAYMENT_ID` (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Payment Transaction' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_recurring_profile`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_recurring_profile` (
  `profile_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Profile Id',
  `state` varchar(20) NOT NULL COMMENT 'State',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `method_code` varchar(32) NOT NULL COMMENT 'Method Code',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Created At',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `reference_id` varchar(32) DEFAULT NULL COMMENT 'Reference Id',
  `subscriber_name` varchar(150) DEFAULT NULL COMMENT 'Subscriber Name',
  `start_datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Start Datetime',
  `internal_reference_id` varchar(42) NOT NULL COMMENT 'Internal Reference Id',
  `schedule_description` varchar(255) NOT NULL COMMENT 'Schedule Description',
  `suspension_threshold` smallint(5) unsigned DEFAULT NULL COMMENT 'Suspension Threshold',
  `bill_failed_later` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Bill Failed Later',
  `period_unit` varchar(20) NOT NULL COMMENT 'Period Unit',
  `period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Frequency',
  `period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Period Max Cycles',
  `billing_amount` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Billing Amount',
  `trial_period_unit` varchar(20) DEFAULT NULL COMMENT 'Trial Period Unit',
  `trial_period_frequency` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Frequency',
  `trial_period_max_cycles` smallint(5) unsigned DEFAULT NULL COMMENT 'Trial Period Max Cycles',
  `trial_billing_amount` text COMMENT 'Trial Billing Amount',
  `currency_code` varchar(3) NOT NULL COMMENT 'Currency Code',
  `shipping_amount` decimal(12,4) DEFAULT NULL COMMENT 'Shipping Amount',
  `tax_amount` decimal(12,4) DEFAULT NULL COMMENT 'Tax Amount',
  `init_amount` decimal(12,4) DEFAULT NULL COMMENT 'Init Amount',
  `init_may_fail` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Init May Fail',
  `order_info` text NOT NULL COMMENT 'Order Info',
  `order_item_info` text NOT NULL COMMENT 'Order Item Info',
  `billing_address_info` text NOT NULL COMMENT 'Billing Address Info',
  `shipping_address_info` text COMMENT 'Shipping Address Info',
  `profile_vendor_info` text COMMENT 'Profile Vendor Info',
  `additional_info` text COMMENT 'Additional Info',
  PRIMARY KEY (`profile_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_RECURRING_PROFILE_INTERNAL_REFERENCE_ID` (`internal_reference_id`),
  KEY `IDX_MGNTO_SALES_RECURRING_PROFILE_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGNTO_SALES_RECURRING_PROFILE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_recurring_profile_order`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_recurring_profile_order` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Link Id',
  `profile_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Profile Id',
  `order_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Order Id',
  PRIMARY KEY (`link_id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_RECURRING_PROFILE_ORDER_PROFILE_ID_ORDER_ID` (`profile_id`,`order_id`),
  KEY `IDX_MGNTO_SALES_RECURRING_PROFILE_ORDER_ORDER_ID` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Recurring Profile Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_refunded_aggregated`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_refunded_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) NOT NULL DEFAULT '' COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_REFUNDED_AGGREGATED_PERIOD_STORE_ID_ORDER_STATUS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGNTO_SALES_REFUNDED_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_refunded_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_refunded_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `refunded` decimal(12,4) DEFAULT NULL COMMENT 'Refunded',
  `online_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Online Refunded',
  `offline_refunded` decimal(12,4) DEFAULT NULL COMMENT 'Offline Refunded',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNQ_MGNTO_SALES_REFUNDED_AGGRED_ORDER_PERIOD_STORE_ID_ORDER_STS` (`period`,`store_id`,`order_status`),
  KEY `IDX_MGNTO_SALES_REFUNDED_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Refunded Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_shipping_aggregated`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_shipping_aggregated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `DFEB06B65FA314467627A9C34EDEEE97` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_MGNTO_SALES_SHIPPING_AGGREGATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sales_shipping_aggregated_order`
--

CREATE TABLE IF NOT EXISTS `mgnto_sales_shipping_aggregated_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `order_status` varchar(50) DEFAULT NULL COMMENT 'Order Status',
  `shipping_description` varchar(255) DEFAULT NULL COMMENT 'Shipping Description',
  `orders_count` int(11) NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `total_shipping` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping',
  `total_shipping_actual` decimal(12,4) DEFAULT NULL COMMENT 'Total Shipping Actual',
  PRIMARY KEY (`id`),
  UNIQUE KEY `189B652CA9B76E917435B833D2D3E3DE` (`period`,`store_id`,`order_status`,`shipping_description`),
  KEY `IDX_MGNTO_SALES_SHIPPING_AGGREGATED_ORDER_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales Shipping Aggregated Order' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sendfriend_log`
--

CREATE TABLE IF NOT EXISTS `mgnto_sendfriend_log` (
  `log_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Log ID',
  `ip` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer IP address',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Log time',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website ID',
  PRIMARY KEY (`log_id`),
  KEY `IDX_MGNTO_SENDFRIEND_LOG_IP` (`ip`),
  KEY `IDX_MGNTO_SENDFRIEND_LOG_TIME` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Send to friend function log storage table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_shipping_tablerate`
--

CREATE TABLE IF NOT EXISTS `mgnto_shipping_tablerate` (
  `pk` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary key',
  `website_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `dest_country_id` varchar(4) NOT NULL DEFAULT '0' COMMENT 'Destination coutry ISO/2 or ISO/3 code',
  `dest_region_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Destination Region Id',
  `dest_zip` varchar(10) NOT NULL DEFAULT '*' COMMENT 'Destination Post Code (Zip)',
  `condition_name` varchar(20) NOT NULL COMMENT 'Rate Condition name',
  `condition_value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Rate condition value',
  `price` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Price',
  `cost` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Cost',
  PRIMARY KEY (`pk`),
  UNIQUE KEY `2036B24DB8358056568D08283CCFDE74` (`website_id`,`dest_country_id`,`dest_region_id`,`dest_zip`,`condition_name`,`condition_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Shipping Tablerate' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_sitemap`
--

CREATE TABLE IF NOT EXISTS `mgnto_sitemap` (
  `sitemap_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Sitemap Id',
  `sitemap_type` varchar(32) DEFAULT NULL COMMENT 'Sitemap Type',
  `sitemap_filename` varchar(32) DEFAULT NULL COMMENT 'Sitemap Filename',
  `sitemap_path` varchar(255) DEFAULT NULL COMMENT 'Sitemap Path',
  `sitemap_time` timestamp NULL DEFAULT NULL COMMENT 'Sitemap Time',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store id',
  PRIMARY KEY (`sitemap_id`),
  KEY `IDX_MGNTO_SITEMAP_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Google Sitemap' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_students`
--

CREATE TABLE IF NOT EXISTS `mgnto_students` (
  `student_id` int(4) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) DEFAULT NULL,
  `lastname` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `registered_at` datetime NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `mgnto_students`
--

INSERT INTO `mgnto_students` (`student_id`, `firstname`, `lastname`, `age`, `registered_at`) VALUES
(1, 'John', 'Doe', 23, '2013-03-20 00:00:00'),
(2, 'Mary', 'Joe', 22, '2013-03-20 08:43:32'),
(3, 'Michael', 'Jackson', 22, '2013-03-14 09:43:13'),
(21, NULL, NULL, NULL, '0000-00-00 00:00:00'),
(22, 'Deepak', 'Moktan', NULL, '0000-00-00 00:00:00'),
(23, 'Deepak', 'Moktan', 0, '0000-00-00 00:00:00'),
(24, 'Deepak', 'Moktan', 28, '0000-00-00 00:00:00'),
(25, 'Deepak', 'Moktan', 28, '2013-03-14 09:43:13'),
(26, 'Deepak', 'Moktan', 28, '0000-00-00 00:00:00'),
(27, 'Deepak', 'Moktan', 28, '2013-03-14 09:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_tag`
--

CREATE TABLE IF NOT EXISTS `mgnto_tag` (
  `tag_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Id',
  `name` varchar(255) DEFAULT NULL COMMENT 'Name',
  `status` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Status',
  `first_customer_id` int(10) unsigned DEFAULT NULL COMMENT 'First Customer Id',
  `first_store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'First Store Id',
  PRIMARY KEY (`tag_id`),
  KEY `FK_MGNTO_TAG_FIRST_CUSTOMER_ID_MGNTO_CUSTOMER_ENTITY_ENTITY_ID` (`first_customer_id`),
  KEY `FK_MGNTO_TAG_FIRST_STORE_ID_MGNTO_CORE_STORE_STORE_ID` (`first_store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_tag_properties`
--

CREATE TABLE IF NOT EXISTS `mgnto_tag_properties` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_MGNTO_TAG_PROPERTIES_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Properties';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_tag_relation`
--

CREATE TABLE IF NOT EXISTS `mgnto_tag_relation` (
  `tag_relation_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tag Relation Id',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `customer_id` int(10) unsigned DEFAULT NULL COMMENT 'Customer Id',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Store Id',
  `active` smallint(5) unsigned NOT NULL DEFAULT '1' COMMENT 'Active',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  PRIMARY KEY (`tag_relation_id`),
  UNIQUE KEY `UNQ_MGNTO_TAG_RELATION_TAG_ID_CUSTOMER_ID_PRODUCT_ID_STORE_ID` (`tag_id`,`customer_id`,`product_id`,`store_id`),
  KEY `IDX_MGNTO_TAG_RELATION_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGNTO_TAG_RELATION_TAG_ID` (`tag_id`),
  KEY `IDX_MGNTO_TAG_RELATION_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGNTO_TAG_RELATION_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Relation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_tag_summary`
--

CREATE TABLE IF NOT EXISTS `mgnto_tag_summary` (
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Tag Id',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Store Id',
  `customers` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customers',
  `products` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Products',
  `uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Uses',
  `historical_uses` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Historical Uses',
  `popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Popularity',
  `base_popularity` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Base Popularity',
  PRIMARY KEY (`tag_id`,`store_id`),
  KEY `IDX_MGNTO_TAG_SUMMARY_STORE_ID` (`store_id`),
  KEY `IDX_MGNTO_TAG_SUMMARY_TAG_ID` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tag Summary';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_tax_calculation`
--

CREATE TABLE IF NOT EXISTS `mgnto_tax_calculation` (
  `tax_calculation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `tax_calculation_rule_id` int(11) NOT NULL COMMENT 'Tax Calculation Rule Id',
  `customer_tax_class_id` smallint(6) NOT NULL COMMENT 'Customer Tax Class Id',
  `product_tax_class_id` smallint(6) NOT NULL COMMENT 'Product Tax Class Id',
  PRIMARY KEY (`tax_calculation_id`),
  KEY `IDX_MGNTO_TAX_CALCULATION_TAX_CALCULATION_RULE_ID` (`tax_calculation_rule_id`),
  KEY `IDX_MGNTO_TAX_CALCULATION_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_MGNTO_TAX_CALCULATION_CUSTOMER_TAX_CLASS_ID` (`customer_tax_class_id`),
  KEY `IDX_MGNTO_TAX_CALCULATION_PRODUCT_TAX_CLASS_ID` (`product_tax_class_id`),
  KEY `5A60C3F735BAA2EF6EDE9299F9643F09` (`tax_calculation_rate_id`,`customer_tax_class_id`,`product_tax_class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgnto_tax_calculation`
--

INSERT INTO `mgnto_tax_calculation` (`tax_calculation_id`, `tax_calculation_rate_id`, `tax_calculation_rule_id`, `customer_tax_class_id`, `product_tax_class_id`) VALUES
(1, 1, 1, 3, 2),
(2, 2, 1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_tax_calculation_rate`
--

CREATE TABLE IF NOT EXISTS `mgnto_tax_calculation_rate` (
  `tax_calculation_rate_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Id',
  `tax_country_id` varchar(2) NOT NULL COMMENT 'Tax Country Id',
  `tax_region_id` int(11) NOT NULL COMMENT 'Tax Region Id',
  `tax_postcode` varchar(21) DEFAULT NULL COMMENT 'Tax Postcode',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `rate` decimal(12,4) NOT NULL COMMENT 'Rate',
  `zip_is_range` smallint(6) DEFAULT NULL COMMENT 'Zip Is Range',
  `zip_from` int(10) unsigned DEFAULT NULL COMMENT 'Zip From',
  `zip_to` int(10) unsigned DEFAULT NULL COMMENT 'Zip To',
  PRIMARY KEY (`tax_calculation_rate_id`),
  KEY `E2708B1DF8F8DDBF3DDC38E54DCE9296` (`tax_country_id`,`tax_region_id`,`tax_postcode`),
  KEY `IDX_MGNTO_TAX_CALCULATION_RATE_CODE` (`code`),
  KEY `889D9B6ABAE42E5F32654764CE17EFB0` (`tax_calculation_rate_id`,`tax_country_id`,`tax_region_id`,`zip_is_range`,`tax_postcode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `mgnto_tax_calculation_rate`
--

INSERT INTO `mgnto_tax_calculation_rate` (`tax_calculation_rate_id`, `tax_country_id`, `tax_region_id`, `tax_postcode`, `code`, `rate`, `zip_is_range`, `zip_from`, `zip_to`) VALUES
(1, 'US', 12, '*', 'US-CA-*-Rate 1', '8.2500', NULL, NULL, NULL),
(2, 'US', 43, '*', 'US-NY-*-Rate 1', '8.3750', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_tax_calculation_rate_title`
--

CREATE TABLE IF NOT EXISTS `mgnto_tax_calculation_rate_title` (
  `tax_calculation_rate_title_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rate Title Id',
  `tax_calculation_rate_id` int(11) NOT NULL COMMENT 'Tax Calculation Rate Id',
  `store_id` smallint(5) unsigned NOT NULL COMMENT 'Store Id',
  `value` varchar(255) NOT NULL COMMENT 'Value',
  PRIMARY KEY (`tax_calculation_rate_title_id`),
  KEY `IDX_MGNTO_TAX_CALC_RATE_TTL_TAX_CALC_RATE_ID_STORE_ID` (`tax_calculation_rate_id`,`store_id`),
  KEY `IDX_MGNTO_TAX_CALCULATION_RATE_TITLE_TAX_CALCULATION_RATE_ID` (`tax_calculation_rate_id`),
  KEY `IDX_MGNTO_TAX_CALCULATION_RATE_TITLE_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rate Title' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_tax_calculation_rule`
--

CREATE TABLE IF NOT EXISTS `mgnto_tax_calculation_rule` (
  `tax_calculation_rule_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Tax Calculation Rule Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `priority` int(11) NOT NULL COMMENT 'Priority',
  `position` int(11) NOT NULL COMMENT 'Position',
  `calculate_subtotal` int(11) NOT NULL COMMENT 'Calculate off subtotal option',
  PRIMARY KEY (`tax_calculation_rule_id`),
  KEY `IDX_MGNTO_TAX_CALC_RULE_PRIORITY_POSITION_TAX_CALC_RULE_ID` (`priority`,`position`,`tax_calculation_rule_id`),
  KEY `IDX_MGNTO_TAX_CALCULATION_RULE_CODE` (`code`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Calculation Rule' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mgnto_tax_calculation_rule`
--

INSERT INTO `mgnto_tax_calculation_rule` (`tax_calculation_rule_id`, `code`, `priority`, `position`, `calculate_subtotal`) VALUES
(1, 'Retail Customer-Taxable Goods-Rate 1', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_tax_class`
--

CREATE TABLE IF NOT EXISTS `mgnto_tax_class` (
  `class_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Class Id',
  `class_name` varchar(255) NOT NULL COMMENT 'Class Name',
  `class_type` varchar(8) NOT NULL DEFAULT 'CUSTOMER' COMMENT 'Class Type',
  PRIMARY KEY (`class_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='Tax Class' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mgnto_tax_class`
--

INSERT INTO `mgnto_tax_class` (`class_id`, `class_name`, `class_type`) VALUES
(2, 'Taxable Goods', 'PRODUCT'),
(3, 'Retail Customer', 'CUSTOMER'),
(4, 'Shipping', 'PRODUCT');

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_tax_order_aggregated_created`
--

CREATE TABLE IF NOT EXISTS `mgnto_tax_order_aggregated_created` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `0DBEB2DA91F29FA1FBAC887759C48F57` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_MGNTO_TAX_ORDER_AGGREGATED_CREATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Tax Order Aggregation' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_tax_order_aggregated_updated`
--

CREATE TABLE IF NOT EXISTS `mgnto_tax_order_aggregated_updated` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `period` date DEFAULT NULL COMMENT 'Period',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `order_status` varchar(50) NOT NULL COMMENT 'Order Status',
  `percent` float DEFAULT NULL COMMENT 'Percent',
  `orders_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Orders Count',
  `tax_base_amount_sum` float DEFAULT NULL COMMENT 'Tax Base Amount Sum',
  PRIMARY KEY (`id`),
  UNIQUE KEY `FF6AAB7FE7AF4E055576B6ABDD651095` (`period`,`store_id`,`code`,`percent`,`order_status`),
  KEY `IDX_MGNTO_TAX_ORDER_AGGREGATED_UPDATED_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Mgnto Tax Order Aggregated Updated' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_weee_discount`
--

CREATE TABLE IF NOT EXISTS `mgnto_weee_discount` (
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `customer_group_id` smallint(5) unsigned NOT NULL COMMENT 'Customer Group Id',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  KEY `IDX_MGNTO_WEEE_DISCOUNT_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGNTO_WEEE_DISCOUNT_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_WEEE_DISCOUNT_CUSTOMER_GROUP_ID` (`customer_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Discount';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_weee_tax`
--

CREATE TABLE IF NOT EXISTS `mgnto_weee_tax` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Value Id',
  `website_id` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Website Id',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entity Id',
  `country` varchar(2) DEFAULT NULL COMMENT 'Country',
  `value` decimal(12,4) NOT NULL DEFAULT '0.0000' COMMENT 'Value',
  `state` varchar(255) NOT NULL DEFAULT '*' COMMENT 'State',
  `attribute_id` smallint(5) unsigned NOT NULL COMMENT 'Attribute Id',
  `entity_type_id` smallint(5) unsigned NOT NULL COMMENT 'Entity Type Id',
  PRIMARY KEY (`value_id`),
  KEY `IDX_MGNTO_WEEE_TAX_WEBSITE_ID` (`website_id`),
  KEY `IDX_MGNTO_WEEE_TAX_ENTITY_ID` (`entity_id`),
  KEY `IDX_MGNTO_WEEE_TAX_COUNTRY` (`country`),
  KEY `IDX_MGNTO_WEEE_TAX_ATTRIBUTE_ID` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Weee Tax' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_widget`
--

CREATE TABLE IF NOT EXISTS `mgnto_widget` (
  `widget_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Widget Id',
  `widget_code` varchar(255) DEFAULT NULL COMMENT 'Widget code for template directive',
  `widget_type` varchar(255) DEFAULT NULL COMMENT 'Widget Type',
  `parameters` text COMMENT 'Parameters',
  PRIMARY KEY (`widget_id`),
  KEY `IDX_MGNTO_WIDGET_WIDGET_CODE` (`widget_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Preconfigured Widgets' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_widget_instance`
--

CREATE TABLE IF NOT EXISTS `mgnto_widget_instance` (
  `instance_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Instance Id',
  `instance_type` varchar(255) DEFAULT NULL COMMENT 'Instance Type',
  `package_theme` varchar(255) DEFAULT NULL COMMENT 'Package Theme',
  `title` varchar(255) DEFAULT NULL COMMENT 'Widget Title',
  `store_ids` varchar(255) NOT NULL DEFAULT '0' COMMENT 'Store ids',
  `widget_parameters` text COMMENT 'Widget parameters',
  `sort_order` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sort order',
  PRIMARY KEY (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instances of Widget for Package Theme' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_widget_instance_page`
--

CREATE TABLE IF NOT EXISTS `mgnto_widget_instance_page` (
  `page_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Page Id',
  `instance_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Instance Id',
  `page_group` varchar(25) DEFAULT NULL COMMENT 'Block Group Type',
  `layout_handle` varchar(255) DEFAULT NULL COMMENT 'Layout Handle',
  `block_reference` varchar(255) DEFAULT NULL COMMENT 'Block Reference',
  `page_for` varchar(25) DEFAULT NULL COMMENT 'For instance entities',
  `entities` text COMMENT 'Catalog entities (comma separated)',
  `page_template` varchar(255) DEFAULT NULL COMMENT 'Path to widget template',
  PRIMARY KEY (`page_id`),
  KEY `IDX_MGNTO_WIDGET_INSTANCE_PAGE_INSTANCE_ID` (`instance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Instance of Widget on Page' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_widget_instance_page_layout`
--

CREATE TABLE IF NOT EXISTS `mgnto_widget_instance_page_layout` (
  `page_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Page Id',
  `layout_update_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Layout Update Id',
  UNIQUE KEY `UNQ_MGNTO_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID_PAGE_ID` (`layout_update_id`,`page_id`),
  KEY `IDX_MGNTO_WIDGET_INSTANCE_PAGE_LAYOUT_PAGE_ID` (`page_id`),
  KEY `IDX_MGNTO_WIDGET_INSTANCE_PAGE_LAYOUT_LAYOUT_UPDATE_ID` (`layout_update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Layout updates';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_wishlist`
--

CREATE TABLE IF NOT EXISTS `mgnto_wishlist` (
  `wishlist_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist ID',
  `customer_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Customer ID',
  `shared` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Sharing flag (0 or 1)',
  `sharing_code` varchar(32) DEFAULT NULL COMMENT 'Sharing encrypted code',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Last updated date',
  PRIMARY KEY (`wishlist_id`),
  UNIQUE KEY `UNQ_MGNTO_WISHLIST_CUSTOMER_ID` (`customer_id`),
  KEY `IDX_MGNTO_WISHLIST_SHARED` (`shared`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist main Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_wishlist_item`
--

CREATE TABLE IF NOT EXISTS `mgnto_wishlist_item` (
  `wishlist_item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Wishlist item ID',
  `wishlist_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Wishlist ID',
  `product_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Product ID',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store ID',
  `added_at` timestamp NULL DEFAULT NULL COMMENT 'Add date and time',
  `description` text COMMENT 'Short description of wish list item',
  `qty` decimal(12,4) NOT NULL COMMENT 'Qty',
  PRIMARY KEY (`wishlist_item_id`),
  KEY `IDX_MGNTO_WISHLIST_ITEM_WISHLIST_ID` (`wishlist_id`),
  KEY `IDX_MGNTO_WISHLIST_ITEM_PRODUCT_ID` (`product_id`),
  KEY `IDX_MGNTO_WISHLIST_ITEM_STORE_ID` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist items' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_wishlist_item_option`
--

CREATE TABLE IF NOT EXISTS `mgnto_wishlist_item_option` (
  `option_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Option Id',
  `wishlist_item_id` int(10) unsigned NOT NULL COMMENT 'Wishlist Item Id',
  `product_id` int(10) unsigned NOT NULL COMMENT 'Product Id',
  `code` varchar(255) NOT NULL COMMENT 'Code',
  `value` text COMMENT 'Value',
  PRIMARY KEY (`option_id`),
  KEY `FK_987EB16BD889FB08EBE67079F96D6A99` (`wishlist_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Wishlist Item Option Table' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_xmlconnect_application`
--

CREATE TABLE IF NOT EXISTS `mgnto_xmlconnect_application` (
  `application_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Application Id',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code',
  `type` varchar(32) NOT NULL COMMENT 'Device Type',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `active_from` date DEFAULT NULL COMMENT 'Active From',
  `active_to` date DEFAULT NULL COMMENT 'Active To',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Updated At',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `browsing_mode` smallint(5) unsigned DEFAULT '0' COMMENT 'Browsing Mode',
  PRIMARY KEY (`application_id`),
  UNIQUE KEY `UNQ_MGNTO_MGNTO_XMLCONNECT_APPLICATION_CODE` (`code`),
  KEY `FK_C964B0515BB35E152B8261FC7B8010DA` (`store_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Application' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_xmlconnect_config_data`
--

CREATE TABLE IF NOT EXISTS `mgnto_xmlconnect_config_data` (
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `category` varchar(60) NOT NULL DEFAULT 'default' COMMENT 'Category',
  `path` varchar(250) NOT NULL COMMENT 'Path',
  `value` text NOT NULL COMMENT 'Value',
  UNIQUE KEY `UNQ_MGNTO_MGNTO_XMLCONNECT_CONFIG_DATA_APPLICATION_ID_CTGR_PATH` (`application_id`,`category`,`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Configuration Data';

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_xmlconnect_history`
--

CREATE TABLE IF NOT EXISTS `mgnto_xmlconnect_history` (
  `history_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'History Id',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `store_id` smallint(5) unsigned DEFAULT NULL COMMENT 'Store Id',
  `params` blob COMMENT 'Params',
  `title` varchar(200) NOT NULL COMMENT 'Title',
  `activation_key` varchar(255) NOT NULL COMMENT 'Activation Key',
  `name` varchar(255) NOT NULL COMMENT 'Application Name',
  `code` varchar(32) NOT NULL COMMENT 'Application Code',
  PRIMARY KEY (`history_id`),
  KEY `FK_0907EF52BE40411B75394355A20ACD42` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect History' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_xmlconnect_images`
--

CREATE TABLE IF NOT EXISTS `mgnto_xmlconnect_images` (
  `image_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Image Id',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  `image_file` varchar(255) NOT NULL COMMENT 'Image File',
  `image_type` varchar(255) NOT NULL COMMENT 'Image Type',
  `order` int(10) unsigned NOT NULL COMMENT 'Order',
  PRIMARY KEY (`image_id`),
  KEY `FK_9287F710FD27F1BFE773C49519AD6517` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Images' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_xmlconnect_notification_template`
--

CREATE TABLE IF NOT EXISTS `mgnto_xmlconnect_notification_template` (
  `template_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Template Id',
  `name` varchar(255) NOT NULL COMMENT 'Template Name',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) NOT NULL COMMENT 'Message Title',
  `content` text NOT NULL COMMENT 'Message Content',
  `created_at` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `modified_at` timestamp NULL DEFAULT NULL COMMENT 'Modified At',
  `application_id` smallint(5) unsigned NOT NULL COMMENT 'Application Id',
  PRIMARY KEY (`template_id`),
  KEY `FK_943AA44971E34C7E7E73791AEE6C0484` (`application_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Template' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mgnto_xmlconnect_queue`
--

CREATE TABLE IF NOT EXISTS `mgnto_xmlconnect_queue` (
  `queue_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Queue Id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT 'Created At',
  `exec_time` timestamp NULL DEFAULT NULL COMMENT 'Scheduled Execution Time',
  `template_id` int(10) unsigned NOT NULL COMMENT 'Template Id',
  `push_title` varchar(140) NOT NULL COMMENT 'Push Notification Title',
  `message_title` varchar(255) DEFAULT '' COMMENT 'Message Title',
  `content` text COMMENT 'Message Content',
  `status` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Status',
  `type` varchar(12) NOT NULL COMMENT 'Type of Notification',
  PRIMARY KEY (`queue_id`),
  KEY `FK_C2517013D638D4990C37DBA41A48F135` (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Xmlconnect Notification Queue' AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mgnto_admin_rule`
--
ALTER TABLE `mgnto_admin_rule`
  ADD CONSTRAINT `FK_MGNTO_ADMIN_RULE_ROLE_ID_MGNTO_ADMIN_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `mgnto_admin_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_api2_acl_rule`
--
ALTER TABLE `mgnto_api2_acl_rule`
  ADD CONSTRAINT `FK_MGNTO_API2_ACL_RULE_ROLE_ID_MGNTO_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `mgnto_api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_api2_acl_user`
--
ALTER TABLE `mgnto_api2_acl_user`
  ADD CONSTRAINT `FK_MGNTO_API2_ACL_USER_ADMIN_ID_MGNTO_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `mgnto_admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_API2_ACL_USER_ROLE_ID_MGNTO_API2_ACL_ROLE_ENTITY_ID` FOREIGN KEY (`role_id`) REFERENCES `mgnto_api2_acl_role` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_api_rule`
--
ALTER TABLE `mgnto_api_rule`
  ADD CONSTRAINT `FK_MGNTO_API_RULE_ROLE_ID_MGNTO_API_ROLE_ROLE_ID` FOREIGN KEY (`role_id`) REFERENCES `mgnto_api_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_api_session`
--
ALTER TABLE `mgnto_api_session`
  ADD CONSTRAINT `FK_MGNTO_API_SESSION_USER_ID_MGNTO_API_USER_USER_ID` FOREIGN KEY (`user_id`) REFERENCES `mgnto_api_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_cataloginventory_stock_item`
--
ALTER TABLE `mgnto_cataloginventory_stock_item`
  ADD CONSTRAINT `FK_MGNTO_CATINV_STOCK_ITEM_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATINV_STOCK_ITEM_STOCK_ID_MGNTO_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `mgnto_cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_cataloginventory_stock_status`
--
ALTER TABLE `mgnto_cataloginventory_stock_status`
  ADD CONSTRAINT `FK_MGNTO_CATINV_STOCK_STS_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATINV_STOCK_STS_STOCK_ID_MGNTO_CATINV_STOCK_STOCK_ID` FOREIGN KEY (`stock_id`) REFERENCES `mgnto_cataloginventory_stock` (`stock_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATINV_STOCK_STS_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalogrule_customer_group`
--
ALTER TABLE `mgnto_catalogrule_customer_group`
  ADD CONSTRAINT `FK_E09988B12EB72F1E064E2BEEE0D7B66F` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATRULE_CSTR_GROUP_RULE_ID_MGNTO_CATRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgnto_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalogrule_group_website`
--
ALTER TABLE `mgnto_catalogrule_group_website`
  ADD CONSTRAINT `FK_16938EF8E5CDF28FAFE97C6A2AB57BC2` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATRULE_GROUP_WS_RULE_ID_MGNTO_CATRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgnto_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATRULE_GROUP_WS_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalogrule_product`
--
ALTER TABLE `mgnto_catalogrule_product`
  ADD CONSTRAINT `FK_476F9A13DF61339EC8EBE763CF421540` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATALOGRULE_PRODUCT_RULE_ID_MGNTO_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgnto_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATRULE_PRD_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATRULE_PRD_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalogrule_product_price`
--
ALTER TABLE `mgnto_catalogrule_product_price`
  ADD CONSTRAINT `FK_3B986E52E003DF911E9A59BA32881A3B` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATRULE_PRD_PRICE_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATRULE_PRD_PRICE_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalogrule_website`
--
ALTER TABLE `mgnto_catalogrule_website`
  ADD CONSTRAINT `FK_MGNTO_CATALOGRULE_WEBSITE_RULE_ID_MGNTO_CATALOGRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgnto_catalogrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATRULE_WS_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalogsearch_query`
--
ALTER TABLE `mgnto_catalogsearch_query`
  ADD CONSTRAINT `FK_MGNTO_CATALOGSEARCH_QUERY_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalogsearch_result`
--
ALTER TABLE `mgnto_catalogsearch_result`
  ADD CONSTRAINT `FK_MGNTO_CATSRCH_RESULT_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CATSRCH_RESULT_QR_ID_MGNTO_CATSRCH_QR_QR_ID` FOREIGN KEY (`query_id`) REFERENCES `mgnto_catalogsearch_query` (`query_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_category_entity_datetime`
--
ALTER TABLE `mgnto_catalog_category_entity_datetime`
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_DTIME_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_DTIME_ENTT_ID_MGNTO_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_DTIME_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_category_entity_decimal`
--
ALTER TABLE `mgnto_catalog_category_entity_decimal`
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_DEC_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_DEC_ENTT_ID_MGNTO_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_DEC_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_category_entity_int`
--
ALTER TABLE `mgnto_catalog_category_entity_int`
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_INT_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_INT_ENTT_ID_MGNTO_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_INT_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_category_entity_text`
--
ALTER TABLE `mgnto_catalog_category_entity_text`
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_TEXT_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_TEXT_ENTT_ID_MGNTO_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_TEXT_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_category_entity_varchar`
--
ALTER TABLE `mgnto_catalog_category_entity_varchar`
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_VCHR_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_VCHR_ENTT_ID_MGNTO_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_ENTT_VCHR_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_category_flat_store_1`
--
ALTER TABLE `mgnto_catalog_category_flat_store_1`
  ADD CONSTRAINT `FK_02B60FE9539644C0F517FBE79AACB2A4` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_F4A1E0B769E21255A5C995A4461B5821` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_category_product`
--
ALTER TABLE `mgnto_catalog_category_product`
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_PRD_CTGR_ID_MGNTO_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `mgnto_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_PRD_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_category_product_index`
--
ALTER TABLE `mgnto_catalog_category_product_index`
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_PRD_IDX_CTGR_ID_MGNTO_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `mgnto_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_PRD_IDX_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CTGR_PRD_IDX_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_compare_item`
--
ALTER TABLE `mgnto_catalog_compare_item`
  ADD CONSTRAINT `FK_MGNTO_CATALOG_COMPARE_ITEM_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CMP_ITEM_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_CMP_ITEM_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_eav_attribute`
--
ALTER TABLE `mgnto_catalog_eav_attribute`
  ADD CONSTRAINT `FK_MGNTO_CAT_EAV_ATTR_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_bundle_option`
--
ALTER TABLE `mgnto_catalog_product_bundle_option`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_BNDL_OPT_PARENT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_bundle_option_value`
--
ALTER TABLE `mgnto_catalog_product_bundle_option_value`
  ADD CONSTRAINT `FK_C83398F29E7E3719201A898E89470B1B` FOREIGN KEY (`option_id`) REFERENCES `mgnto_catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_bundle_price_index`
--
ALTER TABLE `mgnto_catalog_product_bundle_price_index`
  ADD CONSTRAINT `FK_10948C1C359568AD58E2F613B47AC5FE` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_E1DBC22FB1536352189E07EB63E5B1A1` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_BNDL_PRICE_IDX_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_bundle_selection`
--
ALTER TABLE `mgnto_catalog_product_bundle_selection`
  ADD CONSTRAINT `FK_8B1E7662E9417E400BC25C77F409E1CB` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_C7BAC6EBA96CA902FBD61DEBE3E028CB` FOREIGN KEY (`option_id`) REFERENCES `mgnto_catalog_product_bundle_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_bundle_selection_price`
--
ALTER TABLE `mgnto_catalog_product_bundle_selection_price`
  ADD CONSTRAINT `FK_B353F8D60B1F5355B6E37166DE797FAA` FOREIGN KEY (`selection_id`) REFERENCES `mgnto_catalog_product_bundle_selection` (`selection_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_BNDL_SELECTION_PRICE_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_enabled_index`
--
ALTER TABLE `mgnto_catalog_product_enabled_index`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENABLED_IDX_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENABLED_IDX_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_entity`
--
ALTER TABLE `mgnto_catalog_product_entity`
  ADD CONSTRAINT `FK_11905FECD6B8523489950644E5CAA818` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_ATTR_SET_ID_MGNTO_EAV_ATTR_SET_ATTR_SET_ID` FOREIGN KEY (`attribute_set_id`) REFERENCES `mgnto_eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_entity_datetime`
--
ALTER TABLE `mgnto_catalog_product_entity_datetime`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_DTIME_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_DTIME_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_DTIME_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_entity_decimal`
--
ALTER TABLE `mgnto_catalog_product_entity_decimal`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_DEC_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_DEC_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_DEC_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_entity_gallery`
--
ALTER TABLE `mgnto_catalog_product_entity_gallery`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_GLR_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_GLR_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_GLR_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_entity_group_price`
--
ALTER TABLE `mgnto_catalog_product_entity_group_price`
  ADD CONSTRAINT `FK_06DBC35D514790D25A90F9D724A82351` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_0EFA14D3CC0BB7A2CA3ED812E49285BB` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_GROUP_PRICE_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_entity_int`
--
ALTER TABLE `mgnto_catalog_product_entity_int`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_INT_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_INT_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_INT_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_entity_media_gallery`
--
ALTER TABLE `mgnto_catalog_product_entity_media_gallery`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_MDA_GLR_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_MDA_GLR_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_entity_media_gallery_value`
--
ALTER TABLE `mgnto_catalog_product_entity_media_gallery_value`
  ADD CONSTRAINT `FK_1DCD09DFAA63021C245D69BDD215BAE7` FOREIGN KEY (`value_id`) REFERENCES `mgnto_catalog_product_entity_media_gallery` (`value_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_90A94A3BE30A7D8B02CD1FDC0DB6A7E2` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_entity_text`
--
ALTER TABLE `mgnto_catalog_product_entity_text`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_TEXT_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_TEXT_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_TEXT_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_entity_tier_price`
--
ALTER TABLE `mgnto_catalog_product_entity_tier_price`
  ADD CONSTRAINT `FK_DC7AA958F0204779F02C049D8718337A` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_F2CF4A2F76868DAAC85455B01523FC19` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_TIER_PRICE_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_entity_varchar`
--
ALTER TABLE `mgnto_catalog_product_entity_varchar`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_VCHR_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_VCHR_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_ENTT_VCHR_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_flat_1`
--
ALTER TABLE `mgnto_catalog_product_flat_1`
  ADD CONSTRAINT `FK_MGNTO_MGNTO_CAT_PRD_FLAT_1_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_index_eav`
--
ALTER TABLE `mgnto_catalog_product_index_eav`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_IDX_EAV_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_IDX_EAV_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_IDX_EAV_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_index_eav_decimal`
--
ALTER TABLE `mgnto_catalog_product_index_eav_decimal`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_IDX_EAV_DEC_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_IDX_EAV_DEC_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_IDX_EAV_DEC_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_index_group_price`
--
ALTER TABLE `mgnto_catalog_product_index_group_price`
  ADD CONSTRAINT `FK_55972A97940AAEDEA35443ADE4166314` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_60E72C145A04BE062DF84B66049DFFE8` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_IDX_GROUP_PRICE_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_index_price`
--
ALTER TABLE `mgnto_catalog_product_index_price`
  ADD CONSTRAINT `FK_DB7301C6F8519F4B8B24307D8F3638ED` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_IDX_PRICE_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_IDX_PRICE_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_index_tier_price`
--
ALTER TABLE `mgnto_catalog_product_index_tier_price`
  ADD CONSTRAINT `FK_B38ED0FD6FB81FC0AB64A95569364ADB` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_E7EA93F6D1F8EF91D25315E9BF4F898A` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_IDX_TIER_PRICE_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_index_website`
--
ALTER TABLE `mgnto_catalog_product_index_website`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_IDX_WS_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_link`
--
ALTER TABLE `mgnto_catalog_product_link`
  ADD CONSTRAINT `FK_577CD46120675E881EB86A2A07799556` FOREIGN KEY (`link_type_id`) REFERENCES `mgnto_catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_LNK_LNKED_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`linked_product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_LNK_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_link_attribute`
--
ALTER TABLE `mgnto_catalog_product_link_attribute`
  ADD CONSTRAINT `FK_9E0437593DB668008EE71528A282A7E9` FOREIGN KEY (`link_type_id`) REFERENCES `mgnto_catalog_product_link_type` (`link_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_link_attribute_decimal`
--
ALTER TABLE `mgnto_catalog_product_link_attribute_decimal`
  ADD CONSTRAINT `FK_D7CC31DAA7B31258EC9CD1733DFBFD01` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `mgnto_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_LNK_ATTR_DEC_LNK_ID_MGNTO_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mgnto_catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_link_attribute_int`
--
ALTER TABLE `mgnto_catalog_product_link_attribute_int`
  ADD CONSTRAINT `FK_D6A704D949ADB86D6BD78D7E2A02CC75` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `mgnto_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_LNK_ATTR_INT_LNK_ID_MGNTO_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mgnto_catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_link_attribute_varchar`
--
ALTER TABLE `mgnto_catalog_product_link_attribute_varchar`
  ADD CONSTRAINT `FK_2CF1C5C0F4AC880B1E940607A30F9940` FOREIGN KEY (`product_link_attribute_id`) REFERENCES `mgnto_catalog_product_link_attribute` (`product_link_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_LNK_ATTR_VCHR_LNK_ID_MGNTO_CAT_PRD_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mgnto_catalog_product_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_option`
--
ALTER TABLE `mgnto_catalog_product_option`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_OPT_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_option_price`
--
ALTER TABLE `mgnto_catalog_product_option_price`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_OPT_PRICE_OPT_ID_MGNTO_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mgnto_catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_OPT_PRICE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_option_title`
--
ALTER TABLE `mgnto_catalog_product_option_title`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_OPT_TTL_OPT_ID_MGNTO_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mgnto_catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_OPT_TTL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_option_type_price`
--
ALTER TABLE `mgnto_catalog_product_option_type_price`
  ADD CONSTRAINT `FK_6E9A0DBF26A04DC3BCE2E444581FF3F9` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_F98C3A48A5C879B0B1B0C47EEA2583FC` FOREIGN KEY (`option_type_id`) REFERENCES `mgnto_catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_option_type_title`
--
ALTER TABLE `mgnto_catalog_product_option_type_title`
  ADD CONSTRAINT `FK_BDB453423500AC0C38B5DCA3A3877152` FOREIGN KEY (`option_type_id`) REFERENCES `mgnto_catalog_product_option_type_value` (`option_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_OPT_TYPE_TTL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_option_type_value`
--
ALTER TABLE `mgnto_catalog_product_option_type_value`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_OPT_TYPE_VAL_OPT_ID_MGNTO_CAT_PRD_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mgnto_catalog_product_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_relation`
--
ALTER TABLE `mgnto_catalog_product_relation`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_RELATION_CHILD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`child_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_RELATION_PARENT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_super_attribute`
--
ALTER TABLE `mgnto_catalog_product_super_attribute`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_SPR_ATTR_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgnto_catalog_product_super_attribute_label`
--
ALTER TABLE `mgnto_catalog_product_super_attribute_label`
  ADD CONSTRAINT `FK_D3263F96395523C7447BBFAEAEC355DE` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `mgnto_catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_SPR_ATTR_LBL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_super_attribute_pricing`
--
ALTER TABLE `mgnto_catalog_product_super_attribute_pricing`
  ADD CONSTRAINT `FK_C274D0E6E55118104BA7CEAB89C03DF8` FOREIGN KEY (`product_super_attribute_id`) REFERENCES `mgnto_catalog_product_super_attribute` (`product_super_attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_SPR_ATTR_PRICING_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_super_link`
--
ALTER TABLE `mgnto_catalog_product_super_link`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_SPR_LNK_PARENT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_SPR_LNK_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_catalog_product_website`
--
ALTER TABLE `mgnto_catalog_product_website`
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_WS_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CAT_PRD_WS_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_checkout_agreement_store`
--
ALTER TABLE `mgnto_checkout_agreement_store`
  ADD CONSTRAINT `FK_MGNTO_CHKT_AGRT_STORE_AGRT_ID_MGNTO_CHKT_AGRT_AGRT_ID` FOREIGN KEY (`agreement_id`) REFERENCES `mgnto_checkout_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CHKT_AGRT_STORE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_cms_block_store`
--
ALTER TABLE `mgnto_cms_block_store`
  ADD CONSTRAINT `FK_MGNTO_CMS_BLOCK_STORE_BLOCK_ID_MGNTO_CMS_BLOCK_BLOCK_ID` FOREIGN KEY (`block_id`) REFERENCES `mgnto_cms_block` (`block_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CMS_BLOCK_STORE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_cms_page_store`
--
ALTER TABLE `mgnto_cms_page_store`
  ADD CONSTRAINT `FK_MGNTO_CMS_PAGE_STORE_PAGE_ID_MGNTO_CMS_PAGE_PAGE_ID` FOREIGN KEY (`page_id`) REFERENCES `mgnto_cms_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CMS_PAGE_STORE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_core_layout_link`
--
ALTER TABLE `mgnto_core_layout_link`
  ADD CONSTRAINT `FK_F17CDA5581E246A15B58C2A5274598BA` FOREIGN KEY (`layout_update_id`) REFERENCES `mgnto_core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CORE_LAYOUT_LINK_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_core_store`
--
ALTER TABLE `mgnto_core_store`
  ADD CONSTRAINT `FK_MGNTO_CORE_STORE_GROUP_ID_MGNTO_CORE_STORE_GROUP_GROUP_ID` FOREIGN KEY (`group_id`) REFERENCES `mgnto_core_store_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CORE_STORE_WEBSITE_ID_MGNTO_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_core_store_group`
--
ALTER TABLE `mgnto_core_store_group`
  ADD CONSTRAINT `FK_MGNTO_CORE_STORE_GROUP_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_core_translate`
--
ALTER TABLE `mgnto_core_translate`
  ADD CONSTRAINT `FK_MGNTO_CORE_TRANSLATE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_core_url_rewrite`
--
ALTER TABLE `mgnto_core_url_rewrite`
  ADD CONSTRAINT `FK_MGNTO_CORE_URL_REWRITE_CTGR_ID_MGNTO_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`category_id`) REFERENCES `mgnto_catalog_category_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CORE_URL_REWRITE_PRD_ID_MGNTO_CAT_CTGR_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CORE_URL_REWRITE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_core_variable_value`
--
ALTER TABLE `mgnto_core_variable_value`
  ADD CONSTRAINT `FK_E68F533E1D6BE7746701CAADDC41DE4B` FOREIGN KEY (`variable_id`) REFERENCES `mgnto_core_variable` (`variable_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CORE_VARIABLE_VALUE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_coupon_aggregated`
--
ALTER TABLE `mgnto_coupon_aggregated`
  ADD CONSTRAINT `FK_MGNTO_COUPON_AGGREGATED_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_coupon_aggregated_order`
--
ALTER TABLE `mgnto_coupon_aggregated_order`
  ADD CONSTRAINT `FK_MGNTO_COUPON_AGGRED_ORDER_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_coupon_aggregated_updated`
--
ALTER TABLE `mgnto_coupon_aggregated_updated`
  ADD CONSTRAINT `FK_279D3D43A3813086CFE2C5CAA0849C72` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_address_entity`
--
ALTER TABLE `mgnto_customer_address_entity`
  ADD CONSTRAINT `FK_MGNTO_CSTR_ADDR_ENTT_PARENT_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_address_entity_datetime`
--
ALTER TABLE `mgnto_customer_address_entity_datetime`
  ADD CONSTRAINT `FK_0A844A86CD43B451B50277881EBB3C42` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_666C703F5D829961DA365E022EC8CD23` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ADDR_ENTT_DTIME_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_address_entity_decimal`
--
ALTER TABLE `mgnto_customer_address_entity_decimal`
  ADD CONSTRAINT `FK_2C7D2A8E2B20907FBB993CD273098D50` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ADDR_ENTT_DEC_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ADDR_ENTT_DEC_ENTT_ID_MGNTO_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_address_entity_int`
--
ALTER TABLE `mgnto_customer_address_entity_int`
  ADD CONSTRAINT `FK_8D1E7AAF38FBF01280F484F0F8303216` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ADDR_ENTT_INT_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ADDR_ENTT_INT_ENTT_ID_MGNTO_CSTR_ADDR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_address_entity_text`
--
ALTER TABLE `mgnto_customer_address_entity_text`
  ADD CONSTRAINT `FK_3390D5B58B4E90B9169FB2979CC9C499` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B5CF14E655C50A0DCF2AEF1D2D2AF8E7` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ADDR_ENTT_TEXT_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_address_entity_varchar`
--
ALTER TABLE `mgnto_customer_address_entity_varchar`
  ADD CONSTRAINT `FK_2807EECAECABC891A4122875B7514E60` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_customer_address_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_F93E840169B070B9D924266534E691DA` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ADDR_ENTT_VCHR_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_eav_attribute`
--
ALTER TABLE `mgnto_customer_eav_attribute`
  ADD CONSTRAINT `FK_MGNTO_CSTR_EAV_ATTR_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_eav_attribute_website`
--
ALTER TABLE `mgnto_customer_eav_attribute_website`
  ADD CONSTRAINT `FK_MGNTO_CSTR_EAV_ATTR_WS_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_EAV_ATTR_WS_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_entity`
--
ALTER TABLE `mgnto_customer_entity`
  ADD CONSTRAINT `FK_MGNTO_CSTR_ENTT_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CUSTOMER_ENTITY_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_entity_datetime`
--
ALTER TABLE `mgnto_customer_entity_datetime`
  ADD CONSTRAINT `FK_E3CE16C81DCDEA6AD0162D519D4C3978` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ENTT_DTIME_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ENTT_DTIME_ENTT_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_entity_decimal`
--
ALTER TABLE `mgnto_customer_entity_decimal`
  ADD CONSTRAINT `FK_87994AABF3C9031FABB50857C08307F8` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ENTT_DEC_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ENTT_DEC_ENTT_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_entity_int`
--
ALTER TABLE `mgnto_customer_entity_int`
  ADD CONSTRAINT `FK_F186FADA18A9B234723395E1516F4F82` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ENTT_INT_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ENTT_INT_ENTT_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_entity_text`
--
ALTER TABLE `mgnto_customer_entity_text`
  ADD CONSTRAINT `FK_F5885EB33B162F472C054748F8F1A3D6` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ENTT_TEXT_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ENTT_TEXT_ENTT_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_entity_varchar`
--
ALTER TABLE `mgnto_customer_entity_varchar`
  ADD CONSTRAINT `FK_13C9863A80550F49B2A4DA2297FB59B9` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ENTT_VCHR_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_CSTR_ENTT_VCHR_ENTT_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_customer_form_attribute`
--
ALTER TABLE `mgnto_customer_form_attribute`
  ADD CONSTRAINT `FK_MGNTO_CSTR_FORM_ATTR_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_dataflow_batch`
--
ALTER TABLE `mgnto_dataflow_batch`
  ADD CONSTRAINT `FK_C33D223A486B70A71F1A2D3732D76975` FOREIGN KEY (`profile_id`) REFERENCES `mgnto_dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGNTO_DATAFLOW_BATCH_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgnto_dataflow_batch_export`
--
ALTER TABLE `mgnto_dataflow_batch_export`
  ADD CONSTRAINT `FK_D0C3E6B21A3ADBF2D2D514B4BE153B84` FOREIGN KEY (`batch_id`) REFERENCES `mgnto_dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgnto_dataflow_batch_import`
--
ALTER TABLE `mgnto_dataflow_batch_import`
  ADD CONSTRAINT `FK_BC53F575807DD7D49ADA0DE3142C1954` FOREIGN KEY (`batch_id`) REFERENCES `mgnto_dataflow_batch` (`batch_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgnto_dataflow_import_data`
--
ALTER TABLE `mgnto_dataflow_import_data`
  ADD CONSTRAINT `FK_CE7DD5BF85F0EE5CAD6F77B2C42D4791` FOREIGN KEY (`session_id`) REFERENCES `mgnto_dataflow_session` (`session_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mgnto_dataflow_profile_history`
--
ALTER TABLE `mgnto_dataflow_profile_history`
  ADD CONSTRAINT `FK_B49C1E4354D40298357656248D82B71E` FOREIGN KEY (`profile_id`) REFERENCES `mgnto_dataflow_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_design_change`
--
ALTER TABLE `mgnto_design_change`
  ADD CONSTRAINT `FK_MGNTO_DESIGN_CHANGE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_directory_country_region_name`
--
ALTER TABLE `mgnto_directory_country_region_name`
  ADD CONSTRAINT `FK_3E8346253DECEE3925ED77FBFFE630CA` FOREIGN KEY (`region_id`) REFERENCES `mgnto_directory_country_region` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_downloadable_link`
--
ALTER TABLE `mgnto_downloadable_link`
  ADD CONSTRAINT `FK_MGNTO_DL_LNK_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_downloadable_link_price`
--
ALTER TABLE `mgnto_downloadable_link_price`
  ADD CONSTRAINT `FK_MGNTO_DL_LNK_PRICE_LNK_ID_MGNTO_DL_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mgnto_downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_DL_LNK_PRICE_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_downloadable_link_purchased`
--
ALTER TABLE `mgnto_downloadable_link_purchased`
  ADD CONSTRAINT `FK_9986BC52DD148217DA1D4DB83A23F729` FOREIGN KEY (`order_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_DL_LNK_PURCHASED_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_downloadable_link_purchased_item`
--
ALTER TABLE `mgnto_downloadable_link_purchased_item`
  ADD CONSTRAINT `FK_6E141109D9A6ED961C71760335827F9C` FOREIGN KEY (`order_item_id`) REFERENCES `mgnto_sales_flat_order_item` (`item_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_CB0D1B89DF990F674BD8A7874C60C9D2` FOREIGN KEY (`purchased_id`) REFERENCES `mgnto_downloadable_link_purchased` (`purchased_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_downloadable_link_title`
--
ALTER TABLE `mgnto_downloadable_link_title`
  ADD CONSTRAINT `FK_MGNTO_DL_LNK_TTL_LNK_ID_MGNTO_DL_LNK_LNK_ID` FOREIGN KEY (`link_id`) REFERENCES `mgnto_downloadable_link` (`link_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_DL_LNK_TTL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_downloadable_sample`
--
ALTER TABLE `mgnto_downloadable_sample`
  ADD CONSTRAINT `FK_MGNTO_DL_SAMPLE_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_downloadable_sample_title`
--
ALTER TABLE `mgnto_downloadable_sample_title`
  ADD CONSTRAINT `FK_MGNTO_DL_SAMPLE_TTL_SAMPLE_ID_MGNTO_DL_SAMPLE_SAMPLE_ID` FOREIGN KEY (`sample_id`) REFERENCES `mgnto_downloadable_sample` (`sample_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_DL_SAMPLE_TTL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eavblog_posts`
--
ALTER TABLE `mgnto_eavblog_posts`
  ADD CONSTRAINT `FK_847541A658890B7EF91E13D2999B3080` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eavblog_posts_char`
--
ALTER TABLE `mgnto_eavblog_posts_char`
  ADD CONSTRAINT `FK_2D0A7197F833685615E4D6141935613A` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_CHAR_ENTT_ID_MGNTO_EAVBLOG_POSTS_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_eavblog_posts` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_CHAR_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eavblog_posts_datetime`
--
ALTER TABLE `mgnto_eavblog_posts_datetime`
  ADD CONSTRAINT `FK_716646712379FB3F3464C0D07CFA206B` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_DTIME_ENTT_ID_MGNTO_EAVBLOG_POSTS_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_eavblog_posts` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_DTIME_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eavblog_posts_decimal`
--
ALTER TABLE `mgnto_eavblog_posts_decimal`
  ADD CONSTRAINT `FK_C42A35A54E965C15706E123ADF0888C9` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_DEC_ENTT_ID_MGNTO_EAVBLOG_POSTS_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_eavblog_posts` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_DEC_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eavblog_posts_int`
--
ALTER TABLE `mgnto_eavblog_posts_int`
  ADD CONSTRAINT `FK_2283FF957BBCA3982FA36D5469099391` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_INT_ENTT_ID_MGNTO_EAVBLOG_POSTS_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_eavblog_posts` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_INT_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eavblog_posts_text`
--
ALTER TABLE `mgnto_eavblog_posts_text`
  ADD CONSTRAINT `FK_13C71570C3F2751982525891640009BB` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_TEXT_ENTT_ID_MGNTO_EAVBLOG_POSTS_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_eavblog_posts` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_TEXT_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eavblog_posts_varchar`
--
ALTER TABLE `mgnto_eavblog_posts_varchar`
  ADD CONSTRAINT `FK_29428F71C23F6EC9BAE47E0FADE7B54B` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_VCHR_ENTT_ID_MGNTO_EAVBLOG_POSTS_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_eavblog_posts` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAVBLOG_POSTS_VCHR_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_attribute`
--
ALTER TABLE `mgnto_eav_attribute`
  ADD CONSTRAINT `FK_MGNTO_EAV_ATTR_ENTT_TYPE_ID_MGNTO_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_attribute_group`
--
ALTER TABLE `mgnto_eav_attribute_group`
  ADD CONSTRAINT `FK_F1F0F1CB85A1E37658E5B7FDE806BB1D` FOREIGN KEY (`attribute_set_id`) REFERENCES `mgnto_eav_attribute_set` (`attribute_set_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_attribute_label`
--
ALTER TABLE `mgnto_eav_attribute_label`
  ADD CONSTRAINT `FK_MGNTO_EAV_ATTRIBUTE_LABEL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ATTR_LBL_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_attribute_option`
--
ALTER TABLE `mgnto_eav_attribute_option`
  ADD CONSTRAINT `FK_MGNTO_EAV_ATTR_OPT_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_attribute_option_value`
--
ALTER TABLE `mgnto_eav_attribute_option_value`
  ADD CONSTRAINT `FK_MGNTO_EAV_ATTR_OPT_VAL_OPT_ID_MGNTO_EAV_ATTR_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mgnto_eav_attribute_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ATTR_OPT_VAL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_attribute_set`
--
ALTER TABLE `mgnto_eav_attribute_set`
  ADD CONSTRAINT `FK_D4EBF770318C3608AA38B2150472E65E` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_entity`
--
ALTER TABLE `mgnto_eav_entity`
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTITY_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTT_ENTT_TYPE_ID_MGNTO_EAV_ENTT_TYPE_ENTT_TYPE_ID` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_entity_attribute`
--
ALTER TABLE `mgnto_eav_entity_attribute`
  ADD CONSTRAINT `FK_939CE38452C512D34B14A2BEF5BD9D8B` FOREIGN KEY (`attribute_group_id`) REFERENCES `mgnto_eav_attribute_group` (`attribute_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTT_ATTR_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_entity_datetime`
--
ALTER TABLE `mgnto_eav_entity_datetime`
  ADD CONSTRAINT `FK_E9C6335BF4120E21EB85731A01F829AB` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTITY_DATETIME_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTT_DTIME_ENTT_ID_MGNTO_EAV_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_entity_decimal`
--
ALTER TABLE `mgnto_eav_entity_decimal`
  ADD CONSTRAINT `FK_02FB892AA937C242DB1456388352AAA0` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTITY_DECIMAL_ENTITY_ID_MGNTO_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTITY_DECIMAL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_entity_int`
--
ALTER TABLE `mgnto_eav_entity_int`
  ADD CONSTRAINT `FK_461E2F2444A9B87705C71D1AE50792BD` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTITY_INT_ENTITY_ID_MGNTO_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTITY_INT_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_entity_store`
--
ALTER TABLE `mgnto_eav_entity_store`
  ADD CONSTRAINT `FK_F692A6D0A819122E4EE46E23E44FA880` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTITY_STORE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_entity_text`
--
ALTER TABLE `mgnto_eav_entity_text`
  ADD CONSTRAINT `FK_EDF5A0EC6C64BA59D775820C0DCAEADD` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTITY_TEXT_ENTITY_ID_MGNTO_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTITY_TEXT_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_entity_varchar`
--
ALTER TABLE `mgnto_eav_entity_varchar`
  ADD CONSTRAINT `FK_BEFAFD0E8515EDF98B1B28EC15C9AC28` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTITY_VARCHAR_ENTITY_ID_MGNTO_EAV_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_eav_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_ENTITY_VARCHAR_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_form_element`
--
ALTER TABLE `mgnto_eav_form_element`
  ADD CONSTRAINT `FK_MGNTO_EAV_FORM_ELEMENT_TYPE_ID_MGNTO_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `mgnto_eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_FORM_ELM_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_FORM_ELM_FSET_ID_MGNTO_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `mgnto_eav_form_fieldset` (`fieldset_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_form_fieldset`
--
ALTER TABLE `mgnto_eav_form_fieldset`
  ADD CONSTRAINT `FK_MGNTO_EAV_FORM_FIELDSET_TYPE_ID_MGNTO_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `mgnto_eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_form_fieldset_label`
--
ALTER TABLE `mgnto_eav_form_fieldset_label`
  ADD CONSTRAINT `FK_MGNTO_EAV_FORM_FSET_LBL_FSET_ID_MGNTO_EAV_FORM_FSET_FSET_ID` FOREIGN KEY (`fieldset_id`) REFERENCES `mgnto_eav_form_fieldset` (`fieldset_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_FORM_FSET_LBL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_form_type`
--
ALTER TABLE `mgnto_eav_form_type`
  ADD CONSTRAINT `FK_MGNTO_EAV_FORM_TYPE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_eav_form_type_entity`
--
ALTER TABLE `mgnto_eav_form_type_entity`
  ADD CONSTRAINT `FK_F22306D75AFA8843B97E63D27BE4351A` FOREIGN KEY (`entity_type_id`) REFERENCES `mgnto_eav_entity_type` (`entity_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_EAV_FORM_TYPE_ENTT_TYPE_ID_MGNTO_EAV_FORM_TYPE_TYPE_ID` FOREIGN KEY (`type_id`) REFERENCES `mgnto_eav_form_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_index_process_event`
--
ALTER TABLE `mgnto_index_process_event`
  ADD CONSTRAINT `FK_D58DF91CA9643D4AD7AACC88A86CD30C` FOREIGN KEY (`process_id`) REFERENCES `mgnto_index_process` (`process_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_INDEX_PROCESS_EVENT_EVENT_ID_MGNTO_INDEX_EVENT_EVENT_ID` FOREIGN KEY (`event_id`) REFERENCES `mgnto_index_event` (`event_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_newsletter_problem`
--
ALTER TABLE `mgnto_newsletter_problem`
  ADD CONSTRAINT `FK_42E75ECF55C4CB325559CB4A36ECA802` FOREIGN KEY (`subscriber_id`) REFERENCES `mgnto_newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_NLTTR_PROBLEM_QUEUE_ID_MGNTO_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `mgnto_newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_newsletter_queue`
--
ALTER TABLE `mgnto_newsletter_queue`
  ADD CONSTRAINT `FK_E9AA0B33755234FD61D211E6DAD96201` FOREIGN KEY (`template_id`) REFERENCES `mgnto_newsletter_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_newsletter_queue_link`
--
ALTER TABLE `mgnto_newsletter_queue_link`
  ADD CONSTRAINT `FK_EC6D1328EB5B226D9C50E1C20B595A9B` FOREIGN KEY (`subscriber_id`) REFERENCES `mgnto_newsletter_subscriber` (`subscriber_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_NLTTR_QUEUE_LNK_QUEUE_ID_MGNTO_NLTTR_QUEUE_QUEUE_ID` FOREIGN KEY (`queue_id`) REFERENCES `mgnto_newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_newsletter_queue_store_link`
--
ALTER TABLE `mgnto_newsletter_queue_store_link`
  ADD CONSTRAINT `FK_5A90E6F90E5F00E12FFCDFAF6F7CD1AE` FOREIGN KEY (`queue_id`) REFERENCES `mgnto_newsletter_queue` (`queue_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_D3FF616FBD75E27F7A881118F70F88C9` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_newsletter_subscriber`
--
ALTER TABLE `mgnto_newsletter_subscriber`
  ADD CONSTRAINT `FK_MGNTO_NLTTR_SUBSCRIBER_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_oauth_token`
--
ALTER TABLE `mgnto_oauth_token`
  ADD CONSTRAINT `FK_MGNTO_OAUTH_TOKEN_ADMIN_ID_MGNTO_MGNTO_ADMIN_USER_USER_ID` FOREIGN KEY (`admin_id`) REFERENCES `mgnto_admin_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_OAUTH_TOKEN_CONSUMER_ID_MGNTO_OAUTH_CONSUMER_ENTITY_ID` FOREIGN KEY (`consumer_id`) REFERENCES `mgnto_oauth_consumer` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_OAUTH_TOKEN_CSTR_ID_MGNTO_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_paypal_cert`
--
ALTER TABLE `mgnto_paypal_cert`
  ADD CONSTRAINT `FK_MGNTO_PAYPAL_CERT_WEBSITE_ID_MGNTO_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_paypal_settlement_report_row`
--
ALTER TABLE `mgnto_paypal_settlement_report_row`
  ADD CONSTRAINT `FK_CC9FB4CEEF3BFCA9CEC8A11B88C11269` FOREIGN KEY (`report_id`) REFERENCES `mgnto_paypal_settlement_report` (`report_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_persistent_session`
--
ALTER TABLE `mgnto_persistent_session`
  ADD CONSTRAINT `FK_MGNTO_PERSISTENT_SESS_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGNTO_PERSISTENT_SESS_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgnto_poll`
--
ALTER TABLE `mgnto_poll`
  ADD CONSTRAINT `FK_MGNTO_POLL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_poll_answer`
--
ALTER TABLE `mgnto_poll_answer`
  ADD CONSTRAINT `FK_MGNTO_POLL_ANSWER_POLL_ID_MGNTO_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `mgnto_poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_poll_store`
--
ALTER TABLE `mgnto_poll_store`
  ADD CONSTRAINT `FK_MGNTO_POLL_STORE_POLL_ID_MGNTO_POLL_POLL_ID` FOREIGN KEY (`poll_id`) REFERENCES `mgnto_poll` (`poll_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_POLL_STORE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_poll_vote`
--
ALTER TABLE `mgnto_poll_vote`
  ADD CONSTRAINT `FK_MGNTO_POLL_VOTE_POLL_ANSWER_ID_MGNTO_POLL_ANSWER_ANSWER_ID` FOREIGN KEY (`poll_answer_id`) REFERENCES `mgnto_poll_answer` (`answer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_product_alert_price`
--
ALTER TABLE `mgnto_product_alert_price`
  ADD CONSTRAINT `FK_MGNTO_PRD_ALERT_PRICE_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_PRD_ALERT_PRICE_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_PRD_ALERT_PRICE_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_product_alert_stock`
--
ALTER TABLE `mgnto_product_alert_stock`
  ADD CONSTRAINT `FK_MGNTO_PRD_ALERT_STOCK_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_PRD_ALERT_STOCK_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_PRD_ALERT_STOCK_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_rating`
--
ALTER TABLE `mgnto_rating`
  ADD CONSTRAINT `FK_MGNTO_RATING_ENTITY_ID_MGNTO_RATING_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_rating_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_rating_option`
--
ALTER TABLE `mgnto_rating_option`
  ADD CONSTRAINT `FK_MGNTO_RATING_OPTION_RATING_ID_MGNTO_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mgnto_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_rating_option_vote`
--
ALTER TABLE `mgnto_rating_option_vote`
  ADD CONSTRAINT `FK_MGNTO_RATING_OPTION_VOTE_REVIEW_ID_MGNTO_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `mgnto_review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_RATING_OPT_VOTE_OPT_ID_MGNTO_RATING_OPT_OPT_ID` FOREIGN KEY (`option_id`) REFERENCES `mgnto_rating_option` (`option_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_rating_option_vote_aggregated`
--
ALTER TABLE `mgnto_rating_option_vote_aggregated`
  ADD CONSTRAINT `FK_8A433E9597C2D341993F3F991335A504` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_RATING_OPT_VOTE_AGGRED_RATING_ID_MGNTO_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mgnto_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_rating_store`
--
ALTER TABLE `mgnto_rating_store`
  ADD CONSTRAINT `FK_MGNTO_RATING_STORE_RATING_ID_MGNTO_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mgnto_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGNTO_RATING_STORE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_rating_title`
--
ALTER TABLE `mgnto_rating_title`
  ADD CONSTRAINT `FK_MGNTO_RATING_TITLE_RATING_ID_MGNTO_RATING_RATING_ID` FOREIGN KEY (`rating_id`) REFERENCES `mgnto_rating` (`rating_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_RATING_TITLE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_report_compared_product_index`
--
ALTER TABLE `mgnto_report_compared_product_index`
  ADD CONSTRAINT `FK_MGNTO_REPORT_CMPD_PRD_IDX_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_REPORT_CMPD_PRD_IDX_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_REPORT_CMPD_PRD_IDX_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_report_event`
--
ALTER TABLE `mgnto_report_event`
  ADD CONSTRAINT `FK_D6528543D5999996995F2E12AC747DB1` FOREIGN KEY (`event_type_id`) REFERENCES `mgnto_report_event_types` (`event_type_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_REPORT_EVENT_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_report_viewed_product_aggregated_daily`
--
ALTER TABLE `mgnto_report_viewed_product_aggregated_daily`
  ADD CONSTRAINT `FK_023923A1041AF2E37EBF405767EEB80D` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_7DAF3953040188CEB0B9DF6E03EA4134` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_report_viewed_product_aggregated_monthly`
--
ALTER TABLE `mgnto_report_viewed_product_aggregated_monthly`
  ADD CONSTRAINT `FK_614EA92E2B9CB6FA6BEA67CB4C9AD4EE` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DF156CC4381B9463762FED0888336F49` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_report_viewed_product_aggregated_yearly`
--
ALTER TABLE `mgnto_report_viewed_product_aggregated_yearly`
  ADD CONSTRAINT `FK_2DFDC7E5F6BA045C2E914BE81B6FC9DC` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_99CDC6FA2064FBD126E520F1FEA6585A` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_report_viewed_product_index`
--
ALTER TABLE `mgnto_report_viewed_product_index`
  ADD CONSTRAINT `FK_FAA9402F836CC1B96907A15A13B88A46` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_REPORT_VIEWED_PRD_IDX_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_REPORT_VIEWED_PRD_IDX_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_review`
--
ALTER TABLE `mgnto_review`
  ADD CONSTRAINT `FK_MGNTO_REVIEW_ENTITY_ID_MGNTO_REVIEW_ENTITY_ENTITY_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_review_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_REVIEW_STATUS_ID_MGNTO_REVIEW_STATUS_STATUS_ID` FOREIGN KEY (`status_id`) REFERENCES `mgnto_review_status` (`status_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `mgnto_review_detail`
--
ALTER TABLE `mgnto_review_detail`
  ADD CONSTRAINT `FK_MGNTO_REVIEW_DETAIL_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_REVIEW_DETAIL_REVIEW_ID_MGNTO_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `mgnto_review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_REVIEW_DETAIL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_review_entity_summary`
--
ALTER TABLE `mgnto_review_entity_summary`
  ADD CONSTRAINT `FK_MGNTO_REVIEW_ENTT_SUMMARY_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_review_store`
--
ALTER TABLE `mgnto_review_store`
  ADD CONSTRAINT `FK_MGNTO_REVIEW_STORE_REVIEW_ID_MGNTO_REVIEW_REVIEW_ID` FOREIGN KEY (`review_id`) REFERENCES `mgnto_review` (`review_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_REVIEW_STORE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_salesrule_coupon`
--
ALTER TABLE `mgnto_salesrule_coupon`
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_COUPON_RULE_ID_MGNTO_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgnto_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_salesrule_coupon_usage`
--
ALTER TABLE `mgnto_salesrule_coupon_usage`
  ADD CONSTRAINT `FK_F19A1B7EDEE006AEF60613022A9618A7` FOREIGN KEY (`coupon_id`) REFERENCES `mgnto_salesrule_coupon` (`coupon_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_COUPON_USAGE_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_salesrule_customer`
--
ALTER TABLE `mgnto_salesrule_customer`
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_CSTR_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_CUSTOMER_RULE_ID_MGNTO_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgnto_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_salesrule_customer_group`
--
ALTER TABLE `mgnto_salesrule_customer_group`
  ADD CONSTRAINT `FK_5DC4354CE3A95F0D20EC6FC1B3A45259` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_CSTR_GROUP_RULE_ID_MGNTO_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgnto_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_salesrule_label`
--
ALTER TABLE `mgnto_salesrule_label`
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_LABEL_RULE_ID_MGNTO_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgnto_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_LABEL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_salesrule_product_attribute`
--
ALTER TABLE `mgnto_salesrule_product_attribute`
  ADD CONSTRAINT `FK_8B858563559866E016D223ABEF72F2C3` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_PRD_ATTR_ATTR_ID_MGNTO_EAV_ATTR_ATTR_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_PRD_ATTR_RULE_ID_MGNTO_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgnto_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_PRD_ATTR_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `mgnto_salesrule_website`
--
ALTER TABLE `mgnto_salesrule_website`
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_WEBSITE_RULE_ID_MGNTO_SALESRULE_RULE_ID` FOREIGN KEY (`rule_id`) REFERENCES `mgnto_salesrule` (`rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALESRULE_WS_WS_ID_MGNTO_CORE_WS_WS_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_bestsellers_aggregated_daily`
--
ALTER TABLE `mgnto_sales_bestsellers_aggregated_daily`
  ADD CONSTRAINT `FK_6DCBF06C432AC110245AE8FC82D40C12` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_725756A0EBD76846B58E8307D94C6978` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_bestsellers_aggregated_monthly`
--
ALTER TABLE `mgnto_sales_bestsellers_aggregated_monthly`
  ADD CONSTRAINT `FK_7C84B21038FF79BB9FC4123B446FC4E8` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_E8579D4C65191F4D2443C396F9E40B0B` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_bestsellers_aggregated_yearly`
--
ALTER TABLE `mgnto_sales_bestsellers_aggregated_yearly`
  ADD CONSTRAINT `FK_0B95B341CE5A1899DCD82A2B6F2CEBCD` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_523E563C1907547EE9AD274200F0FED4` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_billing_agreement`
--
ALTER TABLE `mgnto_sales_billing_agreement`
  ADD CONSTRAINT `FK_MGNTO_SALES_BILLING_AGRT_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALES_BILLING_AGRT_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_billing_agreement_order`
--
ALTER TABLE `mgnto_sales_billing_agreement_order`
  ADD CONSTRAINT `FK_0201F70CA46FDAF7C121DA0B2115B64A` FOREIGN KEY (`order_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_528F55ED1BCCA60133BADA7AA1C103C0` FOREIGN KEY (`agreement_id`) REFERENCES `mgnto_sales_billing_agreement` (`agreement_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_creditmemo`
--
ALTER TABLE `mgnto_sales_flat_creditmemo`
  ADD CONSTRAINT `FK_1AC3BDE63CEFA5AE04CF6BE7C27B8B91` FOREIGN KEY (`order_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_D22E268160464F564366B701704D53CD` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_creditmemo_comment`
--
ALTER TABLE `mgnto_sales_flat_creditmemo_comment`
  ADD CONSTRAINT `FK_4AB2A84BA8D9A5286383AC285C34B69E` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_creditmemo_grid`
--
ALTER TABLE `mgnto_sales_flat_creditmemo_grid`
  ADD CONSTRAINT `FK_77E1452E4D81162B8CAE8AFE4D7F99DA` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_B196D644685FB77BCA0022AD25D9558F` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_creditmemo_item`
--
ALTER TABLE `mgnto_sales_flat_creditmemo_item`
  ADD CONSTRAINT `FK_6120DA0FEDECB0C17EBBE9D65009CEA0` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_sales_flat_creditmemo` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_invoice`
--
ALTER TABLE `mgnto_sales_flat_invoice`
  ADD CONSTRAINT `FK_CA069289E03A593F24EA8D69D15454BD` FOREIGN KEY (`order_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALES_FLAT_INVOICE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_invoice_comment`
--
ALTER TABLE `mgnto_sales_flat_invoice_comment`
  ADD CONSTRAINT `FK_EDF26DFE965C04FD94534FC43E7E166F` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_invoice_grid`
--
ALTER TABLE `mgnto_sales_flat_invoice_grid`
  ADD CONSTRAINT `FK_2F072D397857351D7E3947F11C697BA8` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_D9E893E64E8BB4D05EF71295E5B0B03E` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_invoice_item`
--
ALTER TABLE `mgnto_sales_flat_invoice_item`
  ADD CONSTRAINT `FK_7046761A520232BDA1D845248031A595` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_sales_flat_invoice` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_order`
--
ALTER TABLE `mgnto_sales_flat_order`
  ADD CONSTRAINT `FK_MGNTO_SALES_FLAT_ORDER_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALES_FLAT_ORDER_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_order_address`
--
ALTER TABLE `mgnto_sales_flat_order_address`
  ADD CONSTRAINT `FK_895E4EC6583F226DA604DF21A7CBC9B9` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_order_grid`
--
ALTER TABLE `mgnto_sales_flat_order_grid`
  ADD CONSTRAINT `FK_BF9060680D6F9789F0115377F3421A0F` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DD15D92DC21D363ECCEAD534A94BB4BD` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALES_FLAT_ORDER_GRID_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_order_item`
--
ALTER TABLE `mgnto_sales_flat_order_item`
  ADD CONSTRAINT `FK_8436A50E7784ED2A7ADC87BFB3AF8744` FOREIGN KEY (`order_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_BD2127B31D33923B0119CFAFD0B7F26F` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_order_payment`
--
ALTER TABLE `mgnto_sales_flat_order_payment`
  ADD CONSTRAINT `FK_719BFEBF5E055171F1C50EFA43E31BB9` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_order_status_history`
--
ALTER TABLE `mgnto_sales_flat_order_status_history`
  ADD CONSTRAINT `FK_0CD0348F23F1D28EEC3D1894C2B8766F` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_quote`
--
ALTER TABLE `mgnto_sales_flat_quote`
  ADD CONSTRAINT `FK_MGNTO_SALES_FLAT_QUOTE_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_quote_address`
--
ALTER TABLE `mgnto_sales_flat_quote_address`
  ADD CONSTRAINT `FK_D07D241AAF3E2C22E9FF84452673B492` FOREIGN KEY (`quote_id`) REFERENCES `mgnto_sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_quote_address_item`
--
ALTER TABLE `mgnto_sales_flat_quote_address_item`
  ADD CONSTRAINT `FK_23C92A63590EAC5035EF47BEE297A888` FOREIGN KEY (`quote_item_id`) REFERENCES `mgnto_sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_91514D45F272B558A29C00BD3C105518` FOREIGN KEY (`parent_item_id`) REFERENCES `mgnto_sales_flat_quote_address_item` (`address_item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_BAB6B4FE0DCAB9C7841D4FF0AA467980` FOREIGN KEY (`quote_address_id`) REFERENCES `mgnto_sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_quote_item`
--
ALTER TABLE `mgnto_sales_flat_quote_item`
  ADD CONSTRAINT `FK_154371B8BD37499751A22043AA474AFA` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_48987D5A1044DA7531C8BEE4D8E09290` FOREIGN KEY (`parent_item_id`) REFERENCES `mgnto_sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_BCE0AFC7AE2896C3E58241A103A94903` FOREIGN KEY (`quote_id`) REFERENCES `mgnto_sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALES_FLAT_QUOTE_ITEM_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_quote_item_option`
--
ALTER TABLE `mgnto_sales_flat_quote_item_option`
  ADD CONSTRAINT `FK_A0A5B9DFEB55E15AB30286291F5D0958` FOREIGN KEY (`item_id`) REFERENCES `mgnto_sales_flat_quote_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_quote_payment`
--
ALTER TABLE `mgnto_sales_flat_quote_payment`
  ADD CONSTRAINT `FK_CE3716EC79AFCC2DC38D9189033DDACB` FOREIGN KEY (`quote_id`) REFERENCES `mgnto_sales_flat_quote` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_quote_shipping_rate`
--
ALTER TABLE `mgnto_sales_flat_quote_shipping_rate`
  ADD CONSTRAINT `FK_63332396D6448C4EEAAA5EDA32C04DA4` FOREIGN KEY (`address_id`) REFERENCES `mgnto_sales_flat_quote_address` (`address_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_shipment`
--
ALTER TABLE `mgnto_sales_flat_shipment`
  ADD CONSTRAINT `FK_81ABC35B677B0208B17256559ED89B71` FOREIGN KEY (`order_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALES_FLAT_SHIPMENT_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_shipment_comment`
--
ALTER TABLE `mgnto_sales_flat_shipment_comment`
  ADD CONSTRAINT `FK_452DBB84BEFAD88049A9B702398B558A` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_shipment_grid`
--
ALTER TABLE `mgnto_sales_flat_shipment_grid`
  ADD CONSTRAINT `FK_222680709BC939F933E1920C59FA9B91` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_E8B7A7F2F6BF6D7A30E220F15B7EF8A0` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_shipment_item`
--
ALTER TABLE `mgnto_sales_flat_shipment_item`
  ADD CONSTRAINT `FK_15494469CD2B1C74674F567D89D1A5B6` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_flat_shipment_track`
--
ALTER TABLE `mgnto_sales_flat_shipment_track`
  ADD CONSTRAINT `FK_505E039211CCC7BEE66AEBAEA09DCC82` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_sales_flat_shipment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_invoiced_aggregated`
--
ALTER TABLE `mgnto_sales_invoiced_aggregated`
  ADD CONSTRAINT `FK_AD740E3778B7C62A33308704CBF00C63` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_invoiced_aggregated_order`
--
ALTER TABLE `mgnto_sales_invoiced_aggregated_order`
  ADD CONSTRAINT `FK_0056DADC1B33499AF96A65000C94A8DD` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_order_aggregated_created`
--
ALTER TABLE `mgnto_sales_order_aggregated_created`
  ADD CONSTRAINT `FK_FCF555C55F789D1575DE93D007E56B62` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_order_aggregated_updated`
--
ALTER TABLE `mgnto_sales_order_aggregated_updated`
  ADD CONSTRAINT `FK_5FA8B6F8252EDF9E27C3A5F672C795FD` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_order_status_label`
--
ALTER TABLE `mgnto_sales_order_status_label`
  ADD CONSTRAINT `FK_MGNTO_SALES_ORDER_STS_LBL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALES_ORDER_STS_LBL_STS_MGNTO_SALES_ORDER_STS_STS` FOREIGN KEY (`status`) REFERENCES `mgnto_sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_order_status_state`
--
ALTER TABLE `mgnto_sales_order_status_state`
  ADD CONSTRAINT `FK_MGNTO_SALES_ORDER_STS_STATE_STS_MGNTO_SALES_ORDER_STS_STS` FOREIGN KEY (`status`) REFERENCES `mgnto_sales_order_status` (`status`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_order_tax_item`
--
ALTER TABLE `mgnto_sales_order_tax_item`
  ADD CONSTRAINT `FK_49328723FA94D72CDC5768300082243B` FOREIGN KEY (`item_id`) REFERENCES `mgnto_sales_flat_order_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_73433E1AFFAE34CFF9A720CE67BEC38B` FOREIGN KEY (`tax_id`) REFERENCES `mgnto_sales_order_tax` (`tax_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_payment_transaction`
--
ALTER TABLE `mgnto_sales_payment_transaction`
  ADD CONSTRAINT `FK_8083020E41574B656FB9F1D4257996EC` FOREIGN KEY (`payment_id`) REFERENCES `mgnto_sales_flat_order_payment` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_A949CE2003DE0EC5B9AF1DC4EA6F715F` FOREIGN KEY (`order_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_D591A9F7AAD5C957928C776717387433` FOREIGN KEY (`parent_id`) REFERENCES `mgnto_sales_payment_transaction` (`transaction_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_recurring_profile`
--
ALTER TABLE `mgnto_sales_recurring_profile`
  ADD CONSTRAINT `FK_769CCEFF20B8D55F1F84C8E6685C2846` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_SALES_RECURRING_PROFILE_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_recurring_profile_order`
--
ALTER TABLE `mgnto_sales_recurring_profile_order`
  ADD CONSTRAINT `FK_AF305837E0CEE9BDC0D192B68CA3A16B` FOREIGN KEY (`order_id`) REFERENCES `mgnto_sales_flat_order` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_DD1F2746269E26EFFAC5DE977AE565FF` FOREIGN KEY (`profile_id`) REFERENCES `mgnto_sales_recurring_profile` (`profile_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_refunded_aggregated`
--
ALTER TABLE `mgnto_sales_refunded_aggregated`
  ADD CONSTRAINT `FK_3252D1407F9C5E2AAD9A5484A3A6165F` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_refunded_aggregated_order`
--
ALTER TABLE `mgnto_sales_refunded_aggregated_order`
  ADD CONSTRAINT `FK_1BF9AEDB668BB8B3DBFE72888B63FDF2` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_shipping_aggregated`
--
ALTER TABLE `mgnto_sales_shipping_aggregated`
  ADD CONSTRAINT `FK_MGNTO_SALES_SHPP_AGGRED_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sales_shipping_aggregated_order`
--
ALTER TABLE `mgnto_sales_shipping_aggregated_order`
  ADD CONSTRAINT `FK_5D26565E75CBEFA46D9EEB273BCC429A` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_sitemap`
--
ALTER TABLE `mgnto_sitemap`
  ADD CONSTRAINT `FK_MGNTO_SITEMAP_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_tag`
--
ALTER TABLE `mgnto_tag`
  ADD CONSTRAINT `FK_MGNTO_TAG_FIRST_CUSTOMER_ID_MGNTO_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`first_customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE SET NULL ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK_MGNTO_TAG_FIRST_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`first_store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `mgnto_tag_properties`
--
ALTER TABLE `mgnto_tag_properties`
  ADD CONSTRAINT `FK_MGNTO_TAG_PROPERTIES_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_TAG_PROPERTIES_TAG_ID_MGNTO_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `mgnto_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_tag_relation`
--
ALTER TABLE `mgnto_tag_relation`
  ADD CONSTRAINT `FK_MGNTO_TAG_RELATION_CSTR_ID_MGNTO_CSTR_ENTT_ENTT_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_TAG_RELATION_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_TAG_RELATION_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_TAG_RELATION_TAG_ID_MGNTO_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `mgnto_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_tag_summary`
--
ALTER TABLE `mgnto_tag_summary`
  ADD CONSTRAINT `FK_MGNTO_TAG_SUMMARY_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_TAG_SUMMARY_TAG_ID_MGNTO_TAG_TAG_ID` FOREIGN KEY (`tag_id`) REFERENCES `mgnto_tag` (`tag_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_tax_calculation`
--
ALTER TABLE `mgnto_tax_calculation`
  ADD CONSTRAINT `FK_D2CC44A18A362C96EA3050AF5FE3E479` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `mgnto_tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_E49758870855B88FB045B76B5AAF624F` FOREIGN KEY (`tax_calculation_rule_id`) REFERENCES `mgnto_tax_calculation_rule` (`tax_calculation_rule_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_TAX_CALC_CSTR_TAX_CLASS_ID_MGNTO_TAX_CLASS_CLASS_ID` FOREIGN KEY (`customer_tax_class_id`) REFERENCES `mgnto_tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_TAX_CALC_PRD_TAX_CLASS_ID_MGNTO_TAX_CLASS_CLASS_ID` FOREIGN KEY (`product_tax_class_id`) REFERENCES `mgnto_tax_class` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_tax_calculation_rate_title`
--
ALTER TABLE `mgnto_tax_calculation_rate_title`
  ADD CONSTRAINT `FK_43296C32051C3040DAC8CCF56A36415A` FOREIGN KEY (`tax_calculation_rate_id`) REFERENCES `mgnto_tax_calculation_rate` (`tax_calculation_rate_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_TAX_CALC_RATE_TTL_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_tax_order_aggregated_created`
--
ALTER TABLE `mgnto_tax_order_aggregated_created`
  ADD CONSTRAINT `FK_04BC2F721CBE873AE1510F5886DE02D8` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_tax_order_aggregated_updated`
--
ALTER TABLE `mgnto_tax_order_aggregated_updated`
  ADD CONSTRAINT `FK_E626EED68B2C2D9BBF97A819321646BB` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_weee_discount`
--
ALTER TABLE `mgnto_weee_discount`
  ADD CONSTRAINT `FK_9C380F4167A43BE674F7DD3F6743BA23` FOREIGN KEY (`customer_group_id`) REFERENCES `mgnto_customer_group` (`customer_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_WEEE_DISCOUNT_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_WEEE_DISCOUNT_WEBSITE_ID_MGNTO_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_weee_tax`
--
ALTER TABLE `mgnto_weee_tax`
  ADD CONSTRAINT `FK_MGNTO_WEEE_TAX_ATTRIBUTE_ID_MGNTO_EAV_ATTRIBUTE_ATTRIBUTE_ID` FOREIGN KEY (`attribute_id`) REFERENCES `mgnto_eav_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_WEEE_TAX_COUNTRY_MGNTO_DIRECTORY_COUNTRY_COUNTRY_ID` FOREIGN KEY (`country`) REFERENCES `mgnto_directory_country` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_WEEE_TAX_ENTT_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`entity_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_WEEE_TAX_WEBSITE_ID_MGNTO_CORE_WEBSITE_WEBSITE_ID` FOREIGN KEY (`website_id`) REFERENCES `mgnto_core_website` (`website_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_widget_instance_page`
--
ALTER TABLE `mgnto_widget_instance_page`
  ADD CONSTRAINT `FK_6AB7FD791CD9B8A84FF69E9EC7C6DE8D` FOREIGN KEY (`instance_id`) REFERENCES `mgnto_widget_instance` (`instance_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_widget_instance_page_layout`
--
ALTER TABLE `mgnto_widget_instance_page_layout`
  ADD CONSTRAINT `FK_5F2F3FAE2FBC168ABCBC84A296065505` FOREIGN KEY (`layout_update_id`) REFERENCES `mgnto_core_layout_update` (`layout_update_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_6949AEC4EBB519EA43B0FF6E6CEEC8BB` FOREIGN KEY (`page_id`) REFERENCES `mgnto_widget_instance_page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_wishlist`
--
ALTER TABLE `mgnto_wishlist`
  ADD CONSTRAINT `FK_MGNTO_WISHLIST_CUSTOMER_ID_MGNTO_CUSTOMER_ENTITY_ENTITY_ID` FOREIGN KEY (`customer_id`) REFERENCES `mgnto_customer_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_wishlist_item`
--
ALTER TABLE `mgnto_wishlist_item`
  ADD CONSTRAINT `FK_MGNTO_WISHLIST_ITEM_PRD_ID_MGNTO_CAT_PRD_ENTT_ENTT_ID` FOREIGN KEY (`product_id`) REFERENCES `mgnto_catalog_product_entity` (`entity_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_WISHLIST_ITEM_STORE_ID_MGNTO_CORE_STORE_STORE_ID` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_MGNTO_WISHLIST_ITEM_WISHLIST_ID_MGNTO_WISHLIST_WISHLIST_ID` FOREIGN KEY (`wishlist_id`) REFERENCES `mgnto_wishlist` (`wishlist_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_wishlist_item_option`
--
ALTER TABLE `mgnto_wishlist_item_option`
  ADD CONSTRAINT `FK_987EB16BD889FB08EBE67079F96D6A99` FOREIGN KEY (`wishlist_item_id`) REFERENCES `mgnto_wishlist_item` (`wishlist_item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_xmlconnect_application`
--
ALTER TABLE `mgnto_xmlconnect_application`
  ADD CONSTRAINT `FK_C964B0515BB35E152B8261FC7B8010DA` FOREIGN KEY (`store_id`) REFERENCES `mgnto_core_store` (`store_id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `mgnto_xmlconnect_config_data`
--
ALTER TABLE `mgnto_xmlconnect_config_data`
  ADD CONSTRAINT `FK_1F5EF87E5D25BA0EB3E90537AE43B71A` FOREIGN KEY (`application_id`) REFERENCES `mgnto_xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_xmlconnect_history`
--
ALTER TABLE `mgnto_xmlconnect_history`
  ADD CONSTRAINT `FK_0907EF52BE40411B75394355A20ACD42` FOREIGN KEY (`application_id`) REFERENCES `mgnto_xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_xmlconnect_images`
--
ALTER TABLE `mgnto_xmlconnect_images`
  ADD CONSTRAINT `FK_9287F710FD27F1BFE773C49519AD6517` FOREIGN KEY (`application_id`) REFERENCES `mgnto_xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_xmlconnect_notification_template`
--
ALTER TABLE `mgnto_xmlconnect_notification_template`
  ADD CONSTRAINT `FK_943AA44971E34C7E7E73791AEE6C0484` FOREIGN KEY (`application_id`) REFERENCES `mgnto_xmlconnect_application` (`application_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mgnto_xmlconnect_queue`
--
ALTER TABLE `mgnto_xmlconnect_queue`
  ADD CONSTRAINT `FK_C2517013D638D4990C37DBA41A48F135` FOREIGN KEY (`template_id`) REFERENCES `mgnto_xmlconnect_notification_template` (`template_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
