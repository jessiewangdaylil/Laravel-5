-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-01-21 10:32:54
-- 伺服器版本： 10.4.22-MariaDB
-- PHP 版本： 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `laravelfive`
--

-- --------------------------------------------------------

--
-- 資料表結構 `cgies`
--

CREATE TABLE `cgies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `sort` int(11) NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `cgies`
--

INSERT INTO `cgies` (`id`, `parent_id`, `title`, `pic`, `desc`, `enabled`, `sort`, `type`, `created_at`, `updated_at`) VALUES
(2, 5, '語言學習', NULL, NULL, 1, 1, '教師、課程資料表', '2023-01-18 05:44:18', '2023-01-21 07:16:10'),
(3, 5, '藝術人文', NULL, NULL, 1, 2, '教師、課程資料表', '2023-01-18 05:44:46', '2023-01-21 07:16:18'),
(4, 5, '數學邏輯', NULL, NULL, 1, 3, '教師、課程資料表', '2023-01-18 05:45:18', '2023-01-21 07:16:25'),
(5, NULL, '課程類型', NULL, NULL, 1, 0, '教師、課程資料表', '2023-01-18 05:45:56', '2023-01-21 07:16:02'),
(6, 5, '輸入課程類型4', NULL, NULL, 0, 4, '教師、課程資料表', '2023-01-18 05:51:25', '2023-01-21 07:16:32'),
(7, 5, '輸入課程類型5', NULL, NULL, 0, 5, '教師、課程資料表', '2023-01-21 07:11:06', '2023-01-21 07:16:47'),
(8, 5, '輸入課程類型6', NULL, NULL, 0, 6, '教師、課程資料表', '2023-01-21 07:11:39', '2023-01-21 07:16:55'),
(9, 5, '輸入課程類型7', NULL, NULL, 0, 7, '教師、課程資料表', '2023-01-21 07:12:18', '2023-01-21 07:17:05'),
(10, 5, '輸入課程類型8', NULL, NULL, 0, 8, '教師、課程資料表', '2023-01-21 07:12:34', '2023-01-21 07:17:13'),
(11, 5, '輸入課程類型9', NULL, NULL, 0, 9, '教師、課程資料表', '2023-01-21 07:12:51', '2023-01-21 07:17:21'),
(12, 5, '輸入課程類型10', NULL, NULL, 0, 10, '教師、課程資料表', '2023-01-21 07:13:11', '2023-01-21 07:17:28');

-- --------------------------------------------------------

--
-- 資料表結構 `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salutation` enum('先生','小姐','其他') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_replied` tinyint(1) NOT NULL DEFAULT 0,
  `replied_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `course_at` date DEFAULT NULL,
  `isexist_course` enum('否','是','免填') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '免填',
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `handler_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cgy_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `hours` int(11) NOT NULL,
  `started_at` datetime NOT NULL,
  `ended_at` datetime NOT NULL,
  `cycle` datetime NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_og` int(11) NOT NULL DEFAULT 0,
  `price_new` int(11) DEFAULT NULL,
  `badge` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` int(11) NOT NULL DEFAULT 10,
  `people` int(11) NOT NULL DEFAULT 0,
  `desc` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chars` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `course_order`
--

CREATE TABLE `course_order` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `option` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `course_teacher`
--

CREATE TABLE `course_teacher` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `teacher_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', '名稱', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', '電子郵件', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', '密碼', 1, 0, 0, 1, 1, 0, '{}', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 5),
(6, 1, 'created_at', 'timestamp', '創建於', 0, 1, 1, 0, 0, 0, '{}', 6),
(7, 1, 'updated_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, '{}', 7),
(8, 1, 'avatar', 'image', '頭像', 0, 1, 1, 1, 1, 1, '{}', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', '角色', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', '名稱', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', '名稱', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', '創建於', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', '顯示名稱', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', '角色', 0, 1, 1, 1, 1, 1, '{}', 9),
(22, 4, 'id', 'text', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'text', '父分類', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"parent_id\"}}', 4),
(24, 4, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"title_id\"},\"validation\":{\"rule\":\"required|max:100\"},\"description\":\"\\u8f38\\u5165\\u9805\\u5b57\\u6578\\u9650\\u5236100\\u5b57\"}', 7),
(25, 4, 'pic', 'media_picker', '圖片', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"pic_id\"},\"max\":1,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[\"image\",\"audio\",\"video\"],\"hide_thumbnails\":false,\"quality\":90,\"show_as_images\":true,\"description\":\"\\u55ae\\u5f35\\u7167\\u7247\"}', 9),
(26, 4, 'desc', 'rich_text_box', '描述', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"desc_id\"},\"validation\":{\"rule\":\"max:500\"},\"description\":\"\\u8f38\\u5165\\u9805\\u5b57\\u6578\\u9650\\u5236500\\u5b57\"}', 8),
(27, 4, 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"2\",\"id\":\"enabled_id\"},\"checked\":true}', 2),
(28, 4, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"sort_id\"},\"validation\":{\"rule\":\"required\"},\"min\":0,\"default\":0}', 6),
(29, 4, 'type', 'text', '類型', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"type_id\"},\"description\":\"\\u6b64\\u5206\\u985e\\u5c0d\\u61c9\\u7684\\u8cc7\\u6599\\u8868\",\"validation\":{\"rule\":\"max:30\"}}', 3),
(30, 4, 'created_at', 'timestamp', '建立於', 0, 1, 1, 0, 0, 1, '{}', 10),
(31, 4, 'updated_at', 'timestamp', '更新', 0, 0, 0, 0, 0, 0, '{}', 11),
(33, 5, 'id', 'text', 'Id', 1, 1, 0, 0, 0, 0, '{}', 1),
(34, 5, 'name', 'text', '姓名', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"name_id\"},\"validation\":{\"rule\":\"required|max:20\"}}', 5),
(35, 5, 'salutation', 'select_dropdown', '稱謂', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"isreplied_id\"},\"default\":\"else\",\"options\":{\"else\":\"\\u5176\\u4ed6\",\"men\":\"\\u5148\\u751f\",\"women\":\"\\u5c0f\\u59d0\"},\"validation\":{\"rule\":\"required\"}}', 6),
(36, 5, 'subject', 'select_dropdown', '類型', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"subject_id\"},\"default\":\"quention\",\"options\":{\"quention\":\"\\u8a62\\u554f\",\"complain\":\"\\u62b1\\u6028\",\"wish\":\"\\u8a31\\u9858\\u8ab2\\u7a0b\"},\"validation\":{\"rule\":\"required|max:20\"}}', 3),
(37, 5, 'message', 'text_area', '訊息', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"message_id|max:500\"},\"validation\":{\"rule\":\"required\"}}', 9),
(38, 5, 'phone', 'text', '電話', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"phone_id|max:20\"}}', 8),
(39, 5, 'email', 'text', '電子郵箱', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"3\",\"id\":\"email_id\"},\"validation\":{\"rule\":\"required|max:100\"}}', 7),
(42, 5, 'replied_at', 'timestamp', '回覆日期', 0, 1, 1, 1, 0, 1, '{\"display\":{\"width\":\"1\",\"id\":\"replied_id\"}}', 14),
(43, 5, 'user_id', 'text', '使用者ID', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"user_id\"}}', 4),
(44, 5, 'course_at', 'date', '許願課程時間', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"courseat_id\"}}', 10),
(46, 5, 'course_id', 'text', '課程ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"courseid_id\"}}', 12),
(47, 5, 'created_at', 'timestamp', '建立於', 0, 1, 1, 0, 0, 1, '{}', 15),
(48, 5, 'updated_at', 'timestamp', '更新於', 0, 0, 0, 0, 0, 0, '{}', 16),
(72, 0, 'id', 'text', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
(73, 0, 'updater_id', 'hidden', 'Updater Id', 0, 0, 0, 0, 0, 0, '{}', 2),
(74, 0, 'page', 'text', '頁面', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"page_id\"}}', 6),
(75, 0, 'mode', 'select_dropdown', '模式', 1, 1, 1, 1, 1, 1, '{\"default\":\"text\",\"options\":{\"text\":\"\\u7d14\\u6587\\u5b57\",\"image\":\"\\u5716\\u6587\",\"video\":\"\\u5f71\\u7247\"}}', 3),
(76, 0, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"description\":\"\\u6a19\\u984c\\u5167\\u5bb9\\u8acb\\u63a7\\u5236\\u572840\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"required|max:40\"}}', 4),
(77, 0, 'position', 'text', '位置', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"position_id\"}}', 7),
(78, 0, 'icon', 'text', '圖示', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"icon_id\"}}', 9),
(79, 0, 'subtitle', 'text', '副標題', 0, 0, 1, 1, 1, 1, '{\"description\":\"\\u526f\\u6a19\\u984c\\u5167\\u5bb9\\u8acb\\u63a7\\u5236\\u572880\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"max:80\"}}', 5),
(80, 0, 'content', 'text_area', '內容', 0, 0, 1, 1, 1, 1, '{}', 10),
(81, 0, 'url', 'text', '網址', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\"}}', 11),
(82, 0, 'url_txt', 'text', '網址文字', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:100\"}}', 12),
(83, 0, 'pic', 'media_picker', '圖片', 0, 1, 1, 1, 1, 1, '{\"max\":1,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"show_as_images\":true}', 13),
(84, 0, 'video', 'text', '影片連結', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:255\"}}', 14),
(85, 0, 'alt', 'text', '替代文字', 0, 0, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"max:100\"}}', 15),
(86, 0, 'title_pos', 'hidden', 'Title Pos', 0, 0, 0, 0, 0, 0, '{}', 16),
(87, 0, 'title_color', 'hidden', 'Title Color', 0, 0, 0, 0, 0, 0, '{}', 17),
(88, 0, 'q_mode', 'hidden', 'Q Mode', 0, 0, 0, 0, 0, 0, '{}', 18),
(89, 0, 'i_mode', 'hidden', 'I Mode', 0, 0, 0, 0, 0, 0, '{}', 19),
(90, 0, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"min\":0,\"display\":{\"width\":\"4\",\"id\":\"sort_id\"}}', 8),
(91, 0, 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"checked\":true}', 20),
(92, 0, 'isShowTitle', 'checkbox', '是否顯示標題', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"checked\":true}', 21),
(93, 0, 'created_at', 'timestamp', '創建於', 0, 0, 1, 1, 0, 1, '{}', 22),
(94, 0, 'updated_at', 'timestamp', '更新於', 0, 0, 1, 0, 0, 0, '{}', 23),
(118, 6, 'id', 'text', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
(119, 6, 'updater_id', 'hidden', 'Updater Id', 0, 0, 0, 0, 0, 0, '{}', 2),
(120, 6, 'page', 'text', '頁面', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"page_id\"},\"description\":\"\\u8f38\\u5165\\u9805\\u8acb\\u63a7\\u5236\\u572820\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"required|max:20\"}}', 6),
(121, 6, 'mode', 'select_dropdown', '模式', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"mode_id\"},\"default\":\"text\",\"options\":{\"text\":\"\\u7d14\\u6587\\u5b57\",\"image\":\"\\u5716\\u6587\",\"video\":\"\\u5f71\\u7247\"}}', 4),
(122, 6, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"11\",\"id\":\"title_id\"},\"description\":\"\\u8f38\\u5165\\u9805\\u8acb\\u63a7\\u5236\\u572880\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"required|max:40\"}}', 12),
(123, 6, 'position', 'text', '位置', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"position_id\"},\"description\":\"\\u8f38\\u5165\\u9805\\u8acb\\u63a7\\u5236\\u572820\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"required|max:20\"}}', 7),
(124, 6, 'icon', 'media_picker', '圖示', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"icon_id\"}}', 15),
(125, 6, 'subtitle', 'text_area', '副標題', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"subtitle_id\"},\"description\":\"\\u8f38\\u5165\\u9805\\u8acb\\u63a7\\u5236\\u572880\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"max:80\"}}', 13),
(126, 6, 'content', 'rich_text_box', '內容', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"content_id\"},\"description\":\"\\u8f38\\u5165\\u9805\\u8acb\\u63a7\\u5236\\u57282000\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"max:2000\"}}', 14),
(127, 6, 'url', 'text', '網址', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"5\",\"id\":\"url_id\"},\"validation\":{\"rule\":\"max:255\"}}', 9),
(128, 6, 'url_txt', 'text', '網址文字', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"7\",\"id\":\"urltxt_id\"},\"description\":\"\\u8f38\\u5165\\u9805\\u8acb\\u63a7\\u5236\\u5728100\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"max:100\"}}', 10),
(129, 6, 'pic', 'media_picker', '圖片', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"6\",\"id\":\"pic_id\"},\"max\":1,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[],\"hide_thumbnails\":false,\"quality\":90,\"show_as_images\":true}', 16),
(130, 6, 'video', 'text', '影片連結', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"7\",\"id\":\"video_id\"},\"validation\":{\"rule\":\"max:255\"}}', 8),
(131, 6, 'alt', 'text', '替代文字', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"alt_id\"},\"validation\":{\"rule\":\"max:100\"}}', 17),
(132, 6, 'title_pos', 'hidden', 'Title Pos', 0, 0, 0, 0, 0, 0, '{}', 18),
(133, 6, 'title_color', 'hidden', '標題顏色', 0, 0, 0, 0, 0, 0, '{}', 19),
(134, 6, 'q_mode', 'hidden', 'Q Mode', 0, 0, 0, 0, 0, 0, '{}', 20),
(135, 6, 'i_mode', 'hidden', 'I Mode', 0, 0, 0, 0, 0, 0, '{}', 21),
(136, 6, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"sort_id\"},\"validation\":{\"rule\":\"required\"},\"min\":0,\"default\":0}', 5),
(137, 6, 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"},\"checked\":true}', 3),
(138, 6, 'isShowTitle', 'checkbox', '是否顯示標題', 1, 1, 1, 1, 1, 1, '{\"0\":\"\\u95dc\\u9589\",\"1\":\"\\u555f\\u7528\",\"checked\":true,\"display\":{\"width\":\"1\",\"id\":\"isShowTitle_id\"},\"validation\":{\"rule\":\"required\"}}', 11),
(139, 6, 'created_at', 'timestamp', '創建於', 0, 0, 1, 1, 0, 1, '{}', 22),
(140, 6, 'updated_at', 'timestamp', '更新於', 0, 0, 1, 0, 0, 0, '{}', 23),
(141, 7, 'id', 'text', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
(142, 7, 'cgy_id', 'text', '分類ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"cgyid_id\"},\"validation\":{\"rule\":\"required\"}}', 2),
(143, 7, 'teacher_id', 'hidden', '教師ID', 1, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"1\",\"id\":\"teacherid_id\"},\"validation\":{\"rule\":\"required\"}}', 11),
(144, 7, 'hours', 'number', '單堂課幾小時', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"hours_id\"},\"validation\":{\"rule\":\"required|min:0\"},\"step\":0.5,\"min\":0,\"max\":12,\"default\":0}', 16),
(145, 7, 'started_at', 'timestamp', '上課時間', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"startedat_id\"},\"validation\":{\"rule\":\"required\"}}', 13),
(146, 7, 'ended_at', 'timestamp', '結束時間', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"endedat_id\"},\"validation\":{\"rule\":\"required\"}}', 14),
(147, 7, 'cycle', 'text', '上課週期', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"cycle_id\"},\"validation\":{\"rule\":\"required\"}}', 15),
(148, 7, 'title', 'text', '標題', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"9\",\"id\":\"title_id\"},\"validation\":{\"rule\":\"required|max:50\"}}', 6),
(149, 7, 'pics', 'media_picker', '圖片', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"pics_id|max:255\"},\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[\"image\",\"audio\",\"video\"],\"hide_thumbnails\":false,\"quality\":90}', 22),
(150, 7, 'price_og', 'number', '初始售價', 1, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"priceog_id\"},\"validation\":{\"rule\":\"required|min:0\"},\"min\":0,\"default\":0}', 9),
(151, 7, 'price_new', 'number', '更新售價', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"pricenew_id\"},\"validation\":{\"rule\":\"required|min:0\"},\"min\":0,\"default\":0}', 10),
(152, 7, 'badge', 'text', '小標', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"badge_id|max:30\"}}', 7),
(153, 7, 'star', 'number', '星數', 1, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"star_id\"},\"validation\":{\"rule\":\"required|min:0|max:10\"},\"step\":0.5,\"min\":0,\"max\":5,\"default\":0}', 8),
(154, 7, 'people', 'number', '人數限制', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"people_id\"},\"validation\":{\"rule\":\"required|min:0\"},\"min\":0,\"default\":0}', 17),
(155, 7, 'desc', 'rich_text_box', '描述', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"desc_id|max:400\"}}', 21),
(156, 7, 'chars', 'text_area', '課程特色', 0, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"chars_id|max:300\"}}', 20),
(157, 7, 'sku', 'hidden', 'sku編號', 0, 0, 0, 0, 0, 0, '{}', 23),
(158, 7, 'sort', 'number', '排序', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"sort_id\"},\"validation\":{\"rule\":\"required\"},\"min\":0,\"default\":0}', 5),
(159, 7, 'enabled', 'checkbox', '是否啟用', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"enabled_id\"},\"validation\":{\"rule\":\"required\"},\"on\":\"\\u555f\\u7528\",\"off\":\"\\u95dc\\u9589\",\"checked\":true}', 4),
(160, 7, 'course_id', 'text', '相關課程ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"courseid_id\"},\"validation\":{\"rule\":\"required\"}}', 18),
(161, 7, 'created_at', 'timestamp', '建立於', 0, 1, 1, 1, 0, 1, '{}', 24),
(162, 7, 'updated_at', 'timestamp', '更新於', 0, 0, 0, 0, 0, 0, '{}', 25),
(163, 8, 'id', 'text', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
(164, 8, 'user_id', 'text', '使用者ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"userid_id\"},\"validation\":{\"rule\":\"required\"}}', 3),
(165, 8, 'name', 'text', '姓名', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"name_id\"},\"validation\":{\"rule\":\"required|max:50\"}}', 4),
(166, 8, 'cgy_id', 'text', '分類ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"cgyid_id\"},\"validation\":{\"rule\":\"required\"}}', 6),
(167, 8, 'chars', 'rich_text_box', '特色', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"chars_id\"},\"validation\":{\"rule\":\"max:1000\"}}', 10),
(168, 8, 'pics', 'media_picker', '圖示', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"picsid_id\"},\"max\":10,\"min\":0,\"expanded\":true,\"show_folders\":true,\"show_toolbar\":true,\"allow_upload\":true,\"allow_move\":true,\"allow_delete\":true,\"allow_create_folder\":true,\"allow_rename\":true,\"allow_crop\":true,\"allowed\":[\"image\",\"audio\",\"video\"],\"hide_thumbnails\":false,\"quality\":90,\"show_as_images\":true}', 9),
(169, 8, 'exp', 'rich_text_box', '經歷', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"exp_id\"},\"validation\":{\"rule\":\"max:500\"}}', 8),
(170, 8, 'acc', 'number', '累積堂數', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"acc_id\"},\"validation\":{\"rule\":\"required\"},\"min\":0,\"default\":0}', 7),
(171, 8, 'created_at', 'timestamp', '建立於', 0, 1, 1, 1, 0, 1, '{}', 11),
(172, 8, 'updated_at', 'timestamp', '更新於', 0, 0, 0, 0, 0, 0, '{}', 12),
(174, 4, 'cgy_belongsto_cgy_relationship', 'relationship', 'cgies', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"parent_id\"},\"model\":\"App\\\\Models\\\\Cgy\",\"table\":\"cgies\",\"type\":\"belongsTo\",\"column\":\"parent_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"cgies\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(175, 5, 'is_replied', 'checkbox', '是否已回復', 1, 1, 1, 1, 0, 1, '{\"display\":{\"width\":\"1\",\"id\":\"isreplied_id\"},\"validation\":{\"rule\":\"required\"},\"false\":\"\\u5426\",\"true\":\"\\u662f\",\"checked\":true,\"default\":false}', 2),
(176, 5, 'isexist_course', 'select_dropdown', '是否既有課程', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"isexist_course_id\"},\"default\":\"not required\",\"options\":{\"not required\":\"\\u514d\\u586b\",\"Yes\":\"\\u662f\",\"No\":\"\\u5426\"}}', 11),
(177, 5, 'handler_id', 'text', '回覆人ID', 1, 1, 1, 1, 0, 1, '{\"display\":{\"width\":\"1\",\"id\":\"handlerid_id\"}}', 13),
(178, 7, 'course_belongsto_cgy_relationship', 'relationship', '分類ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"cgyid_id\"},\"model\":\"App\\\\Models\\\\Cgy\",\"table\":\"cgies\",\"type\":\"belongsTo\",\"column\":\"cgy_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"cgies\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(181, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(182, 9, 'course_id', 'text', 'Course Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(183, 9, 'teacher_id', 'text', 'Teacher Id', 1, 1, 1, 1, 1, 1, '{}', 3),
(184, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(185, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(186, 7, 'course_belongstomany_teacher_relationship', 'relationship', '教師ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"teacherid_id\"},\"validation\":{\"rule\":\"required\"},\"model\":\"App\\\\Models\\\\Teacher\",\"table\":\"teachers\",\"type\":\"belongsToMany\",\"column\":\"teacher_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"course_teacher\",\"pivot\":\"1\",\"taggable\":\"on\"}', 12),
(187, 7, 'course_belongsto_course_relationship', 'relationship', '相關課程', 1, 0, 1, 1, 1, 1, '{\"display\":{\"width\":\"4\",\"id\":\"courseid_id\"},\"validation\":{\"rule\":\"required\"},\"model\":\"App\\\\Models\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"cgies\",\"pivot\":\"0\",\"taggable\":\"0\"}', 19),
(188, 10, 'id', 'text', 'ID', 1, 1, 0, 0, 0, 0, '{}', 1),
(189, 10, 'course_id', 'select_multiple', '課程ID', 1, 0, 0, 0, 0, 0, '{\"display\":{\"width\":\"1\",\"id\":\"course_id\"}}', 4),
(190, 10, 'user_id', 'text', '使用者ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"userid_id\"},\"validation\":{\"rule\":\"required\"}}', 5),
(191, 10, 'message', 'rich_text_box', '訊息', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"message_id\"},\"description\":\"\\u8f38\\u5165\\u9805\\u8acb\\u63a7\\u5236\\u5728500\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"max:500\"}}', 15),
(192, 10, 'couponCode', 'text', '優惠券號碼', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"couponcode_id\"},\"validation\":{\"rule\":\"max:100\"}}', 7),
(193, 10, 'subtotal', 'number', '小計', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"subtotal_id\"},\"validation\":{\"rule\":\"required\"},\"min\":0,\"default\":0}', 8),
(194, 10, 'status', 'text', '訂單狀態', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"status_id\"},\"validation\":{\"rule\":\"required\"}}', 2),
(195, 10, 'pay_type', 'select_dropdown', '付款類型', 0, 1, 1, 1, 1, 1, '{\"default\":\"cash\",\"options\":{\"cash\":\"\\u8ca8\\u5230\\u4ed8\\u6b3e\",\"mobilePay\":\"\\u884c\\u52d5\\u652f\\u4ed8\",\"credit\":\"\\u4fe1\\u7528\\u5361\"},\"display\":{\"width\":\"2\",\"id\":\"paytype_id\"}}', 9),
(196, 10, 'trade_no', 'text', '金流序號', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"tradeno_id\"},\"description\":\"\\u8f38\\u5165\\u9805\\u8acb\\u63a7\\u5236\\u5728100\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"max:100\"}}', 10),
(197, 10, 'pay_at', 'timestamp', '付款時間', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"payat_id\"}}', 11),
(198, 10, 'pay_from', 'text', '付款來源', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"payfrom_id\"},\"description\":\"\\u8f38\\u5165\\u9805\\u8acb\\u63a7\\u5236\\u5728255\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"max:255\"}}', 12),
(199, 10, 'pay_pre', 'number', '支付前餘額', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"paypre_id\"},\"min\":0,\"default\":0}', 13),
(200, 10, 'pay_after', 'number', '支付後餘額', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"payafter_id\"},\"min\":0,\"default\":0}', 14),
(201, 10, 'reply_desc', 'rich_text_box', '回覆客戶的訊息', 0, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"12\",\"id\":\"replydesc_id\"},\"description\":\"\\u8f38\\u5165\\u9805\\u8acb\\u63a7\\u5236\\u5728255\\u500b\\u5b57\\u5143\\u4e4b\\u5167\",\"validation\":{\"rule\":\"max:255\"}}', 16),
(202, 10, 'created_at', 'timestamp', '建立於', 0, 1, 1, 1, 0, 1, '{}', 17),
(203, 10, 'updated_at', 'timestamp', '更新於', 0, 0, 0, 0, 0, 0, '{}', 18),
(204, 10, 'order_belongsto_user_relationship', 'relationship', '使用者ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"userid_id\"},\"validation\":{\"rule\":\"required\"},\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"cgies\",\"pivot\":\"0\",\"taggable\":\"0\"}', 6),
(206, 11, 'id', 'text', 'ID', 1, 0, 0, 0, 0, 0, '{}', 0),
(207, 11, 'order_id', 'text', '訂單ID', 1, 1, 1, 1, 1, 1, '{}', 2),
(208, 11, 'course_id', 'text', '課程ID', 1, 1, 1, 1, 1, 1, '{}', 4),
(209, 11, 'qty', 'text', '數量', 1, 1, 1, 1, 1, 1, '{}', 6),
(210, 11, 'option', 'text', '選項', 0, 1, 1, 1, 1, 1, '{}', 7),
(211, 11, 'created_at', 'timestamp', '建立於', 0, 1, 1, 1, 0, 1, '{}', 8),
(212, 11, 'updated_at', 'timestamp', '更新於', 0, 0, 0, 0, 0, 0, '{}', 9),
(213, 11, 'course_order_hasone_course_relationship', 'relationship', '課程編號', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Course\",\"table\":\"courses\",\"type\":\"belongsTo\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"cgies\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(214, 11, 'course_order_belongsto_order_relationship', 'relationship', '訂單編號', 1, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Order\",\"table\":\"orders\",\"type\":\"belongsTo\",\"column\":\"order_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"cgies\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(216, 10, 'order_belongstomany_course_relationship', 'relationship', '課程ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"1\",\"id\":\"course_id\"},\"model\":\"App\\\\Models\\\\Course\",\"table\":\"courses\",\"type\":\"belongsToMany\",\"column\":\"course_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"course_order\",\"pivot\":\"1\",\"taggable\":\"0\"}', 3),
(217, 8, 'teacher_belongsto_user_relationship', 'relationship', '對應的使用者ID', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"userid_id\"},\"validation\":{\"rule\":\"required\"},\"model\":\"App\\\\Models\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"id\",\"pivot_table\":\"cgies\",\"pivot\":\"0\",\"taggable\":\"0\"}', 2),
(218, 8, 'teacher_belongsto_cgy_relationship', 'relationship', '分類', 1, 1, 1, 1, 1, 1, '{\"display\":{\"width\":\"2\",\"id\":\"cgyid_id\"},\"validation\":{\"rule\":\"required\"},\"model\":\"App\\\\Models\\\\Cgy\",\"table\":\"cgies\",\"type\":\"belongsTo\",\"column\":\"cgy_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"cgies\",\"pivot\":\"0\",\"taggable\":\"0\"}', 5),
(219, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 1, 1, 1, 1, '{}', 6),
(220, 1, 'two_factor_secret', 'text', 'Two Factor Secret', 0, 1, 1, 1, 1, 1, '{}', 8),
(221, 1, 'two_factor_recovery_codes', 'text', 'Two Factor Recovery Codes', 0, 1, 1, 1, 1, 1, '{}', 9),
(222, 1, 'two_factor_confirmed_at', 'timestamp', 'Two Factor Confirmed At', 0, 1, 1, 1, 1, 1, '{}', 10),
(223, 1, 'current_team_id', 'text', 'Current Team Id', 0, 1, 1, 1, 1, 1, '{}', 13),
(224, 1, 'profile_photo_path', 'text', 'Profile Photo Path', 0, 1, 1, 1, 1, 1, '{}', 14),
(225, 1, 'username', 'text', 'Username', 0, 1, 1, 1, 1, 1, '{}', 17),
(226, 1, 'type', 'text', 'Type', 0, 1, 1, 1, 1, 1, '{}', 18),
(227, 1, 'title', 'text', 'Title', 0, 1, 1, 1, 1, 1, '{}', 19),
(228, 1, 'first_name', 'text', 'First Name', 0, 1, 1, 1, 1, 1, '{}', 20),
(229, 1, 'last_name', 'text', 'Last Name', 0, 1, 1, 1, 1, 1, '{}', 21),
(230, 1, 'organization', 'text', 'Organization', 0, 1, 1, 1, 1, 1, '{}', 22),
(231, 1, 'identify', 'text', 'Identify', 0, 1, 1, 1, 1, 1, '{}', 23),
(232, 1, 'gender', 'text', 'Gender', 0, 1, 1, 1, 1, 1, '{}', 24),
(233, 1, 'birthday', 'text', 'Birthday', 0, 1, 1, 1, 1, 1, '{}', 25),
(234, 1, 'tel', 'text', 'Tel', 0, 1, 1, 1, 1, 1, '{}', 26),
(235, 1, 'mobile', 'text', 'Mobile', 0, 1, 1, 1, 1, 1, '{}', 27),
(236, 1, 'pic', 'text', 'Pic', 0, 1, 1, 1, 1, 1, '{}', 28),
(237, 1, 'post_id', 'text', 'Post Id', 0, 1, 1, 1, 1, 1, '{}', 29),
(238, 1, 'address', 'text', 'Address', 0, 1, 1, 1, 1, 1, '{}', 30),
(239, 1, 'desc', 'text', 'Desc', 0, 1, 1, 1, 1, 1, '{}', 31),
(240, 1, 'enabled', 'text', 'Enabled', 1, 1, 1, 1, 1, 1, '{}', 32);

-- --------------------------------------------------------

--
-- 資料表結構 `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', '用戶', '用戶', 'voyager-person', 'App\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'App\\Http\\Controllers\\UserController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2023-01-17 04:11:12', '2023-01-21 07:45:27'),
(2, 'menus', 'menus', '側邊欄', '側邊欄', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(3, 'roles', 'roles', '角色', '角色', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(4, 'cgies', 'cgies', '分類', '分類集', 'voyager-backpack', 'App\\Models\\Cgy', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"sort\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2023-01-17 05:47:17', '2023-01-21 02:45:25'),
(5, 'contacts', 'contacts', '聯絡單', '聯絡單集', 'voyager-wallet', 'App\\Models\\Contact', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"created_at\",\"order_display_column\":\"is_replied\",\"order_direction\":\"desc\",\"default_search_key\":\"created_at\",\"scope\":null}', '2023-01-17 06:10:25', '2023-01-20 14:42:37'),
(6, 'elements', 'elements', '網頁元素', '網頁元素集', 'voyager-puzzle', 'App\\Models\\Element', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"sort\",\"order_display_column\":\"title\",\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2023-01-17 06:12:51', '2023-01-21 03:44:38'),
(7, 'courses', 'courses', '課程', '課程集', 'voyager-group', 'App\\Models\\Course', NULL, NULL, NULL, 1, 1, '{\"order_column\":\"sort\",\"order_display_column\":\"id\",\"order_direction\":\"asc\",\"default_search_key\":\"title\",\"scope\":null}', '2023-01-17 06:23:54', '2023-01-21 05:39:42'),
(8, 'teachers', 'teachers', '教師', '教師集', 'voyager-person', 'App\\Models\\Teacher', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"name\",\"scope\":null}', '2023-01-17 06:28:17', '2023-01-21 07:04:44'),
(9, 'course_teacher', 'course-teacher', '課程教師', '課程教師集', 'voyager-certificate', 'App\\Models\\CourseTeacher', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"id\"}', '2023-01-21 01:25:47', '2023-01-21 01:25:47'),
(10, 'orders', 'orders', '訂單', '訂單集', 'voyager-receipt', 'App\\Models\\Order', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2023-01-21 03:24:36', '2023-01-21 05:49:26'),
(11, 'course_order', 'course-order', '課程訂單', '課程訂單集', 'voyager-credit-cards', 'App\\Models\\CourseOrder', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":\"id\",\"scope\":null}', '2023-01-21 04:12:32', '2023-01-21 04:21:17');

-- --------------------------------------------------------

--
-- 資料表結構 `elements`
--

CREATE TABLE `elements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `updater_id` bigint(20) UNSIGNED DEFAULT NULL,
  `page` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(2000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_txt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_pos` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `q_mode` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `i_mode` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `isShowTitle` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `elements`
--

INSERT INTO `elements` (`id`, `updater_id`, `page`, `mode`, `title`, `position`, `icon`, `subtitle`, `content`, `url`, `url_txt`, `pic`, `video`, `alt`, `title_pos`, `title_color`, `q_mode`, `i_mode`, `sort`, `enabled`, `isShowTitle`, `created_at`, `updated_at`) VALUES
(1, NULL, 'about', 'image', '好好學協會', 'infos', NULL, '初衷', '好好學協會創立於民國一百一十二年一月十一日，為一個小型的四人團隊。創立初期，好好學協會秉持「生於臺灣，深根臺灣」的期望與「知識無疆，學海無涯」的省思，建立了 Apprentice 平台。應運時代更迭科技日新月異，平台旨在變化的洪流中作為人們身旁的媒介，將知識的燈盞不斷傳遞下去。僅願所有自見盲區的人，都能在這裡找到合適的引路燈。', NULL, NULL, 'elements/wy/Header Size Bulb 3 Tiny PNG.png', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, '2023-01-14 23:07:00', '2023-01-20 13:28:08'),
(2, NULL, 'contact', 'text', '聯絡我們', 'infos', NULL, NULL, NULL, NULL, NULL, 'elements/wy/445-800x150.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, 1, '2023-01-14 23:56:00', '2023-01-20 13:28:08');

-- --------------------------------------------------------

--
-- 資料表結構 `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(2, 'footer', '2023-01-17 04:48:22', '2023-01-17 04:48:22'),
(3, 'header', '2023-01-17 04:48:29', '2023-01-17 04:48:29');

-- --------------------------------------------------------

--
-- 資料表結構 `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, '控制面板', '', '_self', 'voyager-boat', NULL, NULL, 1, '2023-01-17 04:11:12', '2023-01-17 04:11:12', 'voyager.dashboard', NULL),
(2, 1, '媒體', '', '_self', 'voyager-images', NULL, NULL, 4, '2023-01-17 04:11:12', '2023-01-20 12:54:25', 'voyager.media.index', NULL),
(3, 1, '用戶', '', '_self', 'voyager-person', NULL, NULL, 3, '2023-01-17 04:11:12', '2023-01-17 04:11:12', 'voyager.users.index', NULL),
(4, 1, '角色', '', '_self', 'voyager-lock', NULL, NULL, 2, '2023-01-17 04:11:12', '2023-01-17 04:11:12', 'voyager.roles.index', NULL),
(5, 1, '工具', '', '_self', 'voyager-tools', NULL, NULL, 5, '2023-01-17 04:11:12', '2023-01-20 12:54:25', NULL, NULL),
(6, 1, '側邊欄管理', '', '_self', 'voyager-list', NULL, 5, 1, '2023-01-17 04:11:12', '2023-01-20 12:54:25', 'voyager.menus.index', NULL),
(7, 1, '資料庫', '', '_self', 'voyager-data', NULL, 5, 2, '2023-01-17 04:11:12', '2023-01-20 12:54:25', 'voyager.database.index', NULL),
(8, 1, '指南針', '', '_self', 'voyager-compass', NULL, 5, 3, '2023-01-17 04:11:12', '2023-01-20 12:54:25', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2023-01-17 04:11:12', '2023-01-20 12:54:25', 'voyager.bread.index', NULL),
(10, 1, '設定', '', '_self', 'voyager-settings', NULL, NULL, 6, '2023-01-17 04:11:12', '2023-01-20 12:54:25', 'voyager.settings.index', NULL),
(12, 3, '首頁', '/', '_self', NULL, '#000000', NULL, 1, '2023-01-17 04:49:00', '2023-01-17 04:49:46', NULL, ''),
(13, 3, '課程', '#', '_self', NULL, '#000000', NULL, 2, '2023-01-17 04:49:09', '2023-01-17 04:49:46', NULL, ''),
(14, 3, '許願課程', '/wish', '_self', NULL, '#000000', NULL, 3, '2023-01-17 04:49:19', '2023-01-17 04:51:55', NULL, ''),
(15, 3, '關於', '#', '_self', NULL, '#000000', NULL, 4, '2023-01-17 04:49:30', '2023-01-17 04:53:01', NULL, ''),
(16, 3, '其他頁面', '#', '_self', NULL, '#000000', NULL, 5, '2023-01-17 04:49:41', '2023-01-17 04:53:03', NULL, ''),
(17, 3, '課程總覽', '/course', '_self', NULL, '#000000', 13, 1, '2023-01-17 04:50:21', '2023-01-17 04:51:39', NULL, ''),
(18, 3, '課程資訊', '/information', '_self', NULL, '#000000', 13, 2, '2023-01-17 04:50:56', '2023-01-17 04:51:41', NULL, ''),
(19, 3, '師資介紹', '/professor', '_self', NULL, '#000000', 13, 3, '2023-01-17 04:51:25', '2023-01-17 04:51:43', NULL, ''),
(20, 3, '關於協會', '/about', '_self', NULL, '#000000', 15, 1, '2023-01-17 04:52:20', '2023-01-17 04:53:04', NULL, ''),
(21, 3, '聯絡我們', '/contact', '_self', NULL, '#000000', 15, 2, '2023-01-17 04:52:39', '2023-01-17 04:53:04', NULL, ''),
(22, 3, '購物車', '/cart', '_self', NULL, '#000000', 16, 1, '2023-01-17 04:53:21', '2023-01-17 04:53:24', NULL, ''),
(23, 3, '結帳頁面', '/checkout', '_self', NULL, '#000000', 16, 2, '2023-01-17 04:53:43', '2023-01-17 04:53:46', NULL, ''),
(24, 3, '訂單資訊', '/confirmation', '_self', NULL, '#000000', 16, 3, '2023-01-17 04:54:04', '2023-01-17 04:54:06', NULL, ''),
(25, 2, '快速連結', '#', '_self', NULL, '#000000', NULL, 1, '2023-01-17 04:59:45', '2023-01-17 05:04:33', NULL, ''),
(26, 2, '客戶服務', '#', '_self', NULL, '#000000', NULL, 2, '2023-01-17 05:00:29', '2023-01-17 05:04:33', NULL, ''),
(27, 2, '權益政策', '#', '_self', NULL, '#000000', NULL, 3, '2023-01-17 05:01:05', '2023-01-17 05:04:33', NULL, ''),
(28, 2, '課程總覽', '/course', '_blank', NULL, '#000000', 25, 1, '2023-01-17 05:04:29', '2023-01-17 05:04:33', NULL, ''),
(29, 2, '師資介紹', '/professor', '_blank', NULL, '#000000', 25, 2, '2023-01-17 05:05:06', '2023-01-17 05:05:27', NULL, ''),
(30, 2, '購物車', '/cart', '_self', NULL, '#000000', 25, 3, '2023-01-17 05:06:08', '2023-01-17 05:06:15', NULL, ''),
(31, 2, '訂單資訊', '/confirmation', '_blank', NULL, '#000000', 25, 4, '2023-01-17 05:06:31', '2023-01-17 05:06:40', NULL, ''),
(32, 2, '聯絡我們', '/contact', '_self', NULL, '#000000', 26, 2, '2023-01-17 05:07:05', '2023-01-17 05:07:47', NULL, ''),
(33, 2, '許願課程', '/wish', '_blank', NULL, '#000000', 26, 1, '2023-01-17 05:07:40', '2023-01-17 05:07:47', NULL, ''),
(34, 1, '分類集', '', '_self', 'voyager-backpack', '#000000', 39, 2, '2023-01-17 05:47:18', '2023-01-20 12:54:31', 'voyager.cgies.index', 'null'),
(35, 1, '聯絡單集', '', '_self', 'voyager-wallet', NULL, 39, 3, '2023-01-17 06:10:25', '2023-01-20 12:54:31', 'voyager.contacts.index', NULL),
(36, 1, '網頁元素集', '', '_self', 'voyager-puzzle', '#000000', 39, 1, '2023-01-17 06:12:51', '2023-01-20 12:54:31', 'voyager.elements.index', 'null'),
(37, 1, '課程集', '', '_self', 'voyager-group', '#000000', 39, 4, '2023-01-17 06:23:54', '2023-01-20 12:54:51', 'voyager.courses.index', 'null'),
(38, 1, '教師集', '', '_self', 'voyager-person', '#000000', 39, 5, '2023-01-17 06:28:17', '2023-01-20 12:54:52', 'voyager.teachers.index', 'null'),
(39, 1, '資料庫', '#', '_self', 'voyager-data', '#000000', NULL, 7, '2023-01-20 12:54:15', '2023-01-20 12:54:25', NULL, ''),
(40, 1, '課程教師集', '', '_self', 'voyager-certificate', NULL, 39, 6, '2023-01-21 01:25:47', '2023-01-21 01:26:04', 'voyager.course-teacher.index', NULL),
(41, 1, '訂單集', '', '_self', 'voyager-receipt', NULL, 39, 7, '2023-01-21 03:24:36', '2023-01-21 06:57:52', 'voyager.orders.index', NULL),
(42, 1, '課程訂單集', '', '_self', 'voyager-credit-cards', NULL, 39, 8, '2023-01-21 04:12:32', '2023-01-21 06:57:57', 'voyager.course-order.index', NULL);

-- --------------------------------------------------------

--
-- 資料表結構 `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2016_01_01_000000_add_voyager_user_fields', 1),
(5, '2016_01_01_000000_create_data_types_table', 1),
(6, '2016_05_19_173453_create_menu_table', 1),
(7, '2016_10_21_190000_create_roles_table', 1),
(8, '2016_10_21_190000_create_settings_table', 1),
(9, '2016_11_30_135954_create_permission_table', 1),
(10, '2016_11_30_141208_create_permission_role_table', 1),
(11, '2016_12_26_201236_data_types__add__server_side', 1),
(12, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(13, '2017_01_14_005015_create_translations_table', 1),
(14, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(15, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(16, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(17, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(18, '2017_08_05_000000_add_group_to_settings_table', 1),
(19, '2017_11_26_013050_add_user_role_relationship', 1),
(20, '2017_11_26_015000_create_user_roles_table', 1),
(21, '2018_03_11_000000_add_user_settings', 1),
(22, '2018_03_14_000000_add_details_to_data_types_table', 1),
(23, '2018_03_16_000000_make_settings_value_nullable', 1),
(24, '2019_08_19_000000_create_failed_jobs_table', 1),
(25, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(26, '2023_01_11_053404_create_sessions_table', 1),
(27, '2023_01_13_155220_create_elements_table', 1),
(28, '2023_01_13_163626_create_cgies_table', 1),
(29, '2023_01_14_113447_create_teachers_table', 1),
(30, '2023_01_15_113243_create_courses_table', 1),
(31, '2023_01_16_011807_create_contacts_table', 1),
(32, '2023_01_17_112158_add_columns_users_table', 1),
(33, '2023_01_17_113817_create_orders_table', 2),
(34, '2023_01_17_113924_create_course_order_table', 2),
(35, '2023_01_17_114359_create_course_teacher_table', 2),
(37, '2023_01_20_213801_alter_contacts_table', 3),
(39, '2023_01_20_220811_alter_contacts_table', 4);

-- --------------------------------------------------------

--
-- 資料表結構 `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `couponCode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` int(11) NOT NULL DEFAULT 0,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'create',
  `pay_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trade_no` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_at` timestamp NULL DEFAULT NULL,
  `pay_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_pre` int(11) DEFAULT NULL,
  `pay_after` int(11) DEFAULT NULL,
  `reply_desc` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(2, 'browse_bread', NULL, '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(3, 'browse_database', NULL, '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(4, 'browse_media', NULL, '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(5, 'browse_compass', NULL, '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(6, 'browse_menus', 'menus', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(7, 'read_menus', 'menus', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(8, 'edit_menus', 'menus', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(9, 'add_menus', 'menus', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(10, 'delete_menus', 'menus', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(11, 'browse_roles', 'roles', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(12, 'read_roles', 'roles', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(13, 'edit_roles', 'roles', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(14, 'add_roles', 'roles', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(15, 'delete_roles', 'roles', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(16, 'browse_users', 'users', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(17, 'read_users', 'users', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(18, 'edit_users', 'users', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(19, 'add_users', 'users', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(20, 'delete_users', 'users', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(21, 'browse_settings', 'settings', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(22, 'read_settings', 'settings', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(23, 'edit_settings', 'settings', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(24, 'add_settings', 'settings', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(25, 'delete_settings', 'settings', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(26, 'browse_cgies', 'cgies', '2023-01-17 05:47:18', '2023-01-17 05:47:18'),
(27, 'read_cgies', 'cgies', '2023-01-17 05:47:18', '2023-01-17 05:47:18'),
(28, 'edit_cgies', 'cgies', '2023-01-17 05:47:18', '2023-01-17 05:47:18'),
(29, 'add_cgies', 'cgies', '2023-01-17 05:47:18', '2023-01-17 05:47:18'),
(30, 'delete_cgies', 'cgies', '2023-01-17 05:47:18', '2023-01-17 05:47:18'),
(31, 'browse_contacts', 'contacts', '2023-01-17 06:10:25', '2023-01-17 06:10:25'),
(32, 'read_contacts', 'contacts', '2023-01-17 06:10:25', '2023-01-17 06:10:25'),
(33, 'edit_contacts', 'contacts', '2023-01-17 06:10:25', '2023-01-17 06:10:25'),
(34, 'add_contacts', 'contacts', '2023-01-17 06:10:25', '2023-01-17 06:10:25'),
(35, 'delete_contacts', 'contacts', '2023-01-17 06:10:25', '2023-01-17 06:10:25'),
(36, 'browse_elements', 'elements', '2023-01-17 06:12:51', '2023-01-17 06:12:51'),
(37, 'read_elements', 'elements', '2023-01-17 06:12:51', '2023-01-17 06:12:51'),
(38, 'edit_elements', 'elements', '2023-01-17 06:12:51', '2023-01-17 06:12:51'),
(39, 'add_elements', 'elements', '2023-01-17 06:12:51', '2023-01-17 06:12:51'),
(40, 'delete_elements', 'elements', '2023-01-17 06:12:51', '2023-01-17 06:12:51'),
(41, 'browse_courses', 'courses', '2023-01-17 06:23:54', '2023-01-17 06:23:54'),
(42, 'read_courses', 'courses', '2023-01-17 06:23:54', '2023-01-17 06:23:54'),
(43, 'edit_courses', 'courses', '2023-01-17 06:23:54', '2023-01-17 06:23:54'),
(44, 'add_courses', 'courses', '2023-01-17 06:23:54', '2023-01-17 06:23:54'),
(45, 'delete_courses', 'courses', '2023-01-17 06:23:54', '2023-01-17 06:23:54'),
(46, 'browse_teachers', 'teachers', '2023-01-17 06:28:17', '2023-01-17 06:28:17'),
(47, 'read_teachers', 'teachers', '2023-01-17 06:28:17', '2023-01-17 06:28:17'),
(48, 'edit_teachers', 'teachers', '2023-01-17 06:28:17', '2023-01-17 06:28:17'),
(49, 'add_teachers', 'teachers', '2023-01-17 06:28:17', '2023-01-17 06:28:17'),
(50, 'delete_teachers', 'teachers', '2023-01-17 06:28:17', '2023-01-17 06:28:17'),
(51, 'browse_course_teacher', 'course_teacher', '2023-01-21 01:25:47', '2023-01-21 01:25:47'),
(52, 'read_course_teacher', 'course_teacher', '2023-01-21 01:25:47', '2023-01-21 01:25:47'),
(53, 'edit_course_teacher', 'course_teacher', '2023-01-21 01:25:47', '2023-01-21 01:25:47'),
(54, 'add_course_teacher', 'course_teacher', '2023-01-21 01:25:47', '2023-01-21 01:25:47'),
(55, 'delete_course_teacher', 'course_teacher', '2023-01-21 01:25:47', '2023-01-21 01:25:47'),
(56, 'browse_orders', 'orders', '2023-01-21 03:24:36', '2023-01-21 03:24:36'),
(57, 'read_orders', 'orders', '2023-01-21 03:24:36', '2023-01-21 03:24:36'),
(58, 'edit_orders', 'orders', '2023-01-21 03:24:36', '2023-01-21 03:24:36'),
(59, 'add_orders', 'orders', '2023-01-21 03:24:36', '2023-01-21 03:24:36'),
(60, 'delete_orders', 'orders', '2023-01-21 03:24:36', '2023-01-21 03:24:36'),
(61, 'browse_course_order', 'course_order', '2023-01-21 04:12:32', '2023-01-21 04:12:32'),
(62, 'read_course_order', 'course_order', '2023-01-21 04:12:32', '2023-01-21 04:12:32'),
(63, 'edit_course_order', 'course_order', '2023-01-21 04:12:32', '2023-01-21 04:12:32'),
(64, 'add_course_order', 'course_order', '2023-01-21 04:12:32', '2023-01-21 04:12:32'),
(65, 'delete_course_order', 'course_order', '2023-01-21 04:12:32', '2023-01-21 04:12:32');

-- --------------------------------------------------------

--
-- 資料表結構 `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(32, 3),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(44, 1),
(44, 3),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(49, 3),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '管理員', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(2, 'user', '普通用戶', '2023-01-17 04:11:12', '2023-01-17 04:11:12'),
(3, 'teacher', '老師', '2023-01-21 07:29:06', '2023-01-21 07:29:49');

-- --------------------------------------------------------

--
-- 資料表結構 `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('wlr4ZnfLaGdNP3bjoeu4Kyy9sLVbXd24g03QK74V', 1, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWUVIMm9iWE84Y0FxOU5XQjZmODJTNDdrWkZwandlNTZ2aFJDMm5IciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHA6Ly9sb2NhbGhvc3Q6NjA4MC9sYXJhdmVsZml2ZS9wdWJsaWMvYWRtaW4vdXNlcnMvY3JlYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7fQ==', 1674293492);

-- --------------------------------------------------------

--
-- 資料表結構 `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', '網站標題', '網站標題', '', 'text', 1, 'Site'),
(2, 'site.description', '網站描述', '網站描述', '', 'text', 2, 'Site'),
(3, 'site.logo', '網站 Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', '後台背景圖像', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin 標題', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', '後台描述', '歡迎使用 Voyager - 不可錯過的 Laravel 後台管理框架', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', '後台圖標', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID （於後台控制面板使用）', '', '', 'text', 1, 'Admin'),
(11, 'association.phone', '協會電話', '00-000-0000', NULL, 'text', 7, 'Association'),
(12, 'association.location', '協會地址', 'xx市xx區xx路x段xxx號', NULL, 'text', 8, 'Association'),
(13, 'association.email', '協會信箱', 'niceguy@very.nice', NULL, 'text', 9, 'Association');

-- --------------------------------------------------------

--
-- 資料表結構 `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cgy_id` bigint(20) UNSIGNED NOT NULL,
  `chars` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pics` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identify` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `tel` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `settings`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`, `username`, `title`, `first_name`, `last_name`, `organization`, `identify`, `gender`, `birthday`, `tel`, `mobile`, `address`, `enabled`) VALUES
(1, 1, 'admin', 'admin@demo.com', 'users/default.png', NULL, '$2y$10$7.P6nDU0SUt/0HvRlKPKduggKSvOiNN0qaHoQV8utFpB5JeHRCfmS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-01-10 13:40:42', '2023-01-10 13:43:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 2, '老師1', 'teacher@demo.com', 'users/default.png', NULL, '$2y$10$oUJZ/RCBaoSV8QB7wYPLO.RyHkUa5g74F9uyTY29NY1MIpqgTZGoe', NULL, NULL, NULL, NULL, '{\"locale\":\"zh_TW\"}', NULL, NULL, '2023-01-21 07:35:22', '2023-01-21 07:35:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- 資料表結構 `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 傾印資料表的資料 `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(2, 3);

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `cgies`
--
ALTER TABLE `cgies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cgies_parent_id_index` (`parent_id`);

--
-- 資料表索引 `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_course_id_foreign` (`course_id`),
  ADD KEY `contacts_user_id_index` (`user_id`),
  ADD KEY `contacts_handler_id_foreign` (`handler_id`);

--
-- 資料表索引 `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `courses_cgy_id_index` (`cgy_id`),
  ADD KEY `courses_teacher_id_index` (`teacher_id`),
  ADD KEY `courses_course_id_index` (`course_id`);

--
-- 資料表索引 `course_order`
--
ALTER TABLE `course_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_order_order_id_index` (`order_id`),
  ADD KEY `course_order_course_id_index` (`course_id`);

--
-- 資料表索引 `course_teacher`
--
ALTER TABLE `course_teacher`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_teacher_course_id_foreign` (`course_id`),
  ADD KEY `course_teacher_teacher_id_foreign` (`teacher_id`);

--
-- 資料表索引 `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- 資料表索引 `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- 資料表索引 `elements`
--
ALTER TABLE `elements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `elements_updater_id_index` (`updater_id`);

--
-- 資料表索引 `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- 資料表索引 `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- 資料表索引 `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- 資料表索引 `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_course_id_foreign` (`course_id`),
  ADD KEY `orders_user_id_index` (`user_id`);

--
-- 資料表索引 `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- 資料表索引 `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- 資料表索引 `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- 資料表索引 `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- 資料表索引 `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- 資料表索引 `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- 資料表索引 `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- 資料表索引 `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teachers_user_id_index` (`user_id`),
  ADD KEY `teachers_cgy_id_index` (`cgy_id`);

--
-- 資料表索引 `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- 資料表索引 `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `cgies`
--
ALTER TABLE `cgies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course_order`
--
ALTER TABLE `course_order`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `course_teacher`
--
ALTER TABLE `course_teacher`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `elements`
--
ALTER TABLE `elements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `cgies`
--
ALTER TABLE `cgies`
  ADD CONSTRAINT `cgies_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `cgies` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `contacts_handler_id_foreign` FOREIGN KEY (`handler_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contacts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_cgy_id_foreign` FOREIGN KEY (`cgy_id`) REFERENCES `cgies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `courses_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `course_order`
--
ALTER TABLE `course_order`
  ADD CONSTRAINT `course_order_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `course_order_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `course_teacher`
--
ALTER TABLE `course_teacher`
  ADD CONSTRAINT `course_teacher_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `course_teacher_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`);

--
-- 資料表的限制式 `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的限制式 `elements`
--
ALTER TABLE `elements`
  ADD CONSTRAINT `elements_updater_id_foreign` FOREIGN KEY (`updater_id`) REFERENCES `users` (`id`);

--
-- 資料表的限制式 `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `teachers`
--
ALTER TABLE `teachers`
  ADD CONSTRAINT `teachers_cgy_id_foreign` FOREIGN KEY (`cgy_id`) REFERENCES `cgies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teachers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- 資料表的限制式 `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- 資料表的限制式 `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
