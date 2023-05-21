CREATE TABLE `products` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` VARCHAR(110) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `short_name` VARCHAR(110) NOT NULL,
  `description` TEXT NOT NULL,
  `category_id` INT,
  `price` INT UNSIGNED NOT NULL,
  `main_image` TEXT NOT NULL,
  `first_image` TEXT,
  `second_image` TEXT,
  `third_image` TEXT,
  `is_new` INT NOT NULL DEFAULT 1,
  `user_id` INT UNSIGNED NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  `updated_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  PRIMARY KEY (`id`),
  CONSTRAINT `products_category_id`
  FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `products_user_id`
  FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
);