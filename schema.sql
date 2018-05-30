DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;
CREATE TABLE products (
	id INT(11) NOT NULL,
	product_name VARCHAR(100),
	deparment_name VARCHAR(100),
	price INT(11),
	stock INT(11),
	PRIMARY KEY (id)
);
