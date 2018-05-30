USE bamazon;
INSERT INTO products(id, product_name, department_name, price, stock)
VALUES (1, "iPad", "Electronics", 399.99, 20),
		 (2, "Shoes", "Clothing", 29.99, 40),
		 (3, "Book", "Books", 12.99, 50);
		 
USE bamazon;
SELECT * FROM products;