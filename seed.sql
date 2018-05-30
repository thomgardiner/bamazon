USE bamazon;
INSERT INTO products(product_name, department_name, price, stock)
VALUES ("iPad", "Electronics", 399.99, 20),
		 ("Shoes", "Clothing", 29.99, 40),
		 ("Book", "Books", 12.99, 50),
		 ("Dress", "Clothing", 39.99, 30),
		 ("Headphones", "Electronics", 49.99, 20),
		 ("Movie", "Electronics", 19.99, 30),
		 ("Tie", "Clothing", 19.99, 15),
		 ("Another Book", "Books", 12.99, 30),
		 ("And Another Book", "Books", 13.99, 40);
		 
USE bamazon;
SELECT * FROM products;