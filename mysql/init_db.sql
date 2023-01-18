-- MySQL dump 10.13  Distrib 8.0.27, for macos11 (arm64)
--
-- Host: 34.128.88.131    Database: test_store
-- ------------------------------------------------------
-- Server version	8.0.26-google
--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB;

INSERT INTO products(product_name, price) VALUES ('Virtual Private Servers', '5.00');
INSERT INTO products(product_name, price) VALUES ('Managed Databases', '15.00');
INSERT INTO products(product_name, price) VALUES ('Block Storage', '10.00');
INSERT INTO products(product_name, price) VALUES ('Managed Kubernetes', '60.00');
INSERT INTO products(product_name, price) VALUES ('Load Balancer', '10.00');

