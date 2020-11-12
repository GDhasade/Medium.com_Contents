------------------ SQL Window Functions Part B -----------------------------

CREATE TABLE public.retails
(
    record_id integer NOT NULL,
	order_id integer NOT NULL,
    name character varying(50) COLLATE pg_catalog."default",
    gender character varying(50) COLLATE pg_catalog."default",
    product_id integer,
    price integer,
    CONSTRAINT recordid_pkey PRIMARY KEY (record_id)
)

SELECT * FROM retails

SELECT order_id, product_id, price, AVG(price) OVER (PARTITION BY order_id) AS Average_Order_Price 
FROM retails

SELECT order_id, name, product_id, COUNT(*) OVER (Partition BY order_id) AS Number_of_Products 
FROM retails

SELECT order_id, name, product_id, COUNT(*) OVER (Order BY order_id) AS Number_of_Products 
FROM retails


SELECT order_id, name, product_id, price, 
MIN(price) OVER (Partition BY order_id) AS Minimum_Price_Product,
MAX(price) OVER (Partition BY order_id) AS Maximum_Price_Product 
FROM retails

SELECT order_id, name, product_id, price, SUM(price) OVER (PARTITION BY order_id) AS Total_Order_Price 
FROM retails

SELECT order_id, name, product_id, price, RANK() OVER (ORDER BY price) AS Rank_Product_Price 
FROM retails

SELECT order_id, name, product_id, price, CUME_DIST() OVER (PARTITION BY order_id ORDER BY price) AS Dense_Rank_Product_Price 
FROM retails

SELECT order_id, name, product_id, price, ROW_NUMBER() OVER (PARTITION BY order_id ORDER BY price) AS Row_Number_Product_Price 
FROM retails

SELECT order_id, name, product_id, price, NTILE(10) OVER (ORDER BY price) AS NTile_Product_Price 
FROM retails

SELECT order_id, name, product_id, price, percent_rank() OVER (PARTITION BY order_id ORDER BY price) AS Row_Number_Product_Price 
FROM retails



