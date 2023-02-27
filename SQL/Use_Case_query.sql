/* 3 Use Cases for Customers */

/* 1. Identify a Customer’s order details for a given customer */
SELECT Order_date, Order_type, Employee_id, Order_status, Customer_id, Item_count, Item_name, Item_price, `order`.Order_id 
FROM  `order`,  order_detail, items
WHERE  `order`.Order_id =  order_detail.Order_id
AND order_detail.Item_id =  items.Item_id
AND Customer_id = 2;

/* 2. Identify Customer’s reservation details for a given customer */
SELECT * 
FROM reservation 
WHERE Customer_id = 4;

/* 3. Identify reviews of items */
SELECT avg(food_rating.food_rating) as rating, items.Item_id, items.Item_name
FROM food_rating, items 
WHERE food_rating.Item_id = items.Item_id 
GROUP BY 3
ORDER BY 1 DESC;

/* 3 Use Cases for Employees */
 
/* 1. Retrieve customer order status and time from order */
SELECT `order`.Customer_id,`order`.Order_id,`order`.Order_status,`order`.Order_date,`order`.Employee_id,
`order`.Order_type,customer.Address,customer.Phone_number  
FROM `order`, customer
WHERE `order`.Customer_id = customer.Customer_id
AND `order`.Order_type = 'Delivery';

/* 2. Identify total amount due and amount for each item for a given order */
SELECT (items.Item_price*order_detail.Item_count), `order`.Customer_id, `order`.Order_id, 
items.Item_name, items.Item_id, order_detail.Item_count
FROM `order`, items, order_detail
WHERE `order`.Order_id = order_detail.Order_id 
AND items.Item_id = order_detail.Item_id 
AND Customer_id = 5;
	
SELECT sum((items.Item_price*order_detail.Item_count)), `order`.Customer_id, `order`.Order_id
FROM `order`, items, order_detail
WHERE `order`.Order_id = order_detail.Order_id 
AND items.Item_id = order_detail.Item_id 
AND Customer_id = 5;

/* 3. Identify orders that are still incomplete */
SELECT * 
FROM `order` 
WHERE order_status = 'Work in Progress';

/* 3 Use Cases for Managers */
 
/* 1. Total sales by each time period */
SELECT sum((items.Item_price*order_detail.Item_count)), `order`.Order_date
FROM `order`, items, order_detail
WHERE `order`.Order_id = order_detail.Order_id 
AND items.Item_id = order_detail.Item_id 
AND `order`.Order_date = '2018-01-24';

/* 2. Total sales of each item from highest to lowest */
SELECT sum(items.Item_price*order_detail.Item_count) as sales, items.Item_name
FROM `order`, items, order_detail
WHERE `order`.Order_id = order_detail.Order_id 
AND items.Item_id = order_detail.Item_id 
GROUP BY 2 
ORDER BY 1 DESC;

/* 3. Average Satisfaction Level by Day */
SELECT avg(review.Satisfaction_level), `order`.Order_date 
FROM review, `order`
WHERE review.Order_id = `order`.Order_id 
GROUP BY 2;

/* Trigger: This Trigger enters an id into orders table when you enter a row into order_details table */
USE `sql_project`$$
CREATE DEFINER = CURRENT_USER TRIGGER `sql_project`.`order_detail_AFTER_INSERT` AFTER INSERT ON `order_detail` FOR EACH ROW
BEGIN
insert into `order`(Order_id)
values (new.Order_id);
END$$

/* Stored Procedure: This procedure enters in customer data */
Procedures
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_procedure`(IN id int, IN phone varchar(45), IN addr varchar(45))
BEGIN
insert into customer(Customer_id, Phone_number, Address)
values (id, phone, addr);
END

