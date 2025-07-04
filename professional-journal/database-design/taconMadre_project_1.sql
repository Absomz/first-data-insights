-- MySQL Script generated by MySQL Workbench
-- Sun Jun  8 12:41:25 2025
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema taconMadre
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `locations`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `locations` ;

CREATE TABLE IF NOT EXISTS `locations` (
  `location_id` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `zip_code` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`location_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `users` ;

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` INT NOT NULL AUTO_INCREMENT,
  `locations_id_locations` INT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `phone` VARCHAR(45) NOT NULL,
  `gender` ENUM('male', 'female', 'other') NOT NULL,
  `location_id` INT NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` ENUM('unassigned', 'customer', 'employee', 'admin', 'support_specialist', 'finance_analyst', 'human_resources', 'supplier', 'purchasing_agent', 'sales_manager', 'team_leader', 'telemarketing') NOT NULL DEFAULT 'unassigned',
  PRIMARY KEY (`user_id`),
  INDEX `fk_users_locations_idx` (`locations_id_locations` ASC) VISIBLE,
  CONSTRAINT `fk_users_locations`
    FOREIGN KEY (`locations_id_locations`)
    REFERENCES `locations` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `categories`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `categories` ;

CREATE TABLE IF NOT EXISTS `categories` (
  `category_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT NOT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `brands`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `brands` ;

CREATE TABLE IF NOT EXISTS `brands` (
  `brand_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT NOT NULL,
  PRIMARY KEY (`brand_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `products`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `products` ;

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` INT NOT NULL AUTO_INCREMENT,
  `brands_brand_id` INT NOT NULL,
  `categories_category_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  `stock` INT NOT NULL,
  `brand_id` INT NOT NULL,
  `category_id` INT NOT NULL,
  `image_url` VARCHAR(255) NOT NULL,
  `is_active` TINYINT(1) NOT NULL DEFAULT 1,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_id`),
  INDEX `fk_products_brands1_idx` (`brands_brand_id` ASC) VISIBLE,
  INDEX `fk_products_categories1_idx` (`categories_category_id` ASC) VISIBLE,
  CONSTRAINT `fk_products_brands1`
    FOREIGN KEY (`brands_brand_id`)
    REFERENCES `brands` (`brand_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_products_categories1`
    FOREIGN KEY (`categories_category_id`)
    REFERENCES `categories` (`category_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `inventory_movements`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `inventory_movements` ;

CREATE TABLE IF NOT EXISTS `inventory_movements` (
  `inventory_movement_id` INT NOT NULL AUTO_INCREMENT,
  `products_product_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `movement_type` ENUM('entry', 'exit', 'adjustment', 'restock_request') NOT NULL,
  `quantity` INT NOT NULL,
  `movement_reason` VARCHAR(255) NOT NULL,
  `movement_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`inventory_movement_id`),
  INDEX `fk_inventory_movements_products1_idx` (`products_product_id` ASC) VISIBLE,
  CONSTRAINT `fk_inventory_movements_products1`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `shopping_carts`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `shopping_carts` ;

CREATE TABLE IF NOT EXISTS `shopping_carts` (
  `cart_id` INT NOT NULL AUTO_INCREMENT,
  `users_user_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`cart_id`),
  INDEX `fk_shopping_carts_users1_idx` (`users_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_shopping_carts_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cart_items`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cart_items` ;

CREATE TABLE IF NOT EXISTS `cart_items` (
  `cart_item_id` INT NOT NULL AUTO_INCREMENT,
  `shopping_carts_cart_id` INT NOT NULL,
  `products_product_id` INT NOT NULL,
  `cart_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`cart_item_id`),
  INDEX `fk_cart_items_shopping_carts1_idx` (`shopping_carts_cart_id` ASC) VISIBLE,
  INDEX `fk_cart_items_products1_idx` (`products_product_id` ASC) VISIBLE,
  CONSTRAINT `fk_cart_items_shopping_carts1`
    FOREIGN KEY (`shopping_carts_cart_id`)
    REFERENCES `shopping_carts` (`cart_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cart_items_products1`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `payment_methods`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `payment_methods` ;

CREATE TABLE IF NOT EXISTS `payment_methods` (
  `payment_method_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL DEFAULT '1',
  `description` TEXT NOT NULL,
  PRIMARY KEY (`payment_method_id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `orders` ;

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `users_user_id` INT NOT NULL,
  `payment_methods_payment_method_id` INT NOT NULL,
  `shipping_address_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `order_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` DECIMAL(10,2) NOT NULL,
  `status` ENUM('created', 'paid', 'shipped', 'delivered', 'cancelled') NOT NULL DEFAULT 'created',
  `payment_method_id` INT NOT NULL,
  `locations_location_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `fk_orders_users1_idx` (`users_user_id` ASC) VISIBLE,
  INDEX `fk_orders_payment_methods1_idx` (`payment_methods_payment_method_id` ASC) VISIBLE,
  INDEX `fk_orders_locations1_idx` (`shipping_address_id` ASC) VISIBLE,
  CONSTRAINT `fk_orders_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_payment_methods1`
    FOREIGN KEY (`payment_methods_payment_method_id`)
    REFERENCES `payment_methods` (`payment_method_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orders_locations1`
    FOREIGN KEY (`shipping_address_id`)
    REFERENCES `locations` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `order_items`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `order_items` ;

CREATE TABLE IF NOT EXISTS `order_items` (
  `order_items_id` INT NOT NULL AUTO_INCREMENT,
  `orders_order_id` INT NOT NULL,
  `products_product_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  `unit_price` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`order_items_id`),
  INDEX `fk_order_items_orders1_idx` (`orders_order_id` ASC) VISIBLE,
  INDEX `fk_order_items_products1_idx` (`products_product_id` ASC) VISIBLE,
  CONSTRAINT `fk_order_items_orders1`
    FOREIGN KEY (`orders_order_id`)
    REFERENCES `orders` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_items_products1`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `product_reviews`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `product_reviews` ;

CREATE TABLE IF NOT EXISTS `product_reviews` (
  `product_review_id` INT NOT NULL AUTO_INCREMENT,
  `users_user_id` INT NOT NULL,
  `products_product_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `rating` TINYINT NOT NULL,
  `comment` TEXT NOT NULL,
  `review_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`product_review_id`),
  INDEX `fk_product_reviews_users1_idx` (`users_user_id` ASC) VISIBLE,
  INDEX `fk_product_reviews_products1_idx` (`products_product_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_reviews_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_reviews_products1`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `positions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `positions` ;

CREATE TABLE IF NOT EXISTS `positions` (
  `position_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `description` TEXT NOT NULL,
  PRIMARY KEY (`position_id`),
  UNIQUE INDEX `name_UNIQUE` (`name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `employees`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `employees` ;

CREATE TABLE IF NOT EXISTS `employees` (
  `employee_id` INT NOT NULL AUTO_INCREMENT,
  `users_user_id` INT NOT NULL,
  `positions_position_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  `position_id` INT NOT NULL,
  `hire_date` DATE NOT NULL,
  `is_active` TINYINT(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`employee_id`),
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC) VISIBLE,
  INDEX `fk_employees_users1_idx` (`users_user_id` ASC) VISIBLE,
  INDEX `fk_employees_positions1_idx` (`positions_position_id` ASC) VISIBLE,
  CONSTRAINT `fk_employees_users1`
    FOREIGN KEY (`users_user_id`)
    REFERENCES `users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_employees_positions1`
    FOREIGN KEY (`positions_position_id`)
    REFERENCES `positions` (`position_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `suppliers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `suppliers` ;

CREATE TABLE IF NOT EXISTS `suppliers` (
  `supplier_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `contact_email` VARCHAR(45) NOT NULL,
  `contact_phone` VARCHAR(45) NOT NULL,
  `address` TEXT NOT NULL,
  PRIMARY KEY (`supplier_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `purchases`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `purchases` ;

CREATE TABLE IF NOT EXISTS `purchases` (
  `purchase_id` INT NOT NULL AUTO_INCREMENT,
  `suppliers_supplier_id` INT NOT NULL,
  `employees_employee_id` INT NOT NULL,
  `supplier_id` INT NOT NULL,
  `employee_id` INT NOT NULL,
  `purchase_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` DECIMAL(10,2) NOT NULL,
  `status` ENUM('ordered', 'received', 'cancelled') NOT NULL DEFAULT 'ordered',
  `channel` ENUM('in_store', 'website', 'mercado_libre', 'whatsapp', 'uber_eats', 'didi_food', 'other') NOT NULL DEFAULT 'in_store',
  PRIMARY KEY (`purchase_id`),
  INDEX `fk_purchases_suppliers1_idx` (`suppliers_supplier_id` ASC) VISIBLE,
  INDEX `fk_purchases_employees1_idx` (`employees_employee_id` ASC) VISIBLE,
  CONSTRAINT `fk_purchases_suppliers1`
    FOREIGN KEY (`suppliers_supplier_id`)
    REFERENCES `suppliers` (`supplier_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchases_employees1`
    FOREIGN KEY (`employees_employee_id`)
    REFERENCES `employees` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `purchase_items`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `purchase_items` ;

CREATE TABLE IF NOT EXISTS `purchase_items` (
  `purchase_item_id` INT NOT NULL AUTO_INCREMENT,
  `purchases_purchase_id` INT NOT NULL,
  `products_product_id` INT NOT NULL,
  `purchase_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  `unit_cost` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`purchase_item_id`),
  INDEX `fk_purchase_items_purchases1_idx` (`purchases_purchase_id` ASC) VISIBLE,
  INDEX `fk_purchase_items_products1_idx` (`products_product_id` ASC) VISIBLE,
  CONSTRAINT `fk_purchase_items_purchases1`
    FOREIGN KEY (`purchases_purchase_id`)
    REFERENCES `purchases` (`purchase_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchase_items_products1`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sales`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sales` ;

CREATE TABLE IF NOT EXISTS `sales` (
  `sale_id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `employees_employee_id` INT NOT NULL,
  `payment_methods_payment_method_id` INT NOT NULL,
  `employee_id` INT NOT NULL,
  `sale_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_amount` DECIMAL(10,2) NOT NULL,
  `status` ENUM('created', 'paid', 'cancelled') NOT NULL DEFAULT 'created',
  `payment_method_id` INT NOT NULL,
  `users_user_id` INT NOT NULL,
  `channel` ENUM('in_store', 'website', 'mercado_libre', 'whatsapp', 'uber_eats', 'didi_food', 'other') NOT NULL DEFAULT 'in_store',
  PRIMARY KEY (`sale_id`),
  INDEX `fk_sales_users1_idx` (`customer_id` ASC) VISIBLE,
  INDEX `fk_sales_employees1_idx` (`employees_employee_id` ASC) VISIBLE,
  INDEX `fk_sales_payment_methods1_idx` (`payment_methods_payment_method_id` ASC) VISIBLE,
  CONSTRAINT `fk_sales_users1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `users` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sales_employees1`
    FOREIGN KEY (`employees_employee_id`)
    REFERENCES `employees` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sales_payment_methods1`
    FOREIGN KEY (`payment_methods_payment_method_id`)
    REFERENCES `payment_methods` (`payment_method_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `sale_items`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sale_items` ;

CREATE TABLE IF NOT EXISTS `sale_items` (
  `sale_item_id` INT NOT NULL AUTO_INCREMENT,
  `sales_sale_id` INT NOT NULL,
  `products_product_id` INT NOT NULL,
  `sale_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  `unit_price` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`sale_item_id`),
  INDEX `fk_sale_items_sales1_idx` (`sales_sale_id` ASC) VISIBLE,
  INDEX `fk_sale_items_products1_idx` (`products_product_id` ASC) VISIBLE,
  CONSTRAINT `fk_sale_items_sales1`
    FOREIGN KEY (`sales_sale_id`)
    REFERENCES `sales` (`sale_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sale_items_products1`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `payments_received`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `payments_received` ;

CREATE TABLE IF NOT EXISTS `payments_received` (
  `payments_received_id` INT NOT NULL AUTO_INCREMENT,
  `received_by` INT NOT NULL,
  `method_id` INT NOT NULL,
  `sales_sale_id` INT NOT NULL,
  `sale_id` INT NOT NULL,
  `amount` DECIMAL(10,2) NOT NULL,
  `received_at` TIMESTAMP NOT NULL,
  `payment_methods_payment_method_id` INT NOT NULL,
  PRIMARY KEY (`payments_received_id`),
  INDEX `fk_payments_received_sales1_idx` (`sales_sale_id` ASC) VISIBLE,
  INDEX `fk_payments_received_payment_methods1_idx` (`method_id` ASC) VISIBLE,
  INDEX `fk_payments_received_employees1_idx` (`received_by` ASC) VISIBLE,
  CONSTRAINT `fk_payments_received_sales1`
    FOREIGN KEY (`sales_sale_id`)
    REFERENCES `sales` (`sale_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_payments_received_employees1`
    FOREIGN KEY (`received_by`)
    REFERENCES `employees` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_payments_received_payment_methods1`
    FOREIGN KEY (`method_id`)
    REFERENCES `payment_methods` (`payment_method_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `restock_requests`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `restock_requests` ;

CREATE TABLE IF NOT EXISTS `restock_requests` (
  `restock_request_id` INT NOT NULL AUTO_INCREMENT,
  `requested_by` INT NOT NULL,
  `products_product_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  `reason` TEXT NOT NULL,
  `request_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` ENUM('pending', 'fulfilled', 'rejected') NOT NULL DEFAULT 'pending',
  `employees_employee_id` INT NOT NULL,
  PRIMARY KEY (`restock_request_id`),
  INDEX `fk_restock_requests_products1_idx` (`products_product_id` ASC) VISIBLE,
  INDEX `fk_restock_requests_employees1_idx` (`requested_by` ASC) VISIBLE,
  CONSTRAINT `fk_restock_requests_products1`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_restock_requests_employees1`
    FOREIGN KEY (`requested_by`)
    REFERENCES `employees` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `activity_log`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `activity_log` ;

CREATE TABLE IF NOT EXISTS `activity_log` (
  `activity_log_id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` INT NOT NULL,
  `employees_employee_id` INT NOT NULL,
  `action` VARCHAR(255) NOT NULL,
  `target_table` VARCHAR(100) NOT NULL,
  `target_id` INT NOT NULL,
  `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `notes` TEXT NOT NULL,
  PRIMARY KEY (`activity_log_id`),
  INDEX `fk_activity_log_employees1_idx` (`employee_id` ASC) VISIBLE,
  CONSTRAINT `fk_activity_log_employees1`
    FOREIGN KEY (`employee_id`)
    REFERENCES `employees` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `warehouses`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `warehouses` ;

CREATE TABLE IF NOT EXISTS `warehouses` (
  `warehouse_id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `address` TEXT NOT NULL,
  PRIMARY KEY (`warehouse_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `product_stock`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `product_stock` ;

CREATE TABLE IF NOT EXISTS `product_stock` (
  `product_stock_id` INT NOT NULL AUTO_INCREMENT,
  `products_product_id` INT NOT NULL,
  `warehouses_warehouse_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `warehouse_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`product_stock_id`),
  INDEX `fk_product_stock_products1_idx` (`products_product_id` ASC) VISIBLE,
  INDEX `fk_product_stock_warehouses1_idx` (`warehouses_warehouse_id` ASC) VISIBLE,
  CONSTRAINT `fk_product_stock_products1`
    FOREIGN KEY (`products_product_id`)
    REFERENCES `products` (`product_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_product_stock_warehouses1`
    FOREIGN KEY (`warehouses_warehouse_id`)
    REFERENCES `warehouses` (`warehouse_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
