-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `rating` int(11) NOT NULL,
  `color` varchar(255) NOT NULL,
  `discounted_price` decimal(5,2) DEFAULT NULL,
  `uri` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `title`, `category`, `description`, `image`, `price`, `rating`, `color`, `discounted_price`, `uri`) VALUES
(1, 'Kia Sportage Specs', 'Kia', 'Kia Sportage Specs 2016', '2016 Kia Sportage Specs Black.png', 79.99, 4, 'Noire', NULL, 'Kia_specs'),
(2, 'Hyundai Tucson Specs', 'Hyundai', 'Hyundai Tucson Specs 2020', 'Black 2020 Hyundai Tucson Specs.png', 99.99, 3, 'Noire', 79.99, 'Hyundai_tucson'),
(3, 'Kia Sportage EX', 'Kia', 'Kia Sportage EX 2022', 'Black Kia Sportage EX.png', 89.99, 5, 'Noire', NULL, 'Kia_ex'),
(4, 'Toyota Hilux', 'Toyota', 'Toyota Hilux 2012', 'Black Toyota Hilux TOYOTA.png', 49.99, 4, 'Noire', 39.99, 'Toyota_hilux'),
(5, 'Kia Hybrid', 'Kia', 'Kia Hybrid 2021', 'Blue Kia Hybrid.png', 49.99, 4, 'Bleu', 39.99, 'Kia_hybrid'),
(6, 'Toyota RAV4 Hybrid', 'Toyota', 'Toyota RAV4 Hybrid 2012', 'Blue Toyota RAV4 Hybrid.png', 89.99, 5, 'Bleu', NULL, 'Toyota_rav4_hybrid'),
(7, 'Hyundai Specs', 'Hyundai', 'Hyundai Specs 2020', 'Grey 2020 Hyundai Specs.png', 99.99, 3, 'Grise', 79.99, 'Hyundai_specs'),
(8, 'Jetour Philippines', 'Jetour', 'Red Jetour Philippines 2023', 'red Jetour Philippines.png', 79.99, 4, 'Rouge', NULL, 'jetour_x70_plus'),
(9, 'Toyota Land Cruiser', 'Toyota', 'Toyota Land Cruiser 2010', 'Toyota Land Cruiser White.png', 79.99, 4, 'Blanche', NULL, 'Toyota_land_cruiser'),
(10, 'Toyota Yaris ', 'Toyota', 'Toyota Yaris 2007', 'White 2011 Toyota Yaris 2007.png', 99.99, 3, 'Blanche', 79.99, 'Toyota_yaris'),
(11, 'Mitsubishi Camioneta', 'Mitsubishi', 'Misubishi Camioneta Pickup diesel 2010', 'white Camioneta Pickup diesel.png', 89.99, 5, 'Grise', NULL, 'Mitsubishi_camioneta '),
(12, 'Hyundai Tuscon', 'Hyundai', 'Hyundai Tuscon 2009', 'white Hyundai.png', 49.99, 4, 'Blanche', 39.99, 'Hyundai_tuscon'),
(13, 'Jetour X80 plus', 'Jetour', 'Jetour X80 plus 2021', 'white Jetour.png', 49.99, 4, 'Grise', 39.99, 'Jetour_x80_puls'),
(14, 'Jetour Nuevo Dashing', 'Jetour', 'Jetour Nuevo Dashing 2024', 'white Nuevo JETOUR Dashing.png', 89.99, 5, 'Grise', NULL, 'Jetour_dashing'),
(15, 'Volkswagen T-Roc', 'Volkswagen', 'Volkswagen T-Roc VW Edition 2021', '2021 red Volkswagen T-Roc VW Edition.png', 90.00, 3, 'Rouge', NULL, 'volkswagen_T-Roc'),
(16, 'Toyota Pickup ', 'Toyota', 'Toyota Pickup diesel 2010', 'white Toyota Pickup diesel.png', 50.00, 5, 'Blanche', NULL, 'Toyota_Pickup');

