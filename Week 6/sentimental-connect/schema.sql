CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    `first_name` TEXT NOT NULL,
    `last_name` TEXT NOT NULL,
    `password` TEXT NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `schools` (
    `id`,
    `name` TEXT NOT NULL,
    `type` TEXT NOT NULL,
    `location` TEXT NOT NULL,
    `founded` TEXT NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `companies` (
    `id`,
    `name` TEXT NOT NULL,
    `industry` TEXT NOT NULL,
    `location` TEXT NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `user_connections` (
    `id`,
    `user_id` INTEGER NOT NULL,
    `connection_id` INTEGER NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
    FOREIGN KEY (`connection_id`) REFERENCES `users` (`id`)
);

CREATE TABLE `school_connections` (
    `id`,
    `user_id` INTEGER NOT NULL,
    `school_id` INTEGER NOT NULL,
    `start_date` TEXT NOT NULL,
    `end_date` TEXT,
    `degree` TEXT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
    FOREIGN KEY (`school_id`) REFERENCES `schools` (`id`)
);

CREATE TABLE `company_connections` (
    `id`,
    `user_id` INTEGER NOT NULL,
    `company_id` INTEGER NOT NULL,
    `start_date` TEXT NOT NULL,
    `end_date` TEXT,
    `title` TEXT NOT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
    FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`)
);