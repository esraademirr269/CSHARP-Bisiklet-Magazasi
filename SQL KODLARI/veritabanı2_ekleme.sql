--ALTER PROCEDURE sales_customers_ekleme(
--	@ad varchar(255) ,
--	@soyad varchar(255) ,
--	@telefon varchar(25) ,
--	@mail varchar(255) ,
--	@cadde varchar(255) ,
--	@sehir varchar(50) ,
--	@devlet varchar(25) ,
--	@zip_code varchar(5) 

--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--    INSERT INTO sales.customers(first_name,last_name,phone,email,street,city,state,zip_code) VALUES(@ad,@soyad,@telefon,@mail,@cadde,@sehir,@devlet,@zip_code);
--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,8,4)
--	ROLLBACK
--END CATCH
--END


--ALTER PROCEDURE production_categories_ekleme(
	
--	@kategori_ad varchar(255) 

--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--    INSERT INTO production.categories(category_name) VALUES(@kategori_ad);
--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END

--exec production_categories_ekleme 'kategorim1'
--SELECT *FROM production.categories

--ALTER PROCEDURE production_brands_ekleme(
	
--	@marka_ad varchar(255) 

--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--    INSERT INTO production.brands(brand_name) VALUES(@marka_ad);
--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END

--EXEC production_brands_ekleme 'marka adý2'
--SELECT *FROM production.brands

--				PRODUCTION STOCKS EKLEME
--ALTER PROCEDURE production_stocks_ekleme(
--	@store_name VARCHAR(MAX),
--	@urun_adedi INT ,
--	@urun_ad VARCHAR(MAX) 
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--	DECLARE @product_id INT ;
--	DECLARE @store_id INT;

--	SET @store_id =	(Select store_id from sales.stores where store_name=@store_name)
--	SET @product_id =(Select product_id from production.products where product_name=@urun_ad)
--	SELECT @store_id
--	SELECT @product_id
	
--	INSERT INTO production.stocks(store_id,product_id,quantity) VALUES(@store_id,@product_id,@urun_adedi)
--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END

--SELECT *FROM production.stocks

--exec production_stocks_ekleme 'deneme',3,'Trek Slash 8 27.5 - 2016'



--				PRODUCTION PRODUCTS EKLEME
--CREATE PROCEDURE production_products_ekleme(
--	@urun_adý VARCHAR(MAX),
--	@marka_adý VARCHAR(MAX) ,
--	@kategori_adý VARCHAR(MAX) ,
--	@model_yýlý SMALLINT,
--	@liste_fiyatý INT
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--	DECLARE @marka_id INT ;
--	DECLARE @kategori_id INT;

--	SET @marka_id =	(Select brand_id from production.brands where brand_name=@marka_adý)
--	SET @kategori_id =(Select category_id from production.categories where category_name=@kategori_adý)
--	SELECT @marka_id
--	SELECT @kategori_id
--	INSERT INTO production.products(product_name,brand_id,category_id,model_year,list_price) VALUES(@urun_adý,@marka_id,@kategori_id,@model_yýlý,@liste_fiyatý)
--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END


--EXEC production_products_ekleme 'urun adý','Ritchey','Electric Bikes',2019,200
--SELECT *FROM  production.brands 
--SELECT *FROM production.categories

--INSERT INTO sales.stores(store_name,email,phone,street,city,state,zip_code) VALUES('deneme','0','0','deneme','konya','konya',42100);
----select *from production.products

--DECLARE @urun_adý VARCHAR(250)='Trek Slash 8 27.5 - 2016'
--DECLARE @product_id INT 
	
--	SET @product_id =(Select product_id from production.products where product_name=@urun_adý)
--	select @product_id
--ALTER PROCEDURE sales_stores_ekleme(
	
--	@kategori_ad varchar(255) 

--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--    INSERT INTO production.categories(category_name) VALUES(@kategori_ad);
--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END



--EXEC sp_addmessage 
--    @msgnum =50003, 
--    @severity =8, 
--    @msgtext ='Eksik veya hatalý bilgiler girdiniz!';

--RAISERROR ( 50003,8,4)

--EXEC sp_addmessage 
--    @msgnum =50004, 
--    @severity =1, 
--    @msgtext ='Hatalý ürün adý! Kayýt iþlemi baþarýsýz!';

--RAISERROR ( 50004,1,4)

--EXEC sales_customers_ekleme @ad=esra ,@soyad='DEMÝR',@telefon='05048775930',@mail='esraa_demirr_@gmail.com',@cadde='deneme cadde',@sehir='deneme sehir',@devlet='deneme devlet',@zip_code='deneme zip_code'

----ALTER PROCEDURE sales_customers_ekleme
----AS
----BEGIN
----    SELECT 
      
----    *FROM 
----        sales.customers;
    
----END;

--EXEC sales_customers_ekleme @ad=esra ,@soyad='DEMÝR',@telefon='05048775930',@mail='esraa_demirr_@gmail.com',@cadde='deneme cadde',@sehir='deneme sehir',@devlet='deneme devlet',@zip_code='deneme zip_code'
--SELECT *FROM sales.customers

---Kendi Error mesajým
------------------
--EXEC sp_addmessage 
--    @msgnum = 50002, 
--    @severity = 1, 
--    @msgtext = '2.Eksik yada hatalý bilgiler eklediniz';

--RAISERROR ( 50002,1,4)

--EXEC sp_executesql N'SELECT * FROM production.products where product_id=10';


--DECLARE 
--    @table NVARCHAR(128),
--    @sql NVARCHAR(MAX);

--SET @table = N'production.products';

--SET @sql = N'SELECT * FROM ' + @table;

--EXEC sp_executesql @sql;


--CREATE PROC usp_query (
--    @table NVARCHAR(128)
--)
--AS
--BEGIN
 
--    DECLARE @sql NVARCHAR(MAX);
--    -- construct SQL
--    SET @sql = N'SELECT * FROM ' + @table;
--    -- execute the SQL
--    EXEC sp_executesql @sql;
    
--END;

--EXEC usp_query 'production.categories';


--SELECT *FROM production.categories



--						SALES ORDER_ITEMS EKLEME  EKSÝKKKK

--CREATE PROCEDURE sales_order_items_ekleme(
	
--	@urun_ad VARCHAR(MAX) ,
--	@urun_adedi INT ,
--	@liste_fiyat DECIMAL(10,2),
--	@indirim DECIMAL(4,2)
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--	DECLARE @product_id INT ;
--	DECLARE @store_id INT;
--	DECLARE @oge_id INT ;

--	SET @oge_id=(SELECT COUNT(*) FROM sales.order_items WHERE order_id)
--	SET @product_id =(Select product_id from production.products where product_name=@urun_ad)
--	SELECT @store_id
--	SELECT @product_id
	
--	INSERT INTO production.stocks(store_id,product_id,quantity) VALUES(@store_id,@product_id,@urun_adedi)
--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END

--SELECT *FROM production.stocks

--exec sales_order_items_ekleme 



--							SALES STORES EKLEME


--CREATE PROCEDURE sales_stores_ekleme(
	
--	@magaza_ad VARCHAR(MAX) ,
--	@telefon  VARCHAR(25),
--	@mail VARCHAR(255),
--	@cadde VARCHAR(255),
--	@sehir VARCHAR(255),
--	@devlet VARCHAR(255),
--	@posta_kodu VARCHAR(5)
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
	
--	INSERT INTO sales.stores(store_name,phone,email,street,city,state,zip_code) VALUES(@magaza_ad,@telefon,@mail,@cadde,@sehir,@devlet,@posta_kodu)
	
--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END
--SELECT *from sales.stores
--exec sales_stores_ekleme 'magaza ad deneme','2548755','asdkm@kjasd','denemecade','sehirim','devletim','42008'

