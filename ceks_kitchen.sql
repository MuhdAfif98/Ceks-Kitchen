-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:4306
-- Generation Time: Mar 19, 2024 at 08:26 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ceks_kitchen`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('bd307a3ec329e10a2cff8fb87480823da114f8f4', 'i:2;', 1710822227),
('bd307a3ec329e10a2cff8fb87480823da114f8f4:timer', 'i:1710822227;', 1710822227);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Appetizers', '2024-03-18 22:17:58', '2024-03-18 22:17:58'),
(2, 'Main Course', '2024-03-18 22:17:58', '2024-03-18 22:17:58'),
(3, 'Side Dishes', '2024-03-18 22:17:58', '2024-03-18 22:17:58'),
(4, 'Salads', '2024-03-18 22:17:58', '2024-03-18 22:17:58'),
(5, 'Soups', '2024-03-18 22:17:58', '2024-03-18 22:17:58'),
(6, 'Sandwiches', '2024-03-18 22:17:58', '2024-03-18 22:17:58'),
(7, 'Desserts', '2024-03-18 22:17:58', '2024-03-18 22:17:58'),
(8, 'Beverages', '2024-03-18 22:17:58', '2024-03-18 22:17:58'),
(9, 'Specials', '2024-03-18 22:17:58', '2024-03-18 22:17:58');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_03_19_011335_create_all_table', 2),
(5, '2024_03_19_014537_create_recipe_category_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `bio`, `avatar`, `created_at`, `updated_at`) VALUES
(3, 13, 'Takde bio sebenaarnyasss', NULL, '2024-03-18 18:20:29', '2024-03-18 18:48:13'),
(64, 14, 'Tempore id enim dolorum. Rem maiores dolor est amet. Dignissimos vel qui commodi ad facere. Iusto maxime iure in dolorem.', 'https://via.placeholder.com/640x480.png/007744?text=distinctio', '2024-03-18 22:31:32', '2024-03-18 22:31:32'),
(65, 15, 'Vel eum non blanditiis et. Exercitationem pariatur dolor et nihil illo perferendis harum inventore. Consequatur voluptatibus rerum eaque aliquid sequi. Numquam at harum illo aut enim.', 'https://via.placeholder.com/640x480.png/00eeff?text=porro', '2024-03-18 22:31:32', '2024-03-18 22:31:32'),
(66, 16, 'Non placeat accusantium quos natus consequatur eum. Dolor esse minus fugit aut voluptatem. Molestiae voluptatum similique quisquam eos magnam ut. Quae consequatur id perspiciatis et quisquam. Reiciendis ut ea inventore.', 'https://via.placeholder.com/640x480.png/00ee00?text=hic', '2024-03-18 22:31:32', '2024-03-18 22:31:32'),
(67, 17, 'Quasi quis iste magni dignissimos cumque tempore quis pariatur. Consequuntur illum optio veniam fugiat. Nisi velit veniam aspernatur ut enim sed repudiandae iste. Eius molestiae aspernatur ducimus tenetur.', 'https://via.placeholder.com/640x480.png/00cc00?text=illo', '2024-03-18 22:31:32', '2024-03-18 22:31:32'),
(68, 18, 'Et nam molestiae animi sint aut ut qui. Repellendus eveniet et alias quia et eius.', 'https://via.placeholder.com/640x480.png/00bb33?text=exercitationem', '2024-03-18 22:31:32', '2024-03-18 22:31:32'),
(69, 19, 'Dolorem corporis unde earum molestiae a delectus consequuntur. Vel sed voluptas voluptates. Voluptates reiciendis quis enim sed dolores nesciunt cum.', 'https://via.placeholder.com/640x480.png/00aa22?text=impedit', '2024-03-18 22:31:32', '2024-03-18 22:31:32'),
(70, 20, 'Commodi ea maxime ut quis asperiores optio. In aperiam nam ea ea omnis sit. Aspernatur nam molestias velit qui.', 'https://via.placeholder.com/640x480.png/007777?text=asperiores', '2024-03-18 22:31:32', '2024-03-18 22:31:32'),
(71, 21, 'Adipisci nisi et voluptatem. Quia beatae amet perferendis itaque est. Voluptatem qui consequatur temporibus possimus voluptas nulla voluptatem.', 'https://via.placeholder.com/640x480.png/001188?text=ullam', '2024-03-18 22:31:32', '2024-03-18 22:31:32'),
(72, 22, 'Perspiciatis blanditiis ut voluptatibus quod magnam. Ipsa dignissimos doloremque sit corrupti earum ex. Laboriosam inventore veritatis qui cumque dolorem est corrupti facere. Fuga veritatis et velit est blanditiis omnis maiores.', 'https://via.placeholder.com/640x480.png/004422?text=labore', '2024-03-18 22:31:32', '2024-03-18 22:31:32'),
(73, 23, 'Rerum distinctio aspernatur iusto rerum ex et possimus. Dolore pariatur aperiam quod rerum vitae iste et. Similique minus sed non quos dolor animi.', 'https://via.placeholder.com/640x480.png/007722?text=qui', '2024-03-18 22:31:32', '2024-03-18 22:31:32');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ingredient` json DEFAULT NULL,
  `instruction` json DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`id`, `user_id`, `title`, `description`, `ingredient`, `instruction`, `image`, `created_at`, `updated_at`) VALUES
(1, 18, 'Est sunt omnis accusantium et aut culpa earum sint velit dolorem deleniti sequi inventore.', 'Quo voluptatibus officia magnam culpa corrupti.', '[{\"name\": \"quia\", \"quantity\": 998870}, {\"name\": \"deleniti\", \"quantity\": 2}, {\"name\": \"vitae\", \"quantity\": 1}, {\"name\": \"quo\", \"quantity\": 360174}]', '[{\"step\": \"Step 1: Esse earum accusantium ut praesentium ex quis.\"}, {\"step\": \"Step 2: Eum sint dolorem aut corporis et quia quisquam architecto.\"}, {\"step\": \"Step 3: Dolore nostrum autem incidunt ut dolor delectus.\"}, {\"step\": \"Step 4: Natus dolores autem vel aut sit laudantium.\"}, {\"step\": \"Step 5: Ut aut ex sint qui consequatur.\"}]', 'https://via.placeholder.com/640x480.png/006622?text=est', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(2, 23, 'Quod aut quia quod minus blanditiis ipsa vero quas accusantium ea laboriosam consectetur sit at aut neque.', 'Rerum dignissimos provident ut doloribus esse quod.', '[{\"name\": \"tempore\", \"quantity\": 91961}, {\"name\": \"vel\", \"quantity\": 58329}, {\"name\": \"possimus\", \"quantity\": 955896437}, {\"name\": \"est\", \"quantity\": 499839590}]', '[{\"step\": \"Step 1: Sunt quia rerum voluptatum mollitia.\"}, {\"step\": \"Step 2: Voluptatem explicabo magni hic explicabo dolor ut.\"}, {\"step\": \"Step 3: Eligendi occaecati doloremque possimus magnam molestiae omnis.\"}, {\"step\": \"Step 4: Et laudantium explicabo qui.\"}, {\"step\": \"Step 5: Saepe numquam repellendus illum consectetur quaerat.\"}]', 'https://via.placeholder.com/640x480.png/0000dd?text=modi', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(3, 22, 'Veritatis ut dolore veritatis rerum non quisquam qui esse eum enim architecto non ut deserunt officiis autem aut quo consectetur.', 'Fuga sunt eos consequatur ut voluptas.', '[{\"name\": \"iusto\", \"quantity\": 122043}, {\"name\": \"voluptatem\", \"quantity\": 181799432}, {\"name\": \"quam\", \"quantity\": 3186637}, {\"name\": \"quibusdam\", \"quantity\": 909005557}]', '[{\"step\": \"Step 1: Voluptas quia dolorum molestiae dolore quia.\"}, {\"step\": \"Step 2: Maxime nostrum esse natus praesentium dolores est amet tenetur.\"}, {\"step\": \"Step 3: Sint iure sit voluptas et aut perferendis assumenda.\"}, {\"step\": \"Step 4: Dolorem perferendis aspernatur exercitationem quam alias nesciunt voluptatem.\"}, {\"step\": \"Step 5: Qui laudantium ut omnis labore fugiat.\"}]', 'https://via.placeholder.com/640x480.png/00ff33?text=aut', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(4, 22, 'Officiis voluptas nam sit et voluptatem nam dolores vitae quam magnam.', 'Consequatur incidunt ex nisi quos qui quo.', '[{\"name\": \"cumque\", \"quantity\": 3909681}, {\"name\": \"possimus\", \"quantity\": 5}, {\"name\": \"numquam\", \"quantity\": 96051}, {\"name\": \"quia\", \"quantity\": 8849}]', '[{\"step\": \"Step 1: Omnis fugiat autem in libero est libero illo.\"}, {\"step\": \"Step 2: Rem quas beatae facere pariatur ex aliquam hic.\"}, {\"step\": \"Step 3: Laboriosam facere quia vel omnis.\"}, {\"step\": \"Step 4: Ut quos magnam quibusdam pariatur et.\"}, {\"step\": \"Step 5: Ex ad sit corrupti ipsam voluptatum.\"}]', 'https://via.placeholder.com/640x480.png/000022?text=voluptatibus', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(5, 22, 'Ad aut voluptatem consectetur nisi illo minus rerum dolorem et consectetur in asperiores.', 'Nulla ut asperiores vel nisi.', '[{\"name\": \"omnis\", \"quantity\": 9}, {\"name\": \"nihil\", \"quantity\": 63014223}, {\"name\": \"earum\", \"quantity\": 5649}, {\"name\": \"placeat\", \"quantity\": 38}]', '[{\"step\": \"Step 1: Quos molestiae praesentium iste.\"}, {\"step\": \"Step 2: Odio dolorem laborum voluptatem optio quidem laborum esse.\"}, {\"step\": \"Step 3: Sint sint repellat cum atque distinctio.\"}, {\"step\": \"Step 4: Expedita labore omnis omnis.\"}, {\"step\": \"Step 5: Quasi et dolorem quo qui aut vero aut.\"}]', 'https://via.placeholder.com/640x480.png/00ccff?text=tempora', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(6, 20, 'Eveniet modi illo quia quidem accusantium recusandae error delectus voluptatibus expedita enim qui consectetur dolorum cum commodi nesciunt qui.', 'Incidunt minima ea aut nemo.', '[{\"name\": \"unde\", \"quantity\": 818164}, {\"name\": \"quo\", \"quantity\": 68891}, {\"name\": \"quia\", \"quantity\": 2}, {\"name\": \"voluptatibus\", \"quantity\": 8936786}]', '[{\"step\": \"Step 1: Quo quos et dolor in non ducimus vel.\"}, {\"step\": \"Step 2: Recusandae molestias id adipisci dolores repellendus nobis dolores.\"}, {\"step\": \"Step 3: Tenetur tenetur laudantium fuga est cumque quisquam.\"}, {\"step\": \"Step 4: Ea omnis consequuntur unde vel maxime nostrum omnis.\"}, {\"step\": \"Step 5: Est sit qui omnis magni expedita.\"}]', 'https://via.placeholder.com/640x480.png/00ee88?text=molestiae', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(7, 14, 'Consequatur quasi dolores qui sit rerum laboriosam vitae sequi dolores expedita ut magni.', 'Qui animi fuga fugiat sequi officia impedit quas.', '[{\"name\": \"error\", \"quantity\": 22}, {\"name\": \"quia\", \"quantity\": 370162488}, {\"name\": \"qui\", \"quantity\": 887721}, {\"name\": \"natus\", \"quantity\": 2}]', '[{\"step\": \"Step 1: Unde veniam qui consequatur ratione.\"}, {\"step\": \"Step 2: Quo deserunt vel laborum repellat.\"}, {\"step\": \"Step 3: Qui rem et qui possimus ad neque sint veniam.\"}, {\"step\": \"Step 4: Ad molestiae qui mollitia facere.\"}, {\"step\": \"Step 5: Quaerat et enim tempore corrupti.\"}]', 'https://via.placeholder.com/640x480.png/007744?text=ut', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(8, 22, 'Ducimus numquam voluptate dolore similique non molestiae error culpa accusamus sequi sed quae quia culpa nobis labore mollitia repellendus laudantium enim.', 'Est quia maiores expedita omnis.', '[{\"name\": \"harum\", \"quantity\": 88797533}, {\"name\": \"nulla\", \"quantity\": 14983}, {\"name\": \"ullam\", \"quantity\": 618288}, {\"name\": \"placeat\", \"quantity\": 37669583}]', '[{\"step\": \"Step 1: Perspiciatis ea eos praesentium.\"}, {\"step\": \"Step 2: Odio hic ea qui minus.\"}, {\"step\": \"Step 3: Eaque aliquam praesentium voluptatum ratione est.\"}, {\"step\": \"Step 4: Doloremque sunt expedita a ut.\"}, {\"step\": \"Step 5: Dolores et cum voluptas adipisci rerum vel.\"}]', 'https://via.placeholder.com/640x480.png/002211?text=nam', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(9, 18, 'Aut voluptatem sit non ullam quibusdam voluptatem et et ut officiis qui sunt voluptates temporibus id totam.', 'Labore id pariatur reprehenderit odio blanditiis aut accusamus.', '[{\"name\": \"doloribus\", \"quantity\": 233021265}, {\"name\": \"sapiente\", \"quantity\": 17232}, {\"name\": \"veritatis\", \"quantity\": 90}, {\"name\": \"quia\", \"quantity\": 9560}]', '[{\"step\": \"Step 1: Aliquam dolores perspiciatis perferendis fugit.\"}, {\"step\": \"Step 2: Placeat aliquid iure odio excepturi.\"}, {\"step\": \"Step 3: Repellendus rerum optio non ipsa praesentium est et atque.\"}, {\"step\": \"Step 4: Modi debitis temporibus magnam facere velit libero ratione.\"}, {\"step\": \"Step 5: Nihil et animi quod sed possimus id quam.\"}]', 'https://via.placeholder.com/640x480.png/002266?text=fugiat', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(10, 14, 'Asperiores minus odio nisi tempora hic nihil libero sint nulla doloremque et veritatis nam dolorum ea incidunt sunt blanditiis dignissimos non.', 'Libero itaque sed veniam dolor id ea magnam.', '[{\"name\": \"libero\", \"quantity\": 84383369}, {\"name\": \"non\", \"quantity\": 4243726}, {\"name\": \"voluptas\", \"quantity\": 34}, {\"name\": \"adipisci\", \"quantity\": 2118222}]', '[{\"step\": \"Step 1: Ipsum aliquam reprehenderit eos consectetur saepe.\"}, {\"step\": \"Step 2: Perspiciatis officiis necessitatibus et voluptatibus praesentium iste saepe mollitia.\"}, {\"step\": \"Step 3: Ipsam quis labore dolore recusandae aspernatur.\"}, {\"step\": \"Step 4: Ipsa consectetur neque in consequatur consequuntur consequatur maxime.\"}, {\"step\": \"Step 5: Ratione ipsum vel saepe quisquam quia recusandae animi.\"}]', 'https://via.placeholder.com/640x480.png/003355?text=ex', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(11, 23, 'Ipsam perspiciatis assumenda sit dolor libero exercitationem aut molestiae quae omnis facilis ab voluptatem quisquam.', 'Magnam recusandae consequuntur quo mollitia iste aliquam.', '[{\"name\": \"reprehenderit\", \"quantity\": 6790}, {\"name\": \"quia\", \"quantity\": 174401}, {\"name\": \"nesciunt\", \"quantity\": 2211903}, {\"name\": \"illum\", \"quantity\": 798376}]', '[{\"step\": \"Step 1: Ex numquam hic quam qui nesciunt.\"}, {\"step\": \"Step 2: Illo perspiciatis est expedita cum non repellendus et.\"}, {\"step\": \"Step 3: Excepturi voluptatum libero tenetur velit et ratione deserunt.\"}, {\"step\": \"Step 4: Laudantium quasi numquam officia in ipsa.\"}, {\"step\": \"Step 5: Est et quas dolore.\"}]', 'https://via.placeholder.com/640x480.png/0088dd?text=ut', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(12, 19, 'Non est numquam est dolorum non sit aut nihil voluptatibus iure officiis quas eligendi et sed molestiae odio autem iusto voluptas.', 'Et voluptas nihil vitae et commodi dolores aliquam.', '[{\"name\": \"sunt\", \"quantity\": 12238}, {\"name\": \"voluptatem\", \"quantity\": 3300}, {\"name\": \"assumenda\", \"quantity\": 9}, {\"name\": \"in\", \"quantity\": 963419}]', '[{\"step\": \"Step 1: Sint repellendus et fugiat sit quia.\"}, {\"step\": \"Step 2: Voluptas iusto tempora optio est officiis.\"}, {\"step\": \"Step 3: Et nam inventore ut.\"}, {\"step\": \"Step 4: Cum laborum ut molestiae ad nam.\"}, {\"step\": \"Step 5: Numquam sit aut id perspiciatis et.\"}]', 'https://via.placeholder.com/640x480.png/0055ee?text=aut', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(13, 14, 'Vel dolorum et labore ipsam labore consequatur tempore aut vero maxime aut sapiente quibusdam alias voluptas sint laborum repellat sed omnis.', 'Maxime dolorem quibusdam quod alias facilis ab occaecati.', '[{\"name\": \"sunt\", \"quantity\": 722850}, {\"name\": \"mollitia\", \"quantity\": 8759441}, {\"name\": \"consequatur\", \"quantity\": 438513}, {\"name\": \"explicabo\", \"quantity\": 10}]', '[{\"step\": \"Step 1: Earum qui voluptas recusandae quibusdam reiciendis.\"}, {\"step\": \"Step 2: Id quisquam vitae fuga eos illo sequi molestiae voluptas.\"}, {\"step\": \"Step 3: Deleniti vero natus et odit nobis sunt quos.\"}, {\"step\": \"Step 4: Est quia quaerat omnis sed voluptas dolorem laborum.\"}, {\"step\": \"Step 5: Id atque sapiente eligendi nostrum.\"}]', 'https://via.placeholder.com/640x480.png/00bb00?text=beatae', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(14, 19, 'Veritatis animi omnis provident ad ut sequi ut ex et eos illum ipsum aspernatur ut labore consequuntur eum est quia vel.', 'Deserunt aut inventore qui non voluptates deleniti omnis.', '[{\"name\": \"enim\", \"quantity\": 135}, {\"name\": \"dolorem\", \"quantity\": 625602219}, {\"name\": \"modi\", \"quantity\": 99}, {\"name\": \"fugiat\", \"quantity\": 83946811}]', '[{\"step\": \"Step 1: Vitae delectus exercitationem animi pariatur.\"}, {\"step\": \"Step 2: Animi fugit est dolores est ut dolores ut.\"}, {\"step\": \"Step 3: Nulla veniam laudantium odit dolor totam natus blanditiis nihil.\"}, {\"step\": \"Step 4: Rem inventore dolores aspernatur sint quia.\"}, {\"step\": \"Step 5: Qui odio qui ut corrupti.\"}]', 'https://via.placeholder.com/640x480.png/00cccc?text=quis', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(15, 18, 'Eos alias amet accusantium aut cupiditate quasi quaerat accusantium quia quo sunt impedit delectus quis ex illo enim.', 'Ad soluta nisi impedit soluta corrupti quaerat cumque.', '[{\"name\": \"et\", \"quantity\": 6}, {\"name\": \"hic\", \"quantity\": 389238885}, {\"name\": \"eum\", \"quantity\": 908}, {\"name\": \"et\", \"quantity\": 849767849}]', '[{\"step\": \"Step 1: Vel labore dolorum fugit eos.\"}, {\"step\": \"Step 2: Voluptatem sapiente dolor nemo molestias nobis.\"}, {\"step\": \"Step 3: Repudiandae sint nulla nemo et ex quam.\"}, {\"step\": \"Step 4: Occaecati consequatur qui iure.\"}, {\"step\": \"Step 5: Et asperiores occaecati facilis occaecati.\"}]', 'https://via.placeholder.com/640x480.png/000055?text=omnis', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(16, 17, 'In rerum ipsa voluptatem libero aut eum magni accusantium ut quae quibusdam quo sunt tempore aut est mollitia.', 'Sint aut sunt inventore dolore fugit.', '[{\"name\": \"alias\", \"quantity\": 159547}, {\"name\": \"harum\", \"quantity\": 64238058}, {\"name\": \"maiores\", \"quantity\": 797604}, {\"name\": \"facilis\", \"quantity\": 8982}]', '[{\"step\": \"Step 1: Aut error possimus magnam eaque.\"}, {\"step\": \"Step 2: Accusamus eos et perferendis non omnis consequatur.\"}, {\"step\": \"Step 3: Cupiditate sit adipisci exercitationem.\"}, {\"step\": \"Step 4: Consectetur rerum aliquam velit non similique.\"}, {\"step\": \"Step 5: Molestiae reprehenderit impedit qui repellat in facilis.\"}]', 'https://via.placeholder.com/640x480.png/00eebb?text=quae', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(17, 17, 'Corrupti maxime eos saepe aut consectetur sint labore rerum temporibus molestiae.', 'Accusamus voluptatem quia in dolor culpa.', '[{\"name\": \"ipsa\", \"quantity\": 8258}, {\"name\": \"odit\", \"quantity\": 17519}, {\"name\": \"omnis\", \"quantity\": 755905}, {\"name\": \"impedit\", \"quantity\": 222894274}]', '[{\"step\": \"Step 1: Repellendus quis exercitationem aperiam sint.\"}, {\"step\": \"Step 2: Debitis voluptatem eos odit aliquid distinctio.\"}, {\"step\": \"Step 3: Aut sed dolor commodi ut qui voluptatem.\"}, {\"step\": \"Step 4: Quas labore in qui aut nisi fugit optio.\"}, {\"step\": \"Step 5: Dicta sit quo quaerat voluptatibus deleniti.\"}]', 'https://via.placeholder.com/640x480.png/001100?text=beatae', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(18, 13, 'Fugit eum ut dolore officiis similique est rerum sint perspiciatis aut soluta commodi et velit et perspiciatis qui aut.', 'Cum pariatur deserunt officia dolorem temporibus.', '[{\"name\": \"aliquam\", \"quantity\": 155}, {\"name\": \"delectus\", \"quantity\": 313}, {\"name\": \"enim\", \"quantity\": 4141}, {\"name\": \"dolorem\", \"quantity\": 63928773}]', '[{\"step\": \"Step 1: Fugit voluptatem reprehenderit occaecati quis.\"}, {\"step\": \"Step 2: Quaerat iste laborum quis expedita.\"}, {\"step\": \"Step 3: Vel sint sapiente assumenda exercitationem.\"}, {\"step\": \"Step 4: Voluptates necessitatibus voluptate nisi aperiam nihil magni.\"}, {\"step\": \"Step 5: Iusto aut veritatis officia possimus molestias ullam vero.\"}]', 'https://via.placeholder.com/640x480.png/004477?text=reiciendis', '2024-03-18 22:51:20', '2024-03-18 22:51:20'),
(19, 21, 'Est aut blanditiis sequi architecto nihil consequatur voluptates sit sit.', 'Vitae adipisci beatae non accusamus labore veritatis et.', '[{\"name\": \"eos\", \"quantity\": 9323017}, {\"name\": \"et\", \"quantity\": 295901}, {\"name\": \"enim\", \"quantity\": 63971667}, {\"name\": \"mollitia\", \"quantity\": 6879}]', '[{\"step\": \"Step 1: Omnis sed similique voluptatem sint consequatur.\"}, {\"step\": \"Step 2: Consequuntur minus excepturi aperiam doloremque.\"}, {\"step\": \"Step 3: Labore consequatur sunt distinctio voluptas at odit dignissimos.\"}, {\"step\": \"Step 4: Ducimus qui cumque velit blanditiis incidunt in consectetur.\"}, {\"step\": \"Step 5: Ipsam velit numquam et sit error.\"}]', 'https://via.placeholder.com/640x480.png/00ffcc?text=perspiciatis', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(20, 18, 'Amet tempora distinctio quo officiis et dolorem ut quidem enim sunt dolorem suscipit id quia molestiae libero quaerat amet quasi quia.', 'Nobis id voluptas ut aspernatur non voluptatem sunt et.', '[{\"name\": \"voluptatem\", \"quantity\": 955012658}, {\"name\": \"laboriosam\", \"quantity\": 32796}, {\"name\": \"ducimus\", \"quantity\": 8}, {\"name\": \"fuga\", \"quantity\": 5037}]', '[{\"step\": \"Step 1: Dicta accusamus aspernatur alias itaque eos ea.\"}, {\"step\": \"Step 2: Nisi officia rerum magni quaerat est.\"}, {\"step\": \"Step 3: Quos aut facilis minus.\"}, {\"step\": \"Step 4: Laborum totam et maxime.\"}, {\"step\": \"Step 5: Quam dicta veritatis architecto iste sapiente et.\"}]', 'https://via.placeholder.com/640x480.png/00aa77?text=cum', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(21, 19, 'Error ut nam nam placeat iusto amet qui eum itaque dolor.', 'Provident vel est iusto eius sit in amet assumenda.', '[{\"name\": \"cumque\", \"quantity\": 8}, {\"name\": \"vero\", \"quantity\": 1371076}, {\"name\": \"iste\", \"quantity\": 4330}, {\"name\": \"error\", \"quantity\": 9893}]', '[{\"step\": \"Step 1: Et fuga autem nobis corporis officiis adipisci.\"}, {\"step\": \"Step 2: Dolor est voluptatem incidunt sit dolorum sed eaque.\"}, {\"step\": \"Step 3: Et est deserunt veniam et nesciunt sed voluptatem.\"}, {\"step\": \"Step 4: In magnam sapiente adipisci sed deleniti.\"}, {\"step\": \"Step 5: Et impedit animi rerum nihil ratione sunt.\"}]', 'https://via.placeholder.com/640x480.png/007766?text=ex', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(22, 21, 'Velit error voluptatem doloribus ducimus voluptatem atque officiis autem saepe ea similique voluptas voluptatibus id porro nam vel qui.', 'Suscipit magnam sint et.', '[{\"name\": \"quia\", \"quantity\": 74}, {\"name\": \"animi\", \"quantity\": 53}, {\"name\": \"voluptas\", \"quantity\": 91795}, {\"name\": \"voluptas\", \"quantity\": 512}]', '[{\"step\": \"Step 1: Nam natus eaque doloremque placeat possimus commodi voluptas.\"}, {\"step\": \"Step 2: Maiores cupiditate placeat officiis harum odit nisi.\"}, {\"step\": \"Step 3: Quo delectus quis dolorem.\"}, {\"step\": \"Step 4: Inventore ad perferendis eius aliquid perspiciatis impedit possimus.\"}, {\"step\": \"Step 5: Voluptate dignissimos similique vel doloremque odit deserunt.\"}]', 'https://via.placeholder.com/640x480.png/0000dd?text=soluta', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(23, 19, 'Reprehenderit et perferendis perspiciatis eos in dolor autem id quis et quos magni blanditiis et tempore voluptate quia sed distinctio.', 'Error corrupti cupiditate sed nihil dolores rerum ut.', '[{\"name\": \"assumenda\", \"quantity\": 1056}, {\"name\": \"ullam\", \"quantity\": 8}, {\"name\": \"quia\", \"quantity\": 682356432}, {\"name\": \"et\", \"quantity\": 2043731}]', '[{\"step\": \"Step 1: Ipsa eaque blanditiis recusandae quis.\"}, {\"step\": \"Step 2: Eius facilis necessitatibus dolorem itaque ut enim qui occaecati.\"}, {\"step\": \"Step 3: Dolorum nobis velit qui laudantium eveniet eos corrupti.\"}, {\"step\": \"Step 4: Iste corporis eaque ab non qui sint reiciendis amet.\"}, {\"step\": \"Step 5: Omnis neque reiciendis ut in unde et et quidem.\"}]', 'https://via.placeholder.com/640x480.png/003388?text=aspernatur', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(24, 16, 'Ut libero nemo neque aut ratione et consequatur odit impedit voluptas omnis voluptas aperiam iusto est facilis dolores eius aperiam suscipit.', 'Commodi ipsam quasi nihil ut possimus autem.', '[{\"name\": \"est\", \"quantity\": 58}, {\"name\": \"sed\", \"quantity\": 6}, {\"name\": \"est\", \"quantity\": 2}, {\"name\": \"illum\", \"quantity\": 576807903}]', '[{\"step\": \"Step 1: In consequatur dolores facere quibusdam.\"}, {\"step\": \"Step 2: Dolore pariatur ullam aut provident.\"}, {\"step\": \"Step 3: Voluptatem impedit temporibus facilis autem.\"}, {\"step\": \"Step 4: Animi earum vel maxime ut est.\"}, {\"step\": \"Step 5: Et error similique ut maiores dignissimos.\"}]', 'https://via.placeholder.com/640x480.png/009944?text=provident', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(25, 16, 'Necessitatibus qui voluptate atque cupiditate saepe et laborum ut itaque.', 'Libero sint fugit est enim est est.', '[{\"name\": \"optio\", \"quantity\": 60855645}, {\"name\": \"cupiditate\", \"quantity\": 24643}, {\"name\": \"enim\", \"quantity\": 6612714}, {\"name\": \"perferendis\", \"quantity\": 433}]', '[{\"step\": \"Step 1: Assumenda recusandae quas in aperiam harum.\"}, {\"step\": \"Step 2: Rerum commodi laboriosam sunt quas.\"}, {\"step\": \"Step 3: Repudiandae dolor explicabo ipsam omnis iure qui iure exercitationem.\"}, {\"step\": \"Step 4: Et dolorum sint et recusandae.\"}, {\"step\": \"Step 5: Et dolor rerum hic dolores a aut voluptatem.\"}]', 'https://via.placeholder.com/640x480.png/002277?text=repellendus', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(26, 14, 'Consequatur aut vitae rerum vel iure natus laborum nulla tenetur occaecati dicta illo alias quaerat voluptas molestiae repudiandae rerum omnis.', 'Est rerum et alias necessitatibus omnis quos sit.', '[{\"name\": \"esse\", \"quantity\": 8049182}, {\"name\": \"ea\", \"quantity\": 8}, {\"name\": \"vel\", \"quantity\": 3}, {\"name\": \"atque\", \"quantity\": 0}]', '[{\"step\": \"Step 1: Accusantium corporis ipsa et eius rerum est.\"}, {\"step\": \"Step 2: Et ea et expedita autem quia.\"}, {\"step\": \"Step 3: Atque et voluptas delectus nobis vel vero.\"}, {\"step\": \"Step 4: Tempore corporis est commodi harum est.\"}, {\"step\": \"Step 5: Quibusdam itaque voluptas perspiciatis deleniti iusto.\"}]', 'https://via.placeholder.com/640x480.png/009966?text=est', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(27, 17, 'Est eum ut aut aperiam enim saepe omnis et cupiditate qui omnis eum facilis.', 'Aut ea quo dolore voluptatem.', '[{\"name\": \"numquam\", \"quantity\": 216539}, {\"name\": \"doloremque\", \"quantity\": 6487}, {\"name\": \"vitae\", \"quantity\": 14}, {\"name\": \"saepe\", \"quantity\": 994233611}]', '[{\"step\": \"Step 1: Deserunt occaecati aliquam quis eos asperiores officiis.\"}, {\"step\": \"Step 2: Dignissimos nisi debitis eum sit aut dolorem explicabo.\"}, {\"step\": \"Step 3: Doloribus ratione et nostrum ex.\"}, {\"step\": \"Step 4: Et animi mollitia suscipit illo perferendis.\"}, {\"step\": \"Step 5: Illo odit et quaerat est cum.\"}]', 'https://via.placeholder.com/640x480.png/009955?text=at', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(28, 20, 'Delectus asperiores nulla accusantium maxime quod modi sint harum ut officiis corporis.', 'Assumenda dolores fugit odio velit.', '[{\"name\": \"ipsa\", \"quantity\": 25466}, {\"name\": \"quia\", \"quantity\": 769}, {\"name\": \"quos\", \"quantity\": 933}, {\"name\": \"labore\", \"quantity\": 2}]', '[{\"step\": \"Step 1: Similique sint nam provident deleniti voluptatem quod et.\"}, {\"step\": \"Step 2: Adipisci qui assumenda autem nemo enim sit voluptas.\"}, {\"step\": \"Step 3: Saepe et qui voluptatem labore aut.\"}, {\"step\": \"Step 4: Mollitia nesciunt excepturi ipsum sapiente aut nulla dolorem est.\"}, {\"step\": \"Step 5: Quas iusto perferendis in dignissimos.\"}]', 'https://via.placeholder.com/640x480.png/00ee55?text=dicta', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(29, 23, 'Sed odio nam aperiam ipsam quidem veniam et voluptas iusto at sit quae libero amet sequi a.', 'Quam nihil ullam voluptatum vitae odio.', '[{\"name\": \"unde\", \"quantity\": 2706401}, {\"name\": \"tempora\", \"quantity\": 23}, {\"name\": \"sed\", \"quantity\": 715}, {\"name\": \"non\", \"quantity\": 163}]', '[{\"step\": \"Step 1: Ea qui ipsam facere.\"}, {\"step\": \"Step 2: Est non fuga quam aliquid et nobis quibusdam.\"}, {\"step\": \"Step 3: Velit dignissimos est sunt sapiente qui.\"}, {\"step\": \"Step 4: Repellendus et iusto nihil autem nesciunt est.\"}, {\"step\": \"Step 5: Tenetur ut hic excepturi aut illo dolor dolore.\"}]', 'https://via.placeholder.com/640x480.png/006666?text=debitis', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(30, 14, 'Dolorem sequi hic voluptates corporis qui dolore voluptatem quibusdam harum est vero vel alias vel deserunt ducimus quibusdam.', 'Suscipit quis eum rerum laboriosam.', '[{\"name\": \"ea\", \"quantity\": 34313}, {\"name\": \"quod\", \"quantity\": 2348151}, {\"name\": \"repellat\", \"quantity\": 6791}, {\"name\": \"eum\", \"quantity\": 56135966}]', '[{\"step\": \"Step 1: Laboriosam aut iste tempora.\"}, {\"step\": \"Step 2: Ut sit eum nobis quidem.\"}, {\"step\": \"Step 3: Placeat aut animi porro eum suscipit.\"}, {\"step\": \"Step 4: Reiciendis ut nihil quam perspiciatis.\"}, {\"step\": \"Step 5: Aut perspiciatis sed est labore.\"}]', 'https://via.placeholder.com/640x480.png/0066aa?text=error', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(31, 20, 'Distinctio sapiente ratione voluptatem et blanditiis consequatur error quia et consequuntur.', 'Non earum mollitia a perspiciatis dolorem impedit et.', '[{\"name\": \"dolores\", \"quantity\": 1}, {\"name\": \"harum\", \"quantity\": 593962119}, {\"name\": \"et\", \"quantity\": 53}, {\"name\": \"maiores\", \"quantity\": 293}]', '[{\"step\": \"Step 1: Adipisci maxime error ipsa fugit in aperiam.\"}, {\"step\": \"Step 2: Voluptate minima et voluptas fugiat quae facere.\"}, {\"step\": \"Step 3: Reiciendis tempore voluptatum praesentium facilis vel voluptas provident.\"}, {\"step\": \"Step 4: Cum odio velit ut consequuntur et vitae vitae et.\"}, {\"step\": \"Step 5: Ducimus est ipsum consequuntur consequatur.\"}]', 'https://via.placeholder.com/640x480.png/008877?text=enim', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(32, 22, 'Distinctio omnis enim minus saepe nemo sunt vel a ipsam mollitia aspernatur ex nobis officia maxime molestiae.', 'Accusamus et sapiente doloremque ut.', '[{\"name\": \"fugiat\", \"quantity\": 35}, {\"name\": \"quo\", \"quantity\": 893}, {\"name\": \"velit\", \"quantity\": 773}, {\"name\": \"odit\", \"quantity\": 3594650}]', '[{\"step\": \"Step 1: Placeat aut quibusdam ea ullam saepe.\"}, {\"step\": \"Step 2: Dignissimos laboriosam ut dolor.\"}, {\"step\": \"Step 3: Consectetur sunt qui aliquam quia dolores.\"}, {\"step\": \"Step 4: Ab quibusdam velit iste et.\"}, {\"step\": \"Step 5: Nihil harum tempore blanditiis qui non voluptas officia.\"}]', 'https://via.placeholder.com/640x480.png/00ff99?text=odit', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(33, 22, 'Voluptatem repellat dolor nihil nam ut eligendi consequuntur voluptatum tenetur esse tempore quo earum autem iste enim dolorem vel et.', 'Illo error delectus qui recusandae cumque amet aspernatur.', '[{\"name\": \"occaecati\", \"quantity\": 282}, {\"name\": \"dolorum\", \"quantity\": 476143}, {\"name\": \"dicta\", \"quantity\": 55326142}, {\"name\": \"porro\", \"quantity\": 3}]', '[{\"step\": \"Step 1: Quasi in numquam neque tempora optio minus vitae.\"}, {\"step\": \"Step 2: Iste sunt qui ut debitis ut possimus.\"}, {\"step\": \"Step 3: Ipsam dolores perferendis et.\"}, {\"step\": \"Step 4: Architecto nulla vitae alias itaque sit illum veniam.\"}, {\"step\": \"Step 5: Et id officiis numquam qui consequuntur est.\"}]', 'https://via.placeholder.com/640x480.png/00ffee?text=voluptatem', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(34, 19, 'Numquam rem voluptatem quasi consequatur dicta aliquam nam deleniti aliquam possimus enim qui quia minima.', 'Occaecati praesentium veniam molestiae eaque quam eaque.', '[{\"name\": \"dolores\", \"quantity\": 854}, {\"name\": \"recusandae\", \"quantity\": 2}, {\"name\": \"repellendus\", \"quantity\": 1910776}, {\"name\": \"quia\", \"quantity\": 789}]', '[{\"step\": \"Step 1: Porro vel deserunt facilis maiores provident.\"}, {\"step\": \"Step 2: Ratione laboriosam aut at quasi.\"}, {\"step\": \"Step 3: Illo iure accusantium omnis sequi quo non.\"}, {\"step\": \"Step 4: Natus sit nihil neque dolores quis magni.\"}, {\"step\": \"Step 5: Officia sint corporis quasi sit.\"}]', 'https://via.placeholder.com/640x480.png/00eeff?text=ipsa', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(35, 17, 'Qui exercitationem dolores vero suscipit qui amet autem saepe minus tenetur est alias fugit perspiciatis harum est aliquid eius provident.', 'Eum accusamus ipsum quasi consequatur eos ducimus.', '[{\"name\": \"reprehenderit\", \"quantity\": 357347}, {\"name\": \"voluptas\", \"quantity\": 611}, {\"name\": \"quis\", \"quantity\": 90}, {\"name\": \"sed\", \"quantity\": 349}]', '[{\"step\": \"Step 1: Consequatur maxime dolores et adipisci ipsam atque nobis.\"}, {\"step\": \"Step 2: Eum qui libero enim et hic voluptatem ipsa.\"}, {\"step\": \"Step 3: Ut molestias culpa aut reprehenderit blanditiis non necessitatibus.\"}, {\"step\": \"Step 4: Vero officiis amet ut reprehenderit ut dicta.\"}, {\"step\": \"Step 5: Beatae iure quaerat doloribus provident voluptatibus.\"}]', 'https://via.placeholder.com/640x480.png/00ee44?text=est', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(36, 22, 'Consequuntur aut ut corrupti aliquid laudantium eos voluptatibus dolorem id facere quis voluptas consectetur corporis repudiandae.', 'Qui modi enim explicabo corrupti.', '[{\"name\": \"repellat\", \"quantity\": 63}, {\"name\": \"esse\", \"quantity\": 2928837}, {\"name\": \"odio\", \"quantity\": 1640152}, {\"name\": \"ipsum\", \"quantity\": 15}]', '[{\"step\": \"Step 1: Et consequuntur et amet et at suscipit molestias at.\"}, {\"step\": \"Step 2: Odit voluptas dolorum cumque deserunt aut.\"}, {\"step\": \"Step 3: Quo debitis sint dolores.\"}, {\"step\": \"Step 4: Ipsa quo incidunt asperiores veniam modi ex voluptate ut.\"}, {\"step\": \"Step 5: Possimus iusto libero voluptatem quam perferendis et occaecati.\"}]', 'https://via.placeholder.com/640x480.png/000011?text=aut', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(37, 15, 'Ducimus tempore sapiente at tenetur velit mollitia qui ab odit sed ut corporis qui hic.', 'Amet accusantium unde ut minus.', '[{\"name\": \"sit\", \"quantity\": 3903}, {\"name\": \"officia\", \"quantity\": 654179201}, {\"name\": \"qui\", \"quantity\": 994}, {\"name\": \"nostrum\", \"quantity\": 52975}]', '[{\"step\": \"Step 1: Incidunt ut eligendi placeat quisquam nostrum.\"}, {\"step\": \"Step 2: Sit consequatur nulla earum quas in enim quis.\"}, {\"step\": \"Step 3: Et tempora repudiandae qui velit voluptatem et.\"}, {\"step\": \"Step 4: Eligendi molestias nostrum facere quasi.\"}, {\"step\": \"Step 5: Inventore repellendus aut sint.\"}]', 'https://via.placeholder.com/640x480.png/0044aa?text=dolores', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(38, 14, 'Hic quis atque optio a totam omnis qui placeat iure accusantium rerum nesciunt velit tempora nihil consectetur ea est harum.', 'Fugit voluptatem eum fugit odit voluptatum consequuntur.', '[{\"name\": \"recusandae\", \"quantity\": 61198}, {\"name\": \"laborum\", \"quantity\": 7928}, {\"name\": \"non\", \"quantity\": 0}, {\"name\": \"quidem\", \"quantity\": 7420748}]', '[{\"step\": \"Step 1: Quos saepe id sunt et qui quia.\"}, {\"step\": \"Step 2: Ex voluptatem nobis rerum non qui sequi aut rerum.\"}, {\"step\": \"Step 3: Et atque sed ullam saepe.\"}, {\"step\": \"Step 4: Blanditiis aut nemo in dolores aut ut.\"}, {\"step\": \"Step 5: Sed aperiam harum voluptatem aut.\"}]', 'https://via.placeholder.com/640x480.png/0077cc?text=odio', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(39, 13, 'Repudiandae architecto et nemo doloribus sint id earum et ad unde quam in ratione ratione tempore labore quia sunt voluptatibus.', 'Aut enim ducimus ducimus quo officiis ullam eaque atque.', '[{\"name\": \"ipsam\", \"quantity\": 8179070}, {\"name\": \"voluptas\", \"quantity\": 337}, {\"name\": \"est\", \"quantity\": 278349}, {\"name\": \"dignissimos\", \"quantity\": 4}]', '[{\"step\": \"Step 1: Et et aut et culpa.\"}, {\"step\": \"Step 2: Sequi omnis voluptatem et voluptatem.\"}, {\"step\": \"Step 3: Consequatur a esse voluptates suscipit saepe velit.\"}, {\"step\": \"Step 4: Facilis soluta voluptatem facere quam et et.\"}, {\"step\": \"Step 5: Consequuntur debitis dolorem consequatur ut voluptatem voluptas.\"}]', 'https://via.placeholder.com/640x480.png/008811?text=adipisci', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(40, 19, 'Distinctio quis eveniet a et sint eius ipsa qui sapiente in aspernatur excepturi reiciendis unde maiores quasi.', 'Sapiente laboriosam qui tenetur.', '[{\"name\": \"labore\", \"quantity\": 58}, {\"name\": \"harum\", \"quantity\": 898023821}, {\"name\": \"consequatur\", \"quantity\": 27815}, {\"name\": \"ut\", \"quantity\": 45902021}]', '[{\"step\": \"Step 1: Quo et beatae aliquam nemo error suscipit.\"}, {\"step\": \"Step 2: Qui tempore ea asperiores quaerat nam facere.\"}, {\"step\": \"Step 3: Consectetur nostrum sit quas mollitia.\"}, {\"step\": \"Step 4: Facilis eaque voluptatum voluptatem est doloremque impedit quia.\"}, {\"step\": \"Step 5: Aliquid voluptatum molestiae reprehenderit quisquam illo nihil.\"}]', 'https://via.placeholder.com/640x480.png/008800?text=ab', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(41, 13, 'Voluptas ipsam aut explicabo quia qui pariatur provident corporis neque non aliquid perspiciatis ut.', 'Delectus eveniet officia aut voluptatem corporis.', '[{\"name\": \"est\", \"quantity\": 674}, {\"name\": \"minus\", \"quantity\": 3584}, {\"name\": \"molestias\", \"quantity\": 606}, {\"name\": \"illum\", \"quantity\": 56633745}]', '[{\"step\": \"Step 1: Ea aut omnis labore atque provident et mollitia dolorem.\"}, {\"step\": \"Step 2: Dignissimos minus magni dolores illo non.\"}, {\"step\": \"Step 3: Harum ea rerum quaerat quia explicabo.\"}, {\"step\": \"Step 4: Doloremque amet autem et veniam totam quod cum.\"}, {\"step\": \"Step 5: Accusamus ut fuga reiciendis aperiam.\"}]', 'https://via.placeholder.com/640x480.png/00dd22?text=modi', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(42, 23, 'Eum similique accusamus qui possimus illo quia provident vel sed doloribus veritatis voluptatem et architecto et quia amet iusto eveniet.', 'Dolorem cum vel similique rerum.', '[{\"name\": \"ut\", \"quantity\": 2543}, {\"name\": \"eos\", \"quantity\": 21654}, {\"name\": \"voluptatem\", \"quantity\": 858008388}, {\"name\": \"porro\", \"quantity\": 7815}]', '[{\"step\": \"Step 1: Ut aut ipsum cumque enim.\"}, {\"step\": \"Step 2: Atque explicabo voluptates ipsam et soluta.\"}, {\"step\": \"Step 3: Dolores ut sit molestiae vitae.\"}, {\"step\": \"Step 4: Et rerum necessitatibus assumenda recusandae molestiae.\"}, {\"step\": \"Step 5: Molestiae ea quibusdam consequatur ut rerum doloremque.\"}]', 'https://via.placeholder.com/640x480.png/002211?text=officiis', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(43, 23, 'Ea similique sunt nihil dolor reprehenderit inventore illo blanditiis dolores quis dolorem eum et atque vitae accusamus qui commodi.', 'Repellat id sed quasi consequatur.', '[{\"name\": \"dolores\", \"quantity\": 62622}, {\"name\": \"dolore\", \"quantity\": 73607}, {\"name\": \"impedit\", \"quantity\": 6}, {\"name\": \"nesciunt\", \"quantity\": 386958}]', '[{\"step\": \"Step 1: Eum occaecati veniam sit placeat unde id.\"}, {\"step\": \"Step 2: Repudiandae eaque et commodi nam dolores.\"}, {\"step\": \"Step 3: Delectus molestias asperiores veniam amet.\"}, {\"step\": \"Step 4: Quod est laborum accusantium rem.\"}, {\"step\": \"Step 5: Mollitia accusantium nihil aut delectus quia illo aut in.\"}]', 'https://via.placeholder.com/640x480.png/00eeaa?text=dolorum', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(44, 23, 'Dolorem quia dolorem aperiam doloribus voluptas asperiores quia rerum dolor est molestiae labore at corrupti numquam voluptate.', 'Id exercitationem corporis perspiciatis accusantium qui quis rerum.', '[{\"name\": \"est\", \"quantity\": 179}, {\"name\": \"natus\", \"quantity\": 3588464}, {\"name\": \"similique\", \"quantity\": 75017}, {\"name\": \"aut\", \"quantity\": 26772}]', '[{\"step\": \"Step 1: Voluptatem natus minus autem molestiae.\"}, {\"step\": \"Step 2: Ea eaque consectetur illum pariatur.\"}, {\"step\": \"Step 3: Id et odio atque.\"}, {\"step\": \"Step 4: Vel excepturi est qui sapiente ut nihil.\"}, {\"step\": \"Step 5: Dolores quis a ratione sunt cupiditate.\"}]', 'https://via.placeholder.com/640x480.png/00bb66?text=voluptatem', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(45, 15, 'Numquam quae animi architecto assumenda et consequatur vero voluptatem iure aut impedit qui.', 'Velit blanditiis sequi omnis est.', '[{\"name\": \"non\", \"quantity\": 97677950}, {\"name\": \"est\", \"quantity\": 862}, {\"name\": \"non\", \"quantity\": 600547}, {\"name\": \"sit\", \"quantity\": 1}]', '[{\"step\": \"Step 1: Quia nihil est aut ipsam officia odio.\"}, {\"step\": \"Step 2: Dolore autem reiciendis ullam harum maiores totam nostrum et.\"}, {\"step\": \"Step 3: Tempora magni enim non omnis est.\"}, {\"step\": \"Step 4: Hic velit sapiente illo ut aut voluptatibus.\"}, {\"step\": \"Step 5: Hic tempore natus iste.\"}]', 'https://via.placeholder.com/640x480.png/001111?text=autem', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(46, 20, 'Voluptatem delectus maiores voluptatem architecto ut pariatur omnis provident ut soluta soluta soluta reprehenderit veniam et rerum libero illo rem.', 'Aut aut voluptatem nam autem illo culpa aut perspiciatis.', '[{\"name\": \"dolorem\", \"quantity\": 4520}, {\"name\": \"ut\", \"quantity\": 397}, {\"name\": \"facere\", \"quantity\": 3}, {\"name\": \"asperiores\", \"quantity\": 423}]', '[{\"step\": \"Step 1: Sed incidunt occaecati modi ad omnis dolores.\"}, {\"step\": \"Step 2: Est a quia provident consequatur quibusdam similique recusandae ut.\"}, {\"step\": \"Step 3: Doloremque aperiam delectus vero perspiciatis optio.\"}, {\"step\": \"Step 4: Debitis id voluptas dolorem quos magnam voluptas animi sed.\"}, {\"step\": \"Step 5: Facilis ut ad pariatur sunt.\"}]', 'https://via.placeholder.com/640x480.png/001188?text=et', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(47, 14, 'Porro repellat deleniti harum possimus voluptates cum quaerat ut sint.', 'Sed reprehenderit dolore quia commodi laudantium.', '[{\"name\": \"itaque\", \"quantity\": 479356501}, {\"name\": \"corporis\", \"quantity\": 56465}, {\"name\": \"totam\", \"quantity\": 3}, {\"name\": \"asperiores\", \"quantity\": 93550983}]', '[{\"step\": \"Step 1: Non ea est maiores soluta quia rerum perferendis.\"}, {\"step\": \"Step 2: Eveniet reprehenderit expedita ut illo dignissimos nulla.\"}, {\"step\": \"Step 3: Ipsum reprehenderit eum in ipsam deleniti velit excepturi.\"}, {\"step\": \"Step 4: In eos eum qui sint.\"}, {\"step\": \"Step 5: Fugiat vero quo id quis accusamus animi.\"}]', 'https://via.placeholder.com/640x480.png/005577?text=et', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(48, 15, 'Qui hic rerum placeat consectetur aut ipsa aut est quidem qui aliquid quia.', 'Doloribus voluptatibus odit animi iusto quasi facere.', '[{\"name\": \"repudiandae\", \"quantity\": 6996341}, {\"name\": \"fugiat\", \"quantity\": 9}, {\"name\": \"temporibus\", \"quantity\": 458200101}, {\"name\": \"voluptate\", \"quantity\": 888}]', '[{\"step\": \"Step 1: Sit temporibus ratione rerum cumque et libero illum ab.\"}, {\"step\": \"Step 2: Quia alias sequi nihil iure.\"}, {\"step\": \"Step 3: Distinctio expedita voluptatem rem eligendi fugit autem.\"}, {\"step\": \"Step 4: Quaerat adipisci earum quis id eveniet.\"}, {\"step\": \"Step 5: Totam dolore sit eum qui.\"}]', 'https://via.placeholder.com/640x480.png/00cc44?text=repudiandae', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(49, 19, 'Pariatur ducimus velit est est neque temporibus autem esse fuga laboriosam ex esse qui porro reiciendis.', 'Dolor eos nemo excepturi repellat fuga aut praesentium.', '[{\"name\": \"odit\", \"quantity\": 1381}, {\"name\": \"dolor\", \"quantity\": 45680422}, {\"name\": \"vel\", \"quantity\": 4}, {\"name\": \"ad\", \"quantity\": 402}]', '[{\"step\": \"Step 1: Enim repellat porro omnis cumque eaque perspiciatis.\"}, {\"step\": \"Step 2: Ducimus possimus eum delectus error.\"}, {\"step\": \"Step 3: Officiis sed est sequi tempore.\"}, {\"step\": \"Step 4: Consequatur optio possimus reiciendis suscipit molestiae modi.\"}, {\"step\": \"Step 5: Est veritatis officiis minima voluptatem debitis error sapiente.\"}]', 'https://via.placeholder.com/640x480.png/0055ee?text=et', '2024-03-18 22:51:21', '2024-03-18 22:51:21'),
(50, 21, 'In necessitatibus rerum qui minus architecto ipsam accusamus sed nihil at nam ad deserunt nostrum omnis dolores eos sit at labore.', 'Et est et nemo.', '[{\"name\": \"laudantium\", \"quantity\": 8810}, {\"name\": \"ut\", \"quantity\": 3094}, {\"name\": \"consequatur\", \"quantity\": 254936}, {\"name\": \"quo\", \"quantity\": 121740}]', '[{\"step\": \"Step 1: Voluptas non quae quibusdam molestiae ducimus nesciunt est aut.\"}, {\"step\": \"Step 2: Eaque quidem reiciendis minus doloribus ratione non.\"}, {\"step\": \"Step 3: Quia et et itaque molestiae aliquam velit corrupti.\"}, {\"step\": \"Step 4: Quidem veniam non doloribus inventore.\"}, {\"step\": \"Step 5: Magni doloribus quo saepe officiis autem porro.\"}]', 'https://via.placeholder.com/640x480.png/004466?text=cupiditate', '2024-03-18 22:51:21', '2024-03-18 22:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_category`
--

CREATE TABLE `recipe_category` (
  `id` bigint UNSIGNED NOT NULL,
  `recipe_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recipe_category`
--

INSERT INTO `recipe_category` (`id`, `recipe_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dhCyfPnPgCqd8ZJN2mivd6rSHGbW8U2xA1uWYIQe', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiTUF6Z1pKZmhGZmdGUTBtYjZyU25udjdjbjZhTGlQOElISUV1bnlvVyI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vY2Vrcy1raXRjaGVuLnRlc3QvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTM7fQ==', 1710835823),
('qZrLbud1ySmGtuFCCO9OHHnOipaUdJe58xJk1eQi', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/122.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoicDRsUzZGcW5HRlZ2alIzcnl6c0ZIZk1abjI4a0pBdUVEQ0x6aDdMViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9jZWtzLWtpdGNoZW4udGVzdC9teS1yZWNpcGUiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxMzt9', 1710822327);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(13, 'ceks-sama', 'ceks@gmail.com', NULL, '$2y$12$dc2OkND8ZdiykOVOJ0SFo..dDOItOpM6.OkIwlsAa7StUThae2JUG', NULL, '2024-03-18 18:20:29', '2024-03-18 18:29:39'),
(14, 'Orlo Dach IV', 'eshanahan@example.org', '2024-03-18 20:49:23', '$2y$12$ImxqF8BhJjR7uJBorTfe6uOXzmSzpAR/Gt8y/YIUaheWoNOwQKL4S', '17r4g03cXo', '2024-03-18 20:49:24', '2024-03-18 20:49:24'),
(15, 'Mr. Joe Homenick MD', 'mwuckert@example.org', '2024-03-18 20:49:24', '$2y$12$ImxqF8BhJjR7uJBorTfe6uOXzmSzpAR/Gt8y/YIUaheWoNOwQKL4S', 'yHpFfnst3E', '2024-03-18 20:49:24', '2024-03-18 20:49:24'),
(16, 'Raina Marvin V', 'mcglynn.tianna@example.com', '2024-03-18 20:49:24', '$2y$12$ImxqF8BhJjR7uJBorTfe6uOXzmSzpAR/Gt8y/YIUaheWoNOwQKL4S', 'uX2GdV9ROU', '2024-03-18 20:49:24', '2024-03-18 20:49:24'),
(17, 'Leo Berge', 'abigail.johns@example.net', '2024-03-18 20:49:24', '$2y$12$ImxqF8BhJjR7uJBorTfe6uOXzmSzpAR/Gt8y/YIUaheWoNOwQKL4S', '0h05CC5g1t', '2024-03-18 20:49:24', '2024-03-18 20:49:24'),
(18, 'Bertha Klocko', 'martin56@example.com', '2024-03-18 20:49:24', '$2y$12$ImxqF8BhJjR7uJBorTfe6uOXzmSzpAR/Gt8y/YIUaheWoNOwQKL4S', '2JkPtgusgT', '2024-03-18 20:49:24', '2024-03-18 20:49:24'),
(19, 'Prof. Jabari Rice PhD', 'roberts.jocelyn@example.net', '2024-03-18 20:49:24', '$2y$12$ImxqF8BhJjR7uJBorTfe6uOXzmSzpAR/Gt8y/YIUaheWoNOwQKL4S', 'cj78xG9blE', '2024-03-18 20:49:24', '2024-03-18 20:49:24'),
(20, 'Prof. Kendall Stracke', 'percy75@example.net', '2024-03-18 20:49:24', '$2y$12$ImxqF8BhJjR7uJBorTfe6uOXzmSzpAR/Gt8y/YIUaheWoNOwQKL4S', 'cNAzUYF7no', '2024-03-18 20:49:24', '2024-03-18 20:49:24'),
(21, 'Junior Skiles', 'thompson.nathanael@example.org', '2024-03-18 20:49:24', '$2y$12$ImxqF8BhJjR7uJBorTfe6uOXzmSzpAR/Gt8y/YIUaheWoNOwQKL4S', '6R0b2hxn3e', '2024-03-18 20:49:24', '2024-03-18 20:49:24'),
(22, 'Dr. Jonathan Abbott', 'dameon30@example.com', '2024-03-18 20:49:24', '$2y$12$ImxqF8BhJjR7uJBorTfe6uOXzmSzpAR/Gt8y/YIUaheWoNOwQKL4S', 'HlbQRNG80R', '2024-03-18 20:49:24', '2024-03-18 20:49:24'),
(23, 'Lyric Cormier', 'noemie.kling@example.net', '2024-03-18 20:49:24', '$2y$12$ImxqF8BhJjR7uJBorTfe6uOXzmSzpAR/Gt8y/YIUaheWoNOwQKL4S', 'OvVYUwLyGZ', '2024-03-18 20:49:24', '2024-03-18 20:49:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_user_id_foreign` (`user_id`),
  ADD KEY `comments_recipe_id_foreign` (`recipe_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourites_user_id_foreign` (`user_id`),
  ADD KEY `favourites_recipe_id_foreign` (`recipe_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_user_id_foreign` (`user_id`),
  ADD KEY `likes_recipe_id_foreign` (`recipe_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipes_user_id_foreign` (`user_id`);

--
-- Indexes for table `recipe_category`
--
ALTER TABLE `recipe_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `recipe_category_recipe_id_foreign` (`recipe_id`),
  ADD KEY `recipe_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `recipe_category`
--
ALTER TABLE `recipe_category`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `favourites`
--
ALTER TABLE `favourites`
  ADD CONSTRAINT `favourites_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `favourites_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipes`
--
ALTER TABLE `recipes`
  ADD CONSTRAINT `recipes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `recipe_category`
--
ALTER TABLE `recipe_category`
  ADD CONSTRAINT `recipe_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `recipe_category_recipe_id_foreign` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
