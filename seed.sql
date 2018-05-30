USE bamazon;
INSERT INTO products(product_name, department_name, price, stock)
VALUES ("iPad", "Electronics", 399.99, 20),
		 ("Shoes", "Clothing", 29.99, 40),
		 ("Book", "Books", 12.99, 50);
		 
USE bamazon;
SELECT * FROM products;