CREATE TABLE `users` (
 `id` int(11) NOT NULL auto_increment,
 `name` varchar(255) default NULL,
 `email` varchar(255) default NULL,
 `created_at` datetime NOT NULL,
 `updated_at` datetime NOT NULL,
 `password_digest` varchar(255) default NULL,
 `remember_digest` varchar(255) default NULL,
 `admin` tinyint(1) default NULL,
 `activation_digest` varchar(255) default NULL,
 `activated` tinyint(1) default NULL,
 `activated_at` datetime default NULL,
 `reset_digest` varchar(255) default NULL,
 `reset_sent_at` datetime default NULL,
 PRIMARY KEY (`id`),
 UNIQUE KEY `index_users_on_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `microposts` (
 `id` int(11) NOT NULL auto_increment,
 `content` text,
 `user_id` int(11) default NULL,
 `created_at` datetime NOT NULL,
 `updated_at` datetime default NULL,
 PRIMARY KEY (`id`),
 KEY `fk_user_id` (`user_id`),
 CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`)
REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
