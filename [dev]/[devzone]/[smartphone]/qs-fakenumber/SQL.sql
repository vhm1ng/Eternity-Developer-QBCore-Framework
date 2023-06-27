INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('sim_card', 'Sim Card', -1, 0, 1)
;

CREATE TABLE `phone_numbers` (
	`identifier` VARCHAR(200) NOT NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
	`data` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
	`defaultNumber` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`identifier`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
;