--                    SALES CUSTOMERS ARAMA ÝÞLEMÝ

--CREATE PROCEDURE sales_customers_arama(
--	@ISIM VARCHAR(255),
--	@SOYISIM VARCHAR(255)

--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--SELECT *FROM sales.customers WHERE first_name=@ISIM AND last_name=@SOYISIM
--COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END;

--EXEC sales_customers_arama 'Debra','Burks'

--SELECT *FROM sales.customers


--                    PRODUCTION CATEGORIES ARAMA


--CREATE PROCEDURE production_categories_arama(
--	@KATEGORI_ADI VARCHAR(255)

--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--SELECT *FROM production.categories WHERE category_name=@KATEGORI_ADI
--COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END;

--EXEC production_categories_arama 'kategorim'

--SELECT *FROM production.categories


--						PRODUCTION BRANDS ARAMA


--CREATE PROCEDURE production_brands_arama(
--	@MARKA_ADI VARCHAR(255)
	

--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--SELECT *FROM production.brands WHERE brand_name=@MARKA_ADI
--COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END;

--EXEC production_brands_arama 'Trek'

--SELECT *FROM production.brands



--						PRODUCTION PRODUCTS ARAMA

--CREATE PROCEDURE production_products_arama(
--	@URUN_ADI VARCHAR(255)

--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--SELECT p.product_name, b.brand_name , c.category_name,p.model_year,p.list_price AS KATEGORI FROM production.products AS p JOIN production.categories AS c ON p.category_id=c.category_id JOIN production.brands AS b ON p.brand_id=p.brand_id  WHERE product_name=@URUN_ADI ;
--COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END;

--EXEC production_products_arama 'Electra Cruiser 1 (24-Inch) - 2016'

--SELECT product_name FROM production.products group by product_name

--						PRODUCTION STOCKS ARAMA


--CREATE PROCEDURE production_stocks_arama(
--	@MAGAZA_ADI VARCHAR(255),
--	@URUN_ADI VARCHAR(255)
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--SELECT quantity AS URUN_ADEDI FROM production.stocks  WHERE store_id=(SELECT store_id FROM sales.stores WHERE store_name=@MAGAZA_ADI) AND product_id=(SELECT product_id FROM production.products WHERE product_name=@URUN_ADI)
--COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END;

--EXEC production_stocks_arama 'Santa Cruz Bikes','Surly Wednesday Frameset - 2016'

--SELECT *FROM production.products
--SELECT *FROM sales.stores
--SELECT *FROM production.stocks



--						SALES ORDER_ITEMS ARAMA

--CREATE PROCEDURE sales_order_items_arama(
--	@urun_adý VARCHAR(255)
	
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--SELECT p.product_name AS URUN_ADI, oi.list_price AS LISTE_FIYATI,oi.discount AS INDIRIM,oi.quantity AS ADEDI FROM sales.order_items oi join production.products p on oi.product_id=p.product_id join sales.orders o on o.order_id=oi.order_id WHERE p.product_name=@urun_adý
--COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END;

--EXEC sales_order_items_arama 'Trek Conduit+ - 2016'

--SELECT *FROM production.products 



--						SALES STORES ARAMA

--CREATE PROCEDURE sales_stores_arama(
--	@magaza_adý VARCHAR(255)	
--)
--AS
--BEGIN
--BEGIN TRY  
--BEGIN TRANSACTION
--SELECT store_name AS MAGAZA_ADI, phone AS TELEFON, email AS MAIL_ADRESI, street AS CADDE, city AS SEHIR, state AS DEVLET, zip_code AS POSTA_KODU FROM sales.stores WHERE store_name=@magaza_adý
--COMMIT TRANSACTION
--END TRY
--BEGIN CATCH  
--    RAISERROR ( 50003,1,4)
--	ROLLBACK
--END CATCH
--END;

--EXEC sales_stores_arama 'Rowlett Bikes'

--SELECT *FROM sales.stores



--