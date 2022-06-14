--						SALES CUSTOMERS TRIGGER


--CREATE TABLE sales.customers_trigger(
--    change_id INT IDENTITY PRIMARY KEY,
--    customer_id INT  NULL,
--    first_name VARCHAR(255)  NULL,
--    last_name VARCHAR(255)  NULL,
--    phone VARCHAR(255) NULL,
--	email VARCHAR(255)  NULL,
--	street VARCHAR(255)  NULL,
--	city VARCHAR(255)  NULL,
--	state VARCHAR(255)  NULL,
--	zip_code VARCHAR(255)  NULL,
--    updated_at DATETIME NOT NULL,
--    operation CHAR(3) NOT NULL,
--    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
--);


--CREATE TRIGGER sales.customers_trg
--ON sales.customers
--AFTER INSERT,DELETE,UPDATE
--AS
--BEGIN
--  SET NOCOUNT ON
--  INSERT INTO sales.customers_trigger(customer_id,first_name,last_name,phone,email,street,city,state,zip_code,updated_at,operation)
--  SELECT i.customer_id,first_name,last_name,phone,email,street,city,state,zip_code,GETDATE(),'INS' FROM inserted i
--  UNION ALL
--  SELECT d.customer_id,first_name,last_name,phone,email,street,city,state,zip_code,GETDATE(),'DEL' FROM deleted d;

--END;



--					PRODUCTION BRANDS TRIGGER


--CREATE TABLE production.brands_trigger(
--    change_id INT IDENTITY PRIMARY KEY,
--    brand_id INT  NULL,
--    brand_name VARCHAR(255)  NULL,
--    updated_at DATETIME NOT NULL,
--    operation CHAR(3) NOT NULL,
--    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
--);


--ALTER TRIGGER production.brands_trg
--ON production.brands
--AFTER INSERT,DELETE,UPDATE
--AS
--BEGIN
--  SET NOCOUNT ON
--  INSERT INTO production.brands_trigger(brand_id ,brand_name,updated_at,operation)
--  SELECT i.brand_id,brand_name,GETDATE(),'INS' FROM inserted i
--  UNION ALL
--  SELECT d.brand_id,brand_name,GETDATE(),'DEL' FROM deleted d;

--END;



--					PRODUCTION CATEGORIES TRIGGER



--CREATE TABLE production.categories_trigger(
--    change_id INT IDENTITY PRIMARY KEY,
--    category_id INT  NULL,
--    category_name VARCHAR(255)  NULL,
--    updated_at DATETIME NOT NULL,
--    operation CHAR(3) NOT NULL,
--    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
--);


--CREATE TRIGGER production.categories_trg
--ON production.categories
--AFTER INSERT,DELETE,UPDATE
--AS
--BEGIN
--  SET NOCOUNT ON
--  INSERT INTO production.categories_trigger(category_id ,category_name,updated_at,operation)
--  SELECT i.category_id,category_name,GETDATE(),'INS' FROM inserted i
--  UNION ALL
--  SELECT d.category_id,category_name,GETDATE(),'DEL' FROM deleted d;

--END;


--PRODUCTION PRODUCTS TRIGGER



--CREATE TABLE production.products_trigger(
--    change_id INT IDENTITY PRIMARY KEY,
--    product_id INT  NULL,
--    product_name VARCHAR(255)  NULL,
--	 brand_id INT  NULL,
--	  category_id INT  NULL,
--    model_year smallint  NULL,
--    list_price decimal(10,2) NULL,
--    updated_at DATETIME NOT NULL,
--    operation CHAR(3) NOT NULL,
--    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
--);


--CREATE TRIGGER production.products_trg
--ON production.products
--AFTER INSERT,DELETE,UPDATE
--AS
--BEGIN
--  SET NOCOUNT ON
--  INSERT INTO production.products_trigger(product_id,product_name,brand_id,category_id,model_year,list_price,updated_at,operation)
--  SELECT i.product_id,product_name,brand_id,category_id,model_year,list_price,GETDATE(),'INS' FROM inserted i
--  UNION ALL
--  SELECT d.product_id,product_name,brand_id,category_id,model_year,list_price,GETDATE(),'DEL' FROM deleted d;

--END;


--					PRODUCTION STOCKS TRIGGER



--CREATE TABLE production.stocks_trigger(
--    change_id INT IDENTITY PRIMARY KEY,
--    store_id INT  NULL,
--	 product_id INT  NULL,
--	  quantity INT  NULL,
--    updated_at DATETIME NOT NULL,
--    operation CHAR(3) NOT NULL,
--    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
--);


--CREATE TRIGGER production.stocks_trg
--ON production.stocks
--AFTER INSERT,DELETE,UPDATE
--AS
--BEGIN
--  SET NOCOUNT ON
--  INSERT INTO production.stocks_trigger(store_id,product_id,quantity,updated_at,operation)
--  SELECT i.store_id,product_id,quantity,GETDATE(),'INS' FROM inserted i
--  UNION ALL
--  SELECT d.store_id,product_id,quantity,GETDATE(),'DEL' FROM deleted d;

--END;



--SALES ORDER_ITEMS TRIGGER



--CREATE TABLE sales.order_items_trigger(
--    change_id INT IDENTITY PRIMARY KEY,
--    order_id INT  NULL,
--	item_id INT  NULL,
--    quantity INT  NULL,
--    list_price DECIMAL(10,2)  NULL,
--    discount decimal(4,2) NULL,
--    updated_at DATETIME NOT NULL,
--    operation CHAR(3) NOT NULL,
--    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
--);


--CREATE TRIGGER sales.order_items_trg
--ON sales.order_items
--AFTER INSERT,DELETE,UPDATE
--AS
--BEGIN
--  SET NOCOUNT ON
--  INSERT INTO sales.order_items_trigger(order_id,item_id,quantity,list_price,discount,updated_at,operation)
--  SELECT i.order_id,item_id,quantity,list_price,discount,GETDATE(),'INS' FROM inserted i
--  UNION ALL
--  SELECT d.order_id,item_id,quantity,list_price,discount,GETDATE(),'DEL' FROM deleted d;

--END;



--					SALES ORDERS TRÝGGER


--CREATE TABLE sales.orders_trigger(
--    change_id INT IDENTITY PRIMARY KEY,
--    order_id INT  NULL,
--	customer_id INT  NULL,
--	order_status tinyint NULL,
--    order_date date NULL,
--    required_date date NULL,
--    shipped_date date NULL,
--	store_id INT  NULL,
--	staff_id INT  NULL,
--    updated_at DATETIME NOT NULL,
--    operation CHAR(3) NOT NULL,
--    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
--);


--CREATE TRIGGER sales.orders_trg
--ON sales.orders
--AFTER INSERT,DELETE,UPDATE
--AS
--BEGIN
--  SET NOCOUNT ON
--  INSERT INTO sales.orders_trigger(order_id,customer_id,order_status,order_date,required_date,shipped_date,store_id,staff_id,updated_at,operation)
--  SELECT i.order_id,customer_id,order_status,order_date,required_date,shipped_date,store_id,staff_id,GETDATE(),'INS' FROM inserted i
--  UNION ALL
--  SELECT d.order_id,customer_id,order_status,order_date,required_date,shipped_date,store_id,staff_id,GETDATE(),'DEL' FROM deleted d;

--END;



--						SALES STAFFS TRÝGGER



--CREATE TABLE sales.staffs_trigger(
--    change_id INT IDENTITY PRIMARY KEY,
--    staff_id INT  NULL,
--	first_name VARCHAR(50)  NULL,
--	last_name VARCHAR(50) NULL,
--    email VARCHAR(255) NULL,
--    phone VARCHAR(25) NULL,
--    active tinyint NULL,
--	store_id INT  NULL,
--	manager_id INT  NULL,
--    updated_at DATETIME NOT NULL,
--    operation CHAR(3) NOT NULL,
--    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
--);


--CREATE TRIGGER sales.staffs_trg
--ON sales.staffs
--AFTER INSERT,DELETE,UPDATE
--AS
--BEGIN
--  SET NOCOUNT ON
--  INSERT INTO sales.staffs_trigger(staff_id,first_name,last_name,email,phone,active,store_id,manager_id,updated_at,operation)
--  SELECT i.staff_id,first_name,last_name,email,phone,active,store_id,manager_id,GETDATE(),'INS' FROM inserted i
--  UNION ALL
--  SELECT d.staff_id,first_name,last_name,email,phone,active,store_id,manager_id,GETDATE(),'DEL' FROM deleted d;

--END;



--						SALES STORES TRÝGGER


--CREATE TABLE sales.stores_trigger(
--    change_id INT IDENTITY PRIMARY KEY,
--    store_id INT  NULL,
--	store_name VARCHAR(50)  NULL,
--	phone VARCHAR(25) NULL,
--	email VARCHAR(255) NULL,
--    street VARCHAR(255) NULL,
--    city VARCHAR(255) NULL,
--	state INT  NULL,
--	zip_code VARCHAR(5)  NULL,
--    updated_at DATETIME NOT NULL,
--    operation CHAR(3) NOT NULL,
--    CHECK(operation = 'INS' or operation='DEL' or operation='UPDT')
--);


--CREATE TRIGGER sales.stores_trg
--ON sales.stores
--AFTER INSERT,DELETE,UPDATE
--AS
--BEGIN
--  SET NOCOUNT ON
--  INSERT INTO sales.stores_trigger(store_id,store_name,phone,email,street,city,state,zip_code,updated_at,operation)
--  SELECT i.store_id,store_name,phone,email,street,city,state,zip_code,GETDATE(),'INS' FROM inserted i
--  UNION ALL
--  SELECT d.store_id,store_name,phone,email,street,city,state,zip_code,GETDATE(),'DEL' FROM deleted d;

--END;

----SELECT 
----    * 
----FROM 
----    production.products_trigger