-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2021 at 08:18 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel8ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'dolorem ad', 'dolorem-ad', '2021-09-13 15:17:55', '2021-09-13 15:17:55'),
(2, 'ipsa architecto', 'ipsa-architecto', '2021-09-13 15:17:55', '2021-09-13 15:17:55'),
(3, 'dolor voluptate', 'dolor-voluptate', '2021-09-13 15:17:55', '2021-09-13 15:17:55'),
(4, 'voluptatem temporibus', 'voluptatem-temporibus', '2021-09-13 15:17:55', '2021-09-13 15:17:55'),
(5, 'doloremque est', 'doloremque-est', '2021-09-13 15:17:55', '2021-09-13 15:17:55'),
(6, 'aliquam ipsam', 'aliquam-ipsam', '2021-09-13 15:17:55', '2021-09-13 15:17:55');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `cart_value` decimal(8,2) NOT NULL,
  `expiry_date` date NOT NULL DEFAULT curdate(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `home_categories`
--

CREATE TABLE `home_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sel_categories` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_products` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_categories`
--

INSERT INTO `home_categories` (`id`, `sel_categories`, `no_of_products`, `created_at`, `updated_at`) VALUES
(1, '1,2,3', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home_sliders`
--

CREATE TABLE `home_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_07_31_212257_create_sessions_table', 1),
(7, '2021_08_01_135636_create_categories_table', 1),
(8, '2021_08_01_140031_create_products_table', 1),
(9, '2021_08_13_121035_create_home_sliders_table', 1),
(10, '2021_08_14_114109_create_home_categories_table', 1),
(11, '2021_08_15_200639_create_sales_table', 1),
(12, '2021_08_21_122301_create_coupons_table', 1),
(13, '2021_08_22_230849_create_orders_table', 1),
(14, '2021_08_22_231419_create_order_items_table', 1),
(15, '2021_08_22_231445_create_shippings_table', 1),
(16, '2021_08_22_231522_create_transactions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `subtotal` decimal(8,2) NOT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `tax` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('ordered','deliverd','canceled') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ordered',
  `is_shipping_different` tinyint(1) NOT NULL DEFAULT 0,
  `delivered_date` date DEFAULT NULL,
  `canceled_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `subtotal`, `discount`, `tax`, `total`, `firstname`, `lastname`, `mobile`, `email`, `line1`, `line2`, `city`, `province`, `country`, `Zipcode`, `status`, `is_shipping_different`, `delivered_date`, `canceled_date`, `created_at`, `updated_at`) VALUES
(1, 1, '1107.00', '0.00', '232.47', '1339.47', 'mostafa', 'okasha', '01066863769', 'mostafa.okasha1999@gmail.com', 'test line1', 'test line2', 'faysal', 'haram', 'egypt', '54445', 'canceled', 0, NULL, '2021-09-13', '2021-09-13 15:21:43', '2021-09-13 15:34:03'),
(2, 1, '243.00', '0.00', '51.03', '294.03', 'saas', 'okasha', '01066863769', 'super_admin@app.com', 'test line1', 'test line1', 'cairo', 'haram', 'egypt', '5588', 'canceled', 0, '2021-09-13', '2021-09-13', '2021-09-13 15:35:52', '2021-09-13 15:47:05');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `order_id`, `price`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '369.00', 3, '2021-09-13 15:21:44', '2021-09-13 15:21:44'),
(2, 11, 2, '243.00', 1, '2021-09-13 15:35:52', '2021-09-13 15:35:52');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `short_description`, `description`, `regular_price`, `sale_price`, `SKU`, `stock_status`, `featured`, `quantity`, `image`, `images`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'magnam est quisquam eum', 'magnam-est-quisquam-eum', 'Ratione aperiam libero aut commodi at pariatur. Est quaerat est ea nam laboriosam. Id fuga eos sunt tempore a.', 'Non ea debitis facilis consequatur non et. Et iure aut consequuntur doloribus. Repudiandae sed non qui voluptate est dolorum quidem et. Dolorum quisquam earum quis vel pariatur. Ex ducimus et optio similique quo enim culpa. Esse amet aperiam veniam quisquam pariatur est laudantium. Omnis nesciunt quia aperiam fuga ut voluptatem. Ut reiciendis voluptatem minima assumenda libero. Id est in nisi nihil vel aspernatur voluptas.', '443.00', NULL, '490', 'instock', 0, 115, 'digital_16.jpg', NULL, 5, '2021-09-13 15:17:56', '2021-09-13 15:17:56'),
(2, 'ea voluptas et quo', 'ea-voluptas-et-quo', 'Error incidunt voluptatum eius in eligendi nulla. Dolores sequi nesciunt dicta quisquam qui. Sed quia culpa et sed qui hic. Neque qui nostrum consectetur.', 'Est nisi nisi hic et. Qui amet quam et dolores sit et sit. Velit soluta illum soluta ea optio. Quae incidunt itaque iure. Voluptas illo aut maiores architecto. Nobis placeat odio architecto velit voluptatum nisi. Est quis quisquam fugit eum eos reiciendis. Rerum neque dignissimos nostrum quisquam vitae ipsam ut molestiae. Unde quam ex excepturi sunt. Molestiae adipisci minima deserunt quis. Dignissimos enim hic voluptas a. Laudantium animi placeat quam quia maiores.', '369.00', NULL, '283', 'instock', 0, 181, 'digital_5.jpg', NULL, 4, '2021-09-13 15:17:56', '2021-09-13 15:17:56'),
(3, 'velit architecto dolorum unde', 'velit-architecto-dolorum-unde', 'Porro quod sunt dolores officia. Doloribus porro atque laudantium dolor sed culpa. Delectus molestiae vitae accusantium at qui dolor consequuntur cumque. Totam repellendus unde qui quia dolore.', 'Labore laborum adipisci odit aspernatur amet aliquam error. Explicabo ut quasi repellendus mollitia cumque incidunt in. Possimus voluptatem assumenda velit maiores. Quia vel sed nulla libero sequi velit. Velit molestiae sunt omnis in et. Voluptatem et voluptas qui adipisci. Dignissimos cumque molestiae sequi accusantium. Maxime quia dolorem sit quia. Esse voluptatibus ullam exercitationem exercitationem voluptatem neque. Est sunt neque natus.', '26.00', NULL, '422', 'instock', 0, 175, 'digital_20.jpg', NULL, 3, '2021-09-13 15:17:56', '2021-09-13 15:17:56'),
(4, 'similique sit dolor nobis', 'similique-sit-dolor-nobis', 'Cumque repudiandae et perferendis perferendis aliquam quidem architecto et. Odit suscipit minus labore accusamus. Unde rerum placeat est molestias maxime et.', 'Nisi officiis ullam magni at neque saepe. Consectetur et reiciendis numquam necessitatibus sapiente. Est doloremque voluptatem numquam accusamus. Beatae voluptatum quos qui enim. Laudantium sit id dolore eius. Iste perferendis impedit et aut voluptatem consectetur sequi. Reprehenderit pariatur vel aut pariatur adipisci placeat placeat. Maiores et vitae eveniet nihil. Voluptates sit sint eius sequi qui voluptatem et. Eos aut deserunt tenetur fugit animi.', '262.00', NULL, '372', 'instock', 0, 135, 'digital_9.jpg', NULL, 1, '2021-09-13 15:17:56', '2021-09-13 15:17:56'),
(5, 'quaerat aut assumenda dolores', 'quaerat-aut-assumenda-dolores', 'Eos velit aperiam aliquam unde facilis totam molestiae. Quis et unde ad id. Quis corporis similique animi voluptas.', 'Quaerat iste quidem neque suscipit. Fuga tempora quas omnis doloremque. Vel maiores voluptas est aspernatur. Quis facere sit quos. Voluptate eius similique totam aut mollitia corrupti. Veniam nemo ut praesentium ab ut. Deleniti repudiandae non voluptatum inventore omnis praesentium.', '439.00', NULL, '298', 'instock', 0, 155, 'digital_15.jpg', NULL, 3, '2021-09-13 15:17:56', '2021-09-13 15:17:56'),
(6, 'illum aperiam labore et', 'illum-aperiam-labore-et', 'Dolores quis inventore perferendis dicta beatae. Sit sed velit saepe laboriosam tempora quis. Rerum odit repudiandae quas et porro reiciendis voluptas eius.', 'Qui laudantium quaerat quibusdam ea est atque. Explicabo omnis eos et enim. Saepe illo quam occaecati sit ullam. Necessitatibus provident sit libero consequatur expedita aliquid. Quos architecto voluptas nostrum animi recusandae deleniti nihil possimus. Deserunt quod omnis sit repudiandae dolores. Fuga ab repellendus necessitatibus. Vero voluptatem nemo eius delectus distinctio ut et. Non eum quibusdam ex ipsam est.', '72.00', NULL, '171', 'instock', 0, 200, 'digital_2.jpg', NULL, 5, '2021-09-13 15:17:56', '2021-09-13 15:17:56'),
(7, 'aut nisi quas sed', 'aut-nisi-quas-sed', 'Laborum tenetur harum expedita sunt iusto. Exercitationem omnis delectus repudiandae. Perspiciatis provident similique quo labore ex id vero. Facilis omnis incidunt sit sapiente quam.', 'Veniam odio quia repellendus enim et placeat eaque. Nobis pariatur dolorum blanditiis perspiciatis natus. Repellat iusto iure quo consectetur fuga aliquid. Cum incidunt velit sit dicta quia. Dolorem illo vero aspernatur ullam suscipit dolor qui. Delectus sit officia provident vel sit ad ducimus consequatur. Qui ratione quo aut consequuntur. Officiis numquam autem suscipit dolorem quia et. Id modi nam et quas. Explicabo itaque vero suscipit ipsam eligendi.', '94.00', NULL, '417', 'instock', 0, 146, 'digital_18.jpg', NULL, 5, '2021-09-13 15:17:56', '2021-09-13 15:17:56'),
(8, 'animi ipsum velit labore', 'animi-ipsum-velit-labore', 'Facilis ut neque pariatur distinctio nisi aut. Id eum eaque voluptatibus suscipit accusantium vel. Sed est explicabo ut molestiae est corrupti.', 'Et sed iusto vel suscipit. Et laudantium et dolorem non odio est consectetur optio. Perspiciatis odit temporibus aut. Labore quod non aut excepturi doloremque officiis. Non ipsa voluptatem dolore vel rerum pariatur aliquam tenetur. Et nemo at qui est error. Rerum et labore rerum neque blanditiis quasi mollitia laudantium.', '129.00', NULL, '309', 'instock', 0, 137, 'digital_7.jpg', NULL, 5, '2021-09-13 15:17:56', '2021-09-13 15:17:56'),
(9, 'eveniet odit rem sapiente', 'eveniet-odit-rem-sapiente', 'Qui illo commodi magni impedit expedita impedit. Odit quod nulla odio. Fugiat non modi consequatur perspiciatis non rerum veniam.', 'Et temporibus sit quo sed necessitatibus. Nihil ea voluptate autem aut unde ut fuga ad. Est voluptate dicta et atque magnam. Quia corporis sed exercitationem occaecati et consequuntur. Sapiente praesentium adipisci non autem asperiores suscipit. Qui explicabo similique sint aspernatur. Est blanditiis consequatur iusto provident nulla et.', '355.00', NULL, '127', 'instock', 0, 138, 'digital_11.jpg', NULL, 2, '2021-09-13 15:17:56', '2021-09-13 15:17:56'),
(10, 'voluptatem vel excepturi omnis', 'voluptatem-vel-excepturi-omnis', 'Eveniet non commodi veniam sed unde earum. Officiis nulla nam autem consequatur enim unde. Fugiat at quo est sint officiis unde. Voluptas adipisci architecto libero qui voluptatem beatae.', 'Placeat minima perferendis provident tenetur voluptatibus. Occaecati quaerat dolore consequatur aut. Maiores consequatur fugiat tempora repellat error ab pariatur. Repudiandae dolorem mollitia voluptatem. Omnis accusantium eveniet inventore sed tenetur. Praesentium eum non placeat et voluptates sed. Vitae beatae nesciunt aut ut et. Pariatur voluptatum et quos iusto. Ex aut consequatur ullam possimus.', '166.00', NULL, '408', 'instock', 0, 102, 'digital_4.jpg', NULL, 1, '2021-09-13 15:17:56', '2021-09-13 15:17:56'),
(11, 'alias nihil deserunt sit', 'alias-nihil-deserunt-sit', 'Ullam facilis sequi incidunt aut quae numquam. Quasi est dignissimos doloribus aspernatur nihil.', 'Enim consequatur a vel voluptate sit. Voluptas ipsam eos fugiat nulla repellat. Et quo ad doloribus. Eligendi cumque quia aliquid blanditiis quis vero. Eveniet consequatur sint quo maiores reprehenderit odit sint qui. Et sint impedit qui cum harum optio. Aut aut qui vel dicta eligendi non. At qui sunt quas non consequatur.', '243.00', NULL, '205', 'instock', 0, 166, 'digital_14.jpg', NULL, 4, '2021-09-13 15:17:57', '2021-09-13 15:17:57'),
(12, 'sapiente reprehenderit omnis sed', 'sapiente-reprehenderit-omnis-sed', 'Voluptatibus rem vitae iusto provident aspernatur. Aperiam beatae commodi voluptas iusto earum temporibus eos. Nisi porro corrupti minima qui architecto eos eius.', 'Ipsam molestiae amet omnis sequi suscipit fugiat harum. Dolores placeat fugiat similique veritatis repellat voluptatem. Similique necessitatibus officiis et aut cupiditate qui eligendi. Aut voluptatibus dolor architecto. Nisi est fugit dolorum et occaecati nemo. Doloribus eos sint repudiandae consectetur dolor voluptatum et quasi. Tenetur natus beatae eaque quia corporis eos exercitationem incidunt. Aut et reprehenderit incidunt aliquam quia adipisci sed.', '38.00', NULL, '254', 'instock', 0, 158, 'digital_10.jpg', NULL, 1, '2021-09-13 15:17:57', '2021-09-13 15:17:57'),
(13, 'inventore non aut veniam', 'inventore-non-aut-veniam', 'Expedita illo omnis aut et harum voluptas aspernatur. Deserunt esse rerum vero atque esse ducimus. Minima ullam numquam voluptatem fugiat aut.', 'Sit asperiores porro maiores vero nobis et earum. Dicta nihil ipsum aut quod quaerat. Veritatis fugit eum blanditiis deleniti architecto. Omnis ut beatae odio dolorum. Necessitatibus vel impedit ducimus occaecati impedit facere. Rerum omnis nihil et est natus ad autem. Modi qui consequatur iste perspiciatis culpa adipisci. Provident placeat qui quia fuga nisi error iusto qui. Dolores veritatis aperiam ea. Beatae eos reprehenderit omnis et. Accusantium qui dolorem sint.', '222.00', NULL, '122', 'instock', 0, 108, 'digital_8.jpg', NULL, 2, '2021-09-13 15:17:57', '2021-09-13 15:17:57'),
(14, 'aut voluptate voluptatibus quis', 'aut-voluptate-voluptatibus-quis', 'Non enim cumque corporis aliquid atque. Earum aliquam facere optio eaque. Quaerat earum perferendis nihil possimus distinctio ea. Similique non et reiciendis laborum corrupti error tempora.', 'Autem corporis sunt officiis officiis ea. Dignissimos accusantium atque aut nisi. Necessitatibus totam veritatis cumque consequatur occaecati quia. Porro recusandae distinctio quibusdam ex repellat eaque et cupiditate. Ut dolorum dolorem et modi ipsum id quidem. Recusandae dolorum minima aut alias. Porro sint qui non est quam ipsum qui. Et eveniet et similique natus.', '454.00', NULL, '125', 'instock', 0, 164, 'digital_3.jpg', NULL, 5, '2021-09-13 15:17:57', '2021-09-13 15:17:57'),
(15, 'dolore aut id est', 'dolore-aut-id-est', 'Magni et voluptates corrupti amet blanditiis voluptatibus alias. Nulla deserunt totam ex et autem. Sed facilis repellendus aut. Reprehenderit fugiat consectetur sint iure sed.', 'Laborum ea est sunt qui. Doloremque sapiente qui quod et praesentium. Voluptas a enim esse tenetur quidem. Eum blanditiis beatae aut quis facilis sed. Animi beatae sint qui. Omnis sed ratione officiis ab magnam similique est vel. Eum sequi illum ex exercitationem enim. Et sunt suscipit harum voluptatibus. Maiores aut vel doloremque omnis non. Dignissimos hic labore delectus occaecati tenetur veritatis doloribus.', '377.00', NULL, '233', 'instock', 0, 101, 'digital_12.jpg', NULL, 4, '2021-09-13 15:17:57', '2021-09-13 15:17:57'),
(16, 'esse nihil iste corrupti', 'esse-nihil-iste-corrupti', 'Molestiae repudiandae nostrum similique ut iusto. Omnis fugit nisi ex sunt. Dolorem nesciunt voluptates facilis quia.', 'Amet tempora magnam maxime nam rerum. Dolor enim quasi quia in voluptatum et. In itaque fugiat dolorem vel fugit. Sed reiciendis inventore repellendus aliquid eum voluptatum. Recusandae occaecati quo qui et. Qui eaque iusto sed alias. Eveniet perspiciatis quia est et aliquam repellendus sint. Nobis aut beatae at dolor velit dolor. Et dolores recusandae nobis illum. Deserunt qui et vero ab et iste.', '119.00', NULL, '390', 'instock', 0, 152, 'digital_21.jpg', NULL, 4, '2021-09-13 15:17:57', '2021-09-13 15:17:57'),
(17, 'velit dignissimos est assumenda', 'velit-dignissimos-est-assumenda', 'Et repudiandae quaerat laudantium nulla ratione enim aut. Eos rem id sunt quidem molestiae non.', 'Occaecati neque sed explicabo ducimus. Incidunt quaerat nulla quia illum quasi nihil. Quo aut ea placeat accusamus incidunt. Architecto accusamus aut explicabo et ab error repudiandae. Et qui aliquid ullam accusamus temporibus consequatur corporis laboriosam. Atque consectetur esse aut at vero assumenda dolorem. Quibusdam quasi est nostrum similique commodi expedita suscipit. Dolor a quasi a dolor. Possimus vel dolor nisi maxime reiciendis placeat.', '164.00', NULL, '467', 'instock', 0, 109, 'digital_19.jpg', NULL, 3, '2021-09-13 15:17:57', '2021-09-13 15:17:57'),
(18, 'sed ea qui nihil', 'sed-ea-qui-nihil', 'Repellat delectus incidunt odio. Quis qui sit illum quaerat vitae deleniti. Et animi dolor molestiae expedita adipisci ut sunt fuga. Rerum et eos ut aut.', 'Nam quibusdam qui labore dolorem autem ut ea. Iste ab quis rerum repudiandae laudantium. Minima dolor quas accusamus fugiat repellendus quasi nihil nesciunt. Esse alias non vel non et. Voluptatum magni quis repellendus error eveniet unde in fugit. Impedit et ab fuga tenetur. Amet molestiae cum error nihil modi reprehenderit. Libero quaerat similique dolores quaerat autem. Recusandae atque et dolor dolorum iure. Optio quia officia aspernatur eveniet.', '492.00', NULL, '247', 'instock', 0, 132, 'digital_6.jpg', NULL, 4, '2021-09-13 15:17:57', '2021-09-13 15:17:57'),
(19, 'numquam tenetur voluptas facilis', 'numquam-tenetur-voluptas-facilis', 'Unde odio voluptas rem molestiae. Dolor ea sit qui repellendus suscipit impedit totam. Maiores in nulla libero ut suscipit quia veniam. Qui tempore et dolorem natus.', 'Vel nemo et esse vel omnis maiores sint perferendis. Tempora nulla et at exercitationem. Est natus nulla aspernatur quos ut possimus perspiciatis. Consectetur nihil magnam ducimus qui rem labore. Fugit eius qui inventore sit. Aut sit dolorum at modi. Et hic laborum neque quis molestiae quod odio praesentium.', '495.00', NULL, '457', 'instock', 0, 189, 'digital_17.jpg', NULL, 3, '2021-09-13 15:17:57', '2021-09-13 15:17:57'),
(20, 'temporibus at provident quibusdam', 'temporibus-at-provident-quibusdam', 'Sit et nemo et tenetur quisquam ad quis. Harum beatae libero aut neque amet id et. Magnam in voluptate dolor corporis qui non. Quam est est in in nihil qui. Ipsa hic quia quia nemo vero debitis.', 'Mollitia id adipisci excepturi officiis. Laborum doloremque deserunt odio dolores itaque corporis maxime. Natus harum saepe laudantium necessitatibus. Aut ea recusandae rerum repudiandae maxime qui et. Et molestias saepe dicta nulla. Reprehenderit sint aut quis voluptas dolorem a non. Saepe at omnis eum aut nesciunt est tempore sed. Explicabo maxime sunt perspiciatis temporibus beatae ad veritatis ut. Sit voluptate ea et omnis praesentium natus qui. Aut quo officia nisi sapiente.', '400.00', NULL, '152', 'instock', 0, 150, 'digital_22.jpg', NULL, 1, '2021-09-13 15:17:57', '2021-09-13 15:17:57'),
(21, 'debitis eos consectetur ut', 'debitis-eos-consectetur-ut', 'Dolorum modi doloribus ratione et. Sunt debitis at nihil soluta ipsa rerum nisi. Dolorum et assumenda natus quo.', 'Fugit dolores unde nam vero fugiat explicabo voluptatem. Et aut ut minima ut. Unde laudantium consequuntur sit. Laboriosam voluptates perspiciatis officia sed vel tempora. Voluptatem aut aut ut similique quo perspiciatis. Cupiditate libero vel repudiandae quidem voluptates quibusdam. Earum quas nihil corrupti temporibus. Earum debitis dolor ipsa qui et sed ut. Et voluptatem voluptatibus nam dolorem.', '346.00', NULL, '412', 'instock', 0, 170, 'digital_1.jpg', NULL, 3, '2021-09-13 15:17:57', '2021-09-13 15:17:57'),
(22, 'voluptatem veritatis sit aut', 'voluptatem-veritatis-sit-aut', 'Ea quo voluptas ut magni a. Repellendus eligendi quo non perferendis voluptatibus. Possimus in aut maxime. Id deleniti in rerum voluptatem.', 'Qui quo et cum similique eum necessitatibus dolor. Nesciunt et voluptas consequatur consectetur. Ut et quos praesentium beatae cumque accusamus. A veniam voluptas sed consequuntur quaerat. Iste quo perspiciatis vero ut sit et aliquid. Quidem repudiandae eveniet qui culpa autem. Qui similique et est dolor natus. Enim reprehenderit est fuga harum eaque. At et sint reprehenderit. Laboriosam non eius delectus vero velit eius.', '118.00', NULL, '227', 'instock', 0, 199, 'digital_13.jpg', NULL, 4, '2021-09-13 15:17:57', '2021-09-13 15:17:57');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sale_date` datetime NOT NULL,
  `status` enum('inactive','active') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CEoiXz1xl2AKMtYpj34cuRLWpFyYeLakv06lODhB', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTBqYUdiM2V1SXU1elUxdXR6UnE3b3VraDdwSDEya2NSWVFHODNhdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631554355),
('Cqz7awaeuUXuXsimF0Qgcj7dxUVgNbStpusIiIqX', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.63 Safari/537.36', 'YTo4OntzOjY6Il90b2tlbiI7czo0MDoiU29sZldJaHNDZk1UMVBrYXEzc1U5TjI5SmhPaGNGek1tZWlVdnY1RSI7czozOiJ1cmwiO2E6MTp7czo4OiJpbnRlbmRlZCI7czozNDoiaHR0cDovLzEyNy4wLjAuMTo4MDAwL2FkbWluL29yZGVycyI7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vb3JkZXJzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDR5dUlZaWx0SkZiVTBhWVE3RzVjVy4weHJrL3NVM3JEc1BJN05NWDg4MDJIYTBlVFNPNUdXIjtzOjQ6ImNhcnQiO2E6MDp7fXM6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJDR5dUlZaWx0SkZiVTBhWVE3RzVjVy4weHJrL3NVM3JEc1BJN05NWDg4MDJIYTBlVFNPNUdXIjt9', 1631555228),
('DUq0vYSIaHipal13Kx84HGpIrf2jnc5abXzB5axe', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUkdOMHJGbzZGVkw5Zk5QZEZOOG90WFhua2FPc2w5aUMxUTF4VzJrZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631555436),
('f89WSMWo6Pr7yASSRxavLjrixCmarDKQZJSUbUNe', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmhFZzhlNG84SWNpNHd1ZkxLcDlaMmVhcDRBNHllaHkwSFZHcGNQSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631555374),
('fskvwikN9AGayLdc56wfTPoF1wzqvNLbVN6SviNM', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoianhrbkdTdEpVR0ZYb2g0cUVCS2ZrRzA5b1ZTYktVNnVwVEltQXJKdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631553937),
('gHsBQ9TR5QONV4e0IQIiuJCuC6wLS4Rng5D6P0CG', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUmhyaXZPNVNYampqdmVwcEQ4cURGMnpVV2xJTUZubEQ0dEg4d3JkZiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631586073),
('H7PZYtG9550DsXnnPAYcKKNgaoOwvJbPxkNwyo3y', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRlluRmpkR0Iyd3plcEdXOTlaYjZZSTBMVVFlUUNEYndYTUFIMlZYTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631553923),
('KL25Os1qqXmLs50ZOf5hzvJ3EXegUlTtLl9rNIIX', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXVWVG50SlFmM09VWUdwWFZEZXpKWTkydzZjbUpaM0Y0YXRHOGowTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631555412),
('tkqZGjXIHzZ3S8AXtzF3eWdRcTau1JPSoypVyx3e', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYjdoRHBMSGdBRlZSY3ZkSTBMZUZCWjVBUGYxbzVwWkhjQzhWdHVFNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631555393),
('U6IYUmvIG8LnapaLWD2hOZPa3aclUGurV4fZq9YK', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNVFOeXJMWUhUSjlrMEdPUHhsaEtoeWtXc1Y2YlpGa2M5OFVMOWQwNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631555325),
('umGmj4aVzjZNFgeKEIjFJeWZreGBoqdAodWvoOg2', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTdrbE5Dc1l2N3ZXWGVhQm1ZanNxODU2dzhyWU9vR2Q1WWN2NW5LQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631554408),
('w3DFOlGyPdXljl1m3GXqhonC2bWNvOIINcYSVqbu', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYU5TdTk0a3M4VjU1aUlmcEsyMHJGdGI4YW1JbVRPODEwb0NZMExOcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631555220),
('xxPfVUgyTKXcJ4Ve8FjdObD6FIhpaaxLj47dNHy8', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnl0QkdxRmJXMWt6Q3hyYTNzY1RHMFgyZHY0b1oyR2FzV3pxSGppSSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631555470),
('Y8UUbaaynbefJUcg4CPhtDa35aPvMYxHyOHuJmL1', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRTlJdFR0ZDhMNUxnS0NhUjF3RVY3ZHlDeWtaSzZieXVMVVVpR29HTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631555363),
('YvfwHzzvUiN5XYMXRQPTIFzU0SEdvnH1CCKXbE5N', NULL, NULL, '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWxKYzlqNWtZS3ZYSkV5ZGY3YnlFeFI0RWxmNjFSV0FUS3ZaU2pLNCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODoiaHR0cDovLzoiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1631555206);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `line2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Zipcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `mode` enum('cod','card','paypal') COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','declined','refunded') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `utype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin and USR for user or customer',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `utype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Admin@admin.com', NULL, '$2y$10$4yuIYiltJFbU0aYQ7G5cW.0xrk/sU3rDsPI7NMX8802Ha0eTSO5GW', NULL, NULL, NULL, NULL, NULL, 'ADM', '2021-09-13 15:19:28', '2021-09-13 15:19:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `home_categories`
--
ALTER TABLE `home_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_sliders`
--
ALTER TABLE `home_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shippings_order_id_foreign` (`order_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_order_id_foreign` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `home_categories`
--
ALTER TABLE `home_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_sliders`
--
ALTER TABLE `home_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shippings`
--
ALTER TABLE `shippings`
  ADD CONSTRAINT `shippings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
