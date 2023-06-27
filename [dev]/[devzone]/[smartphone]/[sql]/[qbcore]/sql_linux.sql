ALTER TABLE `players` ADD `apps` TEXT;
ALTER TABLE `players` ADD `widget` TEXT;
ALTER TABLE `players` ADD `bt` TEXT;
ALTER TABLE `players` ADD `cryptocurrency` longtext;
ALTER TABLE `players` ADD `cryptocurrencytransfers` TEXT;

CREATE TABLE IF NOT EXISTS `insta_stories` (
  `username` varchar(50),
  `location` varchar(50),
  `filter` varchar(50),
  `description` varchar(50),
  `image` text,
  `created` time
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `instagram_stories` (
  `owner` varchar(50) COLLATE armscii8_bin,
  `data` text COLLATE armscii8_bin,
  PRIMARY KEY (`owner`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

CREATE TABLE IF NOT EXISTS `instagram_account` (
  `id` varchar(90) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text,
  `description` text,
  `verify` INT(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `instagram_followers` (
  `username` varchar(50) NOT NULL,
  `followed` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `instagram_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(255) NOT NULL,
  `location` varchar(50) NOT NULL,
  `filter` varchar(50) NOT NULL,
  `created` timestamp NULL NOT NULL,
  `likes` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_mails` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`identifier` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`sender` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`subject` VARCHAR(50) NULL COLLATE 'utf8mb4_general_ci',
	`message` TEXT NULL COLLATE 'utf8mb4_general_ci',
	`read` TINYINT(4) NULL DEFAULT '0',
	`mailid` INT(11) NULL,
	`date` TIMESTAMP NULL DEFAULT current_timestamp(),
	`button` TEXT COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE,
	INDEX `identifier` (`identifier`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2
;

CREATE TABLE IF NOT EXISTS `tinder_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL DEFAULT '0',
  `pp` text NOT NULL,
  `name` varchar(50) NOT NULL DEFAULT '0',
  `gender` varchar(50) NOT NULL,
  `targetGender` varchar(50) NOT NULL DEFAULT '0',
  `hobbies` varchar(50) NOT NULL DEFAULT '0',
  `age` varchar(50) NOT NULL DEFAULT '0',
  `description` varchar(50) NOT NULL DEFAULT '0',
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `tinder_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(1024) NOT NULL,
  `likeds` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `phone_invoices` (
   `id` int(10) NOT NULL AUTO_INCREMENT,
   `citizenid` varchar(50) DEFAULT NULL,
   `amount` int(11) NOT NULL DEFAULT 0,
   `society` tinytext DEFAULT NULL,
   `sender` varchar(50) DEFAULT NULL,
   `sendercitizenid` varchar(50) DEFAULT NULL,
   PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `phone_accounts` (
  `app` varchar(50) NOT NULL,
  `id` varchar(80) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `interested` text NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `phone_chats` (
  `app` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `phone_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50),
  `number` varchar(50) NOT NULL,
  `owner` varchar(50),
  `messages` text NOT NULL,
  `type` varchar(50),
  `read` int(11),
  `created` varchar(50),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `phone_notifies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `msg_content` text NOT NULL,
  `msg_head` varchar(50) NOT NULL DEFAULT '',
  `app_name` text NOT NULL,
  `msg_time` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_contacts` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `identifier` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
    `name` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
    `number` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
    `iban` VARCHAR(50) NOT NULL DEFAULT '0' COLLATE 'utf8mb4_general_ci',
    `display` VARCHAR(50) COLLATE 'utf8mb4_general_ci',
    `note` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
    `pp` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `identifier` (`identifier`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=38
;

CREATE TABLE IF NOT EXISTS `player_gallery` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `identifier` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
    `resim` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
    `data` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
    `created_at` TIMESTAMP NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
    PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=11
;

CREATE TABLE IF NOT EXISTS `tinder_messages` (
	`id` INT(11) AUTO_INCREMENT COLLATE 'utf8mb4_general_ci',
	`phone` VARCHAR(50) NULL NOT NULL COLLATE 'utf8mb4_general_ci',
	`number` VARCHAR(50) NULL NOT NULL COLLATE 'utf8mb4_general_ci',
	`messages` VARCHAR(1024) DEFAULT '{}' COLLATE 'utf8mb4_general_ci',
	PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=11
;

CREATE TABLE IF NOT EXISTS `twitter_account` (
  `id` varchar(90) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `avatar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `twitter_hashtags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `created` varchar(50) NOT NULL,
  `count` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `twitter_mentions` (
    `id` INT(11) AUTO_INCREMENT COLLATE 'utf8mb4_general_ci',
    `id_tweet` INT(11) NOT NULL COLLATE 'utf8mb4_general_ci',
    `username` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
    `mentioned` TEXT NOT NULL COLLATE 'utf8mb4_general_ci',
    `created` VARCHAR(50) NOT NULL COLLATE 'utf8mb4_general_ci',
    PRIMARY KEY (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=4
;

CREATE TABLE IF NOT EXISTS `twitter_tweets` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(80) NOT NULL,
  `message` longtext NOT NULL,
  `hashtags` varchar(50) NOT NULL,
  `mentions` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `likes` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `whatsapp_accounts` (
  `id` varchar(100) NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  `name` varchar(50) NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  `phone` varchar(50) NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  `password` varchar(50) NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  `avatar` text NOT NULL COLLATE UTF8MB4_UNICODE_CI
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `whatsapp_chats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `created` varchar(50) NOT NULL,
  `messages` TEXT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=UTF8MB4;

CREATE TABLE IF NOT EXISTS `whatsapp_groups` (
  `id` int(11) AUTO_INCREMENT,
  `phone` varchar(50) NOT NULL,
  `number` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `created` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `whatsapp_groups_messages` (
  `id` int(11) AUTO_INCREMENT COLLATE UTF8MB4_UNICODE_CI,
  `id_group` varchar(50) NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  `owner` varchar(50) NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  `type` varchar(50) NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  `message` text NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  `created` varchar(50) NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  `read` int(11) NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `whatsapp_groups_users` (
  `number_group` varchar(50) NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  `admin` int(11) NOT NULL COLLATE UTF8MB4_UNICODE_CI,
  `phone` varchar(50) NOT NULL COLLATE UTF8MB4_UNICODE_CI
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `player_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` text NOT NULL,
  `baslik` text NOT NULL,
  `aciklama` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `yellowpages_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` text NOT NULL,
  `mesaj` text NOT NULL,
  `isim` text NOT NULL,
  `telno` text NOT NULL,
  `resim` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `whatsapp_stories` (
  `phone` varchar(50) NOT NULL,
  `image` text NOT NULL,
  `created` varchar(50) NOT NULL,
  `description` varchar(50),
  `location` varchar(50),
  `filter` varchar(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `darkchat_messages` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `owner` VARCHAR(50) NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
    `name` VARCHAR(50) NULL DEFAULT '' COLLATE 'utf8mb4_general_ci',
    `messages` TEXT NULL DEFAULT NULL COLLATE 'utf8mb4_general_ci',
    PRIMARY KEY (`id`) USING BTREE,
    INDEX `id` (`id`) USING BTREE
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=10
;

CREATE TABLE IF NOT EXISTS `phone_alertjobs` (
  `id` int(11) NOT NULL,
  `job` varchar(255) NOT NULL,
  `alerts` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `phone_chatrooms` (
    `id` INT unsigned NOT NULL AUTO_INCREMENT,
    `room_code` VARCHAR(10) NOT NULL UNIQUE,
    `room_name` VARCHAR(15) NOT NULL,
    `room_owner_id` VARCHAR(50),
    `room_owner_name` VARCHAR(60),
    `room_members` TEXT, 
    `room_pin` VARCHAR(50),
    `unpaid_balance` DECIMAL(10,2) DEFAULT 0,
    `is_masked` BOOLEAN DEFAULT 0,
    `is_pinned` BOOLEAN DEFAULT 0,
    `created` DATETIME DEFAULT NOW(),
    PRIMARY KEY (`id`)
);

INSERT INTO `phone_chatrooms` (`room_code`, `room_name`, `room_owner_id`, `room_owner_name`, `is_pinned`) VALUES
    ('social', 'Social', 'official', 'Government', 1),
    ('lounge', 'The Lounge', 'official', 'Government', 1),
    ('events', 'Events', 'official', 'Government', 1);

CREATE TABLE `phone_chatroom_messages` (
    `id` INT unsigned NOT NULL AUTO_INCREMENT,
    `room_id` INT unsigned,
    `member_id` VARCHAR(50),
    `member_name` VARCHAR(50),
    `message` TEXT,
     `is_pinned` BOOLEAN DEFAULT FALSE,
     `created` DATETIME DEFAULT NOW(),
    PRIMARY KEY (`id`)
);

ALTER TABLE `phone_alertjobs` ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `job` (`job`);

ALTER TABLE `phone_alertjobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

ALTER TABLE whatsapp_groups_messages CONVERT TO CHARACTER SET utf8mb4 COLLATE UTF8MB4_UNICODE_CI;
ALTER TABLE whatsapp_groups_users CONVERT TO CHARACTER SET utf8mb4 COLLATE UTF8MB4_UNICODE_CI;
ALTER TABLE whatsapp_accounts CONVERT TO CHARACTER SET utf8mb4 COLLATE UTF8MB4_UNICODE_CI;