--CREATE VIEW sales_stores_gunluk(
--year,month,day,store_name,amount)
--AS
--SELECT 
-- year(order_date),
-- month(order_date),
-- day(order_date),
-- store_name,
-- SUM(quantity*i.list_price) amount
-- FROM 
-- sales.order_items i inner join sales.orders o on o.order_id=i.order_id
-- inner join sales.stores s on s.store_id=o.store_id 
-- Group BY
-- year(order_date),month(order_date),day(order_date),store_name
 

-- BEGIN TRY
-- select *from sales_stores_gunluk order by year,MONTH,day
-- END TRY
-- BEGIN CATCH
-- --RAISERROR(50001,8,8)
-- END CATCH

-- CREATE VIEW sales_stores_aylik(
--year,month,store_name,amount)
--AS
--SELECT 
-- year(order_date),
-- month(order_date),
-- store_name,
-- SUM(quantity*i.list_price) amount
-- FROM 
-- sales.order_items i inner join sales.orders o on o.order_id=i.order_id
-- inner join sales.stores s on s.store_id=o.store_id 
-- Group BY
-- year(order_date),month(order_date),store_name


-- CREATE VIEW sales_stores_yillik(
--year,store_name,amount)
--AS
--SELECT 
-- year(order_date),
-- store_name,
-- SUM(quantity*i.list_price) amount
-- FROM 
-- sales.order_items i inner join sales.orders o on o.order_id=i.order_id
-- inner join sales.stores s on s.store_id=o.store_id 
-- Group BY
-- year(order_date),store_name



