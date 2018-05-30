DROP DATABASE IF EXISTS bamazon;
CREATE DATABASE bamazon;

USE bamazon;
CREATE TABLE products (
	id INT NOT NULL,
	product_name VARCHAR(100),
	deparment_name VARCHAR(100),
	price INT,
	stock INT,
	PRIMARY KEY (id)
);
