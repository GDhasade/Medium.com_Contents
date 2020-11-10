Select * from orders

Select Name, Gender, Salary, AVG(Salary) OVER (ORDER BY Salary) AS Average
From Employees;

SELECT product_id, price, gender,  AVG(price) AS Average_Price 
FROM orders
GROUP BY product_id, price, gender
ORDER BY product_id

SELECT product_id, price, AVG(price) OVER (ORDER BY product_id) AS Average_Price 
FROM orders


Delete from orders

SELECT product_id, price,  
AVG(price) OVER (ORDER BY product_id) AS Average_Price 
FROM orders




SELECT order_id, gender, price, AVG(price) OVER (ORDER BY price ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS Average_Price
FROM orders;

SELECT order_id, gender, price, 
AVG(price) OVER (ORDER BY price ROWS BETWEEN 1 PRECEDING AND 1 FOLLOWING) AS Average_Price
FROM orders;



Select product_id, price, Rank() OVER (ORDER BY price desc) AS Product_Rank
From orders;

Select *, AVG(price) OVER (PARTITION BY gender) AS Average_price
From orders;

Select *, count(*) OVER (PARTITION BY product_id) AS Average_price
From orders;

Select *, min(price) OVER (PARTITION BY gender) AS Average_price
From orders;
