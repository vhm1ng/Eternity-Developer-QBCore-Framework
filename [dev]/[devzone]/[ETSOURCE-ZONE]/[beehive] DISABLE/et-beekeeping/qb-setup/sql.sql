CREATE TABLE `beehives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `coords` longtext COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `heading` int(11) DEFAULT NULL,
  `queen` int(11) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=UTF8MB4_TURKISH_CI;