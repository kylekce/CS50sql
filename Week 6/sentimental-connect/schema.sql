CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name` VARCHAR(32) NOT NULL,
    `last_name` VARCHAR(32) NOT NULL,
    `username` VARCHAR(32) NOT NULL,
    `password` VARCHAR(128) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `schools` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `type` ENUM(`Primary`, `Secondary`, `Higher Education`) NOT NULL,
    `location` VARCHAR(64) NOT NULL,
    `founded` YEAR NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `companies` (
    `id` INT AUTO_INCREMENT,
    `name` VARCHAR(32) NOT NULL,
    `industry` ENUM(`Technology`, `Education`, `Business`) NOT NULL,
    `location` VARCHAR(64) NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `user_connections` (
    `id` INT AUTO_INCREMENT,,
    `user_id` INT NOT NULL,
    `connection_id` INT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
    FOREIGN KEY (`connection_id`) REFERENCES `users` (`id`)
);

CREATE TABLE `school_connections` (
    `id` INT AUTO_INCREMENT,,
    `user_id` INT NOT NULL,
    `school_id` INT NOT NULL,
    `start_date` DATE NOT NULL,
    `end_date` DATE,
    `degree` TEXT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
    FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
);

CREATE TABLE `company_connections` (
    `id` INT AUTO_INCREMENT,,
    `user_id` INT NOT NULL,
    `company_id` INT NOT NULL,
    `start_date` TEXT NOT NULL,
    `end_date` TEXT,
    `title` TEXT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
    FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
);