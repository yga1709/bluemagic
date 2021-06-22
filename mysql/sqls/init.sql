CREATE TABLE `tag` (
  `id` int(32) unsigned NOT NULL,
  `tag_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_name` (`tag_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `genre` (
  `id` int(32) unsigned NOT NULL,
  `genre_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `comic_info` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `groups` varchar(128) NOT NULL DEFAULT '',
  `artists` varchar(128) DEFAULT NULL,
  `series` varchar(128) DEFAULT NULL,
  `parodies` varchar(128) DEFAULT NULL,
  `release` varchar(64) DEFAULT NULL,
  `file_path` varchar(128) NOT NULL DEFAULT '',
  `genre` int(64) NOT NULL DEFAULT 2,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `comic_tags` (
  `comic_id` int(32) unsigned NOT NULL,
  `tag_id` int(32) unsigned NOT NULL,
  KEY `comic_id` (`comic_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `comic_tags_ibfk_1` FOREIGN KEY (`comic_id`) REFERENCES `comic_info` (`id`),
  CONSTRAINT `comic_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `fc2_info` (
  `id` int(11) unsigned NOT NULL,
  `title` varchar(128) NOT NULL DEFAULT '',
  `thumb` varchar(128) DEFAULT NULL,
  `file_path` varchar(128) NOT NULL DEFAULT '',
  `file_path2` varchar(128) DEFAULT NULL,
  `file_path3` varchar(128) DEFAULT NULL,
  `genre` int(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `fc2_tags` (
  `fc2_id` int(32) unsigned NOT NULL,
  `tag_id` int(32) unsigned NOT NULL,
  KEY `tag_id` (`tag_id`),
  KEY `fc2_id` (`fc2_id`),
  CONSTRAINT `fc2_tags_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`),
  CONSTRAINT `fc2_tags_ibfk_3` FOREIGN KEY (`fc2_id`) REFERENCES `fc2_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `anime_info` (
  `id` int(32) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(128) NOT NULL DEFAULT '',
  `file_path` varchar(128) NOT NULL DEFAULT '',
  `file_path2` varchar(128) DEFAULT NULL,
  `file_path3` varchar(128) DEFAULT NULL,
  `file_path4` varchar(128) DEFAULT NULL,
  `genre` int(64) NOT NULL DEFAULT 4,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;