-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2019 at 11:18 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hangout`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `cat_name`, `created_on`) VALUES
(1, 2, 'technology', '2019-06-14 12:42:23'),
(2, 1, 'entertainment', '2019-06-14 12:42:27'),
(3, 3, 'news', '2019-06-14 12:42:31'),
(4, 3, 'international politics', '2019-06-14 12:42:43'),
(5, 0, 'news', '2019-06-14 13:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_name`, `email`, `body`, `created_on`) VALUES
(3, 25, 'omonso', 'omonso@gmail.com', '<p>this is a great post</p>\r\n', '2019-06-14 06:34:24'),
(4, 25, 'anasi', 'housleyokusi@gmail.com', '<p>kloijiwepjp wempwkod<u>pp[k[qwplpqwppkwed&nbsp;<strong>lpsk[ask[pkw[p[p[ popdsokpsd</strong></u><em>kdspj&nbsp; jskdjbudsubisdbusdb</em></p>\r\n', '2019-06-14 06:48:03'),
(5, 25, 'dssd', 'ben.macksembo@gmail.com', '<p><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /><img alt=\"heart\" src=\"http://127.0.0.1/apps/hangout/assets/ckeditor/plugins/smiley/images/heart.png\" style=\"height:23px; width:23px\" title=\"heart\" /></p>\r\n', '2019-06-14 06:51:11'),
(6, 27, 'omonso', 'emmanuelomonso@gmail.com', '<p>This is a great blog, I will be using it for my website.</p>\r\n', '2019-06-14 07:04:42'),
(7, 27, 'User 001', 'housleyokusi@gmail.com', '<p>I need help in integrating this blog into my website</p>\r\n', '2019-06-14 07:05:14'),
(8, 27, 'dssd', 'akunnayaok@icloud.com', '<p>can you please help me develop my website</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2019-06-14 07:05:48'),
(9, 27, 'User 001', 'akunnayaok@icloud.com', '<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\" summary=\"no caption\">\r\n	<caption>no caption</caption>\r\n	<tbody>\r\n		<tr>\r\n			<td>no caption</td>\r\n			<td>no caption</td>\r\n		</tr>\r\n		<tr>\r\n			<td>no caption</td>\r\n			<td>no caption</td>\r\n		</tr>\r\n		<tr>\r\n			<td>no caption</td>\r\n			<td>no caption</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n', '2019-06-14 09:23:46'),
(10, 28, 'dssd', 'emmanuelomonso@gmail.com', '<p>ljjjjjjjj///</p>\r\n', '2019-06-14 12:02:40'),
(11, 27, 'dssd', 'techieomonso@gmail.com', '<p>sdkjnjkkkkkwkkkkkksd nwioe[n&#39; &#39;[wof&nbsp;</p>\r\n', '2019-06-15 06:38:28'),
(12, 27, 'dssd', 'emmanuelomonso@gmail.com', '<html>\r\n<p color:red;>hey</p>\r\n</html>', '2019-07-15 07:29:52'),
(13, 27, 'dssd', 'emmanuelomonso@gmail.com', '<p>xc,mldfj</p>\r\n', '2019-07-15 07:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `user_id`, `user_name`, `slug`, `body`, `post_image`, `created_on`, `comment`) VALUES
(6, 1, 'this has been edited', 1, '', 'this-has-been-edited', '		Hello ladies and gentlemen, my name is Emmanuel Omonso Anasi and I am the developer of this website. Do not mind about the design, I am still working on it\r\n		\r\n			\r\n	', '', '2019-06-14 11:44:52', ''),
(9, 1, 'This is post three ', 1, '', 'This-is-post-three', '<div style=\"background:#eeeeee; border:1px solid #cccccc; padding:5px 10px\"><span style=\"font-family:Arial,Helvetica,sans-serif\"><span style=\"font-size:24px\">My name is Emmanuel Omonso Anasi, I am the creator of this content management system.</span></span></div>\r\n', '', '2019-06-14 11:44:57', ''),
(10, 2, 'Emmanuel Omonso the Developer', 1, '', 'Emmanuel-Omonso-the-Developer', '<pre>\r\nI just finished building this website, I might not have looked all around, if you find any broken link or non-functional function, please be kind and let me know.</pre>\r\n\r\n<p>The version of this system is 0.0.1</p>\r\n\r\n<p>Once we update this system, we will make the lower versions available on request to individuals who meet the following Terms and Conditions</p>\r\n', '', '2019-06-14 11:45:01', 'no comment'),
(13, 2, 'This is post ', 1, '', 'This-is-post', '<p>Several Bootstrap components utilize&nbsp;<code>z-index</code>, the CSS property that helps control layout by providing a third axis to arrange content. We utilize a default z-index scale in Bootstrap that&rsquo;s been designed to properly layer navigation, tooltips and popovers, modals, and more.</p>\r\n\r\n<blockquote>\r\n<p>These higher values start at an arbitrary number, high and specific enough to ideally avoid conflicts. We need a standard set of these across our layered components&mdash;tooltips, popovers, navbars, dropdowns, modals&mdash;so we can be reasonably consistent in the behaviors. There&rsquo;s no reason we couldn&rsquo;t have used&nbsp;<code>100</code>+ or&nbsp;<code>500</code>+.</p>\r\n\r\n<p>We don&rsquo;t encourage customization of these individual values; should you change one, you likely need to change them all.</p>\r\n</blockquote>\r\n\r\n<p>Several Bootstrap components utilize&nbsp;<code>z-index</code>, the CSS property that helps control layout by providing a third axis to arrange content. We utilize a default z-index scale in Bootstrap that&rsquo;s been designed to properly layer navigation, tooltips and popovers, modals, and more.</p>\r\n\r\n<p>These higher values start at an arbitrary number, high and specific enough to ideally avoid conflicts. We need a standard set of these across our layered components&mdash;tooltips, popovers, navbars, dropdowns, modals&mdash;so we can be reasonably consistent in the behaviors. There&rsquo;s no reason we couldn&rsquo;t have used&nbsp;<code>100</code>+ or&nbsp;<code>500</code>+.</p>\r\n\r\n<p>We don&rsquo;t encourage customization of these individual values; should you change one, you likely need to change them all.</p>\r\n\r\n<p>Several Bootstrap components utilize&nbsp;<code>z-index</code>, the CSS property that helps control layout by providing a third axis to arrange content. We utilize a default z-index scale in Bootstrap that&rsquo;s been designed to properly layer navigation, tooltips and popovers, modals, and more.</p>\r\n\r\n<p>These higher values start at an arbitrary number, high and specific enough to ideally avoid conflicts. We need a standard set of these across our layered components&mdash;tooltips, popovers, navbars, dropdowns, modals&mdash;so we can be reasonably consistent in the behaviors. There&rsquo;s no reason we couldn&rsquo;t have used&nbsp;<code>100</code>+ or&nbsp;<code>500</code>+.</p>\r\n\r\n<p>We don&rsquo;t encourage customization of these individual values; should you change one, you likely need to change them all.</p>\r\n\r\n<p>Several Bootstrap components utilize&nbsp;<code>z-index</code>, the CSS property that helps control layout by providing a third axis to arrange content. We utilize a default z-index scale in Bootstrap that&rsquo;s been designed to properly layer navigation, tooltips and popovers, modals, and more.</p>\r\n\r\n<p>These higher values start at an arbitrary number, high and specific enough to ideally avoid conflicts. We need a standard set of these across our layered components&mdash;tooltips, popovers, navbars, dropdowns, modals&mdash;so we can be reasonably consistent in the behaviors. There&rsquo;s no reason we couldn&rsquo;t have used&nbsp;<code>100</code>+ or&nbsp;<code>500</code>+.</p>\r\n\r\n<p>We don&rsquo;t encourage customization of these individual values; should you change one, you likely need to change them all.</p>\r\n\r\n<blockquote>\r\n<p>Several Bootstrap components utilize&nbsp;<code>z-index</code>, the CSS property that helps control layout by providing a third axis to arrange content. We utilize a default z-index scale in Bootstrap that&rsquo;s been designed to properly layer navigation, tooltips and popovers, modals, and more.</p>\r\n\r\n<p>These higher values start at an arbitrary number, high and specific enough to ideally avoid conflicts. We need a standard set of these across our layered components&mdash;tooltips, popovers, navbars, dropdowns, modals&mdash;so we can be reasonably consistent in the behaviors. There&rsquo;s no reason we couldn&rsquo;t have used&nbsp;<code>100</code>+ or&nbsp;<code>500</code>+.</p>\r\n</blockquote>\r\n\r\n<p>We don&rsquo;t encourage customization of these individual values; should you change one, you likely need to change them all.</p>\r\n\r\n<p>Several Bootstrap components utilize&nbsp;<code>z-index</code>, the CSS property that helps control layout by providing a third axis to arrange content. We utilize a default z-index scale in Bootstrap that&rsquo;s been designed to properly layer navigation, tooltips and popovers, modals, and more.</p>\r\n\r\n<p>These higher values start at an arbitrary number, high and specific enough to ideally avoid conflicts. We need a standard set of these across our layered components&mdash;tooltips, popovers, navbars, dropdowns, modals&mdash;so we can be reasonably consistent in the behaviors. There&rsquo;s no reason we couldn&rsquo;t have used&nbsp;<code>100</code>+ or&nbsp;<code>500</code>+.</p>\r\n\r\n<p>We don&rsquo;t encourage customization of these individual values; should you change one, you likely need to change them all.</p>\r\n\r\n<p>Several Bootstrap components utilize&nbsp;<code>z-index</code>, the CSS property that helps control layout by providing a third axis to arrange content. We utilize a default z-index scale in Bootstrap that&rsquo;s been designed to properly layer navigation, tooltips and popovers, modals, and more.</p>\r\n\r\n<p>These higher values start at an arbitrary number, high and specific enough to ideally avoid conflicts. We need a standard set of these across our layered components&mdash;tooltips, popovers, navbars, dropdowns, modals&mdash;so we can be reasonably consistent in the behaviors. There&rsquo;s no reason we couldn&rsquo;t have used&nbsp;<code>100</code>+ or&nbsp;<code>500</code>+.</p>\r\n\r\n<p>We don&rsquo;t encourage customization of these individual values; should you change one, you likely need to change them all.</p>\r\n\r\n<p>Several Bootstrap components utilize&nbsp;<code>z-index</code>, the CSS property that helps control layout by providing a third axis to arrange content. We utilize a default z-index scale in Bootstrap that&rsquo;s been designed to properly layer navigation, tooltips and popovers, modals, and more.</p>\r\n\r\n<p>These higher values start at an arbitrary number, high and specific enough to ideally avoid conflicts. We need a standard set of these across our layered components&mdash;tooltips, popovers, navbars, dropdowns, modals&mdash;so we can be reasonably consistent in the behaviors. There&rsquo;s no reason we couldn&rsquo;t have used&nbsp;<code>100</code>+ or&nbsp;<code>500</code>+.</p>\r\n\r\n<p>We don&rsquo;t encourage customization of these individual values; should you change one, you likely need to change them all.</p>\r\n\r\n<p>Several Bootstrap components utilize&nbsp;<code>z-index</code>, the CSS property that helps control layout by providing a third axis to arrange content. We utilize a default z-index scale in Bootstrap that&rsquo;s been designed to properly layer navigation, tooltips and popovers, modals, and more.</p>\r\n\r\n<p>These higher values start at an arbitrary number, high and specific enough to ideally avoid conflicts. We need a standard set of these across our layered components&mdash;tooltips, popovers, navbars, dropdowns, modals&mdash;so we can be reasonably consistent in the behaviors. There&rsquo;s no reason we couldn&rsquo;t have used&nbsp;<code>100</code>+ or&nbsp;<code>500</code>+.</p>\r\n\r\n<p>We don&rsquo;t encourage customization of these individual values; should you change one, you likely need to change them all.</p>\r\n\r\n<p>Several Bootstrap components utilize<em><strong><span style=\"background-color:#27ae60\">&nbsp;</span><code><span style=\"background-color:#27ae60\">z-index</span></code><span style=\"background-color:#27ae60\">, the CSS property that helps control layout by providing a third axis to arrange content. We utilize a default z-index scale in Bootstrap that&rsquo;s been designed to properly layer navigation, tooltips and popovers, modals, and more.</span></strong></em></p>\r\n\r\n<p><em><strong><span style=\"background-color:#27ae60\">These higher values start at an arbitrary number, high and specific enough to id</span></strong></em>eally avoid conflicts. We need a standard set of these across our layered components&mdash;tooltips, popovers, navbars, dropdowns, modals&mdash;so we can be reasonably consistent in the behaviors. There&rsquo;s no reason we couldn&rsquo;t have used&nbsp;<code>100</code>+ or&nbsp;<code>500</code>+.</p>\r\n\r\n<p>We don&rsquo;t encourage customization of these individual values; should you change one, you likely need to change them all.</p>\r\n', '', '2019-06-14 11:45:06', 'no comment'),
(17, 2, 'h', 1, '', 'h', '<p>Delete this and start typing...</p>\r\n', '', '2019-06-14 11:45:21', ''),
(18, 2, 'test post again', 1, '', 'test-post-again', '<p>we are still testing&nbsp;</p>\r\n', '', '2019-06-14 11:45:25', ''),
(21, 2, ',djlksdklsdlsd', 1, '', 'djlksdklsdlsd', '<p>Delete this and start typing...</p>\r\n', 'noimage.jpg', '2019-06-14 11:45:45', ''),
(22, 2, 'm,', 2, '', 'm', '<p>Delete this and start typing...</p>\r\n', 'Capture2.PNG', '2019-06-14 11:45:50', ''),
(23, 1, 'kl nll', 1, '', 'kl-nll', '<p>Delete this and start typing...</p>\r\n', 'noimage.jpg', '2019-06-14 11:45:54', ''),
(24, 2, 'kllkl', 2, '', 'kllkl', '<p>Delete this and start typing...</p>\r\n', '2d2c0620-5bb0-4723-8b41-1b1d3dc02f07.jpg', '2019-06-14 11:45:59', ''),
(25, 2, 'mdfkldfkl', 2, '', 'mdfkldfkl', '<p>Delete this and start typing...</p>\r\n', 'noimage.jpg', '2019-06-14 11:46:02', 'hey still'),
(27, 2, 'My Name is Anasi', 2, '', 'My-Name-is-Anasi', '<blockquote>\r\n<p>Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.</p>\r\n</blockquote>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.</p>\r\n\r\n<p>Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.</p>\r\n\r\n<p>Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.</p>\r\n\r\n<p>Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.Some quick example text to build on the card title and make up the bulk of the card&#39;s content.</p>\r\n', 'B.jpg', '2019-06-14 11:59:08', '@omonsoanasi');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `joined_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `username`, `password`, `joined_on`) VALUES
(1, 'Emmanuel Anasi', '0702000116', 'housleyokusi@gmail.com', 'emmanuelomonso', '81dc9bdb52d04dc20036dbd8313ed055', '2019-06-14 10:28:39'),
(2, 'Emmanuel Anasi', '0702000116', 'emmanuelomonso@gmail.com', 'omonso', 'c20ad4d76fe97759aa27a0c99bff6710', '2019-06-14 11:36:41'),
(3, 'Emmanuel Anasi', '0702000116', 'ben.macksembo@gmail.com', 'sdsds', 'c20ad4d76fe97759aa27a0c99bff6710', '2019-06-14 11:56:07');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
