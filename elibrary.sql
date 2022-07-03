-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2022 at 04:43 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elibrary`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Slamet Marbun', 'elisa.maryadi@example.net', '0416 3975 8513', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-14 00:10:06', '2022-06-14 00:10:06'),
(2, 'Enteng Natsir', 'safitri.padmi@example.net', '(+62) 351 3970 3089', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-14 00:10:06', '2022-06-14 00:10:06'),
(3, 'Cagak Nyoman Nugroho', 'garda88@example.org', '(+62) 219 8559 615', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-14 00:10:06', '2022-06-14 00:10:06'),
(4, 'Anita Rahmawati', 'marbun.ibrani@example.net', '0276 5053 8649', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-14 00:10:06', '2022-06-14 00:10:06'),
(5, 'Asmadi Wibisono S.Pt', 'gbudiyanto@example.org', '(+62) 554 6918 8066', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-14 00:10:06', '2022-06-14 00:10:06'),
(7, 'Gita Suciana', 'gita_suciana@gmail.com', '0416 3975 8412', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-14 00:10:06', '2022-06-14 00:10:06'),
(8, 'Freenando', 'freenando@gmail.com', '0416 3975 4321', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2022-06-14 00:10:06', '2022-06-14 00:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_born` date DEFAULT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `slug`, `photo`, `date_born`, `bio`, `created_at`, `updated_at`) VALUES
(1, 'Mulyono Hidayat', 'mulyono-hidayat', NULL, '1950-11-29', '<p>Officiis quidem at eligendi. Impedit unde in et explicabo. Dolor in consequatur nulla dolores.</p><p>Eveniet vero nulla laborum quod eligendi. Neque voluptatem reiciendis in rerum. Aspernatur incidunt quis neque et aut aut atque.</p><p>Quod assumenda velit saepe ipsam. Sapiente iure eaque dolores beatae et. Eum quaerat rem ea fugiat. Voluptates illum dicta tenetur maxime dignissimos.</p>', '2022-06-14 00:09:42', '2022-06-14 00:09:42'),
(2, 'Eka Humaira Palastri', 'eka-humaira-palastri', NULL, '1998-07-06', '<p>Labore inventore voluptas suscipit sunt eos enim quos voluptate. Ipsam repellendus reiciendis veniam voluptatum ut autem quisquam quisquam. Praesentium laboriosam cupiditate soluta dolor velit facere assumenda. Odio est et ex non a.</p><p>Optio doloremque ut eaque dicta ad repellendus. Error non magnam qui non dolorem commodi qui. Repellendus ullam hic fuga quia est veritatis.</p><p>Occaecati optio unde provident beatae ea pariatur nihil. Fugit qui ullam soluta velit eius. Voluptas quia et laboriosam fugit. In dolores nisi harum qui.</p>', '2022-06-14 00:09:42', '2022-06-14 00:09:42'),
(3, 'Galur Sirait', 'galur-sirait', NULL, '1989-07-03', '<p>Ut placeat nobis rerum perspiciatis. Dicta omnis nisi veritatis. Labore et quia aut molestiae a quo. Ab aut eos eius vel deserunt eveniet vel. Et excepturi dolor adipisci quis porro maiores laudantium ut.</p><p>In cum similique quia ex unde animi saepe. Magnam quidem sit numquam ducimus atque. Ad quis et laudantium asperiores ea provident. Repellendus neque suscipit quia quasi.</p>', '2022-06-14 00:09:42', '2022-06-14 00:09:42'),
(4, 'Rina Mila Melani S.I.Kom', 'rina-mila-melani-sikom', NULL, '1970-09-21', '<p>Est et quia voluptatum. Ipsum maxime voluptate sed necessitatibus culpa. Veniam aliquid expedita ullam est voluptas.</p><p>Sint dolor distinctio vel fugit. Nihil quia fugiat laboriosam ad rerum illo voluptatibus. Omnis voluptatibus qui magnam minima id ullam ex. Harum facere id itaque nihil.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(5, 'Gangsa Jais Natsir', 'gangsa-jais-natsir', NULL, '1976-08-29', '<p>Necessitatibus quis autem velit aut est. Fugiat veniam vel occaecati magnam. Vitae blanditiis iste eum.</p><p>Cumque et repellat exercitationem. Eligendi autem et corrupti. Impedit possimus assumenda officia odit voluptatem eos adipisci. Deserunt dicta numquam totam a et.</p><p>Placeat maxime ab dolores aut perferendis et. Molestiae inventore corrupti id velit veritatis dolor tempore. Modi necessitatibus non dignissimos est saepe accusantium. Fugit ea sunt vero repellat error magni ipsum.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(6, 'Jarwi Hutasoit S.Farm', 'jarwi-hutasoit-sfarm', NULL, '1946-02-15', '<p>Eaque id in unde nostrum vitae in. Aut eligendi asperiores aut nostrum. Quod aut suscipit nulla deserunt.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(7, 'Eka Wulandari', 'eka-wulandari', NULL, '1995-09-09', '<p>Sit ut dolorum quibusdam ipsam eligendi quisquam. Sequi in quia ut natus ea. Est est vel totam corrupti qui.</p><p>Neque sed quae et facere omnis quibusdam sit. Dolorem id illo aspernatur iste vel veritatis at. Molestiae eligendi alias sint maiores rerum culpa harum.</p><p>Voluptates qui sit inventore est quo veniam. Voluptatem temporibus deleniti qui accusamus. Ut qui molestiae eos eum sed.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(8, 'Emas Sinaga', 'emas-sinaga', NULL, '1956-10-13', '<p>Assumenda veritatis necessitatibus rerum est quis voluptas. Eaque quisquam quos ut ut. Similique dolor praesentium similique consectetur.</p><p>Est natus modi temporibus qui ratione voluptatem. Eos ratione eum neque non.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(9, 'Anita Queen Pertiwi', 'anita-queen-pertiwi', NULL, '1970-07-15', '<p>Ea ut praesentium reiciendis laudantium. Voluptatem aut soluta ullam fuga saepe voluptatem. Quod et tempora sint architecto ut provident.</p><p>Ratione enim nihil blanditiis quisquam accusamus. Pariatur id quo est ea. Dignissimos excepturi aut impedit nobis.</p><p>Maiores officiis ut ab aut blanditiis consequuntur dolore tenetur. Exercitationem culpa consequuntur eos doloribus cum. Voluptas et similique dignissimos in quisquam. Ea quia molestiae culpa culpa. Aut aut dolor magnam quis.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(10, 'Karimah Widya Andriani S.H.', 'karimah-widya-andriani-sh', NULL, '2000-09-01', '<p>Vel rem deleniti facere blanditiis. Hic incidunt officia atque corporis. Eos impedit et nostrum rerum. Fuga ratione blanditiis qui sapiente.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(11, 'Hartana Dasa Suwarno', 'hartana-dasa-suwarno', NULL, '1994-06-27', '<p>Vel ab eos enim ut. Harum dolores deserunt et non deleniti eveniet aliquid. Quis nihil laborum exercitationem et et tempora dolor. Exercitationem qui expedita quod officiis assumenda est.</p><p>Omnis voluptatum et incidunt quia alias molestias. Sit in qui dolores voluptatem vitae labore error et. Non et eum commodi omnis voluptate et quod provident.</p><p>Quis quo maxime fugiat voluptas sint. Adipisci perferendis vero fuga eum. Saepe doloribus dolor ratione tenetur culpa omnis ea neque. Quasi delectus est et praesentium aut soluta. Minima voluptas ut eos.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(12, 'Ratih Vera Yuniar', 'ratih-vera-yuniar', NULL, '1944-03-30', '<p>Atque quod repellat ipsam dolores. Et voluptate eos et modi aut. Doloribus dolorem eaque sapiente atque eius. Quaerat voluptatem sunt et accusamus eius sunt voluptatem.</p><p>Dignissimos occaecati consequuntur ab voluptate vel dolorem. Incidunt repudiandae aut pariatur at dolorem. Nihil fugiat repudiandae unde cumque perferendis. Atque consequuntur voluptatem accusantium et tempore ratione deleniti.</p><p>Possimus nesciunt quam reiciendis ratione ipsam rerum sapiente. Sunt iusto magnam rerum non. Officia at officiis debitis autem.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(13, 'Kunthara Sihotang S.T.', 'kunthara-sihotang-st', NULL, '1943-08-07', '<p>Id asperiores et quasi porro et omnis autem. Quo quia molestiae quae voluptas tempore dolor eligendi suscipit. Non debitis quaerat odio.</p><p>Quis accusamus autem odit libero culpa. Repudiandae rerum perspiciatis ea.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(14, 'Wulan Anggraini', 'wulan-anggraini', NULL, '1942-06-24', '<p>Tempore ipsam magnam eos fugiat enim sit. Nam et dolores culpa amet consequuntur. Sunt officia consequuntur recusandae sint qui velit. Magni minus occaecati sit rerum non sapiente.</p><p>Consequatur similique quia tenetur qui labore. Voluptatum et ut officia est voluptatem quis veniam. Sapiente dolor eveniet ipsam aliquid sit.</p><p>Et quisquam cum voluptatum incidunt accusantium odit. Et veniam magni similique id occaecati possimus. Ab voluptates consequuntur ut facere quis quia. Maxime aut quos vel doloribus incidunt nam. Minus minima eos et repellat.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(15, 'Rini Andriani', 'rini-andriani', NULL, '1968-08-26', '<p>Expedita atque asperiores ullam dignissimos aut consequatur. Quisquam consequatur velit enim et deleniti aspernatur. Cupiditate error consequatur ducimus occaecati repellendus inventore. Cupiditate molestias voluptas omnis possimus reprehenderit. Aliquid beatae incidunt ipsa dignissimos.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(16, 'Lembah Anggriawan', 'lembah-anggriawan', NULL, '1946-05-10', '<p>Cupiditate nam non ut est labore provident. A sed ducimus voluptatem et. Voluptatum nostrum tenetur deserunt rerum quidem quia voluptatem. Accusamus temporibus natus fugit aut nulla qui officiis.</p><p>Aliquid accusamus ex ut praesentium qui. Velit fugiat praesentium voluptas deleniti et iste totam animi. Sint quam est facilis quia libero. Nam fuga beatae voluptas atque quis.</p>', '2022-06-14 00:09:43', '2022-06-14 00:09:43'),
(17, 'Irma Yuniar', 'irma-yuniar', NULL, '1994-05-20', '<p>Est odit et sunt modi illo illum similique. Aut facere aut architecto iste ut aut et ut. Animi tenetur rem pariatur quia. Asperiores provident qui et sed.</p>', '2022-06-14 00:09:44', '2022-06-14 00:09:44'),
(18, 'Rachel Rahmawati', 'rachel-rahmawati', NULL, '1965-12-29', '<p>Inventore blanditiis eius ab et. Magni corporis vel voluptas repellendus molestias officiis fugiat. Quidem ipsa sit temporibus ut.</p><p>Ut et totam repellat. Alias sed occaecati quia porro est voluptas. Consequatur saepe itaque minima esse quisquam id.</p>', '2022-06-14 00:09:44', '2022-06-14 00:09:44'),
(19, 'Gina Violet Safitri M.Ak', 'gina-violet-safitri-mak', NULL, '1948-06-17', '<p>Ut in numquam magni sed. Omnis ea illum est atque dolor quis dolores. Cupiditate voluptatem ut sequi eveniet itaque sequi sit.</p><p>Dolorem rerum ab illo eum qui sunt iusto. Odit porro similique non vero. Dolor voluptatibus consequatur adipisci nam.</p>', '2022-06-14 00:09:44', '2022-06-14 00:09:44'),
(20, 'Rika Rahmawati S.T.', 'rika-rahmawati-st', NULL, '1953-01-01', '<p>Culpa natus voluptas et dolor. Officia ut praesentium ut et eum aut. Praesentium temporibus quis sint quod sed suscipit. Voluptates quasi rerum et libero et reiciendis qui.</p><p>Voluptas qui aliquam ex molestiae officiis quae. Odio numquam natus assumenda ut qui dolorum. Nesciunt consequuntur ea sint nisi deserunt nihil.</p><p>Sit beatae nobis quis aut inventore officiis quos. Facilis aperiam et distinctio iste voluptates placeat. Libero placeat molestiae doloremque tempora. Fugiat error minima provident. Deleniti aut accusantium laboriosam vero aut molestias voluptatum.</p>', '2022-06-14 00:09:44', '2022-06-14 00:09:44'),
(21, 'Irma Wahyuni', 'irma-wahyuni', NULL, '1970-01-28', '<p>Quia alias voluptate voluptatem ut. Consequatur earum unde iure error ut animi. Rerum non ea in labore molestiae earum. Provident veritatis quia totam magni aliquid.</p><p>Tenetur delectus suscipit dolores maxime voluptatem. Rerum saepe quae recusandae provident corrupti. Ullam explicabo hic omnis dolor iusto recusandae.</p>', '2022-06-14 00:09:44', '2022-06-14 00:09:44'),
(22, 'Jais Artawan Pranowo', 'jais-artawan-pranowo', NULL, '1951-08-01', '<p>Rerum officiis odit labore occaecati. Quasi odit odit aut dolor dolorem commodi aut magni. Voluptatibus accusamus molestiae aut consequatur est odio dolor provident.</p><p>Recusandae expedita qui veritatis quos numquam et. Quas aut quia velit quas et et. In non reprehenderit voluptatem ullam at numquam cupiditate libero. Voluptate ipsam provident ut rerum repellat est inventore.</p>', '2022-06-14 00:09:44', '2022-06-14 00:09:44'),
(24, 'Septi Yuliarti', 'septi-yuliarti', NULL, '1964-07-27', '<p>Molestias deleniti nisi est voluptas. Vel repudiandae assumenda commodi sed ut. Voluptatum voluptas error omnis nulla aut nihil quis. Ab quia voluptas consequatur ab fugit.</p><p>Illo et veritatis libero sint sint. Et reprehenderit perferendis rerum. Facilis quis omnis hic.</p>', '2022-06-14 00:09:44', '2022-06-14 00:09:44'),
(25, 'Salimah Zahra Puspasari M.Kom.', 'salimah-zahra-puspasari-mkom', NULL, '1995-04-03', '<p>Et qui qui cum. Veritatis harum rerum mollitia consequatur. Alias repellat voluptatem consequatur dolores tenetur. Qui quasi fugiat enim quo.</p><p>Ut cupiditate dignissimos libero blanditiis qui. Quia in iure sunt et. Voluptas quos debitis eveniet. Quia id ducimus voluptatem.</p><p>Culpa atque ea ea. Minus expedita sed eum beatae dolor explicabo. Nesciunt perspiciatis dolorum magnam fugiat reprehenderit mollitia libero autem. Magni et qui suscipit mollitia nihil. Quasi error aut illo et aspernatur.</p>', '2022-06-14 00:09:44', '2022-06-14 00:09:44'),
(26, 'Amelia Wulandari S.E.', 'amelia-wulandari-se', NULL, '1961-01-18', '<p>Qui facere qui consequatur. Animi dolorum numquam earum non magni quo. Et quo ad aut totam et consequatur. Ad accusamus ipsum eum qui.</p>', '2022-06-14 00:09:44', '2022-06-14 00:09:44'),
(27, 'Galih Widodo', 'galih-widodo', NULL, '1967-11-18', '<p>Dolorum voluptas et quos delectus facilis necessitatibus et porro. Eaque animi sed omnis eveniet. Maxime laboriosam nostrum doloribus repellat placeat rerum. Deserunt voluptatibus sunt molestiae blanditiis accusantium.</p><p>Qui quos voluptatem dolorem quo iure voluptas dolorem sapiente. Qui aut cum incidunt mollitia quam. Molestias reiciendis porro odio omnis. Vitae hic blanditiis recusandae aliquid ut.</p>', '2022-06-14 00:09:45', '2022-06-14 00:09:45'),
(28, 'Enteng Wacana S.IP', 'enteng-wacana-sip', NULL, '1992-02-10', '<p>Dignissimos at natus laudantium ea vitae voluptas. Vitae sunt dolore eum doloremque eos placeat soluta. Et voluptate ipsam maxime.</p>', '2022-06-14 00:09:45', '2022-06-14 00:09:45'),
(29, 'Ophelia Safitri', 'ophelia-safitri', NULL, '1956-02-25', '<p>Error sequi debitis et quasi voluptatem fugit suscipit quae. Illum aut ducimus in tenetur molestias mollitia pariatur aspernatur. Laboriosam amet magnam sit id facilis. Consequatur iusto fugit et recusandae eius non possimus.</p>', '2022-06-14 00:09:45', '2022-06-14 00:09:45'),
(30, 'Koko Sinaga', 'koko-sinaga', NULL, '1981-07-17', '<p>Eaque ipsam odit quidem assumenda soluta. Rerum rerum quod alias quod. Vel rerum dicta non sint ut sint omnis pariatur. Ipsum sed necessitatibus ab dolor est placeat.</p>', '2022-06-14 00:09:45', '2022-06-14 00:09:45'),
(31, 'Simon Manah Hidayanto S.Farm', 'simon-manah-hidayanto-sfarm', NULL, '1978-02-06', '<p>Molestiae officia officiis dignissimos nulla et. Saepe vel fugiat eum eveniet enim eligendi quo. Porro in perferendis totam facilis doloremque explicabo quae quia.</p>', '2022-06-14 00:09:46', '2022-06-14 00:09:46'),
(32, 'Reksa Mangunsong S.Pd', 'reksa-mangunsong-spd', NULL, '2001-06-03', '<p>Ut consequatur est repudiandae consequatur enim amet. Non quia quo atque qui quia officiis totam. Dicta dolor voluptatem tempora non. Labore quisquam iusto nam voluptatum.</p><p>Et tempore non dicta soluta. Repellat laboriosam incidunt et. Repellat totam ab iste suscipit facere vel dolor odit. Cumque sit hic velit voluptate nostrum quia iure.</p><p>Eos cumque in quo qui et eveniet officia voluptatem. Sunt est et ut rerum adipisci id earum. Voluptates iste a in voluptatem exercitationem quia. Magnam ut rem temporibus deserunt cumque ad.</p>', '2022-06-14 00:09:46', '2022-06-14 00:09:46'),
(33, 'Yance Mardhiyah S.I.Kom', 'yance-mardhiyah-sikom', NULL, '1960-05-30', '<p>At dolores et dolorem animi impedit consequatur. Porro reprehenderit amet architecto tempora. Et doloribus dignissimos aliquam voluptas sit harum. Aperiam perferendis provident ipsum enim sed nesciunt quis iusto.</p><p>In non aliquam et blanditiis. Excepturi illum eaque molestiae. Ut et laborum dicta excepturi.</p><p>Dignissimos vero sit totam voluptatem non sint. Et repellendus numquam expedita deserunt. Pariatur inventore aspernatur consequatur. Cum at molestiae quam sunt et. Cumque nesciunt et vel vel quam libero ad.</p>', '2022-06-14 00:09:46', '2022-06-14 00:09:46'),
(34, 'Vera Rika Fujiati', 'vera-rika-fujiati', NULL, '1993-11-10', '<p>Quidem blanditiis officia et. Inventore quisquam blanditiis sunt ab. Nobis aut reprehenderit qui dolorum voluptas cumque. Fuga fugit quibusdam et reiciendis quasi. Voluptates quis qui iusto eos ut.</p>', '2022-06-14 00:09:46', '2022-06-14 00:09:46'),
(35, 'Putri Yolanda', 'putri-yolanda', NULL, '1996-02-13', '<p>Dolores atque adipisci illum ut culpa dolorem ducimus ipsam. Impedit est aperiam quia dolore sit ducimus nihil consequatur. Dicta fugit quis rerum ex excepturi. Est quos et sed alias sint libero.</p><p>Ipsa ut dicta ipsum et. Voluptas quia nisi sit voluptate eveniet.</p>', '2022-06-14 00:09:46', '2022-06-14 00:09:46'),
(36, 'Uchita Janet Haryanti M.M.', 'uchita-janet-haryanti-mm', NULL, '1973-06-13', '<p>Excepturi voluptas non numquam ipsam autem omnis. Molestiae mollitia porro facilis qui vel eaque suscipit. Maiores quis aut laboriosam eveniet quasi porro explicabo ut.</p>', '2022-06-14 00:09:46', '2022-06-14 00:09:46'),
(37, 'Dian Nuraini', 'dian-nuraini', NULL, '1974-01-18', '<p>Et voluptatem placeat iusto similique neque. Eius quaerat beatae accusantium dolores totam quasi. Corrupti suscipit eveniet natus excepturi qui atque. Et non vel dignissimos voluptatibus.</p>', '2022-06-14 00:09:46', '2022-06-14 00:09:46'),
(38, 'Bella Mayasari', 'bella-mayasari', NULL, '1977-11-02', '<p>Eveniet suscipit magnam at ut sit aut sapiente. Saepe beatae minus culpa cupiditate perspiciatis. Natus in assumenda earum et provident.</p>', '2022-06-14 00:09:46', '2022-06-14 00:09:46'),
(39, 'Agnes Tira', 'agnes-tira', NULL, '1994-01-05', '<div>Unde sed omnis eum vero eius. Et soluta voluptatibus saepe non. Molestiae et voluptatem blanditiis qui officia voluptas cupiditate. Nesciunt nihil minima vitae enim.<br><br></div>', '2022-06-14 00:09:46', '2022-06-15 05:11:13'),
(40, 'Baktianto Nababan', 'baktianto-nababan', NULL, '1946-05-12', '<p>Eos non dolores reprehenderit aut nihil. Necessitatibus qui distinctio perferendis dolor magni. Quis voluptatem blanditiis maiores porro odio repellendus.</p><p>Sapiente et modi amet assumenda nemo. Nobis iure nemo voluptates est. Ut est sit voluptatem doloremque. Sunt veritatis sit ut molestiae quam soluta ut.</p>', '2022-06-14 00:09:46', '2022-06-14 00:09:46'),
(41, 'Ida Rahmi Fujiati', 'ida-rahmi-fujiati', NULL, '1946-04-24', '<p>Quos sed et repellendus praesentium iste. Eius esse necessitatibus cum est quod repellat in recusandae. Cupiditate dolorum aliquid iste.</p><p>Ut atque explicabo ipsa vel placeat. Voluptas quis quo numquam velit et. Sed et aspernatur delectus ut est.</p>', '2022-06-14 00:09:46', '2022-06-14 00:09:46'),
(42, 'Anastasia Purnawati', 'anastasia-purnawati', NULL, '1981-09-25', '<p>Quae recusandae et consequuntur cumque ea eaque. Ut saepe aut impedit quia mollitia debitis. Est quasi praesentium consequatur tempore rem.</p><p>Minus perspiciatis id magnam quaerat qui dolorum. Sed voluptas voluptates magnam fuga est nisi pariatur. Ducimus vel repellat veniam tempore.</p>', '2022-06-14 00:09:46', '2022-06-14 00:09:46'),
(43, 'Patricia Lestari', 'patricia-lestari', NULL, '1982-09-16', '<p>Autem enim qui molestiae qui cupiditate optio quod. Omnis et voluptates qui rerum.</p><p>Explicabo dolorem voluptatem fugiat. Quos sit ea et aperiam inventore repellat. Corrupti praesentium quia possimus unde ex. Voluptate autem dolorem fugiat non. Nihil doloremque rerum vel ducimus ut quia tenetur.</p><p>Ut eos at vitae quis doloremque. Ratione facilis perspiciatis a ab eos eligendi est. Voluptatem aut eos ea occaecati beatae libero.</p>', '2022-06-14 00:09:47', '2022-06-14 00:09:47'),
(44, 'Hasta Gunawan', 'hasta-gunawan', NULL, '1968-01-11', '<p>Nobis rem et perspiciatis velit tenetur vel vero. Qui ipsum recusandae ut soluta iusto. Quis dolorem aut repellat qui omnis hic. Cupiditate quis incidunt id iste repudiandae ab.</p><p>Voluptatem veniam in dolorum cupiditate in tenetur. Ipsum placeat repellendus ad. Est consequatur quo impedit est dolore assumenda. Laudantium a atque tempore earum sed.</p><p>Ad rerum nisi delectus ipsum dolores maiores. Eligendi maxime id quod velit. Aut odio et quo labore.</p>', '2022-06-14 00:09:47', '2022-06-14 00:09:47'),
(45, 'Malika Sabrina Padmasari', 'malika-sabrina-padmasari', NULL, '1993-09-14', '<p>Illo a mollitia dolorem sapiente ipsam est. Ut vitae harum dolores doloremque. Dolorum occaecati consequuntur qui dolorem ad fuga.</p>', '2022-06-14 00:09:47', '2022-06-14 00:09:47'),
(46, 'Prabu Umay Firgantoro S.Sos', 'prabu-umay-firgantoro-ssos', NULL, '1978-03-30', '<p>Perspiciatis ut sapiente corporis rerum eos minima soluta. At natus sunt corporis. At aut molestiae nisi eaque rem.</p>', '2022-06-14 00:09:47', '2022-06-14 00:09:47'),
(47, 'Usman Wibowo', 'usman-wibowo', NULL, '1944-02-06', '<p>Sit sunt et repellendus aperiam. Odio eius nisi non. Et repellendus dicta autem adipisci aut consequuntur distinctio. Sint velit officia et veniam rem iste provident.</p><p>Non deserunt sunt dolor nesciunt eaque voluptate. Qui quasi recusandae hic dolorem voluptas vel. Libero nihil veniam ullam. Totam porro distinctio modi perferendis deleniti voluptas non autem.</p><p>In qui voluptatem quidem provident provident. Nihil est aliquam earum soluta ipsum asperiores ut. Et odit explicabo ipsa odio.</p>', '2022-06-14 00:09:47', '2022-06-14 00:09:47'),
(48, 'Nasrullah Samosir', 'nasrullah-samosir', NULL, '1991-04-11', '<p>Ea aliquid ad officia saepe libero doloribus blanditiis. Qui ullam vel eius. Molestiae quia qui rerum sed.</p><p>Velit fugit tempore hic. Blanditiis eligendi quos perspiciatis ipsa expedita sit sequi eaque. Corporis autem quia harum beatae numquam harum alias. Vero et odit aut magni sunt et quidem enim.</p>', '2022-06-14 00:09:47', '2022-06-14 00:09:47'),
(49, 'Elisa Hesti Astuti M.TI.', 'elisa-hesti-astuti-mti', NULL, '1992-02-23', '<p>Accusantium qui quibusdam doloremque perspiciatis cupiditate et. Vero fuga iure omnis alias voluptatem nihil. Quia dolores qui soluta ex ea omnis rerum.</p><p>Molestiae magnam cupiditate sunt totam cupiditate sint. Iste quo officiis eveniet natus officiis ad. Vel atque magnam natus sit.</p>', '2022-06-14 00:09:47', '2022-06-14 00:09:47'),
(50, 'Maya Hasanah', 'maya-hasanah', NULL, '1957-08-03', '<p>Cumque et porro sit. Ut mollitia aut harum enim. Fugit pariatur et repudiandae aut. Dolor ut ex in quibusdam ut.</p><p>Sed et perferendis aliquid animi omnis alias quia. Nemo qui quisquam voluptatibus libero deserunt dolore vitae. Officia molestiae at ut. Culpa velit est velit minima.</p>', '2022-06-14 00:09:47', '2022-06-14 00:09:47'),
(51, 'Kawaya Napitupulu S.Farm', 'kawaya-napitupulu-sfarm', NULL, '1982-01-05', '<p>Ad accusamus quia voluptatem repellat mollitia. Voluptas similique excepturi quaerat animi repudiandae hic. Explicabo ex blanditiis corrupti veniam optio repellat sunt. Asperiores molestias quasi iste quasi non.</p><p>Hic deserunt cum nemo voluptas distinctio culpa. Velit repellat sit dolor ipsam repellat molestiae. Sed illum harum odit itaque sint harum voluptatem neque. Sit in dignissimos iure rem rerum maiores.</p>', '2022-06-14 00:09:48', '2022-06-14 00:09:48'),
(52, 'Almira Yuliarti', 'almira-yuliarti', NULL, '1954-12-20', '<p>Minus atque officia quaerat eum aut eaque eligendi. Porro accusantium qui ad veniam. Libero qui fugiat nobis. Sint aliquid explicabo consequatur quis sit id delectus.</p><p>Molestiae qui quis dolorum fugiat. Veniam ratione expedita eaque. Placeat nihil nobis vero quo id autem. Quae et dolorum maxime sed omnis dolorum.</p>', '2022-06-14 00:09:48', '2022-06-14 00:09:48'),
(53, 'Hilda Hastuti', 'hilda-hastuti', NULL, '1950-07-10', '<p>Consequuntur dolor et autem enim unde aut sint eius. Id magnam aut inventore vel provident nisi. Eveniet repellendus voluptatum sapiente minima. Voluptatibus quo rerum nisi voluptatem quod aliquam.</p>', '2022-06-14 00:09:48', '2022-06-14 00:09:48'),
(54, 'Darimin Mumpuni Anggriawan M.Pd', 'darimin-mumpuni-anggriawan-mpd', NULL, '1972-04-30', '<p>Nam consequatur aut voluptatem beatae veniam rem ipsam. Est voluptatem quaerat beatae omnis. Consequatur minus inventore ex non. Voluptatem aspernatur rerum est.</p><p>Corporis aut aut necessitatibus eligendi ratione voluptatem qui. Esse aut ut perspiciatis delectus quod est. Rerum dignissimos recusandae consectetur laborum sit. Magni blanditiis sit ipsam.</p>', '2022-06-14 00:09:48', '2022-06-14 00:09:48'),
(55, 'Tugiman Rajata', 'tugiman-rajata', NULL, '1959-12-29', '<p>Quo autem officia in libero nihil. Expedita dolore saepe omnis nisi et.</p><p>Sit libero aut assumenda voluptas. Quae tempore et ratione alias saepe ipsa. Dolor est vel a. Laborum voluptas reiciendis asperiores ut.</p>', '2022-06-14 00:09:48', '2022-06-14 00:09:48'),
(56, 'Puspa Nuraini', 'puspa-nuraini', NULL, '1972-02-21', '<p>Odit cum deleniti sed vel. Natus et laudantium hic quia et aspernatur iste. Quasi nihil vitae saepe quod ea repellat alias.</p><p>Et ullam enim doloribus. Ipsam eum molestiae incidunt et hic ad quis. Nobis laudantium autem ducimus.</p><p>Nesciunt suscipit iure velit mollitia. Dignissimos ut dignissimos assumenda ut. Et minima quisquam tempora sit non corrupti saepe. Sunt excepturi quam tempore aut tempore eum.</p>', '2022-06-14 00:09:48', '2022-06-14 00:09:48'),
(57, 'Harjasa Irawan', 'harjasa-irawan', NULL, '1981-06-08', '<p>Est in unde eum beatae numquam non ea. Explicabo qui aliquam repellat inventore est. Aut velit qui sit consequatur rerum.</p><p>Ut quaerat ipsum necessitatibus quia quos. Et sint facilis qui voluptatem ab. In a ad veniam eveniet. Non laboriosam aut ex quia. Laborum quis cupiditate omnis in.</p><p>Vero vero cumque sapiente debitis. Sit eaque quia nobis minima. Cum quisquam autem debitis facere accusantium facilis.</p>', '2022-06-14 00:09:48', '2022-06-14 00:09:48'),
(58, 'Maryadi Prasetyo', 'maryadi-prasetyo', NULL, '1952-12-06', '<p>Optio cum quae ut ea corrupti assumenda. Consequuntur vero a eos et sit omnis. Nisi fuga nihil necessitatibus sint.</p>', '2022-06-14 00:09:48', '2022-06-14 00:09:48'),
(59, 'Jarwadi Limar Saefullah S.Psi', 'jarwadi-limar-saefullah-spsi', NULL, '1983-12-08', '<p>Molestiae dolorem et doloremque suscipit. Nobis quisquam architecto sit repudiandae accusamus ipsum. Animi sed sed ea. Iusto laudantium et ut error.</p><p>Commodi sunt ab animi accusantium aut dolores et. Est vitae quis nemo impedit sunt.</p>', '2022-06-14 00:09:48', '2022-06-14 00:09:48'),
(60, 'Hani Clara Zulaika S.Farm', 'hani-clara-zulaika-sfarm', NULL, '1951-10-03', '<p>Possimus consequuntur voluptas commodi ad nulla harum labore. Corporis nostrum reprehenderit qui fuga quo. Dolorem blanditiis eaque corporis tempora nihil deleniti voluptatum voluptates. Nihil sint magni accusantium nemo.</p><p>Blanditiis nihil sed molestias enim. Impedit numquam voluptate est tempore quis excepturi molestiae. Nihil sunt eaque earum totam et debitis sint.</p><p>Sint porro dignissimos et debitis consequatur maxime unde. Ducimus ipsa sequi qui et nisi sunt. Nostrum aut aut ea voluptate totam accusamus.</p>', '2022-06-14 00:09:49', '2022-06-14 00:09:49'),
(61, 'Sarah Yolanda', 'sarah-yolanda', NULL, '1953-12-29', '<p>Ducimus ut sunt est est nemo necessitatibus facilis. Blanditiis facere aperiam temporibus nulla voluptas. Debitis omnis distinctio vel.</p>', '2022-06-14 00:09:49', '2022-06-14 00:09:49'),
(62, 'Slamet Jinawi Sihotang', 'slamet-jinawi-sihotang', NULL, '1945-06-10', '<p>Numquam et assumenda esse suscipit. Voluptatem aut rerum dolor nihil quia dolores.</p>', '2022-06-14 00:09:49', '2022-06-14 00:09:49'),
(63, 'Pia Mandasari', 'pia-mandasari', NULL, '1994-07-08', '<p>Quisquam id adipisci aut vel sunt vel perferendis. Nihil enim maiores numquam voluptatem voluptas nihil veniam. Ut laudantium quia magnam magnam ipsum iusto.</p><p>Enim provident consequatur et debitis tempore ea voluptatem libero. Nobis dicta mollitia perspiciatis praesentium dolores laborum aliquid. Odio quia blanditiis non numquam voluptatem similique.</p>', '2022-06-14 00:09:49', '2022-06-14 00:09:49'),
(64, 'Ina Purnawati', 'ina-purnawati', NULL, '1985-10-30', '<p>Sit quia quia nulla assumenda. Eum dignissimos et fuga sequi sint saepe. Natus nobis et aut similique dolor animi quia.</p><p>Ea tenetur aperiam temporibus excepturi iusto aspernatur. Cum eos id nostrum sit voluptatem ipsa.</p>', '2022-06-14 00:09:49', '2022-06-14 00:09:49'),
(66, 'Oni Utami', 'oni-utami', NULL, '1976-07-13', '<p>Autem quam earum laudantium sunt. Voluptatum officiis voluptatem corporis aut. Quia sed suscipit consectetur deleniti soluta officia dolores et. In eaque inventore doloremque ut voluptate quia repudiandae.</p><p>Omnis quo consequatur officia ad. Consequatur reiciendis officia nihil ipsa dolor porro. Accusamus nostrum numquam aspernatur veniam accusantium magni ut omnis. Qui ut mollitia ratione.</p>', '2022-06-14 00:09:49', '2022-06-14 00:09:49'),
(67, 'Kunthara Cemplunk Pranowo', 'kunthara-cemplunk-pranowo', NULL, '1950-02-24', '<p>Non iusto vero modi eos modi. Consectetur iure qui temporibus aliquam nihil deleniti saepe et. Molestiae inventore consequatur neque dignissimos. Officiis iusto quam eos incidunt qui.</p><p>In suscipit odit expedita esse ex. Facere omnis neque perspiciatis dolore vitae labore rerum. Consequatur sequi doloribus itaque recusandae est culpa tempora. Ducimus at quasi quo iusto. Est possimus facere vitae blanditiis.</p><p>Velit sed ea sapiente quos totam voluptatibus pariatur. Accusamus error quaerat consequatur dolores sed nobis voluptatum. Et ut excepturi vel assumenda qui blanditiis praesentium. Eligendi itaque quis veritatis. Reprehenderit sint sapiente neque aperiam.</p>', '2022-06-14 00:09:49', '2022-06-14 00:09:49'),
(68, 'Salimah Wastuti', 'salimah-wastuti', NULL, '1976-09-19', '<p>Atque fugit ut occaecati. Necessitatibus nobis quibusdam eos perspiciatis aut. Minima qui recusandae rem et.</p>', '2022-06-14 00:09:49', '2022-06-14 00:09:49'),
(69, 'Zahra Purwanti', 'zahra-purwanti', NULL, '1987-02-27', '<p>Illum ut voluptatem praesentium atque ut. Voluptas autem iusto asperiores repudiandae vero ut. Qui aut sint sed sit aut. Est commodi reiciendis repellendus in aut.</p>', '2022-06-14 00:09:49', '2022-06-14 00:09:49'),
(70, 'Irma Suartini M.Kom.', 'irma-suartini-mkom', NULL, '1999-09-28', '<p>Atque voluptas nulla non voluptas. Voluptate dicta voluptatem non et minima aut. Esse omnis ad laborum quia hic perspiciatis mollitia blanditiis.</p><p>Aut eos et tenetur ducimus quia necessitatibus est mollitia. Odit officia rem velit. Repellat est necessitatibus reprehenderit voluptas eligendi quia voluptatum. Magnam in repellat laudantium nihil architecto laudantium voluptas.</p>', '2022-06-14 00:09:49', '2022-06-14 00:09:49'),
(71, 'Alika Rini Palastri S.IP', 'alika-rini-palastri-sip', NULL, '1966-01-13', '<p>Ipsam deserunt officiis sint quia voluptas harum. Autem ut doloremque quibusdam est rerum at. Sit cumque saepe at voluptas labore.</p>', '2022-06-14 00:09:50', '2022-06-14 00:09:50'),
(72, 'Tasnim Wardi Natsir M.Farm', 'tasnim-wardi-natsir-mfarm', NULL, '1967-03-08', '<p>Ut ut quis rerum ut. Corporis accusamus sapiente earum. Odio ut quae ipsum quasi. Quo beatae similique delectus veritatis ut.</p><p>Quibusdam excepturi architecto non enim. Ad non ipsam mollitia ad ea earum iure qui. Eaque voluptas porro libero a totam est ut.</p><p>Illo inventore sapiente possimus eius est. Asperiores error quae impedit. Ipsa id qui quis aliquam aut quaerat. Itaque et non inventore odit est natus. Sed nisi eius quia illo asperiores.</p>', '2022-06-14 00:09:50', '2022-06-14 00:09:50'),
(73, 'Uli Tiara Winarsih', 'uli-tiara-winarsih', NULL, '1961-12-31', '<p>Quisquam omnis est et ratione quam minima. Voluptate delectus nostrum quaerat aspernatur facilis ex blanditiis. Numquam ea delectus sapiente sint esse nihil. Fugiat quo dolores a optio sint sed neque.</p><p>Dolores pariatur minima sed voluptatem quia nesciunt est. Est nihil ea eos sunt voluptatem in. Aperiam quam laborum et eos quidem. Eum vel consequatur dolores ipsam voluptatem consequuntur aut.</p><p>Consequatur corrupti rerum quibusdam animi ullam. Nihil porro accusamus adipisci eos at. Corporis architecto nulla et quae voluptatem numquam. Distinctio quo occaecati ipsam ut necessitatibus aut eum.</p>', '2022-06-14 00:09:50', '2022-06-14 00:09:50'),
(74, 'Soleh Suwarno', 'soleh-suwarno', NULL, '1979-07-17', '<p>Facilis facere ut voluptas non illum. Soluta at cum quia magni ullam et amet. Et rerum ratione aut consequuntur esse rem. Maxime sunt dignissimos possimus laboriosam voluptatem vitae ut.</p><p>Est voluptas deserunt et et qui et. Doloremque officia laudantium suscipit voluptates. Quia saepe atque non et.</p>', '2022-06-14 00:09:50', '2022-06-14 00:09:50'),
(75, 'Kamaria Mardhiyah S.Farm', 'kamaria-mardhiyah-sfarm', NULL, '1956-09-15', '<p>Eum deleniti ut ut qui. Blanditiis veniam adipisci nostrum eum. Maiores aut aut voluptatem est harum eius.</p><p>Est molestiae possimus necessitatibus ut officiis soluta alias. Et cum ipsa et molestiae quis sequi. Corporis molestiae suscipit est ex et velit.</p>', '2022-06-14 00:09:50', '2022-06-14 00:09:50'),
(76, 'Nalar Lazuardi', 'nalar-lazuardi', NULL, '1970-06-28', '<p>Neque odit molestiae error aliquid sed. Consequatur perspiciatis sint nemo ipsa laudantium ex animi. Et sint in reprehenderit velit magni delectus.</p><p>Et sed voluptas explicabo voluptatem. Tenetur perferendis magni rerum. Sunt voluptatem suscipit porro sit illum. Qui in minima totam rerum aut debitis.</p>', '2022-06-14 00:09:50', '2022-06-14 00:09:50'),
(77, 'Zulfa Suartini', 'zulfa-suartini', NULL, '1968-11-09', '<p>Et error dolorem sed voluptas rem. Sit iusto fugit nemo. Magnam aut facere magnam temporibus et.</p><p>Repellendus labore hic quisquam tempore. Et rem rerum aut quia sunt qui est voluptatum. Doloribus quibusdam et corporis aut.</p><p>Incidunt ratione et ab. Sed aut aspernatur sunt placeat dignissimos qui.</p>', '2022-06-14 00:09:50', '2022-06-14 00:09:50'),
(78, 'Nugraha Cahya Wibisono', 'nugraha-cahya-wibisono', NULL, '1978-03-08', '<p>Maiores enim sapiente adipisci quia. Quibusdam quos voluptas soluta dolores cum assumenda quo. Dicta rerum accusamus dolorum.</p><p>Et doloremque incidunt earum perspiciatis natus. Sunt ratione optio quia perspiciatis ut laudantium ut. Incidunt quaerat odio nostrum in sapiente.</p>', '2022-06-14 00:09:50', '2022-06-14 00:09:50'),
(79, 'Maras Mangunsong', 'maras-mangunsong', NULL, '1994-01-02', '<p>Illum neque nihil sint dolores. Veritatis delectus eos delectus est delectus. Aliquid eligendi nostrum dolores perspiciatis dolore ea quia. A molestiae voluptates soluta quis. Animi nihil deserunt reiciendis id voluptatem.</p><p>Beatae dignissimos fugiat ipsum officia. Architecto voluptatem voluptatem repellendus autem voluptatem nesciunt sint. Et ab dolore est ducimus veritatis voluptatum. Accusantium velit molestiae error ratione odio tenetur omnis doloribus.</p>', '2022-06-14 00:09:50', '2022-06-14 00:09:50'),
(80, 'Ulva Yolanda', 'ulva-yolanda', NULL, '1978-01-13', '<p>Vitae fugit ab est molestias ut ut. Velit necessitatibus ipsam optio ipsa autem. Ullam omnis laborum eveniet quibusdam inventore nostrum blanditiis. Sequi rem a ipsam.</p>', '2022-06-14 00:09:51', '2022-06-14 00:09:51'),
(81, 'Makuta Rajata', 'makuta-rajata', NULL, '1968-01-12', '<p>Sunt adipisci fugit voluptas quas corporis neque. Vero vel omnis deleniti vero iure.</p><p>Molestias totam debitis minus quis praesentium consequatur. Quae rerum dolorem sint ipsum quidem esse quidem.</p>', '2022-06-14 00:09:51', '2022-06-14 00:09:51'),
(82, 'Prayitna Cecep Kusumo S.T.', 'prayitna-cecep-kusumo-st', NULL, '1971-06-08', '<p>Provident earum autem illum. Illo et sit libero aut eum dolorem. Sed mollitia illo commodi ea.</p><p>Id in aut cupiditate. Eveniet voluptatibus odit explicabo ut at ducimus. Nisi tenetur saepe sed facere deleniti.</p><p>Sit exercitationem non explicabo vel ducimus. Nulla minima aut quasi tenetur soluta alias. Sint harum ipsam rerum ut ipsa omnis soluta. Natus aut et quis laudantium.</p>', '2022-06-14 00:09:51', '2022-06-14 00:09:51'),
(83, 'Fathonah Usamah', 'fathonah-usamah', NULL, '1963-02-13', '<p>Placeat nemo velit enim minus voluptas delectus dolore. Dolore nihil eveniet culpa unde ea iure aut et. Reprehenderit nemo possimus necessitatibus qui est temporibus. Et atque adipisci assumenda sed doloribus non animi.</p><p>Vitae voluptatem omnis sequi omnis consequuntur fugiat. Aspernatur consequatur ex nam quod nihil. Sequi nesciunt aliquam aut culpa neque neque. Sit tempore cum sed eveniet.</p>', '2022-06-14 00:09:51', '2022-06-14 00:09:51'),
(84, 'Galih Ramadan S.Gz', 'galih-ramadan-sgz', NULL, '1992-09-04', '<p>Odio ea unde a tempora consequatur. Deserunt suscipit consequuntur maiores non rem sit enim. Aliquam amet deserunt iusto aliquam porro.</p><p>Voluptatem vitae voluptate illo fugit aspernatur. Exercitationem qui provident impedit veniam minus dolorem veniam. Officiis dignissimos dicta praesentium non.</p>', '2022-06-14 00:09:51', '2022-06-14 00:09:51'),
(85, 'Gabriella Wulandari', 'gabriella-wulandari', NULL, '1963-06-14', '<p>Repudiandae exercitationem quis similique eius porro illo ea. Sit ut esse qui doloremque. Nam et quis impedit suscipit possimus. Impedit neque laudantium porro et.</p><p>Voluptas nulla aliquid nisi quia. Explicabo asperiores nulla labore quam blanditiis blanditiis et minima. Et hic facere eos voluptatem quas facilis.</p><p>Quae praesentium eos doloribus ducimus pariatur omnis. Praesentium ut illum deleniti est similique voluptates omnis. Aut est et placeat non facilis recusandae.</p>', '2022-06-14 00:09:51', '2022-06-14 00:09:51'),
(86, 'Febi Pertiwi', 'febi-pertiwi', NULL, '1946-10-26', '<p>Ducimus et pariatur ipsum nemo aut voluptas. Sint eos reprehenderit et maiores eius. Nihil deleniti et debitis perferendis magni facilis.</p><p>Et et incidunt reprehenderit sint quia reiciendis. Praesentium exercitationem in omnis quia dolore ut. Consequatur dolor quam rerum accusantium qui unde.</p>', '2022-06-14 00:09:51', '2022-06-14 00:09:51'),
(87, 'Jais Halim M.M.', 'jais-halim-mm', NULL, '1986-02-02', '<p>Molestias iure facilis repudiandae velit ut et ullam adipisci. Ipsam sed voluptates et et sit a est adipisci. Reprehenderit sed voluptate reprehenderit qui voluptas quibusdam.</p><p>Ad ad neque dicta vitae. Qui et et reiciendis praesentium et est aut. Quidem labore pariatur fuga minus ut at qui veniam.</p><p>Deleniti quisquam aliquid vel rerum. Officiis dolores voluptates tempora illum. Quod iste blanditiis sed at dolorem maiores. Velit et aut sed enim.</p>', '2022-06-14 00:09:51', '2022-06-14 00:09:51'),
(88, 'Atma Jati Irawan', 'atma-jati-irawan', NULL, '1953-09-06', '<p>Accusamus voluptate ut iste aut est laborum. Iusto iusto numquam deserunt nam repellendus. Aut aliquid asperiores quia placeat voluptatem animi iusto. Porro est quibusdam laboriosam voluptatem ipsum non officia.</p><p>Est eligendi qui qui sit amet voluptatem. Porro quisquam officiis soluta et odit enim saepe molestias. Quas qui nam omnis laboriosam minus porro.</p>', '2022-06-14 00:09:51', '2022-06-14 00:09:51'),
(89, 'Nadine Lili Laksmiwati', 'nadine-lili-laksmiwati', NULL, '1948-01-28', '<p>Quas et exercitationem facere recusandae qui eos saepe vel. In accusamus voluptas accusantium eveniet. Voluptatem quisquam autem nesciunt ea expedita. Minima ea quam molestias dolor expedita et.</p><p>Dolorem occaecati tempore corporis animi quisquam nesciunt. Recusandae eos et mollitia. Neque aut deserunt esse et et iste. Cumque quas ut ea ratione vero dolores.</p><p>Eius sint nihil corporis ut soluta. Nisi et soluta pariatur nesciunt.</p>', '2022-06-14 00:09:52', '2022-06-14 00:09:52'),
(90, 'Najwa Yulianti', 'najwa-yulianti', NULL, '1962-06-21', '<p>Magni sunt vitae saepe aut nihil molestiae. Non magni vero sed animi recusandae esse. Explicabo voluptas vero illum vitae. Asperiores placeat voluptates totam.</p>', '2022-06-14 00:09:52', '2022-06-14 00:09:52'),
(91, 'Gilang Zulkarnain', 'gilang-zulkarnain', NULL, '1946-01-09', '<p>Accusamus autem error non. Dolorem aliquam accusamus eos et vitae minima omnis. Porro non natus quo. Incidunt qui ipsum vero quia distinctio sapiente.</p><p>Quia magni quidem necessitatibus necessitatibus vero. Accusantium laboriosam ut dolor dolores asperiores repellendus quaerat. Voluptas ut impedit et rem. Dolor accusantium vel totam eum quas rerum in.</p><p>Quis assumenda doloribus placeat dolores. Optio maxime rem harum voluptate dolore animi. Voluptas quaerat placeat quasi possimus et accusantium necessitatibus. Excepturi sit et architecto voluptatibus possimus aperiam deleniti.</p>', '2022-06-14 00:09:52', '2022-06-14 00:09:52'),
(92, 'Cici Violet Usamah M.Kom.', 'cici-violet-usamah-mkom', NULL, '1961-11-23', '<p>Facere explicabo suscipit aut possimus. Corrupti error dolor quibusdam. Quis rerum temporibus magnam nihil reiciendis.</p>', '2022-06-14 00:09:52', '2022-06-14 00:09:52'),
(93, 'Qori Rahimah', 'qori-rahimah', NULL, '1980-05-08', '<p>Rerum occaecati iste aliquid dolor voluptas eos et et. Autem neque consequuntur harum quia eius laborum officiis. Quo repellat autem ea neque mollitia. Et totam qui corporis et error voluptatibus sunt accusantium.</p><p>Quas adipisci quibusdam architecto praesentium. Quasi fuga velit possimus occaecati. Ad aperiam voluptatem aliquid nobis.</p><p>Ab illum eos voluptate iusto nihil aut beatae. Ullam et sed aut perspiciatis culpa voluptates dolorum. Sit deserunt corrupti tempora aut est.</p>', '2022-06-14 00:09:52', '2022-06-14 00:09:52'),
(94, 'Dwi Saptono', 'dwi-saptono', NULL, '1975-12-12', '<p>Aperiam velit atque animi. Dolores est repudiandae nemo.</p>', '2022-06-14 00:09:52', '2022-06-14 00:09:52'),
(95, 'Devi Prastuti', 'devi-prastuti', NULL, '1967-07-19', '<p>Consequatur sapiente officiis quo minima nam perspiciatis. Modi enim voluptatem nobis fugit non amet. Enim perspiciatis inventore dolor et est facere dolor.</p><p>Pariatur voluptatem quaerat qui ipsa consectetur. Illum et omnis porro architecto aut. Tempore quidem debitis dolore quisquam. Placeat id consequatur iste minima reiciendis sunt modi aperiam.</p>', '2022-06-14 00:09:52', '2022-06-14 00:09:52'),
(96, 'Wakiman Manullang', 'wakiman-manullang', NULL, '1967-03-09', '<p>Iusto exercitationem vero enim iusto. Consequatur laborum consequuntur doloribus exercitationem. Id voluptatum quibusdam eum. Ipsa odio et nulla non ut nulla. Quo exercitationem in nihil ea velit.</p>', '2022-06-14 00:09:52', '2022-06-14 00:09:52'),
(97, 'Virman Simanjuntak', 'virman-simanjuntak', NULL, '1948-09-13', '<p>Odit debitis necessitatibus repellendus saepe quaerat non qui. Odio et quaerat omnis aut quo quasi. Saepe nihil ullam et iste est et. Unde et quaerat voluptatem minima pariatur modi.</p>', '2022-06-14 00:09:52', '2022-06-14 00:09:52'),
(98, 'Gatra Halim', 'gatra-halim', NULL, '1955-04-14', '<p>Ea a est reiciendis fuga sed recusandae. Alias quia repellat fuga sit. Inventore cumque cupiditate reprehenderit ipsum veritatis enim sint.</p><p>Repellendus minima recusandae ut cumque sed. Et ut quis nihil ab quam quia excepturi.</p><p>Asperiores eum eum impedit dicta non molestiae assumenda. Ut et unde ducimus voluptate. Voluptatem est aut voluptatum sunt saepe.</p>', '2022-06-14 00:09:52', '2022-06-14 00:09:52'),
(99, 'Sabar Suryono S.Pd', 'sabar-suryono-spd', NULL, '1953-02-13', '<p>Ullam non natus at ea. Consequuntur consequatur voluptas eveniet incidunt. Doloribus sint aspernatur sed laudantium. Voluptas quod ducimus voluptatem libero eos voluptatibus dicta.</p><p>Illum at enim voluptatem cupiditate sit non. Quaerat sint et autem atque. Modi ratione fuga quia numquam adipisci. Quae doloremque accusamus eveniet neque nam dolorem.</p><p>Sint velit a saepe. Consectetur dolor reiciendis odio fugit optio. Aut ducimus necessitatibus placeat id est repudiandae. Veritatis placeat voluptates accusantium asperiores.</p>', '2022-06-14 00:09:52', '2022-06-14 00:09:52'),
(101, 'Aaron Marsh', 'aaron-marsh', NULL, '1988-01-15', '<div>penulis lagu copeland</div>', '2022-06-15 05:29:44', '2022-06-15 05:29:44');

-- --------------------------------------------------------

--
-- Table structure for table `author_book`
--

CREATE TABLE `author_book` (
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `author_book`
--

INSERT INTO `author_book` (`author_id`, `book_id`) VALUES
(1, 2),
(1, 19),
(2, 47),
(2, 68),
(3, 47),
(3, 50),
(4, 6),
(5, 11),
(5, 39),
(6, 55),
(7, 22),
(7, 46),
(7, 90),
(8, 70),
(9, 19),
(9, 76),
(9, 89),
(10, 17),
(10, 21),
(10, 39),
(11, 98),
(12, 4),
(12, 16),
(12, 67),
(13, 7),
(13, 27),
(14, 9),
(14, 46),
(14, 64),
(15, 71),
(16, 43),
(16, 51),
(17, 30),
(17, 56),
(17, 70),
(18, 85),
(19, 22),
(20, 33),
(20, 82),
(21, 46),
(21, 100),
(22, 2),
(22, 44),
(24, 15),
(24, 21),
(24, 43),
(25, 31),
(25, 94),
(26, 20),
(26, 33),
(26, 79),
(27, 46),
(27, 49),
(27, 75),
(28, 36),
(28, 63),
(28, 90),
(29, 25),
(30, 11),
(30, 40),
(31, 47),
(32, 76),
(32, 93),
(32, 99),
(33, 36),
(34, 93),
(34, 97),
(35, 56),
(36, 1),
(37, 10),
(37, 67),
(38, 30),
(39, 58),
(39, 92),
(40, 27),
(41, 40),
(41, 41),
(41, 46),
(42, 32),
(42, 36),
(42, 77),
(43, 9),
(44, 30),
(44, 65),
(45, 19),
(45, 88),
(45, 97),
(46, 11),
(46, 27),
(46, 68),
(47, 33),
(47, 72),
(47, 90),
(48, 58),
(48, 95),
(49, 57),
(50, 7),
(50, 87),
(50, 93),
(51, 58),
(51, 84),
(52, 9),
(52, 36),
(52, 56),
(53, 56),
(53, 58),
(53, 87),
(54, 13),
(54, 38),
(55, 45),
(56, 20),
(56, 23),
(57, 36),
(57, 40),
(58, 29),
(58, 71),
(59, 24),
(60, 96),
(61, 1),
(61, 54),
(61, 77),
(62, 41),
(62, 68),
(62, 86),
(63, 28),
(64, 29),
(64, 90),
(64, 99),
(66, 7),
(66, 87),
(66, 90),
(67, 67),
(67, 97),
(68, 99),
(69, 78),
(70, 35),
(70, 83),
(70, 84),
(71, 18),
(71, 98),
(72, 65),
(73, 85),
(74, 78),
(75, 26),
(75, 49),
(75, 77),
(76, 19),
(77, 29),
(77, 52),
(78, 2),
(78, 87),
(79, 43),
(79, 87),
(80, 66),
(81, 54),
(81, 69),
(82, 78),
(83, 17),
(83, 21),
(83, 85),
(84, 33),
(85, 8),
(86, 2),
(86, 67),
(87, 39),
(87, 49),
(88, 45),
(89, 12),
(89, 17),
(90, 38),
(90, 48),
(90, 85),
(91, 34),
(91, 41),
(91, 95),
(92, 23),
(92, 61),
(93, 10),
(94, 48),
(94, 77),
(95, 99),
(96, 3),
(96, 8),
(98, 13),
(98, 88),
(99, 33),
(99, 39),
(99, 85),
(101, 42),
(101, 5),
(21, 62),
(51, 62),
(68, 62),
(97, 62),
(39, 101),
(101, 101),
(101, 102);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publication_year` year(4) DEFAULT NULL,
  `synopsis` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copies_left` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `category_id`, `title`, `slug`, `cover`, `publication_year`, `synopsis`, `copies_left`, `created_at`, `updated_at`) VALUES
(1, 3, 'Nulla Corrupti Et Architecto Reprehenderit', 'nulla-corrupti-et-architecto-reprehenderit', NULL, 1980, '<p>Sit architecto dolorem nemo quisquam. Quisquam culpa porro quam sed asperiores. Atque totam eius quas eos exercitationem omnis. Nihil totam minima quisquam aperiam ut.</p><p>Qui quo nulla non iusto vel. Nobis alias tenetur beatae reiciendis. Possimus quae ad dolorum rem.</p><p>Alias omnis dolorem nobis quia delectus. Amet ipsum est voluptas aut. Eos commodi dolores libero sunt sint sed velit. Aspernatur sit expedita error voluptatem.</p>', 7, '2022-06-14 00:09:31', '2022-06-14 00:09:31'),
(2, 1, 'Ducimus Odit Vel Ea Velit Recusandae Enim', 'ducimus-odit-vel-ea-velit-recusandae-enim', NULL, 2017, '<p>Maxime vitae laudantium rerum. Maiores praesentium veniam voluptatem numquam eum. Veritatis omnis aliquid cumque cumque.</p>', 1, '2022-06-14 00:09:31', '2022-07-03 07:13:19'),
(3, 1, 'Amet Laudantium Optio Voluptatem', 'amet-laudantium-optio-voluptatem', NULL, 1997, '<p>Autem quis rem quisquam explicabo impedit porro dolor ipsam. Dolores porro aut sit.</p>', 5, '2022-06-14 00:09:32', '2022-06-14 00:09:32'),
(4, 6, 'Amet Eum Natus Perspiciatis Repudiandae Esse', 'amet-eum-natus-perspiciatis-repudiandae-esse', NULL, 2007, '<p>Autem hic molestiae ex sint. Quo maxime ut voluptas saepe. Voluptatum qui cum sunt repudiandae illo. Aliquam suscipit cupiditate praesentium ipsum dolorem iure dignissimos.</p>', 10, '2022-06-14 00:09:32', '2022-06-14 00:09:32'),
(5, 5, 'Alias Et Enim Ut Sit', 'alias-et-enim-ut-sit', NULL, 1999, '<div>Maxime aspernatur quidem saepe quia itaque nulla. Voluptatem error consectetur praesentium autem rerum vitae ad. Dolorum libero quae repellendus enim.<br><br></div><div>Ipsam dicta voluptatem necessitatibus possimus dolorem aliquid. Nobis aperiam maxime ut. Qui rem tempore mollitia quod corporis. Quia ipsum iste quos et magnam et et ea.<br><br></div>', 9, '2022-06-14 00:09:32', '2022-06-15 05:31:07'),
(6, 6, 'Fuga Eum', 'fuga-eum', NULL, 1982, '<p>Laboriosam assumenda maiores sed soluta sed accusamus. Molestias sint ut reprehenderit et quas aut assumenda sit. Animi ab doloremque a et sequi voluptate autem. Dicta consequatur corporis aperiam. Aspernatur nihil voluptas et qui quia.</p><p>Harum praesentium occaecati aut vel. Maxime nobis necessitatibus sed voluptatum. Officiis quo impedit architecto. Aut a provident cum sit autem sed.</p><p>Aut est possimus beatae. Consectetur ad dolor nihil ut. Optio et adipisci cum maxime consequatur dolor. Fugit aliquam natus ut deleniti sint.</p>', 4, '2022-06-14 00:09:32', '2022-06-14 00:09:32'),
(7, 5, 'Debitis Aut Iste', 'debitis-aut-iste', NULL, 1979, '<p>Repellat sit exercitationem voluptatum illo. Id dolorem suscipit est corrupti. Harum quo nihil dignissimos sed hic. Consequatur dolore incidunt doloremque corrupti itaque facilis.</p>', 4, '2022-06-14 00:09:32', '2022-06-14 00:09:32'),
(8, 5, 'Sequi Consectetur Sit Fuga', 'sequi-consectetur-sit-fuga', NULL, 1970, '<p>Delectus quam a dolores. Et illum est autem omnis earum. Quae et sed rerum et unde.</p><p>Quia necessitatibus possimus fugiat reprehenderit culpa inventore. Dignissimos cupiditate qui soluta sunt impedit saepe. Qui dolores provident aut.</p><p>Ea atque tenetur nulla qui. Voluptates quod numquam similique vitae est provident labore. Blanditiis aliquam enim facere at. Qui rerum ullam aliquid iure.</p>', 5, '2022-06-14 00:09:32', '2022-06-14 00:09:32'),
(9, 6, 'Quia Rerum Similique Optio Temporibus', 'quia-rerum-similique-optio-temporibus', NULL, 2014, '<p>Repellendus nihil quo explicabo. Enim omnis totam maiores quam sit fugit nostrum. Fugiat sequi vel repellat qui.</p>', 8, '2022-06-14 00:09:32', '2022-06-14 00:09:32'),
(10, 2, 'Voluptas Nihil Modi', 'voluptas-nihil-modi', NULL, 2019, '<p>Dolores molestias repudiandae magnam dolorem laboriosam. Molestias quisquam a ipsum consequatur nostrum autem. Qui autem non sunt ullam. Voluptas est unde nulla voluptatibus quisquam facilis neque aliquid.</p><p>Accusantium nihil voluptatum in architecto. Modi nostrum est est enim id blanditiis. Dolores ipsa eius id impedit et quibusdam nam cupiditate. Voluptates reprehenderit voluptas aut ipsam quam distinctio at rerum.</p><p>Iusto ut aut repudiandae similique natus unde. Unde nisi soluta repellendus unde rerum impedit eos. Iste vel eaque explicabo dignissimos consequatur doloribus. Vero sit et ullam omnis mollitia ipsa.</p>', 6, '2022-06-14 00:09:32', '2022-06-14 00:09:32'),
(11, 5, 'Eveniet Ducimus Facilis Et Commodi', 'eveniet-ducimus-facilis-et-commodi', NULL, 1986, '<p>Laudantium aspernatur eveniet et voluptates labore numquam. Et adipisci aut dolores perspiciatis reprehenderit et voluptatem. Sit sunt itaque excepturi nihil natus incidunt sit. Et dolores impedit repellat quam fugit veritatis.</p><p>Cum ipsa modi eveniet esse saepe recusandae. Minus distinctio et ut enim a illum voluptatum. Qui vel dolorem quisquam inventore corporis voluptatem facere. Quasi et iure temporibus expedita.</p>', 6, '2022-06-14 00:09:32', '2022-06-14 00:09:32'),
(12, 1, 'Aut Veniam Totam Excepturi Iure Aut Enim', 'aut-veniam-totam-excepturi-iure-aut-enim', NULL, 1989, '<p>Ullam et eum et deleniti. Debitis similique minus iste. Officia voluptas quasi autem maiores.</p>', 5, '2022-06-14 00:09:33', '2022-06-14 00:09:33'),
(13, 3, 'Qui Consequatur Rerum', 'qui-consequatur-rerum', NULL, 2003, '<p>Eligendi recusandae sed fuga doloremque est. Minima maxime veniam animi esse at et eaque. Similique ratione sit tempora vero beatae. Aut consequuntur molestias itaque ut natus sed.</p>', 1, '2022-06-14 00:09:33', '2022-06-14 00:09:33'),
(14, 6, 'Libero Ipsam Laborum Sed Ut Nemo Modi', 'libero-ipsam-laborum-sed-ut-nemo-modi', NULL, 2003, '<p>Nam omnis deleniti iusto dolorem. Ea quam tempora eum et consequuntur qui. Mollitia aut adipisci cupiditate.</p><p>Officia enim velit in ratione distinctio labore. Dolores est ut id nesciunt aliquam quod. Qui pariatur et ratione atque facilis quis voluptas. Quia at delectus tempora repellendus. Velit dicta aut facilis.</p>', 6, '2022-06-14 00:09:33', '2022-06-14 00:09:33'),
(15, 4, 'Occaecati Et Odit Non Eligendi', 'occaecati-et-odit-non-eligendi', NULL, 1984, '<p>Hic sed occaecati at quia illum sed aut. Sunt doloribus quia eligendi esse. Doloremque aut eligendi nobis esse sapiente quia quod voluptas.</p>', 3, '2022-06-14 00:09:33', '2022-06-14 00:09:33'),
(16, 3, 'Unde Iure', 'unde-iure', NULL, 1991, '<p>Laudantium et nam similique sed fugiat eligendi. Unde explicabo animi est architecto quibusdam facilis suscipit. Et iure et quo.</p><p>Quidem incidunt quam enim voluptatum doloribus eum voluptatem. Ut fugiat ut quo maxime porro voluptatem quasi. Quibusdam voluptas molestiae at libero. Eligendi consequatur voluptatem eveniet et sint.</p><p>Sed nihil fuga ea. Enim vero suscipit quia dolores aut modi molestias. Qui sunt ut dolorum voluptas vero optio dolore. Aut tempore quo non aut laborum eum tempore. Fugit quia consequatur laudantium perferendis.</p>', 7, '2022-06-14 00:09:33', '2022-06-14 00:09:33'),
(17, 1, 'Quia Optio Iusto Ex Qui', 'quia-optio-iusto-ex-qui', NULL, 1975, '<p>Odit maxime iste labore porro iusto qui aut at. Eveniet tempore omnis cumque quaerat magnam neque recusandae. Illum qui architecto aut deserunt. Provident ut et aut eos sequi dicta. Blanditiis neque maiores suscipit ducimus aut sed aut error.</p>', 10, '2022-06-14 00:09:34', '2022-06-14 00:09:34'),
(18, 1, 'Odit Et Dolor Et Voluptas', 'odit-et-dolor-et-voluptas', NULL, 1978, '<p>Et blanditiis asperiores voluptates illum. Itaque facilis natus beatae labore molestiae accusamus maiores praesentium. Debitis sunt omnis porro et fuga eos.</p><p>Libero est quisquam delectus aut est accusamus. Accusamus culpa aspernatur beatae. Omnis quibusdam occaecati aut qui et.</p>', 5, '2022-06-14 00:09:34', '2022-06-14 00:09:34'),
(19, 7, 'Deserunt Cum Alias Beatae Debitis', 'deserunt-cum-alias-beatae-debitis', NULL, 1998, '<p>Impedit itaque magnam deleniti recusandae sunt sed. Iusto quia inventore dolores reiciendis nihil.</p>', 10, '2022-06-14 00:09:34', '2022-06-14 00:09:34'),
(20, 4, 'Magni Dicta', 'magni-dicta', NULL, 2000, '<p>Aut eligendi veniam qui quia modi quia. Odit velit incidunt nihil facilis.</p><p>Placeat vel distinctio dolore eveniet quas. Nesciunt dolores vel et id commodi praesentium eum. Explicabo possimus distinctio aut dolorem. Temporibus nostrum debitis veritatis laborum.</p><p>Reprehenderit autem reprehenderit sint. Et quae ut est unde enim beatae optio. Incidunt ut perspiciatis impedit placeat ut fugiat eaque. Culpa omnis tenetur nulla et qui deserunt nihil.</p>', 7, '2022-06-14 00:09:34', '2022-06-14 00:09:34'),
(21, 4, 'Eos Quibusdam Sapiente Accusantium', 'eos-quibusdam-sapiente-accusantium', NULL, 2016, '<p>Expedita magni amet consectetur neque consequuntur qui et. Nulla sunt eos asperiores aut ut ipsam.</p>', 3, '2022-06-14 00:09:34', '2022-06-14 00:09:34'),
(22, 2, 'Itaque Enim Distinctio Qui Et Sed', 'itaque-enim-distinctio-qui-et-sed', NULL, 2012, '<p>Quo ut aut sunt et dolorum voluptas. Consequatur quaerat quo error aut ullam quod odio est. Minima distinctio nulla quia.</p>', 9, '2022-06-14 00:09:34', '2022-06-14 00:09:34'),
(23, 6, 'Nemo Optio Est Explicabo Ipsum', 'nemo-optio-est-explicabo-ipsum', NULL, 1973, '<p>Consequatur nobis ut doloribus dolorem saepe numquam. Impedit aut quia praesentium nemo possimus aperiam in.</p><p>Quidem reiciendis repudiandae suscipit laudantium dolorum laboriosam amet. Exercitationem enim consectetur dolores est quas sunt rerum quo. Nam ut occaecati est repudiandae quo facere. Quae aspernatur odio quo officia aut. Mollitia velit possimus deleniti qui.</p><p>Reiciendis in autem eum necessitatibus vel. Placeat ipsa quae impedit fuga rerum aliquid dolor. At explicabo nostrum temporibus minima consectetur quod pariatur est. Nobis voluptates fuga cupiditate in commodi vitae at.</p>', 8, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(24, 7, 'Maxime Distinctio Laboriosam', 'maxime-distinctio-laboriosam', NULL, 1993, '<p>Magni reiciendis et quis minima ut voluptatem est est. Fuga ut nemo et fugit expedita praesentium ullam. Dolor velit incidunt unde expedita dignissimos aut.</p>', 9, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(25, 4, 'Debitis Officia Maiores Et Nihil Consequatur', 'debitis-officia-maiores-et-nihil-consequatur', NULL, 2015, '<p>Quo quos sapiente quasi. Quo et tempore vitae vero voluptatem. Omnis quae suscipit esse quibusdam voluptatum.</p>', 6, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(26, 6, 'In Aut Est', 'in-aut-est', NULL, 1977, '<p>Eligendi voluptatum fugiat ratione cum quisquam dolore architecto. Eaque a dolores provident explicabo laudantium ratione consequatur. Et non saepe et quia velit ea.</p><p>Consequuntur libero velit consequatur aspernatur debitis non. Autem aut id eaque rerum id. Odio velit quia omnis sint id quia quia. Qui error sed cumque dicta inventore nesciunt.</p>', 2, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(27, 6, 'Qui Dolores Voluptatem Aut Sint Odit Veritatis', 'qui-dolores-voluptatem-aut-sint-odit-veritatis', NULL, 1992, '<p>Non magni quos voluptates autem consectetur velit. Ad fugiat accusantium odit repudiandae quis. Ut recusandae voluptatem doloribus ratione voluptas. Eveniet odio doloremque repellendus totam.</p><p>Ut sed ea provident omnis sit quia. Rerum et fuga deleniti minus esse. Commodi accusantium consequatur eum accusamus.</p><p>Ut qui voluptatem reprehenderit est. Corrupti ratione omnis illo quia earum deserunt. Delectus nulla sed iste iure eos consequatur esse. Sit voluptas tempore modi quos.</p>', 10, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(28, 4, 'Aliquid Eos Earum Dolor', 'aliquid-eos-earum-dolor', NULL, 2016, '<p>Enim deleniti dicta accusamus quia qui. Tenetur corporis incidunt voluptas sint. Aut nihil non voluptatem qui impedit in.</p><p>Et eius ex quia consequatur culpa id voluptatibus. Aut ullam distinctio velit deleniti laborum.</p>', 2, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(29, 7, 'Mollitia Est Facilis Vitae Dolor Odit Quis', 'mollitia-est-facilis-vitae-dolor-odit-quis', NULL, 2017, '<p>Odit vel necessitatibus quisquam asperiores voluptatem et. Rerum quia placeat impedit facilis nostrum deleniti. Ab repellendus enim sit sed saepe porro.</p>', 1, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(30, 4, 'Eius Debitis Ut Nisi Perferendis At Quos', 'eius-debitis-ut-nisi-perferendis-at-quos', NULL, 2016, '<p>Voluptatem maxime sint earum reiciendis. Voluptas doloribus voluptate velit sequi. Pariatur quia minima aut magni vel quas dolor.</p>', 4, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(31, 4, 'Eveniet Optio Id Magnam', 'eveniet-optio-id-magnam', NULL, 1974, '<p>Cupiditate quo et non aliquam ut non. Voluptas dolorem esse dolorem ut sed autem. Dicta quo libero culpa eaque sed fugit repellendus. Iusto libero odit eaque.</p>', 8, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(32, 5, 'Similique Hic Cum Et', 'similique-hic-cum-et', NULL, 2019, '<p>Magnam est aut nihil commodi quibusdam rem. Et excepturi hic modi consectetur. Repellendus rem quae voluptate aspernatur qui possimus.</p>', 4, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(33, 4, 'Quis Iste Rerum Repellat Saepe Ut Tempora', 'quis-iste-rerum-repellat-saepe-ut-tempora', NULL, 2015, '<p>Numquam nostrum aut aspernatur. Ipsa aspernatur voluptatem fuga dolor rerum eos. Sed omnis est repellendus libero quia quos tempore.</p><p>Asperiores incidunt accusantium itaque ipsa enim cum saepe. Porro velit illum sit rerum. Sed sequi asperiores repudiandae reprehenderit dolores. Illum aliquid asperiores id eos.</p>', 4, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(34, 4, 'Qui Architecto Tempore Ea Temporibus Ea Quia', 'qui-architecto-tempore-ea-temporibus-ea-quia', NULL, 1983, '<p>Voluptas aliquid itaque et. Dignissimos et sit atque unde illum. Pariatur numquam excepturi laboriosam quibusdam laborum ea accusantium. Voluptas et harum sapiente animi sint et.</p><p>Ad officiis aliquid sed quo ut voluptates. Dolores aspernatur est voluptates sed exercitationem necessitatibus ipsum praesentium. Fuga in sit voluptatem consequatur iure.</p>', 8, '2022-06-14 00:09:35', '2022-06-14 00:09:35'),
(35, 1, 'Sint Ducimus Itaque Odit Aspernatur Ea', 'sint-ducimus-itaque-odit-aspernatur-ea', NULL, 1989, '<p>Nihil cupiditate sed aperiam reiciendis consequatur. Delectus reprehenderit minima fuga dolor. Iure et maiores modi aut.</p><p>Dolores aut atque autem tenetur. Id possimus nisi id veniam minus in laboriosam. Impedit eveniet nesciunt qui vitae vel. Accusantium dolorum dicta voluptatem quam soluta quia.</p><p>Quaerat dolorem voluptate dolor iusto dolorem suscipit quis. Est qui nesciunt debitis ut. Et aliquam itaque animi numquam et. Repellat quia amet velit et.</p>', 8, '2022-06-14 00:09:36', '2022-06-14 00:09:36'),
(36, 5, 'Unde Aspernatur Est Excepturi Voluptatem Ea Distinctio', 'unde-aspernatur-est-excepturi-voluptatem-ea-distinctio', NULL, 1993, '<p>Eaque corporis nesciunt eius voluptatem sunt suscipit ducimus. Ab mollitia voluptas perspiciatis dolores. Ut quia qui quo ipsum quo placeat. Et corporis ad qui et aliquam laudantium explicabo.</p><p>Corporis ut explicabo nostrum dolorem nobis. Ad consequatur est consequuntur earum. Voluptatem animi eveniet inventore quia.</p>', 3, '2022-06-14 00:09:36', '2022-06-14 00:09:36'),
(37, 4, 'Repellat Omnis Non Totam Harum', 'repellat-omnis-non-totam-harum', NULL, 1977, '<p>Qui voluptatem vel accusantium vel necessitatibus. Rerum saepe corporis enim rerum eos. Necessitatibus aut blanditiis accusamus non necessitatibus.</p><p>Sit quis quaerat in ipsum similique placeat ea. Ea quasi earum laudantium delectus. Error est odio sed aspernatur. Rerum facilis ut autem ab et laborum. Cum id qui voluptatem dolor.</p>', 7, '2022-06-14 00:09:36', '2022-06-14 00:09:36'),
(38, 5, 'Non Laudantium', 'non-laudantium', NULL, 1971, '<p>Qui est dicta dignissimos eaque. Labore ratione esse dolores. Et eos tempore nostrum fugit ut. Autem rerum vel quisquam qui iste.</p><p>Praesentium pariatur aut dolor eligendi. Enim eligendi numquam enim eum. Rerum voluptate debitis neque. Dolores harum asperiores cumque provident laborum id. Facilis ut eos rerum dignissimos quis at sit.</p>', 5, '2022-06-14 00:09:36', '2022-06-14 00:09:36'),
(39, 6, 'Libero Voluptatem Quia Libero Qui Praesentium Reprehenderit', 'libero-voluptatem-quia-libero-qui-praesentium-reprehenderit', NULL, 2019, '<p>Quidem ab sit natus voluptate et quidem. Amet minima dolores sint molestiae sit.</p><p>Illo quisquam eum sunt nam. Perferendis rerum facilis enim voluptas et itaque dolorem. Dolores consectetur provident dolores. Mollitia corporis voluptates dolorum aspernatur. Ut perferendis ut reprehenderit incidunt nihil.</p><p>In quidem magnam et hic voluptatem et quo cum. Numquam praesentium quis qui. Repellendus eos facere magni et. Et velit ullam voluptas voluptates quaerat perspiciatis consequuntur.</p>', 2, '2022-06-14 00:09:36', '2022-06-14 00:09:36'),
(40, 6, 'Similique Voluptatem Nulla Reiciendis Accusamus Quia', 'similique-voluptatem-nulla-reiciendis-accusamus-quia', NULL, 2001, '<p>Voluptatem et molestias ex et omnis eaque nihil. Voluptatem odio est ut voluptatem quos aut consectetur. Et qui animi fugiat pariatur consectetur. Voluptatibus voluptatem totam rerum expedita occaecati aut.</p><p>Fuga fuga est inventore sint omnis beatae sed. Totam eius doloremque saepe labore fugiat sunt voluptatum. Non similique corporis quis qui alias odit excepturi.</p>', 9, '2022-06-14 00:09:36', '2022-06-14 00:09:36'),
(41, 1, 'Beatae Consequatur Culpa Sint', 'beatae-consequatur-culpa-sint', NULL, 1997, '<p>Officiis voluptatum rem dicta facere. Totam assumenda qui saepe. Doloribus quidem consequatur aperiam veritatis eaque. Est omnis qui voluptate architecto et corrupti.</p><p>Eos non eveniet exercitationem est ut debitis esse. Est vel natus aut. Et qui tenetur nostrum aut hic dignissimos. Libero ea tenetur odit commodi alias laudantium. Ratione doloremque voluptatum mollitia et culpa ullam aliquam quaerat.</p><p>Porro aut voluptates corporis animi. Explicabo et officiis vel quis libero. Reiciendis ea assumenda et quisquam a. Est minus beatae omnis dolor maiores et.</p>', 10, '2022-06-14 00:09:36', '2022-06-14 00:09:36'),
(42, 4, 'Ad Quo Quis Perferendis', 'ad-quo-quis-perferendis', NULL, 2019, '<div>Tenetur officiis eveniet omnis sit commodi. Dolor cupiditate assumenda qui vel numquam nihil. Temporibus sit aut magni unde aut. Quae optio eos possimus.<br><br></div><div>Qui suscipit quis placeat sed id. Debitis magni tempore mollitia eveniet eligendi eum occaecati.<br><br></div>', 3, '2022-06-14 00:09:36', '2022-06-15 05:30:36'),
(43, 3, 'Ea Architecto Et Quod Et Doloribus Molestias', 'ea-architecto-et-quod-et-doloribus-molestias', NULL, 2020, '<p>Dolores modi consequuntur eos. Autem totam sed consectetur.</p>', 5, '2022-06-14 00:09:37', '2022-06-14 00:09:37'),
(44, 6, 'Fuga Non Aut In Architecto Enim Sunt', 'fuga-non-aut-in-architecto-enim-sunt', NULL, 2010, '<p>Sit libero animi id doloremque. Sunt earum eos facere sit optio. Qui ullam est omnis omnis ut esse. Est a necessitatibus corrupti architecto et eius.</p><p>Sit nostrum ut qui qui quia fuga. Molestiae optio quasi neque eveniet natus numquam commodi. Sunt ab id optio laboriosam.</p><p>Dicta ipsum neque rem voluptas animi culpa ad. Laborum iste nesciunt aperiam excepturi non rerum non possimus. Ipsam id iure et aut provident voluptates. Quia consectetur praesentium veritatis suscipit nobis illo quas ipsam.</p>', 3, '2022-06-14 00:09:37', '2022-06-14 00:09:37'),
(45, 4, 'Sunt Harum Sed', 'sunt-harum-sed', NULL, 2000, '<p>Nesciunt quibusdam non sit ipsa aliquam. Aliquam praesentium ad voluptates. Eum molestias minus et facere est.</p><p>Molestias cupiditate assumenda est. Culpa nihil repellat consequatur quaerat mollitia dignissimos mollitia pariatur. Cupiditate eius quia aliquid.</p><p>Sit voluptatem quo id et at et accusamus. Blanditiis laborum necessitatibus veniam illo magnam.</p>', 7, '2022-06-14 00:09:37', '2022-06-14 00:09:37'),
(46, 7, 'Dolorum Ut Neque Consequatur', 'dolorum-ut-neque-consequatur', NULL, 2020, '<p>Est corrupti id molestias non molestiae dolorem blanditiis. Architecto eum dolorem provident modi veritatis ut et. Qui non consequatur non.</p><p>Omnis et consequatur molestias optio sit dolor architecto. Expedita vero iste et magni ab cum. Autem quia fugit eligendi perferendis cum quibusdam minima. Qui doloremque sunt temporibus.</p>', 8, '2022-06-14 00:09:37', '2022-06-14 00:09:37'),
(47, 5, 'Error Omnis Quia Aliquam Sint', 'error-omnis-quia-aliquam-sint', NULL, 1978, '<p>Aut tempora beatae sunt et inventore. Autem aperiam nulla dolores omnis.</p><p>Omnis est consequatur omnis ducimus magni atque minus ducimus. Nobis quidem qui in vel nihil labore et provident. Fugiat et sint ut amet similique quia eum. Voluptates ut et ea deleniti aut.</p><p>Facilis voluptas cumque voluptatem est ut fugit. Quis nam velit vel officiis illo eum pariatur omnis. Minus et dolor tenetur facere.</p>', 7, '2022-06-14 00:09:37', '2022-06-14 00:09:37'),
(48, 6, 'Aut Omnis Hic Voluptatem Voluptatem Nemo Vel', 'aut-omnis-hic-voluptatem-voluptatem-nemo-vel', NULL, 1988, '<p>Aliquam neque accusantium esse expedita excepturi. Dolor mollitia molestiae corrupti totam occaecati totam. In suscipit ipsam odio nobis impedit.</p>', 9, '2022-06-14 00:09:37', '2022-06-14 00:09:37'),
(49, 3, 'Sed Rem Dolores Similique Impedit Eos Velit', 'sed-rem-dolores-similique-impedit-eos-velit', NULL, 2001, '<p>Reprehenderit deserunt dolores eaque laudantium fuga. Doloribus laudantium consectetur sint nesciunt nostrum sed iste. Dicta molestiae porro exercitationem accusantium est officia. Animi qui sint omnis corporis nulla ipsa. Consequatur laboriosam libero distinctio delectus sed cum id.</p><p>Nihil labore sequi ut amet sit. Distinctio voluptatum magni illum. Alias et facere dicta quis odit quia et non. Dolore necessitatibus blanditiis sint quod facere.</p>', 5, '2022-06-14 00:09:37', '2022-06-14 00:09:37'),
(50, 4, 'Fuga Error Quia Nobis Sunt', 'fuga-error-quia-nobis-sunt', NULL, 1988, '<p>Illum fugiat et nesciunt distinctio aut et illo. Labore et ratione quia vero dolores similique. Possimus sed delectus animi quam corporis deserunt.</p><p>Voluptates atque est perspiciatis mollitia a et voluptatem. Fugit ut non illum corrupti qui tempore. Tempore eum tempore voluptas aut velit et commodi.</p><p>Cupiditate numquam magni corporis recusandae est voluptatem velit. Totam beatae velit vel. Qui neque modi impedit.</p>', 10, '2022-06-14 00:09:37', '2022-06-14 00:09:37'),
(51, 3, 'Nihil Eos Explicabo Ducimus', 'nihil-eos-explicabo-ducimus', NULL, 1980, '<p>Eum hic asperiores ea autem. Mollitia fugiat quisquam iste quo dolorem et qui. Soluta accusamus qui cum eos. Et sed assumenda accusantium harum aspernatur.</p>', 5, '2022-06-14 00:09:37', '2022-06-14 00:09:37'),
(52, 7, 'Rerum Quia Amet Ex Omnis', 'rerum-quia-amet-ex-omnis', NULL, 2014, '<p>Ut rerum ut itaque nihil. Reprehenderit nulla itaque sunt ex aut nihil voluptas. Debitis molestiae nulla saepe aut. Magnam perferendis alias voluptas molestiae ex.</p><p>Quis quos sit et vel et. Ab rerum ex provident. Est accusamus aut in dolore. Cupiditate id dolorem necessitatibus doloremque quo quisquam illo.</p><p>Officia necessitatibus praesentium alias in. Nostrum quia nisi cum quia incidunt animi. Et fuga neque consectetur aliquid illum commodi. Voluptates sunt tempore rerum id.</p>', 9, '2022-06-14 00:09:37', '2022-06-14 00:09:37'),
(53, 4, 'Neque Eos Explicabo Consequatur', 'neque-eos-explicabo-consequatur', NULL, 1988, '<p>Totam consectetur sunt sit non nihil. Temporibus ea nihil ut omnis. Quae temporibus qui dolores unde.</p><p>Voluptas qui ea nisi aut. Eius assumenda nihil doloribus eum aliquid. Laudantium saepe dicta in ut assumenda. Sunt et voluptatem rem.</p>', 10, '2022-06-14 00:09:37', '2022-06-14 00:09:37'),
(54, 3, 'Corrupti Suscipit', 'corrupti-suscipit', NULL, 1994, '<p>Totam recusandae iusto nostrum et dolorem. Tempore aspernatur excepturi quo consequatur nihil. Sed quo optio perferendis qui ut est placeat ullam. Mollitia velit excepturi recusandae iste.</p><p>Sapiente corporis ullam qui cumque molestiae dolor. Aspernatur et repellat vero voluptatum id eaque. Reprehenderit ipsa quo eos.</p>', 5, '2022-06-14 00:09:38', '2022-07-03 07:14:43'),
(55, 5, 'Sunt Voluptas Maiores Nam Voluptatum Sit Debitis', 'sunt-voluptas-maiores-nam-voluptatum-sit-debitis', NULL, 1971, '<p>Aut esse fugit possimus. Numquam a soluta quasi. Aspernatur omnis nam sequi quo. Molestiae qui id repudiandae et quam earum odio. Voluptatem quidem et quod nostrum quam dolorum.</p><p>Laborum et unde voluptas et. Minus eius reprehenderit quae. Et in at necessitatibus officiis quidem odio.</p>', 4, '2022-06-14 00:09:38', '2022-06-14 00:09:38'),
(56, 3, 'Sunt Occaecati Rerum Minima Odio', 'sunt-occaecati-rerum-minima-odio', NULL, 2019, '<p>Cum voluptates dicta quis reprehenderit nihil. Quod modi enim ex sint consequatur culpa. Sed est dolor quasi odit et non. Repellat fugit modi minima enim quidem aut corrupti.</p><p>Quam reiciendis expedita est commodi aut eius. Quo molestiae quis rem autem quia suscipit veniam. Quia id nihil deleniti ipsa. Ducimus hic est quia dolorem eum qui.</p>', 6, '2022-06-14 00:09:38', '2022-06-14 00:09:38'),
(57, 5, 'Esse Non Ut', 'esse-non-ut', NULL, 2010, '<p>Voluptatibus quo dolorem recusandae consequatur. Veniam sit enim qui placeat. Laboriosam vel est est dolor vitae.</p><p>Quod provident voluptatem esse sed eos et eligendi. Assumenda consequuntur corrupti voluptatem maiores. Ut quos fugit suscipit esse. Impedit cum unde illum odit. Sit labore ut fuga aut qui quasi.</p>', 10, '2022-06-14 00:09:38', '2022-06-14 00:09:38'),
(58, 7, 'Rem Beatae Facilis Ut', 'rem-beatae-facilis-ut', NULL, 1976, '<p>Similique et optio sit eum velit qui. Ab illum voluptatibus non assumenda. Delectus et voluptatem voluptatem dolores ea doloremque debitis praesentium. Ipsum culpa sed dolor et porro et quisquam adipisci.</p><p>Reprehenderit sint eveniet sed laborum nemo repellendus est et. Officiis fugit tempore perspiciatis tempore voluptas minus. Incidunt numquam itaque veniam iste non sint et aliquam.</p><p>Quod tempora necessitatibus dolores et et ut aperiam ut. Reprehenderit vel voluptatem quo saepe excepturi inventore aut. Mollitia voluptas molestias corporis quia perferendis sit exercitationem. Aut ipsam veniam autem saepe id.</p>', 3, '2022-06-14 00:09:38', '2022-06-14 00:09:38'),
(59, 4, 'Non Nemo Minus Enim Et Omnis', 'non-nemo-minus-enim-et-omnis', NULL, 1994, '<p>Autem ratione non quibusdam vel. Officia voluptatum quia aliquam.</p><p>Explicabo est rerum eum laudantium aut. Porro magni perspiciatis ut. Tempora molestiae et quis eum magnam enim sint. Veritatis cupiditate recusandae temporibus ad dolorem cupiditate.</p>', 5, '2022-06-14 00:09:38', '2022-06-14 00:09:38'),
(60, 6, 'Corporis Nostrum Aut In At Aut', 'corporis-nostrum-aut-in-at-aut', NULL, 2008, '<p>A autem culpa consequatur nostrum esse consequatur nihil. Provident iusto ducimus eligendi. Iste quam recusandae porro quidem placeat nam commodi.</p>', 4, '2022-06-14 00:09:38', '2022-06-14 00:09:38'),
(61, 2, 'Fugit Ut Id Quos Nesciunt Eum', 'fugit-ut-id-quos-nesciunt-eum', NULL, 2005, '<p>Fugiat sapiente magni perspiciatis aperiam. Dolores dicta sed molestias nam itaque omnis sit sit. Hic velit placeat unde ut occaecati recusandae recusandae.</p>', 1, '2022-06-14 00:09:38', '2022-06-14 00:09:38'),
(62, 4, 'A Tempore', 'a-tempore', NULL, 1988, '<div>Molestias ut corrupti iure fugit. Quisquam quos aliquam qui ipsam magni deserunt. Numquam rem aperiam temporibus. Ipsam blanditiis dolore eveniet sed a.<br><br></div>', 5, '2022-06-14 00:09:39', '2022-06-16 23:51:59'),
(63, 4, 'Quisquam Sint Ut Nam Sed Quaerat Quia', 'quisquam-sint-ut-nam-sed-quaerat-quia', NULL, 2002, '<p>Eveniet deserunt voluptas exercitationem provident laborum. Maxime nihil sed velit rerum et. Voluptatum ullam deleniti facilis. Quas qui quos omnis accusamus commodi voluptatem quia. Praesentium perspiciatis rem mollitia.</p><p>Temporibus fuga ratione unde illo alias enim iste. Dolorum rerum et vero autem repellendus rerum.</p><p>Et et dolor quia. In culpa qui facere deleniti. Reprehenderit ut incidunt veniam non nesciunt laborum ut.</p>', 1, '2022-06-14 00:09:39', '2022-06-14 00:09:39'),
(64, 4, 'Aut Suscipit Blanditiis Repellat Natus Asperiores Autem', 'aut-suscipit-blanditiis-repellat-natus-asperiores-autem', NULL, 1988, '<p>Aut nesciunt cumque incidunt vitae enim voluptates modi. Voluptatem veniam iste quod ipsam aut placeat. Et quasi molestias accusamus qui quidem sed repellendus. Voluptatibus atque quia quasi nesciunt repellendus.</p>', 9, '2022-06-14 00:09:39', '2022-06-14 00:09:39'),
(65, 2, 'Ut Vitae Et Laboriosam', 'ut-vitae-et-laboriosam', NULL, 1992, '<p>Autem omnis consequatur eligendi molestiae quia dicta voluptatem. Vel quidem mollitia aut autem illum harum. Occaecati dolorem reprehenderit aut dolores et architecto consequatur.</p>', 1, '2022-06-14 00:09:39', '2022-06-14 00:09:39'),
(66, 7, 'Vero Necessitatibus Reiciendis Dolorem Velit', 'vero-necessitatibus-reiciendis-dolorem-velit', NULL, 2003, '<p>Qui atque commodi reiciendis molestias animi perspiciatis. Nesciunt voluptas sequi quos asperiores hic ex. Ipsa quasi sit ullam est molestiae. Eaque eveniet quos illum.</p>', 4, '2022-06-14 00:09:39', '2022-06-14 00:09:39'),
(67, 4, 'Omnis Eaque Aspernatur Molestias Non Harum', 'omnis-eaque-aspernatur-molestias-non-harum', NULL, 2016, '<p>Expedita hic qui veniam placeat consequatur nulla. Et enim fugiat nisi. In quo nisi excepturi eos pariatur.</p><p>Magni omnis asperiores qui. Ut in repellendus reprehenderit asperiores necessitatibus.</p><p>Non quaerat corrupti corporis exercitationem. Ad aliquid quis quas eligendi sed tempore recusandae accusamus. Aliquid dicta laborum rerum molestiae eum rerum quo.</p>', 8, '2022-06-14 00:09:39', '2022-06-14 00:09:39'),
(68, 2, 'Ullam Voluptate', 'ullam-voluptate', NULL, 1989, '<p>Quam sint maiores voluptatem ducimus. Voluptatem debitis assumenda at quia. Voluptas quam minus eum ipsum nostrum. Officiis quis laborum enim praesentium doloribus. Saepe dolorem ea expedita consectetur aut quis consequatur.</p><p>Et pariatur sapiente eos laudantium illum est dolores. Magni et modi id quae. Debitis pariatur molestiae corporis suscipit commodi. Soluta odio ratione dolorem.</p>', 1, '2022-06-14 00:09:39', '2022-06-14 00:09:39'),
(69, 1, 'Recusandae Sunt Commodi', 'recusandae-sunt-commodi', NULL, 2008, '<p>Officia dolores reiciendis qui possimus facilis soluta laboriosam. Tempora a laborum culpa modi. Enim expedita placeat sit sit. Velit omnis et itaque est quas.</p><p>Aut minus esse soluta minus ex doloremque. Et possimus praesentium assumenda voluptas quod repellendus. Ratione laborum eum ut error. Officiis voluptates laborum eos voluptas officiis.</p><p>Illo ut sit rerum ea et ad. Et temporibus sit explicabo culpa optio. Reiciendis dolor autem quibusdam tempore qui aut est nisi. Ducimus dignissimos ipsa iusto eius et voluptatem.</p>', 10, '2022-06-14 00:09:39', '2022-06-14 00:09:39'),
(70, 7, 'Repellat Aut', 'repellat-aut', NULL, 2020, '<p>Fugit accusamus eligendi ad quos quidem. Qui magnam hic soluta voluptatem repellat. Dolores odit dolorum libero.</p><p>Cum sint error omnis delectus vel est. Rerum ducimus eius aut nam. Commodi perferendis sed temporibus. Sequi voluptate beatae ut.</p><p>Sint accusantium laborum temporibus voluptas nulla odio rerum. Dolores eveniet saepe est est dolor.</p>', 1, '2022-06-14 00:09:39', '2022-06-14 00:09:39'),
(71, 1, 'Ut Asperiores', 'ut-asperiores', NULL, 2004, '<p>Hic eius est libero sed quos accusamus. Aut eos nisi soluta consequuntur aperiam et.</p><p>Vel unde sed eum deserunt. Minima sunt magni eum exercitationem est dolore dolor. Vel repellat illo sit voluptas suscipit et.</p><p>Asperiores harum repudiandae rerum voluptates repellat quos non. In qui quaerat tempora excepturi. Dolorum aliquid hic nihil expedita quisquam sunt illo. Est autem magnam et laboriosam.</p>', 10, '2022-06-14 00:09:39', '2022-06-14 00:09:39'),
(72, 7, 'Architecto Eius Repudiandae', 'architecto-eius-repudiandae', NULL, 2001, '<p>Inventore numquam iure magni libero autem facere voluptates est. Facere impedit explicabo quibusdam similique unde labore unde. Quo velit aut et vitae maxime. Neque ut minima quo quod perferendis.</p><p>Animi ut ut cumque unde nemo. Vitae eum architecto nisi vel saepe quis minima. Recusandae tempore dolorem iure recusandae autem.</p><p>Fuga qui quis optio quis. Ipsam at rem repellendus. Ut atque rem et voluptatem non est aut.</p>', 10, '2022-06-14 00:09:39', '2022-06-14 00:09:39'),
(73, 6, 'Sed Illum Ad Dolor', 'sed-illum-ad-dolor', NULL, 2011, '<p>Corrupti ratione labore temporibus odio qui ut. Porro odio impedit doloremque.</p><p>Voluptatibus officiis non qui. Perspiciatis quis eum explicabo voluptatem dolor quo. Repellat tenetur id velit eos. Velit temporibus numquam enim veniam harum ab quis necessitatibus.</p><p>Excepturi harum quo ut dolores sit. Non animi pariatur quisquam et. Similique vel assumenda facere.</p>', 7, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(74, 3, 'Sunt Qui Sit', 'sunt-qui-sit', NULL, 1983, '<p>Quia voluptatum consectetur quibusdam sit. Voluptatem tempore odit laborum officiis ut. Et quia ducimus veniam dolorem provident itaque esse sequi.</p><p>Ipsa non quia minima aut dolore nobis. Et error vel nesciunt iste. Deleniti soluta esse sequi deleniti nam. Ex iste necessitatibus ut est dolore.</p>', 3, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(75, 1, 'Beatae Consequatur Cumque', 'beatae-consequatur-cumque', NULL, 1987, '<p>Eos rerum voluptatibus molestias voluptatibus. Rerum fuga voluptatem consequuntur illum autem in et. Ipsa est repellat sequi minima quaerat. Voluptatem perferendis similique a aperiam dolorem ad nostrum.</p>', 5, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(76, 5, 'Ipsa Cumque Autem', 'ipsa-cumque-autem', NULL, 2012, '<p>Dolore quia velit quisquam dolore quo iure nemo. Esse non sed ut et sed. Rerum id dolorem dolores possimus vel non.</p>', 8, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(77, 7, 'Eum Quidem Perspiciatis Voluptate Quis', 'eum-quidem-perspiciatis-voluptate-quis', NULL, 2003, '<p>Accusantium eum ipsum et ullam molestias quo eligendi. Est consequatur optio et nisi dolorem rerum. Blanditiis voluptatibus occaecati corporis corrupti.</p><p>Doloribus fugit ex omnis sit. Harum aspernatur eos qui voluptas. Maxime nobis qui iure amet. Impedit tempora nulla sapiente est voluptatem excepturi adipisci.</p>', 5, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(78, 7, 'Illum Aliquid', 'illum-aliquid', NULL, 2021, '<p>Soluta fugiat quasi aut natus tenetur quia. Ipsa saepe rem et. Reiciendis quidem quibusdam veritatis ullam similique aperiam. Repellat rerum quo ut velit nisi qui.</p>', 7, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(79, 5, 'In Est Qui Beatae', 'in-est-qui-beatae', NULL, 1987, '<p>Omnis placeat dolor voluptatibus vel. Illum nam voluptatem est et nemo rerum. Non consectetur qui est corporis doloribus iusto. Vero quia hic assumenda in.</p>', 10, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(80, 7, 'Dolorem A Omnis A Earum Est Aut', 'dolorem-a-omnis-a-earum-est-aut', NULL, 2009, '<p>Sunt voluptas voluptatibus saepe quis similique officia. Et occaecati doloremque magni eum nihil dolor. Neque magni voluptatem odit. Qui ea nihil vel quaerat et rerum pariatur.</p><p>Dolorum corrupti minima non sequi reprehenderit minima voluptas. Eos ipsum possimus quia culpa.</p><p>Voluptatum et est velit assumenda cupiditate temporibus qui laboriosam. Eligendi deleniti fugit dolores molestias qui. Voluptates adipisci in ipsa aspernatur qui.</p>', 7, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(81, 5, 'Optio Officia Perspiciatis Velit Fuga Ut Expedita', 'optio-officia-perspiciatis-velit-fuga-ut-expedita', NULL, 1990, '<p>Impedit aut incidunt rem dolor harum. Maiores odit ipsam voluptas et dolores.</p><p>Optio provident aperiam consequatur qui. Consectetur dolores fuga voluptatem nisi sit. Aut quo inventore nulla officia amet facilis.</p><p>Eum molestias quos incidunt nobis laborum. Recusandae quia impedit aliquam in non et ut. Dolorem est et quaerat quas sapiente ut.</p>', 4, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(82, 6, 'Pariatur Quis Qui Est Sunt Dolores Soluta', 'pariatur-quis-qui-est-sunt-dolores-soluta', NULL, 2008, '<p>Omnis sit nemo magnam nam quis laborum. Porro voluptas aut quasi accusamus est. Veniam aut neque tempore adipisci maiores sit repellendus.</p>', 4, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(83, 6, 'Et Maiores Dolore', 'et-maiores-dolore', NULL, 2012, '<p>Ad sint natus fugiat commodi id. Ex tempora adipisci aut velit eaque perferendis. Ea voluptas non alias ea rerum. Delectus molestias nihil aut nostrum minima ut et. Quo culpa nam ut temporibus.</p>', 4, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(84, 2, 'Vero Reiciendis Cum Ut', 'vero-reiciendis-cum-ut', NULL, 1974, '<p>Officia sit amet ut fugit et omnis incidunt. Consequatur explicabo quia qui rem eligendi vero rerum. Atque doloribus expedita nihil.</p><p>Amet aut numquam in. Commodi dolorum assumenda rerum cum at aut. Tempore qui quam aut et repudiandae aperiam aperiam.</p>', 3, '2022-06-14 00:09:40', '2022-06-14 00:09:40'),
(85, 6, 'Eum Dolore Dignissimos Aspernatur Rerum', 'eum-dolore-dignissimos-aspernatur-rerum', NULL, 2015, '<p>Quis laudantium dolorem recusandae non non et vero est. Culpa est commodi tempore quaerat occaecati. Eaque a incidunt ipsa nostrum facilis ut impedit.</p><p>Ut odio tempore et provident in veniam aut. Dolor quas et sequi. Vel qui vitae ut accusantium vero iure. Et ipsa et sed reiciendis optio.</p>', 1, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(86, 2, 'Provident Laborum Consequatur Autem', 'provident-laborum-consequatur-autem', NULL, 2017, '<p>Neque delectus aspernatur sed pariatur qui. Soluta non non ratione et. Quis ut delectus repellendus mollitia consequuntur rerum laborum exercitationem.</p><p>Rerum quo maxime et aut aut. Et cupiditate velit sunt eligendi quidem temporibus harum. Voluptatibus recusandae vel exercitationem aut ratione.</p>', 3, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(87, 5, 'Quia Tempora Aperiam Molestiae', 'quia-tempora-aperiam-molestiae', NULL, 1987, '<p>Eveniet laborum nisi et quia et et. Ut reprehenderit exercitationem impedit iusto corporis. Et officia nemo quia voluptatem nobis commodi vel. Vel natus consectetur cumque dignissimos accusamus unde culpa.</p>', 7, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(88, 6, 'Voluptatum Cum Illum', 'voluptatum-cum-illum', NULL, 1974, '<p>Molestias illum eum eum aut animi. Eum atque rem voluptates. Rerum atque aut explicabo sunt. Deserunt maiores et placeat eum in temporibus fugiat.</p><p>Est culpa nihil cupiditate illum veniam. Qui facere rerum accusamus. Facilis cupiditate adipisci eligendi qui.</p>', 1, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(89, 1, 'Fugit Modi', 'fugit-modi', NULL, 2002, '<p>Neque quas incidunt ea maxime. Sed molestiae consequuntur laborum. Voluptate ut omnis eum necessitatibus voluptatem excepturi quis.</p>', 10, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(90, 2, 'Necessitatibus Laboriosam Sed Aut', 'necessitatibus-laboriosam-sed-aut', NULL, 2005, '<p>Sit eos velit est ipsam saepe. Unde minus sapiente corrupti et sit consectetur facere. Est officiis omnis facilis numquam voluptas.</p>', 1, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(91, 6, 'Et Ex Natus', 'et-ex-natus', NULL, 1972, '<p>Eum consectetur voluptas velit error sint tempore. Unde laudantium molestiae non non et molestiae. Consequatur maiores voluptatem nihil fugiat. Numquam qui eum illum velit aut.</p><p>Ducimus laborum itaque ut nisi enim consequatur. Ut est omnis et omnis. Culpa assumenda consequatur delectus laboriosam. Voluptatem pariatur dicta optio quos ut natus. Ut et facilis voluptatem impedit nihil aliquid voluptates modi.</p>', 8, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(92, 1, 'Dolorem In Voluptatibus Inventore Et Ut', 'dolorem-in-voluptatibus-inventore-et-ut', NULL, 2016, '<p>Ipsam aliquid libero error ut ipsa. Porro aut inventore est voluptas.</p><p>Rerum adipisci ipsum autem aut repudiandae repellendus voluptatem. Quo quasi est aperiam delectus. Sunt architecto molestias aliquam ducimus. Rerum sed non corporis eum ut vitae sequi.</p><p>Sit repellat veritatis et sunt. Aperiam quasi dolorem asperiores accusamus et dolorem aut in. Et dignissimos occaecati accusamus beatae molestias delectus corporis dolorem.</p>', 4, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(93, 5, 'Eius Error Aperiam', 'eius-error-aperiam', NULL, 2020, '<p>Nihil distinctio velit eum corporis impedit. Aliquam perferendis deleniti vitae quisquam consequatur cum assumenda. Exercitationem repudiandae dolor ut et eum.</p><p>Iusto expedita voluptas quis repudiandae quae dolore soluta. Expedita vitae in et at. Ullam at sint accusantium saepe tempore. Recusandae aut fuga cumque deserunt consequatur omnis sint.</p><p>Pariatur voluptatem hic sunt enim dolor voluptate. Quasi et totam ad voluptatem aliquam. Harum reprehenderit non ipsa. Consectetur exercitationem sunt earum repudiandae facere blanditiis.</p>', 6, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(94, 7, 'Blanditiis Cum Soluta', 'blanditiis-cum-soluta', NULL, 1984, '<p>Error molestiae recusandae deserunt sed ea. Voluptatem quis sint voluptatem dolorum ea adipisci.</p><p>Sed architecto laudantium blanditiis quod placeat cum aut ut. In consequuntur maiores nihil illum architecto error. Ut doloremque aut omnis perspiciatis. Aut enim optio aliquid consequatur.</p><p>Perferendis optio soluta dicta ipsam. Error facere voluptatem laboriosam voluptas.</p>', 4, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(95, 5, 'Beatae Assumenda Ipsam Nemo', 'beatae-assumenda-ipsam-nemo', NULL, 1998, '<p>Quis alias eligendi ducimus excepturi. Hic non adipisci tempora est asperiores recusandae id esse. Nemo quaerat veritatis autem eum aut quas earum voluptatem. Rerum recusandae sed nostrum. Cumque dolorum perspiciatis aut magni harum.</p><p>Quis consequuntur aliquam voluptates deleniti. Quisquam repudiandae consequatur ipsum qui dolores optio. Sunt totam beatae mollitia in excepturi error.</p>', 7, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(96, 1, 'Distinctio Quia Consectetur Molestiae Cum', 'distinctio-quia-consectetur-molestiae-cum', NULL, 2015, '<p>Necessitatibus sit repellat inventore voluptates. Tempore qui sint neque illo ut. Aspernatur omnis ut enim.</p><p>Quia neque non voluptatem odit quos. Harum ducimus et ea quisquam dolorem aut sequi. Possimus sequi vitae quia magni.</p>', 5, '2022-06-14 00:09:41', '2022-06-14 00:09:41'),
(97, 2, 'Ullam Est Qui Dignissimos', 'ullam-est-qui-dignissimos', NULL, 2019, '<p>Cumque itaque voluptatibus ut aut eius. Minima quod eos non omnis.</p>', 1, '2022-06-14 00:09:42', '2022-06-14 00:09:42'),
(98, 6, 'Quas Impedit Qui', 'quas-impedit-qui', NULL, 1996, '<p>Iste soluta omnis molestiae qui fugit perferendis. Et deserunt eius quia occaecati possimus est. Quos repellendus laborum molestiae ut. Ut voluptatem quos omnis et non excepturi.</p><p>Quasi ut deserunt eos possimus et inventore. Quasi maxime non est dolor. Quis deserunt provident est accusantium.</p><p>Ea a ut illo minus. Ullam aut vero harum aut harum aliquid. Suscipit ea autem sint modi. Doloremque adipisci ex alias ratione et.</p>', 5, '2022-06-14 00:09:42', '2022-06-14 00:09:42'),
(99, 5, 'Est Quidem Illum Incidunt Accusamus Pariatur', 'est-quidem-illum-incidunt-accusamus-pariatur', NULL, 2005, '<p>Sed molestias facilis dolores vel doloribus voluptatum rerum. Qui deleniti est et natus ullam. Repellendus exercitationem voluptatem et autem neque recusandae et. Maiores architecto magnam id placeat nulla sed.</p>', 10, '2022-06-14 00:09:42', '2022-06-14 00:09:42'),
(100, 7, 'Quisquam Molestias Blanditiis', 'quisquam-molestias-blanditiis', NULL, 2006, '<p>Eum et exercitationem ut sapiente. Hic cumque sequi eum sunt molestiae quae dolores. Et libero iure consequatur aliquid molestias earum dignissimos sapiente.</p><p>Et reprehenderit sed ratione ratione rerum enim fugit. Nobis officia nostrum cumque eveniet est. Quibusdam minima magnam omnis fugiat maiores quibusdam. Et qui dolorem nobis.</p>', 2, '2022-06-14 00:09:42', '2022-06-14 00:09:42'),
(101, 2, 'buku kosong', 'buku-kosong', NULL, 2022, '<div>ini buku kosong</div>', 0, '2022-07-03 05:52:29', '2022-07-03 05:52:29'),
(102, 2, 'buku kosong dua', 'buku-kosong-dua', NULL, 2021, '<div>buku kosong dua</div>', 0, '2022-07-03 05:53:26', '2022-07-03 05:53:26');

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
(1, 'Ut quasi', 'ut-quasi', '2022-06-14 00:10:11', '2022-06-14 00:10:11'),
(2, 'Consequatur laudantium', 'consequatur-laudantium', '2022-06-14 00:10:12', '2022-06-14 00:10:12'),
(3, 'Omnis', 'omnis', '2022-06-14 00:10:12', '2022-06-14 00:10:12'),
(4, 'Enim maxime', 'enim-maxime', '2022-06-14 00:10:12', '2022-06-14 00:10:12'),
(5, 'Qui sit atque', 'qui-sit-atque', '2022-06-14 00:10:12', '2022-06-14 00:10:12'),
(6, 'Facere corporis', 'facere-corporis', '2022-06-14 00:10:12', '2022-06-14 00:10:12'),
(7, 'Non nihil velit', 'non-nihil-velit', '2022-06-14 00:10:12', '2022-06-14 00:10:12');

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `member_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `date_borrow` date NOT NULL,
  `due_date` date NOT NULL,
  `date_return` date DEFAULT NULL,
  `fines` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `book_id`, `member_id`, `admin_id`, `date_borrow`, `due_date`, `date_return`, `fines`, `created_at`, `updated_at`) VALUES
(1, 97, 8, 3, '2020-10-19', '2020-11-02', '2021-11-25', NULL, '2022-06-14 00:10:13', '2022-06-14 00:10:13'),
(2, 50, 16, 4, '2017-09-11', '2017-09-25', '2019-10-04', NULL, '2022-06-14 00:10:13', '2022-06-14 00:10:13'),
(3, 14, 28, 2, '2019-01-08', '2019-01-22', '2020-02-03', NULL, '2022-06-14 00:10:13', '2022-06-14 00:10:13'),
(4, 9, 22, 1, '2018-11-17', '2018-12-01', '2020-05-15', NULL, '2022-06-14 00:10:13', '2022-06-14 00:10:13'),
(5, 41, 44, 1, '2018-01-13', '2018-01-27', '2018-03-06', NULL, '2022-06-14 00:10:13', '2022-06-14 00:10:13'),
(6, 54, 44, 4, '2021-05-19', '2021-06-02', '2022-06-14', NULL, '2022-06-14 00:10:13', '2022-06-14 00:10:13'),
(7, 1, 28, 5, '2020-05-22', '2020-06-05', '2022-03-11', NULL, '2022-06-14 00:10:13', '2022-06-14 00:10:13'),
(8, 56, 21, 5, '2017-09-22', '2017-10-06', '2021-09-10', NULL, '2022-06-14 00:10:13', '2022-06-14 00:10:13'),
(9, 62, 5, 3, '2017-12-25', '2018-01-08', '2019-02-16', NULL, '2022-06-14 00:10:13', '2022-06-14 00:10:13'),
(10, 26, 40, 4, '2019-07-15', '2019-07-29', '2020-01-31', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(11, 89, 32, 3, '2021-10-11', '2021-10-25', '2022-03-08', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(12, 34, 18, 2, '2018-11-14', '2018-11-28', '2022-03-03', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(13, 30, 15, 2, '2021-08-12', '2021-08-26', '2021-09-18', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(14, 68, 41, 3, '2021-01-29', '2021-02-12', '2021-06-28', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(15, 5, 8, 4, '2019-12-26', '2020-01-09', '2020-01-04', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(16, 80, 21, 3, '2021-05-26', '2021-06-09', '2022-01-19', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(17, 58, 27, 1, '2019-10-08', '2019-10-22', '2021-09-11', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(18, 4, 24, 2, '2021-12-13', '2021-12-27', '2022-01-10', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(19, 53, 32, 3, '2019-07-14', '2019-07-28', '2020-06-23', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(20, 11, 30, 5, '2019-09-01', '2019-09-15', '2022-03-06', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(21, 34, 10, 3, '2022-03-01', '2022-03-15', '2022-04-30', NULL, '2022-06-14 00:10:14', '2022-06-14 00:10:14'),
(22, 14, 1, 1, '2021-10-08', '2021-10-22', '2021-10-12', NULL, '2022-06-14 00:10:15', '2022-06-14 00:10:15'),
(23, 7, 48, 4, '2018-11-13', '2018-11-27', '2019-08-04', NULL, '2022-06-14 00:10:15', '2022-06-14 00:10:15'),
(24, 76, 6, 4, '2021-01-29', '2021-02-12', '2021-11-21', NULL, '2022-06-14 00:10:15', '2022-06-14 00:10:15'),
(25, 77, 16, 2, '2017-08-15', '2017-08-29', '2020-05-13', NULL, '2022-06-14 00:10:15', '2022-06-14 00:10:15'),
(26, 68, 27, 2, '2019-10-10', '2019-10-24', '2020-07-16', NULL, '2022-06-14 00:10:15', '2022-06-14 00:10:15'),
(27, 3, 31, 1, '2019-11-10', '2019-11-24', '2021-01-30', NULL, '2022-06-14 00:10:16', '2022-06-14 00:10:16'),
(28, 51, 19, 4, '2017-07-28', '2017-08-11', '2020-04-09', NULL, '2022-06-14 00:10:16', '2022-06-14 00:10:16'),
(29, 4, 18, 5, '2018-10-21', '2018-11-04', '2020-10-10', NULL, '2022-06-14 00:10:16', '2022-06-14 00:10:16'),
(30, 71, 5, 1, '2021-02-20', '2021-03-06', '2022-03-20', NULL, '2022-06-14 00:10:16', '2022-06-14 00:10:16'),
(31, 39, 7, 5, '2021-07-06', '2021-07-20', '2021-12-14', NULL, '2022-06-14 00:10:16', '2022-06-14 00:10:16'),
(33, 40, 50, 5, '2021-12-01', '2021-12-15', '2022-04-01', NULL, '2022-06-14 00:10:16', '2022-06-14 00:10:16'),
(34, 41, 4, 3, '2021-08-26', '2021-09-09', '2022-02-02', NULL, '2022-06-14 00:10:16', '2022-06-14 00:10:16'),
(35, 50, 39, 1, '2021-06-02', '2021-06-16', '2021-11-26', NULL, '2022-06-14 00:10:16', '2022-06-14 00:10:16'),
(36, 21, 37, 2, '2020-11-11', '2020-11-25', '2020-12-07', NULL, '2022-06-14 00:10:16', '2022-06-14 00:10:16'),
(37, 22, 45, 2, '2020-11-26', '2020-12-10', '2021-01-15', NULL, '2022-06-14 00:10:16', '2022-06-14 00:10:16'),
(38, 96, 5, 1, '2022-03-05', '2022-03-19', '2022-05-27', NULL, '2022-06-14 00:10:16', '2022-06-14 00:10:16'),
(40, 82, 37, 3, '2019-09-17', '2019-10-01', '2021-02-02', NULL, '2022-06-14 00:10:17', '2022-06-14 00:10:17'),
(41, 46, 11, 4, '2019-01-06', '2019-01-20', '2020-11-01', NULL, '2022-06-14 00:10:17', '2022-06-14 00:10:17'),
(43, 54, 48, 1, '2020-06-22', '2020-07-06', '2021-09-29', NULL, '2022-06-14 00:10:17', '2022-06-14 00:10:17'),
(44, 72, 10, 1, '2018-04-18', '2018-05-02', '2020-07-01', NULL, '2022-06-14 00:10:17', '2022-06-14 00:10:17'),
(45, 1, 49, 3, '2020-03-04', '2020-03-18', '2021-04-19', NULL, '2022-06-14 00:10:17', '2022-06-14 00:10:17'),
(46, 27, 15, 2, '2019-06-01', '2019-06-15', '2019-08-19', NULL, '2022-06-14 00:10:17', '2022-06-14 00:10:17'),
(47, 92, 3, 5, '2021-07-09', '2021-07-23', '2022-02-05', NULL, '2022-06-14 00:10:17', '2022-06-14 00:10:17'),
(48, 33, 32, 3, '2017-07-03', '2017-07-17', '2017-08-19', NULL, '2022-06-14 00:10:18', '2022-06-14 00:10:18'),
(49, 79, 37, 5, '2020-02-24', '2020-03-09', '2021-05-05', NULL, '2022-06-14 00:10:18', '2022-06-14 00:10:18'),
(50, 26, 12, 5, '2021-04-03', '2021-04-17', '2021-08-09', NULL, '2022-06-14 00:10:18', '2022-06-14 00:10:18'),
(51, 58, 5, 3, '2017-11-22', '2017-12-06', '2017-11-27', NULL, '2022-06-14 00:10:18', '2022-06-14 00:10:18'),
(52, 15, 38, 5, '2020-10-29', '2020-11-12', '2022-03-03', NULL, '2022-06-14 00:10:19', '2022-06-14 00:10:19'),
(53, 41, 13, 5, '2019-11-15', '2019-11-29', '2020-10-10', NULL, '2022-06-14 00:10:19', '2022-06-14 00:10:19'),
(54, 14, 6, 5, '2018-11-26', '2018-12-10', '2019-11-11', NULL, '2022-06-14 00:10:19', '2022-06-14 00:10:19'),
(55, 66, 25, 1, '2018-02-25', '2018-03-11', '2018-08-07', NULL, '2022-06-14 00:10:19', '2022-06-14 00:10:19'),
(56, 43, 10, 1, '2019-08-15', '2019-08-29', '2020-12-14', NULL, '2022-06-14 00:10:19', '2022-06-14 00:10:19'),
(57, 37, 19, 5, '2021-01-30', '2021-02-13', '2021-06-12', NULL, '2022-06-14 00:10:20', '2022-06-14 00:10:20'),
(58, 24, 5, 1, '2021-09-24', '2021-10-08', '2021-12-13', NULL, '2022-06-14 00:10:20', '2022-06-14 00:10:20'),
(59, 3, 21, 1, '2020-11-03', '2020-11-17', '2021-03-26', NULL, '2022-06-14 00:10:20', '2022-06-14 00:10:20'),
(60, 50, 40, 2, '2020-06-06', '2020-06-20', '2020-08-18', NULL, '2022-06-14 00:10:20', '2022-06-14 00:10:20'),
(61, 69, 22, 1, '2019-03-19', '2019-04-02', '2022-03-17', NULL, '2022-06-14 00:10:20', '2022-06-14 00:10:20'),
(62, 14, 20, 3, '2018-08-14', '2018-08-28', '2020-03-07', NULL, '2022-06-14 00:10:20', '2022-06-14 00:10:20'),
(63, 17, 38, 2, '2022-02-15', '2022-03-01', '2022-06-08', NULL, '2022-06-14 00:10:20', '2022-06-14 00:10:20'),
(64, 7, 20, 4, '2022-04-24', '2022-05-08', '2022-05-22', NULL, '2022-06-14 00:10:20', '2022-06-14 00:10:20'),
(65, 96, 34, 1, '2017-10-12', '2017-10-26', '2021-04-11', NULL, '2022-06-14 00:10:21', '2022-06-14 00:10:21'),
(66, 41, 11, 5, '2019-07-29', '2019-08-12', '2021-03-07', NULL, '2022-06-14 00:10:21', '2022-06-14 00:10:21'),
(67, 93, 12, 2, '2020-05-13', '2020-05-27', '2022-03-01', NULL, '2022-06-14 00:10:21', '2022-06-14 00:10:21'),
(68, 22, 44, 3, '2018-11-30', '2018-12-14', '2020-12-23', NULL, '2022-06-14 00:10:21', '2022-06-14 00:10:21'),
(69, 45, 22, 5, '2021-03-05', '2021-03-19', '2021-12-03', NULL, '2022-06-14 00:10:21', '2022-06-14 00:10:21'),
(70, 55, 2, 4, '2019-02-07', '2019-02-21', '2020-09-29', NULL, '2022-06-14 00:10:21', '2022-06-14 00:10:21'),
(71, 100, 17, 4, '2020-08-11', '2020-08-25', '2021-12-08', NULL, '2022-06-14 00:10:21', '2022-06-14 00:10:21'),
(72, 90, 15, 4, '2020-07-11', '2020-07-25', '2022-02-10', NULL, '2022-06-14 00:10:21', '2022-06-14 00:10:21'),
(73, 9, 43, 4, '2017-09-07', '2017-09-21', '2019-09-19', NULL, '2022-06-14 00:10:22', '2022-06-14 00:10:22'),
(74, 47, 30, 1, '2017-12-18', '2018-01-01', '2022-04-25', NULL, '2022-06-14 00:10:22', '2022-06-14 00:10:22'),
(75, 28, 39, 3, '2022-04-06', '2022-04-20', '2022-04-19', NULL, '2022-06-14 00:10:22', '2022-06-14 00:10:22'),
(76, 46, 29, 1, '2020-11-21', '2020-12-05', '2021-12-04', NULL, '2022-06-14 00:10:22', '2022-06-14 00:10:22'),
(77, 1, 43, 4, '2022-03-26', '2022-04-09', '2022-05-13', NULL, '2022-06-14 00:10:22', '2022-06-14 00:10:22'),
(78, 36, 34, 1, '2020-04-27', '2020-05-11', '2021-08-21', NULL, '2022-06-14 00:10:22', '2022-06-14 00:10:22'),
(79, 59, 10, 5, '2017-09-14', '2017-09-28', '2022-02-15', NULL, '2022-06-14 00:10:22', '2022-06-14 00:10:22'),
(80, 22, 23, 3, '2018-07-09', '2018-07-23', '2021-08-14', NULL, '2022-06-14 00:10:22', '2022-06-14 00:10:22'),
(81, 15, 31, 3, '2022-03-13', '2022-03-27', '2022-05-10', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(82, 67, 6, 1, '2020-10-01', '2020-10-15', '2020-11-04', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(83, 71, 6, 2, '2020-09-11', '2020-09-25', '2021-02-24', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(84, 93, 29, 5, '2017-11-02', '2017-11-16', '2020-12-01', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(85, 15, 14, 5, '2020-06-11', '2020-06-25', '2021-01-27', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(86, 95, 24, 4, '2022-03-22', '2022-04-05', '2022-04-19', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(87, 1, 8, 1, '2018-01-23', '2018-02-06', '2022-04-19', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(88, 78, 3, 1, '2019-01-23', '2019-02-06', '2021-03-31', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(89, 22, 46, 3, '2022-01-11', '2022-01-25', '2022-04-27', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(90, 96, 27, 2, '2019-03-09', '2019-03-23', '2020-02-01', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(91, 60, 24, 5, '2019-03-20', '2019-04-03', '2021-01-26', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(92, 64, 16, 4, '2020-04-02', '2020-04-16', '2022-02-16', NULL, '2022-06-14 00:10:23', '2022-06-14 00:10:23'),
(93, 59, 8, 2, '2022-01-08', '2022-01-22', '2022-03-27', NULL, '2022-06-14 00:10:24', '2022-06-14 00:10:24'),
(94, 94, 33, 4, '2020-04-12', '2020-04-26', '2021-02-15', NULL, '2022-06-14 00:10:24', '2022-06-14 00:10:24'),
(95, 10, 27, 1, '2021-12-01', '2021-12-15', '2022-04-26', NULL, '2022-06-14 00:10:24', '2022-06-14 00:10:24'),
(96, 14, 34, 5, '2019-03-03', '2019-03-17', '2019-09-11', NULL, '2022-06-14 00:10:24', '2022-06-14 00:10:24'),
(97, 51, 43, 4, '2018-06-18', '2018-07-02', '2018-09-16', NULL, '2022-06-14 00:10:24', '2022-06-14 00:10:24'),
(98, 3, 46, 1, '2020-10-03', '2020-10-17', '2022-04-30', NULL, '2022-06-14 00:10:24', '2022-06-14 00:10:24'),
(100, 39, 7, 3, '2021-10-18', '2021-11-01', '2022-05-16', NULL, '2022-06-14 00:10:24', '2022-06-14 00:10:24'),
(101, 89, 22, 3, '2020-06-12', '2020-06-26', '2021-10-06', NULL, '2022-06-14 00:10:24', '2022-06-14 00:10:24'),
(102, 63, 33, 1, '2020-07-30', '2020-08-13', '2020-07-30', NULL, '2022-06-14 00:10:24', '2022-06-14 00:10:24'),
(103, 57, 37, 1, '2021-03-07', '2021-03-21', '2021-04-09', NULL, '2022-06-14 00:10:24', '2022-06-14 00:10:24'),
(104, 18, 2, 3, '2019-08-29', '2019-09-12', '2020-11-11', NULL, '2022-06-14 00:10:24', '2022-06-14 00:10:24'),
(105, 90, 16, 3, '2020-04-04', '2020-04-18', '2022-06-07', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(106, 17, 18, 5, '2022-05-12', '2022-05-26', '2022-06-12', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(107, 89, 25, 3, '2021-09-29', '2021-10-13', '2021-12-29', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(108, 78, 44, 4, '2021-09-23', '2021-10-07', '2022-05-11', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(109, 43, 24, 5, '2022-05-16', '2022-05-30', '2022-05-19', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(110, 14, 14, 1, '2019-03-07', '2019-03-21', '2022-04-19', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(111, 91, 46, 3, '2021-10-14', '2021-10-28', '2021-11-14', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(112, 50, 23, 2, '2020-10-24', '2020-11-07', '2022-06-01', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(113, 51, 50, 1, '2018-12-01', '2018-12-15', '2019-01-20', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(114, 76, 34, 1, '2021-05-22', '2021-06-05', '2021-08-06', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(115, 23, 33, 3, '2020-08-12', '2020-08-26', '2021-06-16', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(116, 50, 23, 5, '2018-07-04', '2018-07-18', '2019-09-25', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(117, 85, 43, 1, '2017-12-09', '2017-12-23', '2018-03-25', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(118, 68, 22, 1, '2022-01-03', '2022-01-17', '2022-02-12', NULL, '2022-06-14 00:10:25', '2022-06-14 00:10:25'),
(119, 95, 32, 1, '2019-04-10', '2019-04-24', '2019-08-12', NULL, '2022-06-14 00:10:26', '2022-06-14 00:10:26'),
(120, 32, 1, 5, '2022-02-28', '2022-03-14', '2022-03-29', NULL, '2022-06-14 00:10:26', '2022-06-14 00:10:26'),
(121, 91, 30, 5, '2018-03-14', '2018-03-28', '2021-01-07', NULL, '2022-06-14 00:10:26', '2022-06-14 00:10:26'),
(122, 36, 28, 2, '2018-08-26', '2018-09-09', '2021-07-25', NULL, '2022-06-14 00:10:26', '2022-06-14 00:10:26'),
(123, 47, 34, 1, '2019-03-14', '2019-03-28', '2019-05-28', NULL, '2022-06-14 00:10:26', '2022-06-14 00:10:26'),
(124, 81, 4, 5, '2020-05-06', '2020-05-20', '2021-03-01', NULL, '2022-06-14 00:10:26', '2022-06-14 00:10:26'),
(125, 30, 28, 1, '2020-01-27', '2020-02-10', '2022-03-06', NULL, '2022-06-14 00:10:26', '2022-06-14 00:10:26'),
(126, 43, 33, 5, '2020-10-23', '2020-11-06', '2021-06-18', NULL, '2022-06-14 00:10:26', '2022-06-14 00:10:26'),
(127, 18, 30, 5, '2017-07-04', '2017-07-18', '2022-05-04', NULL, '2022-06-14 00:10:26', '2022-06-14 00:10:26'),
(128, 44, 35, 4, '2019-09-16', '2019-09-30', '2022-02-17', NULL, '2022-06-14 00:10:26', '2022-06-14 00:10:26'),
(129, 84, 32, 3, '2021-07-27', '2021-08-10', '2022-05-11', NULL, '2022-06-14 00:10:27', '2022-06-14 00:10:27'),
(130, 56, 45, 5, '2019-10-15', '2019-10-29', '2021-10-24', NULL, '2022-06-14 00:10:27', '2022-06-14 00:10:27'),
(131, 40, 32, 5, '2017-07-29', '2017-08-12', '2021-02-18', NULL, '2022-06-14 00:10:27', '2022-06-14 00:10:27'),
(132, 45, 41, 4, '2019-05-09', '2019-05-23', '2020-02-15', NULL, '2022-06-14 00:10:27', '2022-06-14 00:10:27'),
(133, 65, 36, 2, '2019-04-09', '2019-04-23', '2022-03-13', NULL, '2022-06-14 00:10:27', '2022-06-14 00:10:27'),
(134, 98, 41, 4, '2019-09-18', '2019-10-02', '2022-05-10', NULL, '2022-06-14 00:10:27', '2022-06-14 00:10:27'),
(135, 39, 30, 2, '2017-08-09', '2017-08-23', '2018-02-11', NULL, '2022-06-14 00:10:27', '2022-06-14 00:10:27'),
(136, 100, 50, 2, '2022-05-19', '2022-06-02', '2022-06-13', NULL, '2022-06-14 00:10:27', '2022-06-14 00:10:27'),
(137, 63, 19, 4, '2019-12-29', '2020-01-12', '2021-09-17', NULL, '2022-06-14 00:10:27', '2022-06-14 00:10:27'),
(138, 42, 27, 2, '2019-12-07', '2019-12-21', '2020-12-17', NULL, '2022-06-14 00:10:28', '2022-06-14 00:10:28'),
(139, 71, 19, 3, '2020-04-11', '2020-04-25', '2020-07-18', NULL, '2022-06-14 00:10:28', '2022-06-14 00:10:28'),
(140, 70, 10, 3, '2018-10-30', '2018-11-13', '2022-06-12', NULL, '2022-06-14 00:10:28', '2022-06-14 00:10:28'),
(141, 20, 13, 1, '2017-12-17', '2017-12-31', '2021-04-27', NULL, '2022-06-14 00:10:28', '2022-06-14 00:10:28'),
(142, 1, 20, 2, '2019-08-08', '2019-08-22', '2020-03-09', NULL, '2022-06-14 00:10:28', '2022-06-14 00:10:28'),
(143, 87, 16, 3, '2020-01-15', '2020-01-29', '2021-11-01', NULL, '2022-06-14 00:10:28', '2022-06-14 00:10:28'),
(144, 17, 45, 3, '2019-11-23', '2019-12-07', '2021-06-12', NULL, '2022-06-14 00:10:29', '2022-06-14 00:10:29'),
(145, 94, 25, 4, '2019-10-21', '2019-11-04', '2019-10-27', NULL, '2022-06-14 00:10:29', '2022-06-14 00:10:29'),
(146, 59, 21, 1, '2022-01-13', '2022-01-27', '2022-03-21', NULL, '2022-06-14 00:10:29', '2022-06-14 00:10:29'),
(147, 50, 4, 2, '2018-10-17', '2018-10-31', '2019-04-09', NULL, '2022-06-14 00:10:29', '2022-06-14 00:10:29'),
(148, 95, 12, 5, '2020-07-08', '2020-07-22', '2020-07-28', NULL, '2022-06-14 00:10:29', '2022-06-14 00:10:29'),
(149, 1, 7, 2, '2018-10-11', '2018-10-25', '2020-06-19', NULL, '2022-06-14 00:10:29', '2022-06-14 00:10:29'),
(150, 24, 8, 5, '2020-07-13', '2020-07-27', '2021-06-16', NULL, '2022-06-14 00:10:30', '2022-06-14 00:10:30'),
(151, 4, 11, 2, '2022-02-15', '2022-03-01', '2022-04-20', NULL, '2022-06-14 00:10:30', '2022-06-14 00:10:30'),
(152, 25, 27, 1, '2019-04-07', '2019-04-21', '2019-10-22', NULL, '2022-06-14 00:10:30', '2022-06-14 00:10:30'),
(153, 19, 22, 1, '2019-08-25', '2019-09-08', '2019-10-20', NULL, '2022-06-14 00:10:31', '2022-06-14 00:10:31'),
(154, 8, 23, 1, '2018-02-06', '2018-02-20', '2018-03-12', NULL, '2022-06-14 00:10:31', '2022-06-14 00:10:31'),
(155, 33, 3, 3, '2019-01-19', '2019-02-02', '2019-06-14', NULL, '2022-06-14 00:10:32', '2022-06-14 00:10:32'),
(156, 99, 47, 1, '2019-01-06', '2019-01-20', '2019-11-01', NULL, '2022-06-14 00:10:32', '2022-06-14 00:10:32'),
(157, 69, 36, 2, '2018-08-24', '2018-09-07', '2021-10-28', NULL, '2022-06-14 00:10:32', '2022-06-14 00:10:32'),
(158, 66, 34, 2, '2020-10-06', '2020-10-20', '2021-01-27', NULL, '2022-06-14 00:10:32', '2022-06-14 00:10:32'),
(159, 80, 4, 3, '2018-02-23', '2018-03-09', '2021-05-09', NULL, '2022-06-14 00:10:32', '2022-06-14 00:10:32'),
(160, 36, 28, 1, '2021-04-25', '2021-05-09', '2022-02-14', NULL, '2022-06-14 00:10:33', '2022-06-14 00:10:33'),
(161, 18, 7, 2, '2019-09-23', '2019-10-07', '2021-04-19', NULL, '2022-06-14 00:10:33', '2022-06-14 00:10:33'),
(162, 28, 32, 2, '2020-02-27', '2020-03-12', '2021-10-16', NULL, '2022-06-14 00:10:33', '2022-06-14 00:10:33'),
(164, 34, 26, 3, '2021-01-24', '2021-02-07', '2021-09-21', NULL, '2022-06-14 00:10:33', '2022-06-14 00:10:33'),
(165, 60, 7, 1, '2017-12-10', '2017-12-24', '2020-03-13', NULL, '2022-06-14 00:10:33', '2022-06-14 00:10:33'),
(166, 5, 35, 4, '2019-06-07', '2019-06-21', '2020-08-02', NULL, '2022-06-14 00:10:33', '2022-06-14 00:10:33'),
(167, 92, 27, 5, '2019-03-27', '2019-04-10', '2020-06-05', NULL, '2022-06-14 00:10:33', '2022-06-14 00:10:33'),
(168, 10, 6, 5, '2019-04-03', '2019-04-17', '2022-05-14', NULL, '2022-06-14 00:10:33', '2022-06-14 00:10:33'),
(169, 83, 23, 3, '2020-02-07', '2020-02-21', '2021-10-17', NULL, '2022-06-14 00:10:33', '2022-06-14 00:10:33'),
(170, 27, 6, 1, '2021-01-25', '2021-02-08', '2022-02-21', NULL, '2022-06-14 00:10:33', '2022-06-14 00:10:33'),
(171, 33, 5, 5, '2017-11-25', '2017-12-09', '2021-04-19', NULL, '2022-06-14 00:10:34', '2022-06-14 00:10:34'),
(172, 69, 38, 4, '2019-05-15', '2019-05-29', '2021-11-26', NULL, '2022-06-14 00:10:34', '2022-06-14 00:10:34'),
(173, 19, 29, 2, '2021-05-23', '2021-06-06', '2021-12-21', NULL, '2022-06-14 00:10:34', '2022-06-14 00:10:34'),
(174, 77, 11, 4, '2019-09-21', '2019-10-05', '2020-07-19', NULL, '2022-06-14 00:10:34', '2022-06-14 00:10:34'),
(175, 49, 1, 1, '2019-06-18', '2019-07-02', '2021-05-09', NULL, '2022-06-14 00:10:34', '2022-06-14 00:10:34'),
(176, 27, 3, 3, '2018-02-05', '2018-02-19', '2020-11-03', NULL, '2022-06-14 00:10:34', '2022-06-14 00:10:34'),
(177, 83, 1, 5, '2018-04-14', '2018-04-28', '2021-08-20', NULL, '2022-06-14 00:10:34', '2022-06-14 00:10:34'),
(178, 13, 27, 1, '2020-09-24', '2020-10-08', '2020-10-26', NULL, '2022-06-14 00:10:35', '2022-06-14 00:10:35'),
(179, 23, 31, 2, '2021-12-25', '2022-01-08', '2022-06-13', NULL, '2022-06-14 00:10:35', '2022-06-14 00:10:35'),
(180, 16, 2, 5, '2018-09-19', '2018-10-03', '2020-03-08', NULL, '2022-06-14 00:10:35', '2022-06-14 00:10:35'),
(181, 83, 33, 2, '2019-10-05', '2019-10-19', '2021-11-22', NULL, '2022-06-14 00:10:35', '2022-06-14 00:10:35'),
(182, 46, 15, 1, '2018-12-29', '2019-01-12', '2022-04-01', NULL, '2022-06-14 00:10:35', '2022-06-14 00:10:35'),
(183, 42, 40, 3, '2020-10-03', '2020-10-17', '2022-05-09', NULL, '2022-06-14 00:10:35', '2022-06-14 00:10:35'),
(184, 19, 48, 3, '2017-07-17', '2017-07-31', '2019-12-06', NULL, '2022-06-14 00:10:35', '2022-06-14 00:10:35'),
(185, 28, 38, 2, '2019-01-13', '2019-01-27', '2022-01-20', NULL, '2022-06-14 00:10:35', '2022-06-14 00:10:35'),
(186, 36, 32, 3, '2020-06-22', '2020-07-06', '2022-02-16', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(187, 6, 42, 5, '2021-12-23', '2022-01-06', '2022-03-14', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(188, 55, 27, 1, '2017-11-27', '2017-12-11', '2019-03-22', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(189, 95, 45, 2, '2019-05-03', '2019-05-17', '2019-10-20', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(190, 39, 43, 4, '2017-10-20', '2017-11-03', '2020-03-14', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(191, 46, 7, 3, '2018-10-07', '2018-10-21', '2019-05-05', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(192, 42, 48, 1, '2020-10-20', '2020-11-03', '2021-09-30', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(193, 37, 30, 1, '2020-11-03', '2020-11-17', '2020-12-31', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(194, 46, 18, 4, '2018-04-18', '2018-05-02', '2018-07-18', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(195, 3, 6, 5, '2021-06-10', '2021-06-24', '2022-01-31', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(196, 41, 1, 2, '2021-02-23', '2021-03-09', '2022-02-27', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(197, 78, 7, 3, '2018-02-20', '2018-03-06', '2021-12-08', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(198, 14, 10, 2, '2021-05-07', '2021-05-21', '2022-04-14', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(199, 51, 40, 2, '2017-07-24', '2017-08-07', '2017-11-20', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(200, 79, 29, 1, '2019-08-01', '2019-08-15', '2022-01-16', NULL, '2022-06-14 00:10:36', '2022-06-14 00:10:36'),
(201, 64, 44, 5, '2021-02-01', '2021-02-15', NULL, NULL, '2022-06-14 00:11:53', '2022-06-14 00:11:53'),
(202, 94, 27, 2, '2021-10-01', '2021-10-15', NULL, NULL, '2022-06-14 00:11:53', '2022-06-14 00:11:53'),
(203, 97, 44, 1, '2017-09-13', '2017-09-27', NULL, NULL, '2022-06-14 00:11:53', '2022-06-14 00:11:53'),
(204, 18, 3, 3, '2017-12-24', '2018-01-07', NULL, NULL, '2022-06-14 00:11:54', '2022-06-14 00:11:54'),
(205, 80, 38, 1, '2019-10-06', '2019-10-20', NULL, NULL, '2022-06-14 00:11:54', '2022-06-14 00:11:54'),
(206, 60, 45, 5, '2018-02-20', '2018-03-06', NULL, NULL, '2022-06-14 00:11:54', '2022-06-14 00:11:54'),
(207, 61, 22, 2, '2021-01-16', '2021-01-30', NULL, NULL, '2022-06-14 00:11:54', '2022-06-14 00:11:54'),
(208, 39, 49, 5, '2020-08-04', '2020-08-18', NULL, NULL, '2022-06-14 00:11:54', '2022-06-14 00:11:54'),
(209, 95, 50, 5, '2021-08-24', '2021-09-07', NULL, NULL, '2022-06-14 00:11:54', '2022-06-14 00:11:54'),
(210, 96, 49, 5, '2020-05-17', '2020-05-31', NULL, NULL, '2022-06-14 00:11:54', '2022-06-14 00:11:54'),
(212, 59, 45, 1, '2017-08-25', '2017-09-08', NULL, NULL, '2022-06-14 00:11:54', '2022-06-14 00:11:54'),
(213, 82, 32, 3, '2017-07-09', '2017-07-23', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(214, 48, 23, 4, '2020-04-18', '2020-05-02', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(215, 9, 25, 2, '2019-01-09', '2019-01-23', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(216, 67, 1, 1, '2022-04-04', '2022-04-18', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(217, 33, 4, 4, '2017-10-25', '2017-11-08', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(218, 70, 32, 1, '2021-11-29', '2021-12-13', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(219, 73, 34, 4, '2021-09-13', '2021-09-27', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(220, 64, 17, 1, '2021-09-12', '2021-09-26', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(221, 42, 16, 4, '2017-07-23', '2017-08-06', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(222, 91, 24, 2, '2021-09-22', '2021-10-06', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(223, 90, 16, 2, '2021-06-29', '2021-07-13', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(224, 58, 13, 5, '2022-03-03', '2022-03-17', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(225, 99, 3, 4, '2018-09-03', '2018-09-17', NULL, NULL, '2022-06-14 00:11:55', '2022-06-14 00:11:55'),
(226, 98, 22, 2, '2017-08-15', '2017-08-29', NULL, NULL, '2022-06-14 00:11:56', '2022-06-14 00:11:56'),
(227, 15, 28, 5, '2018-03-22', '2018-04-05', NULL, NULL, '2022-06-14 00:11:56', '2022-06-14 00:11:56'),
(228, 78, 31, 3, '2020-09-25', '2020-10-09', NULL, NULL, '2022-06-14 00:11:56', '2022-06-14 00:11:56'),
(229, 56, 50, 1, '2018-08-02', '2018-08-16', NULL, NULL, '2022-06-14 00:11:56', '2022-06-14 00:11:56'),
(230, 67, 48, 3, '2021-09-17', '2021-10-01', NULL, NULL, '2022-06-14 00:11:56', '2022-06-14 00:11:56'),
(231, 92, 33, 1, '2021-06-12', '2021-06-26', NULL, NULL, '2022-06-14 00:11:56', '2022-06-14 00:11:56'),
(232, 72, 27, 2, '2020-12-02', '2020-12-16', NULL, NULL, '2022-06-14 00:11:56', '2022-06-14 00:11:56'),
(233, 46, 16, 2, '2022-02-14', '2022-02-28', NULL, NULL, '2022-06-14 00:11:56', '2022-06-14 00:11:56'),
(234, 19, 7, 2, '2020-02-27', '2020-03-12', NULL, NULL, '2022-06-14 00:11:56', '2022-06-14 00:11:56'),
(235, 73, 14, 5, '2017-11-30', '2017-12-14', NULL, NULL, '2022-06-14 00:11:56', '2022-06-14 00:11:56'),
(236, 65, 49, 4, '2017-08-30', '2017-09-13', NULL, NULL, '2022-06-14 00:11:56', '2022-06-14 00:11:56'),
(237, 12, 39, 2, '2020-12-01', '2020-12-15', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(238, 48, 7, 2, '2021-02-16', '2021-03-02', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(239, 90, 41, 3, '2019-07-24', '2019-08-07', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(240, 67, 33, 2, '2018-09-04', '2018-09-18', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(241, 84, 30, 5, '2020-06-27', '2020-07-11', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(242, 41, 3, 3, '2020-06-13', '2020-06-27', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(243, 54, 38, 1, '2017-08-19', '2017-09-02', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(244, 87, 14, 1, '2020-07-29', '2020-08-12', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(245, 16, 41, 1, '2019-08-09', '2019-08-23', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(246, 85, 40, 5, '2017-08-17', '2017-08-31', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(247, 66, 44, 3, '2019-07-20', '2019-08-03', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(248, 63, 38, 2, '2018-06-06', '2018-06-20', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(249, 8, 29, 2, '2020-07-24', '2020-08-07', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(250, 76, 39, 2, '2022-04-06', '2022-04-20', NULL, NULL, '2022-06-14 00:11:57', '2022-06-14 00:11:57'),
(251, 19, 51, 1, '2022-06-17', '2022-07-01', NULL, NULL, '2022-06-17 00:07:17', '2022-06-17 00:07:17'),
(252, 94, 51, 1, '2022-06-17', '2022-07-01', NULL, NULL, '2022-06-17 00:07:17', '2022-06-17 00:07:17'),
(253, 7, 51, 1, '2022-06-17', '2022-07-01', NULL, NULL, '2022-06-17 00:07:17', '2022-06-17 00:07:17'),
(254, 2, 34, 7, '2022-07-03', '2022-07-17', '2022-07-03', 0, '2022-07-03 07:08:36', '2022-07-03 07:13:19'),
(255, 54, 13, 8, '2022-07-03', '2022-07-17', NULL, NULL, '2022-07-03 07:14:43', '2022-07-03 07:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year_joined` year(4) NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `username`, `email`, `year_joined`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Malika Prastuti', 'rharyanti', 'jprasetyo@example.org', 2019, '0955 8667 170', '2022-06-14 00:10:06', '2022-06-14 00:10:06'),
(2, 'Natalia Hamima Mandasari', 'tampubolon.wulan', 'yulianti.cengkir@example.org', 2006, '(+62) 292 0749 143', '2022-06-14 00:10:06', '2022-06-14 00:10:06'),
(3, 'Gaduh Pangestu', 'vmandala', 'pertiwi.wira@example.org', 1989, '0485 1415 928', '2022-06-14 00:10:06', '2022-06-14 00:10:06'),
(4, 'Ibrahim Wibowo M.M.', 'olga71', 'ani.mandasari@example.net', 2020, '0591 3163 790', '2022-06-14 00:10:07', '2022-06-14 00:10:07'),
(5, 'Kemal Habibi S.Psi', 'widiastuti.rini', 'jdongoran@example.net', 1973, '0798 4665 9286', '2022-06-14 00:10:07', '2022-06-14 00:10:07'),
(6, 'Chelsea Zelda Hartati S.E.I', 'kurniawan.carla', 'nhandayani@example.net', 1992, '0893 3952 162', '2022-06-14 00:10:07', '2022-06-14 00:10:07'),
(7, 'Gawati Cindy Palastri', 'kusmawati.irwan', 'uhalim@example.com', 2017, '(+62) 387 2933 6538', '2022-06-14 00:10:07', '2022-06-14 00:10:07'),
(8, 'Darmaji Kasiran Anggriawan M.M.', 'xanana74', 'violet.winarno@example.net', 1980, '(+62) 921 1378 6331', '2022-06-14 00:10:07', '2022-06-14 00:10:07'),
(10, 'Chelsea Yolanda', 'ida55', 'anggraini.viman@example.net', 1994, '(+62) 518 4790 5247', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(11, 'Winda Yolanda', 'firgantoro.kiandra', 'ophelia16@example.com', 1978, '(+62) 424 1322 896', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(12, 'Azalea Fitria Utami S.Sos', 'silvia.laksmiwati', 'xrajata@example.net', 2005, '0605 7928 105', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(13, 'Titi Suryatmi', 'hartati.nasim', 'setya.marpaung@example.net', 1976, '(+62) 634 9436 1592', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(14, 'Prasetyo Saragih', 'pradipta.cindy', 'malika89@example.net', 1993, '(+62) 709 5183 382', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(15, 'Silvia Sarah Rahimah', 'hpradipta', 'laswi.kuswandari@example.org', 2005, '(+62) 514 3048 557', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(16, 'Diah Laila Sudiati S.T.', 'suwarno.gilda', 'tmaryati@example.com', 1983, '(+62) 597 5542 694', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(17, 'Karma Prakasa', 'sirait.victoria', 'galang90@example.net', 1978, '(+62) 258 0101 521', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(18, 'Novi Usada', 'vera.prayoga', 'siti75@example.com', 1983, '0565 9416 362', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(19, 'Gawati Nabila Hastuti', 'novitasari.ihsan', 'ganep26@example.org', 1975, '0375 8991 3713', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(20, 'Nadia Widiastuti S.Gz', 'jyulianti', 'samosir.latika@example.net', 1992, '0379 0799 4802', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(21, 'Dasa Luwar Anggriawan', 'uli.yuniar', 'harja85@example.com', 2014, '(+62) 261 1795 2932', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(22, 'Eli Dinda Safitri S.IP', 'pwasita', 'zsuwarno@example.com', 2004, '(+62) 547 2215 8356', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(23, 'Anom Tamba', 'prasetyo.ade', 'aswani.samosir@example.com', 2015, '(+62) 484 9604 0645', '2022-06-14 00:10:08', '2022-06-14 00:10:08'),
(24, 'Maya Susanti S.E.', 'drajat28', 'maryati.fathonah@example.com', 1999, '(+62) 747 0377 3606', '2022-06-14 00:10:09', '2022-06-14 00:10:09'),
(25, 'Gilda Hartati', 'fitriani.farida', 'wulan.handayani@example.org', 1980, '(+62) 24 2378 636', '2022-06-14 00:10:09', '2022-06-14 00:10:09'),
(26, 'Gamani Lazuardi', 'novitasari.ulva', 'ibrahim.sudiati@example.org', 1998, '(+62) 27 4798 181', '2022-06-14 00:10:09', '2022-06-14 00:10:09'),
(27, 'Gaman Daryani Damanik M.Kom.', 'xjailani', 'bella.sihotang@example.net', 2010, '0392 4587 194', '2022-06-14 00:10:09', '2022-06-14 00:10:09'),
(28, 'Soleh Chandra Januar S.Pt', 'uzulaika', 'dkusmawati@example.com', 2008, '(+62) 759 3002 5646', '2022-06-14 00:10:09', '2022-06-14 00:10:09'),
(29, 'Kemal Siregar', 'prakasa.cahya', 'zulaikha.padmasari@example.com', 1989, '(+62) 553 5855 2423', '2022-06-14 00:10:09', '2022-06-14 00:10:09'),
(30, 'Genta Elvina Pudjiastuti', 'asmuni52', 'nilam47@example.net', 1970, '(+62) 748 6089 1411', '2022-06-14 00:10:09', '2022-06-14 00:10:09'),
(31, 'Garan Jais Santoso S.T.', 'wacana.edward', 'umaya45@example.net', 2017, '0392 9816 637', '2022-06-14 00:10:09', '2022-06-14 00:10:09'),
(32, 'Mitra Nashiruddin M.Pd', 'jamalia26', 'zelaya.sihombing@example.org', 2014, '(+62) 676 3330 467', '2022-06-14 00:10:09', '2022-06-14 00:10:09'),
(33, 'Kasusra Hutapea S.Kom', 'baktiadi51', 'usyi.uyainah@example.org', 1999, '0295 7827 0825', '2022-06-14 00:10:10', '2022-06-14 00:10:10'),
(34, 'Eko Hutasoit', 'anastasia36', 'simbolon.rika@example.org', 1977, '0454 9504 3852', '2022-06-14 00:10:10', '2022-06-14 00:10:10'),
(35, 'Yance Winarsih', 'hutagalung.slamet', 'ella.megantara@example.net', 1979, '0713 7106 9999', '2022-06-14 00:10:10', '2022-06-14 00:10:10'),
(36, 'Danu Mahendra', 'kania.aryani', 'qrahimah@example.com', 1978, '0216 5636 1510', '2022-06-14 00:10:10', '2022-06-14 00:10:10'),
(37, 'Irfan Eka Prasetya S.Pd', 'putri66', 'betania.hasanah@example.net', 2014, '0899 5365 573', '2022-06-14 00:10:10', '2022-06-14 00:10:10'),
(38, 'Gadang Saefullah', 'firmansyah.rini', 'halim.luis@example.com', 1973, '0346 0967 050', '2022-06-14 00:10:10', '2022-06-14 00:10:10'),
(39, 'Baktiadi Edi Latupono S.Psi', 'rhabibi', 'candra.simanjuntak@example.org', 2005, '(+62) 612 1814 1859', '2022-06-14 00:10:10', '2022-06-14 00:10:10'),
(40, 'Juli Fitria Riyanti', 'jasmani.wahyuni', 'eva.wastuti@example.net', 1977, '(+62) 241 4799 504', '2022-06-14 00:10:10', '2022-06-14 00:10:10'),
(41, 'Zizi Mandasari', 'riyanti.keisha', 'ella.hasanah@example.org', 1982, '(+62) 659 0045 6711', '2022-06-14 00:10:10', '2022-06-14 00:10:10'),
(42, 'Silvia Mutia Nurdiyanti S.Kom', 'cinthia.winarsih', 'ella.nashiruddin@example.com', 1975, '0344 9964 179', '2022-06-14 00:10:10', '2022-06-14 00:10:10'),
(43, 'Hesti Fujiati', 'rama.utami', 'firmansyah.lasmanto@example.org', 1979, '0997 6750 7419', '2022-06-14 00:10:10', '2022-06-14 00:10:10'),
(44, 'Bahuwarna Prakasa', 'garan.usamah', 'maria37@example.com', 1985, '0304 2313 990', '2022-06-14 00:10:11', '2022-06-14 00:10:11'),
(45, 'Diana Maimunah Nuraini', 'vprabowo', 'cinthia.maheswara@example.org', 1994, '0381 6801 095', '2022-06-14 00:10:11', '2022-06-14 00:10:11'),
(46, 'Galih Taufan Samosir', 'yuni92', 'lyuliarti@example.net', 1996, '(+62) 275 0946 1397', '2022-06-14 00:10:11', '2022-06-14 00:10:11'),
(47, 'Diah Palastri S.E.', 'kwidiastuti', 'nainggolan.shakila@example.org', 2016, '0592 5167 4199', '2022-06-14 00:10:11', '2022-06-14 00:10:11'),
(48, 'Clara Puput Purwanti S.Farm', 'melinda.nasyidah', 'malika53@example.com', 1979, '0696 5501 553', '2022-06-14 00:10:11', '2022-06-14 00:10:11'),
(49, 'Dina Rahmawati', 'fujiati.prima', 'nirawan@example.com', 1973, '0484 9469 7369', '2022-06-14 00:10:11', '2022-06-14 00:10:11'),
(50, 'Jamil Setiawan', 'vivi79', 'cindy.kuswandari@example.net', 2020, '(+62) 961 6880 325', '2022-06-14 00:10:11', '2022-06-14 00:10:11'),
(51, 'Gita Suciana', 'gita_suciana', 'gita_suciana@gmail.com', 2022, '098098098098', '2022-06-17 00:06:37', '2022-06-17 00:06:37');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_04_09_180232_create_categories_table', 1),
(3, '2022_04_09_180721_create_authors_table', 1),
(4, '2022_04_09_181305_create_members_table', 1),
(5, '2022_04_09_181442_create_books_table', 1),
(6, '2022_04_09_181604_create_loans_table', 1),
(7, '2022_04_09_181824_create_admins_table', 1),
(8, '2022_04_11_062634_create_author_book_table', 1),
(9, '2022_04_24_165328_create_trix_rich_texts_table', 1);

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
-- Table structure for table `trix_attachments`
--

CREATE TABLE `trix_attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachable_id` int(10) UNSIGNED DEFAULT NULL,
  `attachable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_pending` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trix_rich_texts`
--

CREATE TABLE `trix_rich_texts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authors_slug_unique` (`slug`);

--
-- Indexes for table `author_book`
--
ALTER TABLE `author_book`
  ADD KEY `author_book_author_id_foreign` (`author_id`),
  ADD KEY `author_book_book_id_foreign` (`book_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `books_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loans_book_id_foreign` (`book_id`),
  ADD KEY `loans_member_id_foreign` (`member_id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_username_unique` (`username`),
  ADD UNIQUE KEY `members_email_unique` (`email`),
  ADD UNIQUE KEY `members_phone_unique` (`phone`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `trix_attachments`
--
ALTER TABLE `trix_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trix_rich_texts`
--
ALTER TABLE `trix_rich_texts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trix_rich_texts_model_type_model_id_index` (`model_type`,`model_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trix_attachments`
--
ALTER TABLE `trix_attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trix_rich_texts`
--
ALTER TABLE `trix_rich_texts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author_book`
--
ALTER TABLE `author_book`
  ADD CONSTRAINT `author_book_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `author_book_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `loans_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
