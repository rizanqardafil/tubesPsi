-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jul 2022 pada 09.52
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive, 1 - active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `admins`
--

INSERT INTO `admins` (`id`, `role_id`, `username`, `email`, `first_name`, `last_name`, `image`, `password`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'admin', 'klitih@gmail.com', 'Rizan', 'Qardafil', '62c92452eb05d.png', '$2y$10$UmZ3nP0JIUOI0CxLG/175efcigYJDbfg45Ga4cYz/YdZOshZ0GPMm', 1, NULL, '2022-07-08 23:46:42'),
(3, 1, 'Fauzi', 'fauzinugroho@gmail.com', 'Fauzi', 'Nugroho', '62c92030362aa.jpeg', '$2y$10$v4vEDywiQHpGUEWXPGY3/O6BMvuAzuOa5T1arvAua5eWjyL.tXSKe', 1, '2022-05-04 02:20:48', '2022-07-08 23:29:04'),
(4, 3, 'Rifaldi', 'rifaldi@gmail.com', 'Rifaldi', 'Fakhrii', '62c9203be7e0d.jpeg', '$2y$12$SV5bkJTV1gHCRRTP9YkTtOHWbvfU8FPFLlcMS7Vk4UI48g5aiZaku', 1, '2022-05-04 02:56:53', '2022-07-08 23:29:16'),
(5, 4, 'Gitrif', 'gitrif@gmail.com', 'Gitrif', 'Pahlefy', '62c92065a97d5.jpeg', '$2y$10$hjP/BifO7ElSct6J6uqTJebylgDqt9afMb5Qiuw791LlOZ9lIo0a2', 1, '2022-05-03 17:04:58', '2022-07-08 23:29:57'),
(6, 4, 'Fahrezi Bintang', 'fahrezibintang@gmail.com', 'Fahrezi', 'Bintang', '62c9207d6c9ea.jpeg', '$2y$10$Hj1ppXfzpOvM5HmVHIvOy.4lVRgm7RdBt4SAGQcf5Nt1VAe4Cp5je', 1, '2022-05-03 18:52:11', '2022-07-08 23:30:21'),
(9, 6, 'Rizan', 'rizanqardafil14@gmail.com', 'Rizan', 'Qardafil', '62c9208d38c89.jpg', '$2y$10$vACpk5.ILd9D3op1u7WD0OWN6UIaU2QEmkz.DyYLQwZO9/6uFNnwO', 1, '2022-05-04 02:37:22', '2022-07-08 23:30:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basic_extendeds`
--

CREATE TABLE `basic_extendeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `pricing_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_section` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive, 1 - active',
  `cookie_alert_status` tinyint(4) NOT NULL DEFAULT 1,
  `cookie_alert_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cookie_alert_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_language_direction` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr' COMMENT 'ltr / rtl',
  `blogs_meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blogs_meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_facebook_pexel` tinyint(4) NOT NULL DEFAULT 0,
  `facebook_pexel_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme_version` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT 'default_service_category',
  `hero_overlay_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_overlay_opacity` decimal(8,2) DEFAULT NULL,
  `statistics_overlay_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `statistics_overlay_opacity` decimal(8,2) DEFAULT NULL,
  `team_overlay_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_overlay_opacity` decimal(8,2) DEFAULT NULL,
  `breadcrumb_overlay_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb_overlay_opacity` decimal(8,2) DEFAULT NULL,
  `from_mail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(4) NOT NULL DEFAULT 0,
  `smtp_host` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encryption` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `popular_tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_shape_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slider_bottom_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_bottom_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `special_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_section_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `testimonial_bg_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_section_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instagram_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_section_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_currency_symbol` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_symbol_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'left',
  `base_currency_text` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_text_position` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'right',
  `base_currency_rate` decimal(8,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `basic_extendeds`
--

INSERT INTO `basic_extendeds` (`id`, `language_id`, `pricing_title`, `pricing_subtitle`, `pricing_section`, `cookie_alert_status`, `cookie_alert_text`, `cookie_alert_button_text`, `to_mail`, `default_language_direction`, `blogs_meta_keywords`, `blogs_meta_description`, `is_facebook_pexel`, `facebook_pexel_script`, `theme_version`, `hero_overlay_color`, `hero_overlay_opacity`, `statistics_overlay_color`, `statistics_overlay_opacity`, `team_overlay_color`, `team_overlay_opacity`, `breadcrumb_overlay_color`, `breadcrumb_overlay_opacity`, `from_mail`, `from_name`, `is_smtp`, `smtp_host`, `smtp_port`, `encryption`, `smtp_username`, `smtp_password`, `popular_tags`, `slider_shape_img`, `slider_bottom_img`, `footer_bottom_img`, `menu_section_title`, `menu_section_subtitle`, `special_section_title`, `special_section_subtitle`, `menu_section_img`, `testimonial_bg_img`, `instagram_section_title`, `instagram_section_subtitle`, `table_section_title`, `table_section_subtitle`, `table_section_img`, `base_currency_symbol`, `base_currency_symbol_position`, `base_currency_text`, `base_currency_text_position`, `base_currency_rate`) VALUES
(147, 176, 'Our Packages', 'Choose a package which suits you best', 1, 1, 'Your experience on this site will be improved by allowing cookies.', 'Allow Cookies', 'klitih@gmail.com', 'ltr', 'lorem, dolor', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry', 1, '<!-- Facebook Pixel Code -->\r\n<script>\r\n!function(f,b,e,v,n,t,s)\r\n{if(f.fbq)return;n=f.fbq=function(){n.callMethod?\r\nn.callMethod.apply(n,arguments):n.queue.push(arguments)};\r\nif(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version=\'2.0\';\r\nn.queue=[];t=b.createElement(e);t.async=!0;\r\nt.src=v;s=b.getElementsByTagName(e)[0];\r\ns.parentNode.insertBefore(t,s)}(window, document,\'script\',\r\n\'https://connect.facebook.net/en_US/fbevents.js\');\r\nfbq(\'init\', \'2723323421236702\');\r\nfbq(\'track\', \'PageView\');\r\n</script>\r\n<noscript><img height=\"1\" width=\"1\" style=\"display:none\"\r\nsrc=\"https://www.facebook.com/tr?id=2723323421236702&ev=PageView&noscript=1\"\r\n/></noscript>\r\n<!-- End Facebook Pixel Code -->', 'default_service_category', '1F1641', '0.80', '1F1641', '0.80', '1F1641', '0.80', '1F1641', '0.80', 'geniustest11@gmail.com', 'Restoran Klitih', 1, 'smtp.gmail.com', '587', 'TLS', 'geniustest11@gmail.com', 'xwgatpmwcvjiomzp', 'a,b,c,d', '5f3fe8ad906fe.png', '5f3fe8ad90ace.png', '5f51c3c2c958a.png', 'Our Menus', 'Discover Food Menus', 'Our Special Offered Items Price', 'VIEW ALL MENU LIST', '1657347818.png', '1598017091.jpg', '', '', 'Reserve Table', 'Book Your Table', '1598018596.jpg', 'Rp', 'left', 'IDR', 'right', '14000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basic_settings`
--

CREATE TABLE `basic_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `favicon` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_color` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_base_color` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `support_phone` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breadcrumb` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_logo` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newsletter_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_bg` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hero_section_video_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_section_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_contact_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_signature` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_main_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_section_subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_form_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_info_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tawk_to_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_recaptcha` tinyint(4) NOT NULL DEFAULT 0,
  `google_recaptcha_site_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_recaptcha_secret_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_tawkto` tinyint(4) NOT NULL DEFAULT 1,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 1,
  `disqus_script` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_analytics` tinyint(4) NOT NULL DEFAULT 1,
  `maintainance_mode` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - active, 0 - deactive',
  `maintainance_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `announcement` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_announcement` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 - deactive, 1 - active',
  `announcement_delay` decimal(11,2) NOT NULL DEFAULT 0.00,
  `testimonial_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_section_subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog_details_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gallery_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `team_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reservation_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `items_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_details_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_version` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_section` tinyint(4) NOT NULL DEFAULT 1,
  `intro_section` tinyint(4) NOT NULL DEFAULT 1,
  `testimonial_section` tinyint(4) NOT NULL DEFAULT 1,
  `team_section` tinyint(4) NOT NULL DEFAULT 1,
  `news_section` tinyint(4) NOT NULL DEFAULT 1,
  `menu_section` int(11) NOT NULL DEFAULT 1,
  `special_section` int(11) NOT NULL DEFAULT 1,
  `instagram_section` int(11) NOT NULL DEFAULT 1,
  `table_section` int(11) NOT NULL DEFAULT 1,
  `top_footer_section` tinyint(4) NOT NULL DEFAULT 1,
  `copyright_section` tinyint(4) NOT NULL DEFAULT 1,
  `is_quote` tinyint(4) NOT NULL DEFAULT 1,
  `item_page` tinyint(1) DEFAULT 1,
  `menu_page` tinyint(1) NOT NULL DEFAULT 1,
  `blog_page` tinyint(1) NOT NULL DEFAULT 1,
  `cart_page` tinyint(1) NOT NULL DEFAULT 1,
  `checkout_page` tinyint(1) NOT NULL DEFAULT 1,
  `pages_p_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_page` tinyint(1) NOT NULL DEFAULT 1,
  `gallery_page` tinyint(1) NOT NULL DEFAULT 1,
  `team_page` tinyint(1) NOT NULL DEFAULT 1,
  `office_time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_page1` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `basic_settings`
--

INSERT INTO `basic_settings` (`id`, `language_id`, `favicon`, `logo`, `website_title`, `base_color`, `secondary_base_color`, `support_email`, `support_phone`, `breadcrumb`, `footer_logo`, `footer_text`, `newsletter_text`, `copyright_text`, `hero_bg`, `hero_section_title`, `hero_section_text`, `hero_section_button_text`, `hero_section_button_url`, `hero_section_video_link`, `intro_section_title`, `intro_title`, `intro_text`, `intro_contact_text`, `intro_contact_number`, `intro_video_image`, `intro_signature`, `intro_video_link`, `intro_main_image`, `team_section_title`, `team_section_subtitle`, `contact_form_title`, `contact_address`, `contact_number`, `contact_text`, `latitude`, `longitude`, `contact_info_title`, `tawk_to_script`, `google_analytics_script`, `is_recaptcha`, `google_recaptcha_site_key`, `google_recaptcha_secret_key`, `is_tawkto`, `is_disqus`, `disqus_script`, `is_analytics`, `maintainance_mode`, `maintainance_text`, `announcement`, `is_announcement`, `announcement_delay`, `testimonial_title`, `blog_section_title`, `blog_section_subtitle`, `blog_title`, `blog_details_title`, `gallery_title`, `team_title`, `contact_title`, `menu_title`, `reservation_title`, `items_title`, `menu_details_title`, `cart_title`, `checkout_title`, `error_title`, `home_version`, `feature_section`, `intro_section`, `testimonial_section`, `team_section`, `news_section`, `menu_section`, `special_section`, `instagram_section`, `table_section`, `top_footer_section`, `copyright_section`, `is_quote`, `item_page`, `menu_page`, `blog_page`, `cart_page`, `checkout_page`, `pages_p_link`, `contact_page`, `gallery_page`, `team_page`, `office_time`, `menu_page1`) VALUES
(153, 176, '62c924645dc17.png', '62c9246a25275.png', 'Klitih', '054A08', '0A3041', 'klitih@gmail.com', '+6281365144092', '5f4b4733dc844.jpg', '62c92f7dc234f.png', 'We are a awward winning multinaitonal Company. We Believe quality and standard worlwidex Consider.', 'Subscribe to gate Latest News, Offer and connect With Us.', 'Copyright © 2022. All rights reserved by Xinyang.', '5f2d30393f2d1.jpg', 'Financial planning for life', 'Trusted to help guide entrepreneurs make better financial decisions.', 'learn more', 'https://megasoft.biz/plusagency/about-us/22/page', '', 'Our Story', 'Our Cafe 20 years working experience.', 'Donec scelerisque dolor id nunc dictum, interdum gravida mauris rhoncus. Aliquam at ultrices nunc. In sem leo, fermentum at lorem in, porta finibus mauris. Aliquam consectetur, ex in gravida porttitor,', 'Our 24/7 Phone Services', '081365144092', '5f3b83bbf0042.jpg', '5f3b83bbefdb1.png', 'https://www.youtube.com/watch?v=GlrxcuEDyF8', '5f3b83bbef74e.png', 'Our Team', 'Our Expert Members', 'Leave Reply', 'Jl. Kaliurang, KM. 14,5., Umbul martani, Ngemplak, Sleman, Yogyakarta', '+6281365144092', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum.', '-7.687482102511413', '110.41317700012044', 'CONTACT INFO', '<script>\r\n\r\n/**\r\n*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n/*\r\nvar disqus_config = function () {\r\nthis.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\nthis.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n};\r\n*/\r\n(function() { // DON\'T EDIT BELOW THIS LINE\r\nvar d = document, s = d.createElement(\'script\');\r\ns.src = \'https://plusagency.disqus.com/embed.js\';\r\ns.setAttribute(\'data-timestamp\', +new Date());\r\n(d.head || d.body).appendChild(s);\r\n})();\r\n</script>\r\n<noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>', '<!-- Global site tag (gtag.js) - Google Analytics -->\r\n<script async src=\"https://www.googletagmanager.com/gtag/js?id=UA-137437974-2\"></script>\r\n<script>\r\n  window.dataLayer = window.dataLayer || [];\r\n  function gtag(){dataLayer.push(arguments);}\r\n  gtag(\'js\', new Date());\r\n\r\n  gtag(\'config\', \'UA-137437974-2\');\r\n</script>', 0, '6LcD4_EUAAAAAGjMOomj2PcsPVbd_w8aBwp-fpqr', '6LcD4_EUAAAAAERr3-qFqrW-BZ_bbciCN6TgZSdH', 1, 1, '<script>\r\n\r\n/**\r\n*  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.\r\n*  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/\r\n/*\r\nvar disqus_config = function () {\r\nthis.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable\r\nthis.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable\r\n};\r\n*/\r\n(function() { // DON\'T EDIT BELOW THIS LINE\r\nvar d = document, s = d.createElement(\'script\');\r\ns.src = \'https://plusagency.disqus.com/embed.js\';\r\ns.setAttribute(\'data-timestamp\', +new Date());\r\n(d.head || d.body).appendChild(s);\r\n})();\r\n</script>', 1, 0, 'We are upgrading our site. We will come back soon. \r\nPlease stay with us.\r\nThank you....', '62c882c209523.png', 1, '2.00', 'What Our client Saying ?', 'Our Blog', 'Latest News Feeds', 'Latest Blog', 'Blog Details', 'Our Gallery', 'Team Members', 'Contact Us', 'Our Menu', 'Reserve Table', 'Our Items', 'Item Details', 'Cart', 'Checkout', '404 Not Found', 'particles', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'Pages', 1, 1, 1, 'Mon to Friday  9Am - 11 Pm', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `bcategories`
--

CREATE TABLE `bcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `bcategories`
--

INSERT INTO `bcategories` (`id`, `language_id`, `name`, `status`, `serial_number`) VALUES
(1, 176, 'Cooking', 1, 1),
(3, 176, 'Foods', 1, 2),
(4, 176, 'Burgers', 1, 3),
(5, 176, 'Fun & Jamming', 1, 4),
(6, 176, 'Recipes', 1, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `bcategory_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `bottomlinks`
--

CREATE TABLE `bottomlinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `features`
--

INSERT INTO `features` (`id`, `language_id`, `image`, `title`, `serial_number`, `created_at`, `updated_at`) VALUES
(37, 176, '1598681069.png', 'Healthy Foods', 1, NULL, NULL),
(38, 176, '1597735925.png', 'Fresh Items', 2, NULL, NULL),
(42, 176, '1598681208.png', 'Tasty Foods', 3, NULL, NULL),
(43, 176, '1598681487.png', 'Sweet Cheeses', 4, NULL, NULL),
(50, 176, '1598681561.jpg', 'Best Pizzas', 5, NULL, NULL),
(51, 176, '1598681630.jpg', 'Hot Snacks', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `language_id`, `title`, `image`, `serial_number`, `created_at`, `updated_at`) VALUES
(78, 176, 'Boti Kabab', '1598075956.jpg', 1, '2020-08-21 23:59:16', '2020-08-21 23:59:16'),
(79, 176, 'Chef Cooking', '1598076003.jpg', 2, '2020-08-22 00:00:03', '2020-08-22 00:00:03'),
(80, 176, 'Blackberry', '1598076734.jpg', 3, '2020-08-22 00:12:14', '2020-08-22 00:12:14'),
(81, 176, 'Cutting Vegetables', '1598076779.jpg', 4, '2020-08-22 00:12:59', '2020-08-22 00:12:59'),
(82, 176, 'Black Burger', '1598076815.jpg', 5, '2020-08-22 00:13:35', '2020-08-22 00:13:35'),
(83, 176, 'Wine Glasses', '1598076856.jpg', 6, '2020-08-22 00:14:16', '2020-08-22 00:14:16'),
(84, 176, 'Tomatoes', '1598076946.jpg', 7, '2020-08-22 00:15:46', '2020-08-22 00:15:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 1,
  `rtl` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - LTR, 1- RTL',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `is_default`, `rtl`, `created_at`, `updated_at`) VALUES
(176, 'English', 'en', 1, 0, '2020-08-07 04:43:05', '2020-08-17 02:46:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `language_id`, `name`, `rank`, `image`, `twitter`, `facebook`, `instagram`, `linkedin`, `feature`, `created_at`, `updated_at`) VALUES
(53, 176, 'RIZAN QARDAFIL', 'CEO & Founder', '1657351961.jpg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(54, 176, 'Rifaldi Fakhrii', 'CTO & Founder', '1657351981.jpeg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(55, 176, 'Gitrif Pahlefy', 'CMO & Founder', '1657351991.jpeg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(56, 176, 'Fauzi Nugroho', 'CIO & Founder', '1657352000.jpeg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL),
(57, 176, 'Fahrezi Bintang', 'CFO & Founder', '1657352010.jpeg', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 'https://www.facebook.com/', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(11,2) DEFAULT NULL,
  `previous_price` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `order_items`
--

INSERT INTO `order_items` (`id`, `product_order_id`, `product_id`, `user_id`, `title`, `qty`, `category`, `image`, `summary`, `description`, `price`, `previous_price`, `created_at`, `updated_at`) VALUES
(107, 48, 38, 7, 'Mint Lemonade', 1, 'Beverage', '1598689067.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '2.00', NULL, '2022-06-28 08:03:56', NULL),
(108, 49, 37, 7, 'Milk Shakes', 1, 'Beverage', '1598688750.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '4.00', '4.50', '2022-06-28 17:02:07', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `name`, `title`, `subtitle`, `slug`, `body`, `status`, `serial_number`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 176, 'About Us', 'About Us', 'About Us', 'About-Us', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text ', 1, 1, NULL, NULL, '2020-08-21 04:06:16', '2020-08-29 04:27:29'),
(3, 176, 'Terms & Conditions', 'Terms & Conditions', 'Terms & Conditions', 'Terms-&-Conditions', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text ', 1, 2, NULL, NULL, '2020-08-21 04:06:16', '2020-08-30 02:06:33'),
(4, 176, 'Privacy Policy', 'Privacy Policy', 'Privacy Policy', 'Privacy-Policy', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text ', 1, 3, NULL, NULL, '2020-08-21 04:06:16', '2020-08-30 02:06:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `partners`
--

CREATE TABLE `partners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `partners`
--

INSERT INTO `partners` (`id`, `language_id`, `image`, `url`, `serial_number`, `created_at`, `updated_at`) VALUES
(31, 170, '1584815532.png', 'https://themeforest.net/', 1, NULL, NULL),
(32, 170, '1584815522.png', 'https://audiojungle.net/', 2, NULL, NULL),
(33, 170, '1584815510.png', 'https://codecanyon.net', 3, NULL, NULL),
(34, 170, '1584815499.png', 'https://graphicriver.net/', 4, NULL, NULL),
(35, 170, '1584815488.png', 'https://audiojungle.net/', 5, NULL, NULL),
(36, 170, '1584815479.png', 'https://videohive.net/', 6, NULL, NULL),
(37, 170, '1584815468.png', 'https://photodune.net/', 7, NULL, NULL),
(38, 169, '1584815450.png', 'https://themeforest.net/', 1, NULL, NULL),
(39, 169, '1584815440.png', 'https://audiojungle.net/', 2, NULL, NULL),
(40, 169, '1584815430.png', 'https://codecanyon.net', 3, NULL, NULL),
(41, 169, '1584815416.png', 'https://graphicriver.net/', 4, NULL, NULL),
(42, 169, '1584815403.png', 'https://audiojungle.net/', 5, NULL, NULL),
(43, 169, '1584815391.png', 'https://photodune.net/', 6, NULL, NULL),
(44, 169, '1584815377.png', 'https://videohive.net/', 7, NULL, NULL),
(45, 171, '1584815664.png', 'https://themeforest.net/', 1, NULL, NULL),
(46, 171, '1584815656.png', 'https://audiojungle.net/', 2, NULL, NULL),
(47, 171, '1584815646.png', 'https://codecanyon.net', 3, NULL, NULL),
(48, 171, '1584815606.png', 'https://graphicriver.net/', 4, NULL, NULL),
(49, 171, '1584815592.png', 'https://audiojungle.net/', 5, NULL, NULL),
(50, 171, '1584815584.png', 'https://photodune.net/', 6, NULL, NULL),
(51, 171, '1584815571.png', 'https://photodune.net/', 7, NULL, NULL),
(52, 173, '1577467542.png', 'https://themeforest.net/', 1, NULL, NULL),
(53, 173, '1577467555.png', 'https://audiojungle.net/', 2, NULL, NULL),
(54, 173, '1577467569.png', 'https://codecanyon.net', 3, NULL, NULL),
(55, 173, '1577467740.png', 'https://graphicriver.net/', 4, NULL, NULL),
(56, 173, '1577467761.png', 'https://audiojungle.net/', 5, NULL, NULL),
(57, 173, '1577467784.png', 'https://photodune.net/', 6, NULL, NULL),
(58, 173, '1577467794.png', 'https://videohive.net/', 7, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `information` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `status`) VALUES
(15, NULL, NULL, NULL, 'Paypal', 'automatic', '{\"client_id\":\"AeFajO8XG6H7Cpxja3NWXXU2bhBZpt-lsKJQt1ydB7J-zP0Gj1bZfYblvnZfy7unIClWNCll3jOwuSS-\",\"client_secret\":\"EGUBLYbXdGL6xqucCbrcln2nA4KJ0XYhQidpMlO-B8kA9OYEy-JkOlThKAdR-YmV7bvAzMbAfm9SPLMa\",\"sandbox_check\":\"1\",\"text\":\"Pay via your PayPal account.\"}', 'paypal', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pcategories`
--

CREATE TABLE `pcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `is_feature` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pcategories`
--

INSERT INTO `pcategories` (`id`, `language_id`, `name`, `slug`, `image`, `status`, `is_feature`, `created_at`, `updated_at`) VALUES
(12, 176, 'Set Menu', 'Set-Menu', '5f49f32b3e7f6.png', 1, 1, '2020-08-29 00:18:19', '2020-09-04 03:29:14'),
(13, 176, 'Burger', 'Burger', '5f49f35703c25.png', 1, 1, '2020-08-29 00:19:03', '2020-09-04 03:29:09'),
(14, 176, 'Dessert', 'Dessert', '5f49f38d9b272.png', 1, 1, '2020-08-29 00:19:57', '2020-08-29 08:18:24'),
(15, 176, 'Beverage', 'Beverage', '5f49f3a1440c9.png', 1, 1, '2020-08-29 00:20:17', '2020-08-29 00:20:57');

-- --------------------------------------------------------

--
-- Struktur dari tabel `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submission_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `content` blob DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - will not show in home, 1 - will show in home',
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `portfolio_images`
--

CREATE TABLE `portfolio_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `portfolio_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_price` int(11) NOT NULL DEFAULT 0,
  `previous_price` int(11) DEFAULT 0,
  `rating` decimal(11,2) NOT NULL DEFAULT 0.00,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_feature` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_special` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `language_id`, `title`, `slug`, `stock`, `sku`, `category_id`, `feature_image`, `summary`, `description`, `current_price`, `previous_price`, `rating`, `status`, `is_feature`, `created_at`, `updated_at`, `is_special`) VALUES
(15, 176, 'Set Menu - 1', 'Set-Menu---1', 98, NULL, 12, '1598683808.jpg', 'Consists of egg fried rice, chicken chili onion & 2 pcs of chicken fry.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 2000, NULL, '4.50', 1, 1, '2020-08-29 00:50:08', '2020-08-31 01:12:35', 0),
(16, 176, 'Set Menu - 2', 'Set-Menu---2', 297, NULL, 12, '1598684755.jpg', 'Consists of egg fried rice, mixed vegetable & 2 pcs of chicken fry.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 3000, 3500, '4.00', 1, 1, '2020-08-29 01:05:55', '2020-08-31 01:11:34', 1),
(17, 176, 'Set Menu - 3', 'Set-Menu---3', 497, NULL, 12, '1598684875.jpg', 'Consists of egg fried rice, chicken chili onion & 2 pcs of chicken fry.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 4000, 4500, '4.00', 1, 1, '2020-08-29 01:07:55', '2020-09-04 04:10:07', 1),
(18, 176, 'Set Menu - 4', 'Set-Menu---4', 595, NULL, 12, '1598685027.jpg', 'Consists of egg fried rice, mixed vegetable & chicken masala.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 4000, NULL, '3.00', 1, 1, '2020-08-29 01:10:27', '2020-09-04 04:10:07', 0),
(19, 176, 'Set Menu - 5', 'Set-Menu---5', 997, NULL, 12, '1598685627.jpg', 'Consists of egg fried rice, mixed vegetable, chicken chili onion & 2 pcs of chicken fry.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 5000, NULL, '4.00', 1, 1, '2020-08-29 01:20:27', '2020-08-31 01:09:37', 0),
(20, 176, 'Set Menu - 6', 'Set-Menu---6', 998, NULL, 12, '1598685694.jpg', 'Consists of egg fried rice, mixed vegetable, chicken chili onion, Coke & 2 pcs of chicken fry.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 5000, NULL, '5.00', 1, 1, '2020-08-29 01:21:34', '2020-08-31 01:08:51', 0),
(21, 176, 'Regular Chicken Burger', 'Regular-Chicken-Burger', 1000, NULL, 13, '1598686135.jpg', 'These chicken burgers are seasoned with bread crumbs, onion, chicken,crumbs, olive oil,garlic', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 3000, NULL, '0.00', 1, 1, '2020-08-29 01:28:55', '2020-08-29 01:31:12', 0),
(22, 176, 'Regular Beef Burger', 'Regular-Beef-Burger', 10000, NULL, 13, '1598686395.jpg', 'Ground beef, bread crumbs, black pepper,House special sauce.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 4000, NULL, '0.00', 1, 1, '2020-08-29 01:33:15', '2020-08-29 01:33:32', 0),
(23, 176, 'Crispy Chicken Burger', 'Crispy-Chicken-Burger', 1000, NULL, 13, '1598687093.jpg', 'Gouda cheese, chicken breasts, little gem, white cabbage. These fried chicken burgers are ultra crispy and absolutely bursting with flavor.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 4000, 5500, '0.00', 1, 1, '2020-08-29 01:38:51', '2020-08-29 01:44:53', 1),
(24, 176, 'Chicken Cheese Burger', 'Chicken-Cheese-Burger', 1000, NULL, 13, '1598686797.jpg', 'Ranch dressing, chicken breasts, loose leaf, salsa sauce, cheese. Chicken Cheese Burgers taste the best', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 5000, NULL, '0.00', 1, 1, '2020-08-29 01:39:57', '2020-08-29 01:40:35', 0),
(25, 176, 'Beef Cheese Burger', 'Beef-Cheese-Burger', 1000, NULL, 13, '1598686962.jpg', 'Ground Beef, buns, split slices cheese, lettuce leaves. tomato slices.', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 6000, 6500, '0.00', 1, 1, '2020-08-29 01:42:42', '2020-08-29 01:44:40', 0),
(26, 176, 'Grilled Chicken Burger', 'Grilled-Chicken-Burger', 1000, NULL, 13, '1598687072.jpg', 'Ranch dressing, grilled chicken breasts, loose leaf, salsa sauce, cheese. Chicken Cheese Burgers taste the best', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 6000, 6500, '0.00', 1, 1, '2020-08-29 01:44:32', '2020-08-29 08:32:13', 0),
(27, 176, 'Nutella Chocolates', 'Nutella-Chocolates', 1000, NULL, 14, '1598687635.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 2000, NULL, '0.00', 1, 1, '2020-08-29 01:53:55', '2020-08-29 01:54:03', 0),
(28, 176, 'Gulapjamun Sweets', 'Gulapjamun-Sweets', 1000, NULL, 14, '1598687730.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 3000, NULL, '0.00', 1, 1, '2020-08-29 01:55:30', '2020-08-29 01:56:50', 0),
(29, 176, 'Almond Chocolate Cookies', 'Almond-Chocolate-Cookies', 1000, NULL, 14, '1598687797.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 3000, 4500, '0.00', 1, 1, '2020-08-29 01:56:37', '2020-08-29 02:02:28', 1),
(30, 176, 'Vanilla Ice Cream', 'Vanilla-Ice-Cream', 996, NULL, 14, '1598687936.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 4000, 4500, '4.00', 1, 1, '2020-08-29 01:58:56', '2020-08-31 01:04:52', 1),
(31, 176, 'Strawberry Creamed Donut', 'Strawberry-Creamed-Donut', 996, NULL, 14, '1598688010.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 3000, NULL, '1.50', 1, 1, '2020-08-29 02:00:10', '2020-08-31 01:04:16', 0),
(32, 176, 'Regular Donut', 'Regular-Donut', 996, NULL, 14, '1598688096.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 2000, 2500, '1.50', 1, 1, '2020-08-29 02:01:36', '2020-08-31 01:01:31', 0),
(33, 176, 'Iced CocaCola', 'Iced-CocaCola', 997, NULL, 15, '1598688347.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 1000, NULL, '3.50', 1, 1, '2020-08-29 02:05:47', '2020-08-31 01:05:23', 0),
(34, 176, 'Lemon Juice', 'Lemon-Juice', 992, NULL, 15, '1598688432.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 2000, 3500, '4.50', 1, 1, '2020-08-29 02:07:12', '2020-09-05 00:20:57', 1),
(35, 176, 'Orange Juice', 'Orange-Juice', 997, NULL, 15, '1598688532.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 2000, 3500, '5.00', 1, 1, '2020-08-29 02:08:52', '2020-08-31 01:00:55', 0),
(36, 176, 'Organic Fruit Juice', 'Organic-Fruit-Juice', 997, NULL, 15, '1598688600.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 3000, NULL, '5.00', 1, 1, '2020-08-29 02:10:00', '2020-08-31 01:05:55', 0),
(37, 176, 'Milk Shakes', 'Milk-Shakes', 991, NULL, 15, '1598688750.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 4000, 5500, '4.50', 1, 1, '2020-08-29 02:12:30', '2022-06-28 17:02:07', 1),
(38, 176, 'Mint Lemonade', 'Mint-Lemonade', 991, NULL, 15, '1598689067.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text', 'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 2000, NULL, '4.00', 1, 1, '2020-08-29 02:17:47', '2022-06-28 08:03:56', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(46, 15, '5f49f71d3e143.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(47, 15, '5f49f71d55108.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(48, 15, '5f49f71dc6ba6.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(49, 15, '5f49f71dd6ec1.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(50, 15, '5f49f71e2f633.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(51, 15, '5f49f71e42478.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(52, 16, '5f49fded6d5b2.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(53, 16, '5f49fded8b2ff.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(54, 16, '5f49fdedee30b.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(55, 16, '5f49fdee1fb13.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(56, 16, '5f49fdef73578.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(57, 16, '5f49fdef7f5df.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(58, 17, '5f49fe8727bdd.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(59, 17, '5f49fe872b59b.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(60, 17, '5f49fe879e5ef.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(61, 17, '5f49fe87a12f7.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(62, 17, '5f49fe880dc20.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(63, 17, '5f49fe8813908.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(64, 18, '5f49ff519ac98.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(65, 18, '5f49ff519ae30.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(66, 18, '5f49ff51ed17a.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(67, 18, '5f49ff5202028.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(68, 18, '5f49ff524eea1.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(69, 18, '5f49ff5252441.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(70, 19, '5f4a01291c821.jpg', '2022-06-01 00:35:09', '2022-06-01 00:35:09'),
(71, 19, '5f4a012922549.jpg', '2020-08-29 01:18:01', '2020-08-29 01:20:27'),
(72, 19, '5f4a012999765.jpg', '2020-08-29 01:18:01', '2020-08-29 01:20:27'),
(73, 19, '5f4a0129a1e11.jpg', '2020-08-29 01:18:01', '2020-08-29 01:20:27'),
(74, 19, '5f4a012a0afb0.jpg', '2020-08-29 01:18:02', '2020-08-29 01:20:27'),
(75, 19, '5f4a012a19c1a.jpg', '2020-08-29 01:18:02', '2020-08-29 01:20:27'),
(76, 20, '5f4a01c74d254.jpg', '2020-08-29 01:20:39', '2020-08-29 01:21:34'),
(77, 20, '5f4a01c751162.jpg', '2020-08-29 01:20:39', '2020-08-29 01:21:34'),
(78, 20, '5f4a01c79ed20.jpg', '2020-08-29 01:20:39', '2020-08-29 01:21:34'),
(79, 20, '5f4a01c7a43ff.jpg', '2020-08-29 01:20:39', '2020-08-29 01:21:34'),
(80, 20, '5f4a01c800d53.jpg', '2020-08-29 01:20:40', '2020-08-29 01:21:34'),
(81, 20, '5f4a01c80a3e0.jpg', '2020-08-29 01:20:40', '2020-08-29 01:21:34'),
(82, 21, '5f4a037b6863d.jpg', '2020-08-29 01:27:55', '2020-08-29 01:28:55'),
(83, 21, '5f4a037b6b021.jpg', '2020-08-29 01:27:55', '2020-08-29 01:28:55'),
(84, 21, '5f4a037c15972.jpg', '2020-08-29 01:27:56', '2020-08-29 01:28:55'),
(85, 21, '5f4a037c22754.jpg', '2020-08-29 01:27:56', '2020-08-29 01:28:55'),
(86, 21, '5f4a037c72b86.jpg', '2020-08-29 01:27:56', '2020-08-29 01:28:55'),
(87, 21, '5f4a037c74ebf.jpg', '2020-08-29 01:27:56', '2020-08-29 01:28:55'),
(88, 22, '5f4a04b809578.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(89, 22, '5f4a04b809f46.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(90, 22, '5f4a04b85664d.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(91, 22, '5f4a04b8585c8.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(92, 22, '5f4a04b8aac60.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(93, 22, '5f4a04b8ac060.jpg', '2020-08-29 01:33:12', '2020-08-29 01:33:15'),
(94, 23, '5f4a05dd9711f.jpg', '2020-08-29 01:38:05', '2020-08-29 01:38:51'),
(95, 23, '5f4a05dd9bcdb.jpg', '2020-08-29 01:38:05', '2020-08-29 01:38:51'),
(96, 23, '5f4a05de52f5a.jpg', '2020-08-29 01:38:06', '2020-08-29 01:38:51'),
(97, 23, '5f4a05de69582.jpg', '2020-08-29 01:38:06', '2020-08-29 01:38:51'),
(98, 23, '5f4a05e04463c.jpg', '2020-08-29 01:38:08', '2020-08-29 01:38:51'),
(99, 23, '5f4a05e044bff.jpg', '2020-08-29 01:38:08', '2020-08-29 01:38:51'),
(100, 24, '5f4a061889d00.jpg', '2020-08-29 01:39:04', '2020-08-29 01:39:57'),
(101, 24, '5f4a0618aa724.jpg', '2020-08-29 01:39:04', '2020-08-29 01:39:57'),
(102, 24, '5f4a06191dde9.jpg', '2020-08-29 01:39:05', '2020-08-29 01:39:57'),
(103, 24, '5f4a06191d50e.jpg', '2020-08-29 01:39:05', '2020-08-29 01:39:57'),
(104, 24, '5f4a061968d00.jpg', '2020-08-29 01:39:05', '2020-08-29 01:39:57'),
(105, 24, '5f4a0619690fd.jpg', '2020-08-29 01:39:05', '2020-08-29 01:39:57'),
(106, 25, '5f4a06c5a0358.jpg', '2020-08-29 01:41:57', '2020-08-29 01:42:42'),
(107, 25, '5f4a06c5a2754.jpg', '2020-08-29 01:41:57', '2020-08-29 01:42:42'),
(108, 25, '5f4a06c606a64.jpg', '2020-08-29 01:41:58', '2020-08-29 01:42:42'),
(109, 25, '5f4a06c60966e.jpg', '2020-08-29 01:41:58', '2020-08-29 01:42:42'),
(110, 25, '5f4a06c64f8bd.jpg', '2020-08-29 01:41:58', '2020-08-29 01:42:42'),
(111, 25, '5f4a06c653d62.jpg', '2020-08-29 01:41:58', '2020-08-29 01:42:42'),
(112, 26, '5f4a07054dae3.jpg', '2020-08-29 01:43:01', '2020-08-29 01:44:32'),
(113, 26, '5f4a07058abce.jpg', '2020-08-29 01:43:01', '2020-08-29 01:44:32'),
(114, 26, '5f4a070632ac7.jpg', '2020-08-29 01:43:02', '2020-08-29 01:44:32'),
(115, 26, '5f4a070674ed0.jpg', '2020-08-29 01:43:02', '2020-08-29 01:44:32'),
(116, 26, '5f4a0706d92e5.jpg', '2020-08-29 01:43:02', '2020-08-29 01:44:32'),
(117, 26, '5f4a0706f13e7.jpg', '2020-08-29 01:43:02', '2020-08-29 01:44:32'),
(118, 27, '5f4a08969cfa5.jpg', '2020-08-29 01:49:42', '2020-08-29 01:53:55'),
(119, 27, '5f4a0896c48c7.jpg', '2020-08-29 01:49:42', '2020-08-29 01:53:55'),
(120, 27, '5f4a08972892b.jpg', '2020-08-29 01:49:43', '2020-08-29 01:53:55'),
(121, 27, '5f4a08974ce00.jpg', '2020-08-29 01:49:43', '2020-08-29 01:53:55'),
(122, 27, '5f4a089781191.jpg', '2020-08-29 01:49:43', '2020-08-29 01:53:55'),
(123, 27, '5f4a089795b4b.jpg', '2020-08-29 01:49:43', '2020-08-29 01:53:55'),
(125, 28, '5f4a09ba77c85.jpg', '2020-08-29 01:54:34', '2020-08-29 01:55:30'),
(126, 28, '5f4a09ba8bbdb.jpg', '2020-08-29 01:54:34', '2020-08-29 01:55:30'),
(127, 28, '5f4a09bab8d8b.jpg', '2020-08-29 01:54:34', '2020-08-29 01:55:30'),
(128, 28, '5f4a09bace806.jpg', '2020-08-29 01:54:34', '2020-08-29 01:55:30'),
(129, 28, '5f4a09bb1a543.jpg', '2020-08-29 01:54:35', '2020-08-29 01:55:30'),
(130, 28, '5f4a09bb2ae1b.jpg', '2020-08-29 01:54:35', '2020-08-29 01:55:30'),
(131, 29, '5f4a0a0001078.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(132, 29, '5f4a0a0008941.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(133, 29, '5f4a0a0046b52.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(134, 29, '5f4a0a005230d.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(135, 29, '5f4a0a0093455.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(136, 29, '5f4a0a009b5fb.jpg', '2020-08-29 01:55:44', '2020-08-29 01:56:37'),
(137, 30, '5f4a0a5f82da3.jpg', '2020-08-29 01:57:19', '2020-08-29 01:58:56'),
(138, 30, '5f4a0a5f8deb4.jpg', '2020-08-29 01:57:19', '2020-08-29 01:58:56'),
(139, 30, '5f4a0a61094ab.jpg', '2020-08-29 01:57:21', '2020-08-29 01:58:56'),
(140, 30, '5f4a0a610a3ff.jpg', '2020-08-29 01:57:21', '2020-08-29 01:58:56'),
(141, 30, '5f4a0a614d32c.jpg', '2020-08-29 01:57:21', '2020-08-29 01:58:56'),
(142, 30, '5f4a0a614d5f1.jpg', '2020-08-29 01:57:21', '2020-08-29 01:58:56'),
(143, 31, '5f4a0ad4d5e81.jpg', '2020-08-29 01:59:16', '2020-08-29 02:00:10'),
(144, 31, '5f4a0ad4d72e7.jpg', '2020-08-29 01:59:16', '2020-08-29 02:00:10'),
(145, 31, '5f4a0ad53a175.jpg', '2020-08-29 01:59:17', '2020-08-29 02:00:10'),
(146, 31, '5f4a0ad54226c.jpg', '2020-08-29 01:59:17', '2020-08-29 02:00:10'),
(147, 31, '5f4a0ad586a4d.jpg', '2020-08-29 01:59:17', '2020-08-29 02:00:10'),
(148, 31, '5f4a0ad589b04.jpg', '2020-08-29 01:59:17', '2020-08-29 02:00:10'),
(149, 32, '5f4a0b377bda5.jpg', '2020-08-29 02:00:55', '2020-08-29 02:01:36'),
(150, 32, '5f4a0b378e9e2.jpg', '2020-08-29 02:00:55', '2020-08-29 02:01:36'),
(151, 32, '5f4a0b37c8f82.jpg', '2020-08-29 02:00:55', '2020-08-29 02:01:36'),
(152, 32, '5f4a0b37dc0e3.jpg', '2020-08-29 02:00:55', '2020-08-29 02:01:36'),
(153, 32, '5f4a0b3822f08.jpg', '2020-08-29 02:00:56', '2020-08-29 02:01:36'),
(154, 32, '5f4a0b38333f8.jpg', '2020-08-29 02:00:56', '2020-08-29 02:01:36'),
(155, 33, '5f4a0c1700047.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(156, 33, '5f4a0c1717ac2.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(157, 33, '5f4a0c174ea7f.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(158, 33, '5f4a0c175bf91.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(159, 33, '5f4a0c179799d.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(160, 33, '5f4a0c17a19a0.jpg', '2020-08-29 02:04:39', '2020-08-29 02:05:47'),
(162, 34, '5f4a0c7e26013.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(163, 34, '5f4a0c7e34d52.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(164, 34, '5f4a0c7e69e61.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(165, 34, '5f4a0c7e7bbc9.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(166, 34, '5f4a0c7ec05e8.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(167, 34, '5f4a0c7ece222.jpg', '2020-08-29 02:06:22', '2020-08-29 02:07:12'),
(168, 35, '5f4a0ce4ec541.jpg', '2020-08-29 02:08:04', '2020-08-29 02:08:52'),
(169, 35, '5f4a0ce5070e1.jpg', '2020-08-29 02:08:05', '2020-08-29 02:08:52'),
(170, 35, '5f4a0ce588b80.jpg', '2020-08-29 02:08:05', '2020-08-29 02:08:52'),
(171, 35, '5f4a0ce5963da.jpg', '2020-08-29 02:08:05', '2020-08-29 02:08:52'),
(172, 35, '5f4a0ce5cfd49.jpg', '2020-08-29 02:08:05', '2020-08-29 02:08:52'),
(173, 35, '5f4a0ce5e8329.jpg', '2020-08-29 02:08:05', '2020-08-29 02:08:52'),
(174, 36, '5f4a0d32821ba.jpg', '2020-08-29 02:09:22', '2020-08-29 02:10:00'),
(175, 36, '5f4a0d32895a9.jpg', '2020-08-29 02:09:22', '2020-08-29 02:10:00'),
(176, 36, '5f4a0d32c62e4.jpg', '2020-08-29 02:09:22', '2020-08-29 02:10:00'),
(177, 36, '5f4a0d32ca3e5.jpg', '2020-08-29 02:09:22', '2020-08-29 02:10:00'),
(178, 36, '5f4a0d3321a7b.jpg', '2020-08-29 02:09:23', '2020-08-29 02:10:00'),
(179, 36, '5f4a0d3328ae6.jpg', '2020-08-29 02:09:23', '2020-08-29 02:10:00'),
(182, 37, '5f4a0dc41b3c0.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(183, 37, '5f4a0dc431759.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(184, 37, '5f4a0dc473774.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(185, 37, '5f4a0dc486595.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(186, 37, '5f4a0dc4bf74e.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(187, 37, '5f4a0dc4c9bdd.jpg', '2020-08-29 02:11:48', '2020-08-29 02:12:30'),
(362, 38, '5f5207c22fc6f.jpg', '2020-09-04 03:24:18', '2020-09-04 03:24:18'),
(363, 38, '5f5207c23d25f.jpg', '2020-09-04 03:24:18', '2020-09-04 03:24:18'),
(364, 38, '5f5207c2a6d74.jpg', '2020-09-04 03:24:18', '2020-09-04 03:24:18'),
(365, 38, '5f5207c2aafa1.jpg', '2020-09-04 03:24:18', '2020-09-04 03:24:18'),
(366, 38, '5f5207c324c06.jpg', '2020-09-04 03:24:19', '2020-09-04 03:24:19'),
(367, 38, '5f5207c3322c1.jpg', '2020-09-04 03:24:19', '2020-09-04 03:24:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_orders`
--

CREATE TABLE `product_orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_lname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shpping_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code_position` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` blob DEFAULT NULL,
  `currency_symbol_position` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` decimal(11,2) DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `txnid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_orders`
--

INSERT INTO `product_orders` (`id`, `user_id`, `billing_country`, `billing_fname`, `billing_lname`, `billing_address`, `billing_city`, `billing_email`, `billing_number`, `shpping_country`, `shpping_fname`, `shpping_lname`, `shpping_address`, `shpping_city`, `shpping_email`, `shpping_number`, `total`, `method`, `currency_code`, `currency_code_position`, `currency_symbol`, `currency_symbol_position`, `order_number`, `shipping_method`, `shipping_charge`, `payment_status`, `order_status`, `txnid`, `charge_id`, `invoice_number`, `created_at`, `updated_at`) VALUES
(48, 7, 'Indonesia', 'Rizan', 'Qardafil', 'Jl. Kaliurang, KM. 14,5., Umbul martani, Ngemplak, Sleman, Yogyakarta', 'Yogyakarta', 'rizanqardafil14@gmail.com', '081365144092', 'Indonesia', 'Rizan', 'Qardafil', 'Jl. Kaliurang, KM. 14,5., Umbul martani, Ngemplak, Sleman, Yogyakarta', 'Yogyakarta', 'rizanqardafil14@gmail.com', '081365144092', 2, 'Paypal', 'USD', 'right', 0x24, 'left', 'Wyqg1656428580', 'Dine In', '0.00', 'Completed', 'completed', '7D30899398838235V', 'PAYID-MK5RQKI5GE73544LY0553143', 'BQAS1656428636.pdf', '2022-06-28 08:03:56', '2022-06-28 08:04:11'),
(49, 7, 'Indonesia', 'Rizan', 'Qardafil', 'Jl. Kaliurang, KM. 14,5., Umbul martani, Ngemplak, Sleman, Yogyakarta', 'Yogyakarta', 'rizanqardafil14@gmail.com', '081365144092', 'Indonesia', 'Rizan', 'Qardafil', 'Jl. Kaliurang, KM. 14,5., Umbul martani, Ngemplak, Sleman, Yogyakarta', 'Yogyakarta', 'rizanqardafil14@gmail.com', '081365144092', 4, 'Paypal', 'USD', 'right', 0x24, 'left', 'NzJO1656460873', 'Dine In', '0.00', 'Completed', 'pending', '817240603W9739433', 'PAYID-MK5ZMTI3AD834567B9968408', 'qeGA1656460927.pdf', '2022-06-28 17:02:06', '2022-06-28 17:02:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `review` int(11) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Kasir', '[\"Dashboard\",\"Product Management\",\"Footer\",\"Blogs\",\"Role Management\"]', '2019-10-03 03:47:30', '2022-07-09 00:37:32'),
(3, 'Super Admin', '[\"Dashboard\",\"Basic Settings\",\"Subscribers\",\"Quote Management\",\"Home Page\",\"Footer\",\"Pages\",\"Service Page\",\"Portfolio Management\",\"Event Calendar\",\"Gallery Management\",\"FAQ Management\",\"Blogs\",\"Contact Page\",\"Role Management\",\"Users Management\",\"Language Management\",\"Backup\"]', '2019-10-04 02:52:29', '2020-03-06 05:48:34'),
(4, 'Admin', '[\"Dashboard\",\"Basic Settings\",\"Quote Management\",\"Home Page\",\"Footer\",\"Service Page\",\"Portfolio Management\",\"Gallery Management\",\"FAQ Management\",\"Blogs\",\"Contact Page\"]', '2019-10-04 02:52:53', '2019-10-04 02:53:21'),
(6, 'Manager', '[\"Dashboard\",\"Product Management\",\"Table Reservation\"]', '2020-09-01 02:36:11', '2020-09-01 02:36:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `scategory_id` int(11) DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` blob DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0,
  `feature` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 - will not show in home, 1 - will show in home',
  `details_page_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1 - enable, 0 - disable',
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge` decimal(11,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `title`, `language_id`, `text`, `charge`, `created_at`, `updated_at`) VALUES
(7, 'Dine In', 176, 'Come & take a seat in Klitih Restaurant', '0.00', '2020-08-30 07:51:46', '2022-07-08 23:16:41'),
(8, 'Take Away', 176, 'Come & grab your orders from Klitih Restaurant', '0.00', '2020-08-30 07:52:30', '2022-07-08 23:16:57'),
(9, 'Home Delivery', 176, 'Order & your order will be arrived to your doorstep', '1.00', '2020-08-30 07:53:51', '2020-08-30 07:53:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bg_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sliders`
--

INSERT INTO `sliders` (`id`, `language_id`, `text`, `title`, `button_text`, `button_url`, `button_text1`, `button_url1`, `image`, `bg_image`, `serial_number`, `created_at`, `updated_at`, `title_color`, `text_color`, `button_color`) VALUES
(24, 176, 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 'Mexican Grilled Chicken Sub Sandwich...', 'Add to Cart', 'https://gizmoder.com/demo/html/omnivus/omnivus/index.html', 'Book a Table', 'https://gizmoder.com/demo/html/omnivus/omnivus/index.html', '1598069700.png', '1598069700.jpg', 3, '2020-08-17 03:49:17', '2020-08-29 00:01:07', 'FFFFFF', 'FFFFFF', 'FFFFFF'),
(28, 176, 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 'Burger King Grilled Chicken Burger...', 'Add to Cart', 'https://megasoft.biz/plusagency/about-us/page', 'Book a Table', 'https://megasoft.biz/plusagency/about-us/page', '1598069651.png', '1598069651.jpg', 2, '2020-08-20 23:41:41', '2020-08-29 00:00:57', 'FFFFFF', 'FFFFFF', 'FFFFFF'),
(29, 176, 'Nunc molestie mi nunc, nec accumsan libero dignissim sit amet. Fusce sit amet tincidunt metus. Nunc eu risus sus-cipit massa dapibu.', 'Mexican Chicken Cheese Toaster Pizza', 'Add to Cart', 'https://megasoft.biz/plusagency/about-us/page', 'Book a Table', 'https://megasoft.biz/plusagency/about-us/page', '1598680778.png', '1598680778.jpg', 1, '2020-08-20 23:41:41', '2020-08-29 00:00:49', 'FFFFFF', 'FFFFFF', 'FFFFFF');

-- --------------------------------------------------------

--
-- Struktur dari tabel `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `socials`
--

INSERT INTO `socials` (`id`, `icon`, `url`, `serial_number`) VALUES
(1, 'fab fa-facebook-f', 'https://www.facebook.com/', 1),
(2, 'fab fa-twitter', 'https://twitter.com/', 2),
(3, 'fab fa-linkedin-in', 'https://bd.linkedin.com/', 3),
(4, 'fab fa-instagram', 'https://www.instagram.com/', 4),
(5, 'fab fa-dribbble', 'https://dribbble.com/', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subscribers`
--

CREATE TABLE `subscribers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'user1@gmail.com', NULL, NULL),
(2, 'user5@gmail.com', NULL, NULL),
(3, 'pratik.anwar@gmail.com', NULL, NULL),
(4, 'pratik1.anwar@gmail.com', NULL, NULL),
(5, 'pratik2.anwar@gmail.com', NULL, NULL),
(6, 'pratik3.anwar@gmail.com', NULL, NULL),
(7, 'pratik4.anwar@gmail.com', NULL, NULL),
(8, 'ben@gmail.com', NULL, NULL),
(9, 'drop_your_cv@plusagency.com', NULL, NULL),
(10, 'user34@gmail.com', NULL, NULL),
(11, 'genius@gmail.com', NULL, NULL),
(12, 'client@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_books`
--

CREATE TABLE `table_books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `serial_number` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `language_id`, `image`, `comment`, `name`, `rank`, `rating`, `serial_number`, `created_at`, `updated_at`) VALUES
(24, 176, '1657351792.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Hafiz', 'Engineer', 5, 1, NULL, NULL),
(25, 176, '1657351779.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Nadila Octavia', 'Accounting', 5, 4, NULL, NULL),
(28, 176, '1657351757.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Safira Putri S', 'Doctor', 5, 2, NULL, NULL),
(29, 176, '1657351729.jpg', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Rifa Husniyyah', 'Minister of Finance', 5, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ulinks`
--

CREATE TABLE `ulinks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_fname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_lname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shpping_country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `verification_link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `photo`, `username`, `email`, `password`, `number`, `city`, `state`, `address`, `country`, `remember_token`, `billing_fname`, `billing_lname`, `billing_photo`, `billing_username`, `billing_email`, `billing_number`, `billing_city`, `billing_state`, `billing_address`, `billing_country`, `shpping_fname`, `shpping_lname`, `shpping_photo`, `shpping_username`, `shpping_email`, `shpping_number`, `shpping_city`, `shpping_state`, `shpping_address`, `shpping_country`, `status`, `verification_link`, `email_verified`, `created_at`, `updated_at`) VALUES
(6, NULL, NULL, NULL, 'user', 'user@gmail.com', '$2y$10$IgHzNfic91uVcD/K7fNnZOPne4BjWHyRcvwb1AWWEaL2tP982egPy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '363d24bfaf92ba76428e0a14caeb24bf', 'yes', '2021-01-02 09:59:12', '2021-01-02 09:59:12'),
(7, NULL, NULL, NULL, 'Rizan', 'rizanqardafil14@gmail.com', '$2y$10$5Wswmr6wtp5n/N0hYTrZ1OaGd1PZSHq1uu0sN9drrCPvSGh7WroHy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '3a209cfefeb22f3db13cef9f79c0159e', 'yes', '2022-06-28 07:58:56', '2022-06-28 07:58:56');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `basic_settings`
--
ALTER TABLE `basic_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bcategories`
--
ALTER TABLE `bcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `bottomlinks`
--
ALTER TABLE `bottomlinks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pcategories`
--
ALTER TABLE `pcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `portfolio_images`
--
ALTER TABLE `portfolio_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_orders`
--
ALTER TABLE `product_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `table_books`
--
ALTER TABLE `table_books`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ulinks`
--
ALTER TABLE `ulinks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `basic_extendeds`
--
ALTER TABLE `basic_extendeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT untuk tabel `basic_settings`
--
ALTER TABLE `basic_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT untuk tabel `bcategories`
--
ALTER TABLE `bcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `bottomlinks`
--
ALTER TABLE `bottomlinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT untuk tabel `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `partners`
--
ALTER TABLE `partners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `pcategories`
--
ALTER TABLE `pcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `portfolio_images`
--
ALTER TABLE `portfolio_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT untuk tabel `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT untuk tabel `product_orders`
--
ALTER TABLE `product_orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `shipping_charges`
--
ALTER TABLE `shipping_charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `table_books`
--
ALTER TABLE `table_books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `ulinks`
--
ALTER TABLE `ulinks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
