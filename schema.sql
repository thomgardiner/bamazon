DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;
CREATE TABLE products (
	id INT(11) NOT NULL,
	product_name VARCHAR(100),
	department_name VARCHAR(100),
	price DECIMAL(11, 2),
	stock INT(11),
	PRIMARY KEY (id)
);
