--						SALES CUSTOMERS SÝLME


--CREATE PROCEDURE sales_customers_silme(
--	@ad VARCHAR(255),
--	@soyad VARCHAR(255)
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
	
--	DELETE FROM sales.customers WHERE first_name=@ad and last_name=@soyad

--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END
--SELECT *from sales.customers where first_name='Rutha' and last_name='Howell'
--exec sales_customers_silme 'Rutha','Howell'




--					PRODUCTION CATEGORÝES SÝLME


--CREATE PROCEDURE production_categories_silme(
--	@kategori_ad VARCHAR(255)
	
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
	
--	DELETE FROM production.categories WHERE category_name=@kategori_ad 

--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END
--SELECT *from production.categories
--exec production_categories_silme 'kategorim'


--						PRODUCTION BRANDS SÝLME


--ALTER PROCEDURE production_brands_silme(
--	@marka_ad VARCHAR(255)
	
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
	
--	DELETE FROM production.brands WHERE brand_name=@marka_ad 

--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END
--SELECT *from production.brands
--exec production_brands_silme 'marka adý2'


--							PRODUCTION PRODUCTS SÝLME



--CREATE PROCEDURE production_products_silme(
--	@urun_ad VARCHAR(255),
--	@marka_ad VARCHAR(255),
--	@model_yili SMALLINT	
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
	
--	DELETE FROM production.products where product_name=@urun_ad and brand_id=(select brand_id from production.brands where brand_name=@marka_ad) and model_year=@model_yili

--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END
--SELECT *from production.brands
--SELECT *FROM production.products
--exec production_products_silme 'Surly Ice Cream Truck Frameset - 2016','Surly',2016



--						PRODUCTION STOCKS SÝLME


--ALTER PROCEDURE production_stocks_silme(
--	@magaza_ad VARCHAR(255),
--	@urun_ad VARCHAR(255)	
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
	
--	DELETE FROM production.stocks where store_id=(select store_id from sales.stores where store_name=@magaza_ad) and product_id=(select product_id from production.products where product_name=@urun_ad)

--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END
--SELECT *from production.products
--SELECT *FROM production.stocks
--SELECT *FROM sales.stores
--exec production_stocks_silme 'deneme','Trek Slash 8 27.5 - 2016'





--								SALES STORES SÝLME


--ALTER PROCEDURE sales_stores_silme(
--	@magaza_ad VARCHAR(255),
--	@cadde_ad VARCHAR(255)	,
--	@sehir_ad VARCHAR(255)
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
	
--	DELETE FROM sales.stores where store_name=@magaza_ad  and street=@cadde_ad and city=@sehir_ad

--	COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END
--SELECT *from production.products
--SELECT *FROM production.stocks
--SELECT *FROM sales.stores
--exec sales_stores_silme 'deneme','deneme','konya'



--							SALES ORDER_ITEMS SÝLME



CREATE PROCEDURE sales_orderitems_silme(
	@magaza_ad VARCHAR(255),
	@cadde_ad VARCHAR(255)	,
	@sehir_ad VARCHAR(255)
)
AS
BEGIN
BEGIN TRY  
BEGIN TRANSACTION
	
	DELETE FROM sales.stores where store_name=@magaza_ad  and street=@cadde_ad and city=@sehir_ad

	COMMIT TRANSACTION
END TRY
BEGIN CATCH  
    RAISERROR ( 50003,1,4)
	ROLLBACK
END CATCH
END
SELECT *from production.products
SELECT *FROM production.stocks
SELECT *FROM sales.stores
exec sales_orderitems_silme 'deneme','deneme','konya'





----------------
--EXEC sp_addmessage 
--    @msgnum = 50004, 
--    @severity = 2, 
--    @msgtext = '2.Eksik yada hatalý bilgiler eklediniz';

--RAISERROR ( 50002,1,4)



