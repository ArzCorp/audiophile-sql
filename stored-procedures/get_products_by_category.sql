DELIMITER //

CREATE PROCEDURE `get_products_by_category` (
	IN `product_category_name` VARCHAR(255)
)

BEGIN

  DECLARE `category_id` VARCHAR(255);

  SELECT `categories`.`id` INTO `category_id`
  FROM `categories`
  WHERE `categories`.`name` = `product_category_name`;

	SELECT
		`products`.`id`,
    `products`.`slug`,
    `products`.`name`,
    `products`.`short_name`,
    `products`.`description`,
    `products`.`price`,
    `products`.`main_image`,
    `products`.`first_image`,
    `products`.`second_image`,
    `products`.`third_image`,
    `products`.`is_new`,
    `categories`.`name` AS `category_name`
  FROM `products`
  INNER JOIN `categories`
  ON `products`.`category_id` = `categories`.`id`
  WHERE `products`.`category_id` = `category_id`;

END // DELIMITER ;