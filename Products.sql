SELECT name, quantity FROM products WHERE productCode = 'PEC';
SELECT productID FROM products WHERE name LIKE('%Blue%'); 
SELECT name FROM products WHERE name LIKE('%2%') AND quantity > 9000;
SELECT name, price FROM products WHERE quantity BETWEEN 4000 AND 9000 ORDER BY name;
SELECT * FROM products WHERE price IN (0.48, 0.49, 1.25);  //???wtf
SELECT * FROM products WHERE price=0.48 OR price=0.49 OR price=1.25; //???wtf
SELECT name, price, quantity FROM products ORDER BY price DESC LIMIT 3;
SELECT SUM(quantity) AS `Total quantity`, SUM(quantity * price) AS `Total cost`, (SUM(price)/8) AS `Average price` FROM products;
SELECT DISTINCT productCode FROM products;
SELECT CONCAT(productCode, ' - ', name) AS 'Product description', price AS `Item Price`, quantity AS 'Quantity', (price * quantity) AS 'Cost' FROM products ORDER BY cost;