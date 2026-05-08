-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table `audit_central`
--



DROP TABLE IF EXISTS `audit_central`;

CREATE TABLE `audit_central` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_id` int NOT NULL,
  `action` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `column_names` varchar(4096) NOT NULL,
  `date_created` datetime NOT NULL,  
  `date_updated` datetime NOT NULL,  
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `user`
--

LOCK TABLES `audit_central` WRITE;

UNLOCK TABLES;

CREATE TRIGGER after_authentication_delete AFTER DELETE ON authentication 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','authentication',NOW());	           

CREATE TRIGGER after_authentication_insert AFTER INSERT ON authentication 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'authentication', NOW());	           

CREATE TRIGGER after_company_delete AFTER DELETE ON company FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','company',NOW());
				 	 
CREATE TRIGGER after_company_insert AFTER INSERT ON company 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'company', NOW());
				 
CREATE TRIGGER after_customer_delete AFTER DELETE ON customer FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','customer',NOW());

CREATE TRIGGER after_customer_insert AFTER INSERT ON customer 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'customer', NOW());

CREATE TRIGGER after_customer_order_delete AFTER DELETE ON customer_order FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','customer_order',NOW());

CREATE TRIGGER after_customer_order_insert AFTER INSERT ON customer_order 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'customer_order', NOW());
				 	 				 	 
CREATE TRIGGER after_employee_delete AFTER DELETE ON employee FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','employee',NOW());		 
				 
CREATE TRIGGER after_employee_insert AFTER INSERT ON employee 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'employee', NOW());	 
				 
CREATE TRIGGER after_inventory_transaction_delete AFTER DELETE ON inventory_transaction FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','inventory_transaction',NOW());

CREATE TRIGGER after_inventory_transaction_insert AFTER INSERT ON inventory_transaction 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'inventory_transaction', NOW());
				 
CREATE TRIGGER after_invoice_delete AFTER DELETE ON invoice FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','invoice',NOW());

CREATE TRIGGER after_invoice_insert AFTER INSERT ON invoice 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'invoice', NOW());
				 
CREATE TRIGGER after_order_detail_delete AFTER DELETE ON order_detail FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','order_detail',NOW());

CREATE TRIGGER after_order_detail_insert AFTER INSERT ON order_detail 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'order_detail', NOW());
				 				
CREATE TRIGGER after_privilege_delete AFTER DELETE ON privilege FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','privilege',NOW());
				 
CREATE TRIGGER after_privilege_insert AFTER INSERT ON privilege 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'privilege', NOW());			 
				 
CREATE TRIGGER after_product_delete AFTER DELETE ON product FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','product',NOW());

CREATE TRIGGER after_product_insert AFTER INSERT ON product 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'product', NOW());
			
CREATE TRIGGER after_product_supplier_delete AFTER DELETE ON product_supplier FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','product_supplier',NOW());

CREATE TRIGGER after_product_supplier_insert AFTER INSERT ON product_supplier 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'product_supplier', NOW());
				 
CREATE TRIGGER after_purchase_order_delete AFTER DELETE ON purchase_order FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','purchase_order',NOW());

CREATE TRIGGER after_purchase_order_insert AFTER INSERT ON purchase_order FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT','purchase_order',NOW());
				 
CREATE TRIGGER after_purchase_order_detail_delete AFTER DELETE ON purchase_order_detail FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','purchase_order_detail',NOW());

CREATE TRIGGER after_purchase_order_detail_insert AFTER INSERT ON purchase_order_detail 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'purchase_order_detail', NOW());
				 
CREATE TRIGGER after_shipper_delete AFTER DELETE ON shipper FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','shipper',NOW());
				  
CREATE TRIGGER after_shipper_insert AFTER INSERT ON shipper
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'shipper', NOW());
				 
CREATE TRIGGER after_supplier_delete AFTER DELETE ON supplier FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','supplier',NOW());

CREATE TRIGGER after_supplier_insert AFTER INSERT ON supplier 
  FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'supplier', NOW());
				 
DELIMITER //
CREATE TRIGGER after_authentication_update AFTER UPDATE ON authentication 
FOR EACH ROW
BEGIN
	DECLARE changed_columns VARCHAR(4096);
    SET changed_columns = '';

	-- Check each column for changes
    IF OLD.role_type != NEW.role_type THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'role_type');
    END IF;
    
    IF OLD.user_name != NEW.user_name THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'user_name');
    END IF;

    IF OLD.password != NEW.password THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'password');
    END IF;

 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','authentication',changed_columns,NOW(),NOW());	           
END //
DELIMITER;
	 
	
				 
DELIMITER //
CREATE TRIGGER after_company_update AFTER UPDATE ON company 
FOR EACH ROW
BEGIN
 DECLARE changed_columns VARCHAR(4096);
 SET changed_columns = '';
 
 -- Check each column for changes
 IF OLD.name != NEW.name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'name');
 END IF;	
 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','company',changed_columns, NOW(),NOW());
                
END //
DELIMITER;	            
	 

DELIMITER //
CREATE TRIGGER after_customer_update AFTER UPDATE ON customer 
FOR EACH ROW
BEGIN
 DECLARE changed_columns VARCHAR(4096);
 SET changed_columns = '';
 
 -- Check each column for changes
 IF OLD.last_name != NEW.last_name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'last_name');
 END IF;	
 IF OLD.first_name != NEW.first_name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'first_name');
 END IF;	
 IF OLD.email_address != NEW.email_address THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'email_address');
 END IF;
 IF OLD.job_title != NEW.job_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'job_title');
 END IF;	
 IF OLD.business_phone != NEW.business_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'business_phone');
 END IF;	
 IF OLD.home_phone != NEW.home_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'home_phone');
 END IF;
 IF OLD.mobile_phone != NEW.mobile_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'mobile_phone');
 END IF;	
 IF OLD.fax_number != NEW.fax_number THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'fax_number');
 END IF;	
 IF OLD.address1 != NEW.address1 THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'address1');
 END IF;
 IF OLD.address2 != NEW.address2 THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'address1');
 END IF; 
 IF OLD.city != NEW.city THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'city');
 END IF;	
 IF OLD.state_province != NEW.state_province THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'state_province');
 END IF;	
 IF OLD.zip_postal_code != NEW.zip_postal_code THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'zip_postal_code');
 END IF;
 IF OLD.country_region != NEW.country_region THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'country_region');
 END IF;
 IF OLD.notes != NEW.notes THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'notes');
 END IF; 
 IF OLD.company_id != NEW.company_id THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'company_id');
 END IF;	 
 IF OLD.web_site_title != NEW.web_site_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'web_site_title');
 END IF;	
 IF OLD.web_site_url != NEW.web_site_url THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'web_site_url');
 END IF;
 IF OLD.portrait_path != NEW.portrait_path THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'portrait_path');
 END IF;	 
 IF OLD.portrait_title != NEW.portrait_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'portrait_title');
 END IF;	

 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','customer',changed_columns,NOW(),NOW());
                
END //
DELIMITER;	 



DELIMITER //
CREATE TRIGGER after_customer_order_update AFTER UPDATE ON customer_order 
FOR EACH ROW
BEGIN
	DECLARE changed_columns VARCHAR(4096);
    SET changed_columns = '';

	    -- Check each column for changes
    IF OLD.employee_id != NEW.employee_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'employee_id');
    END IF;
    
    IF OLD.customer_id != NEW.customer_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'customer_id');
    END IF;

    IF OLD.order_date != NEW.order_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'order_date');
    END IF;
  
    IF OLD.shipped_date != NEW.shipped_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'shipped_date');
    END IF;

    IF OLD.shipper_id != NEW.shipper_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'shipper_id');
    END IF;    

    IF OLD.ship_name != NEW.ship_name THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'ship_name');
    END IF;
    
    IF OLD.ship_address != NEW.ship_address THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'ship_address');
    END IF;

    IF OLD.ship_city != NEW.ship_city THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'ship_city');
    END IF;
  
    IF OLD.ship_state_province != NEW.ship_state_province THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'ship_state_province');
    END IF;

    IF OLD.ship_zip_postal_code != NEW.ship_zip_postal_code THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'ship_zip_postal_code');
    END IF;  
 
    IF OLD.ship_country_region != NEW.ship_country_region THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'ship_country_region');
    END IF;
    
    IF OLD.shipping_fee != NEW.shipping_fee THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'shipping_fee');
    END IF;

    IF OLD.taxes != NEW.taxes THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'taxes');
    END IF;
  
    IF OLD.payment_type_id != NEW.payment_type_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'payment_type_id');
    END IF;

    IF OLD.paid_date != NEW.paid_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'paid_date');
    END IF;
    
    IF OLD.notes != NEW.notes THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'notes');
    END IF;
    
    IF OLD.tax_rate != NEW.tax_rate THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'user_name');
    END IF;

    IF OLD.tax_status_id != NEW.tax_status_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'tax_status_id');
    END IF;
  
    IF OLD.status_id != NEW.status_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'status_id');
    END IF;
  
 	INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','customer_order',changed_columns,NOW(),NOW());	
END //
DELIMITER;	         


DELIMITER //
CREATE TRIGGER after_employee_update AFTER UPDATE ON employee 
FOR EACH ROW
BEGIN
 DECLARE changed_columns VARCHAR(4096);
 SET changed_columns = '';
 
 -- Check each column for changes
 IF OLD.last_name != NEW.last_name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'last_name');
 END IF;	
 IF OLD.first_name != NEW.first_name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'first_name');
 END IF;	
 IF OLD.email_address != NEW.email_address THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'email_address');
 END IF;
 IF OLD.job_title != NEW.job_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'job_title');
 END IF;	
 IF OLD.business_phone != NEW.business_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'business_phone');
 END IF;	
 IF OLD.home_phone != NEW.home_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'home_phone');
 END IF;
 IF OLD.mobile_phone != NEW.mobile_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'mobile_phone');
 END IF;	
 IF OLD.fax_number != NEW.fax_number THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'fax_number');
 END IF;	
 IF OLD.address1 != NEW.address1 THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'address1');
 END IF;
 IF OLD.address2 != NEW.address2 THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'address1');
 END IF; 
 IF OLD.city != NEW.city THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'city');
 END IF;	
 IF OLD.state_province != NEW.state_province THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'state_province');
 END IF;	
 IF OLD.zip_postal_code != NEW.zip_postal_code THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'zip_postal_code');
 END IF;
 IF OLD.country_region != NEW.country_region THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'country_region');
 END IF;
 IF OLD.notes != NEW.notes THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'notes');
 END IF; 
 IF OLD.company_id != NEW.company_id THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'company_id');
 END IF;	 
 IF OLD.web_site_title != NEW.web_site_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'web_site_title');
 END IF;	
 IF OLD.web_site_url != NEW.web_site_url THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'web_site_url');
 END IF;
 IF OLD.portrait_path != NEW.portrait_path THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'portrait_path');
 END IF;	 
 IF OLD.portrait_title != NEW.portrait_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'portrait_title');
 END IF;	

 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','employee',changed_columns,NOW(),NOW());
                
END //
DELIMITER;     



DELIMITER //
CREATE TRIGGER after_inventory_transaction_update AFTER UPDATE ON inventory_transaction 
FOR EACH ROW
BEGIN
	DECLARE changed_columns VARCHAR(4096);
    SET changed_columns = '';
	    -- Check each column for changes
    IF OLD.transaction_type != NEW.transaction_type THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'transaction_type');
    END IF;
    
    IF OLD.transaction_created_date != NEW.transaction_created_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'transaction_created_date');
    END IF;

    IF OLD.transaction_modified_date != NEW.transaction_modified_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'transaction_modified_date');
    END IF;
  
    IF OLD.comments != NEW.comments THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'comments');
    END IF;     
    IF OLD.quantity != NEW.quantity THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'quantity');
    END IF;

    IF OLD.customer_order_id != NEW.customer_order_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'customer_order_id');
    END IF;
    
    IF OLD.product_id != NEW.product_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'product_id');
    END IF;    
    IF OLD.purchase_order_id != NEW.purchase_order_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'purchase_order_id');
    END IF;
    
 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','inventory_transaction',changed_columns,NOW(),NOW());	           
	 
END //
DELIMITER;

DELIMITER //
CREATE TRIGGER after_invoice_update AFTER UPDATE ON invoice 
FOR EACH ROW
BEGIN
	DECLARE changed_columns VARCHAR(4096);
    SET changed_columns = '';
    
	-- Check each column for changes
    IF OLD.invoice_date != NEW.invoice_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'invoice_date');
    END IF;
    
    IF OLD.due_date != NEW.due_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'due_date');
    END IF;

    IF OLD.tax != NEW.tax THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'tax');
    END IF;
  
    IF OLD.shipping != NEW.shipping THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'shipping');
    END IF;     
    IF OLD.amount_due != NEW.amount_due THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'amount_due');
    END IF;

    IF OLD.customer_order_id != NEW.customer_order_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'customer_order_id');
    END IF;
        
 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','invoice',changed_columns,NOW(),NOW());	 
                
END //
DELIMITER;

DELIMITER //
CREATE TRIGGER after_order_detail_update AFTER UPDATE ON order_detail 
FOR EACH ROW         
BEGIN
	DECLARE changed_columns VARCHAR(4096);
    SET changed_columns = '';
	    -- Check each column for changes
    IF OLD.quantity != NEW.quantity THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'quantity');
    END IF;
    
    IF OLD.unit_price != NEW.unit_price THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'unit_price');
    END IF;

    IF OLD.discount != NEW.discount THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'discount');
    END IF;
  
    IF OLD.date_allocated != NEW.date_allocated THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'date_allocated');
    END IF;
    
    IF OLD.status_id != NEW.status_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'status_id');
    END IF;

    IF OLD.customer_order_id != NEW.customer_order_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'customer_order_id');
    END IF;

    IF OLD.inventory_transaction_id != NEW.inventory_transaction_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'inventory_transaction_id');
    END IF;
    
    IF OLD.product_id != NEW.product_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'product_id');
    END IF;

    IF OLD.purchase_order_id != NEW.purchase_order_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'purchase_order_id');
    END IF;    
   
 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','order_detail',changed_columns,NOW(),NOW());	           
END //
DELIMITER;
	
DELIMITER //	
CREATE TRIGGER after_privilege_update AFTER UPDATE ON privilege 
FOR EACH ROW
BEGIN
	DECLARE changed_columns VARCHAR(4096);
    SET changed_columns = '';
	    -- Check each column for changes
    IF OLD.privilege_name != NEW.privilege_name THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'privilege_name');
    END IF;
      
 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','privilege',changed_columns,NOW(),NOW());	           
END //
DELIMITER;

DELIMITER //
CREATE TRIGGER after_product_update AFTER UPDATE ON product 
FOR EACH ROW

BEGIN
	DECLARE changed_columns VARCHAR(4096);
    SET changed_columns = '';
	    -- Check each column for changes
    IF OLD.product_code != NEW.product_code THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'product_code');
    END IF;
    
    IF OLD.product_name != NEW.product_name THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'product_name');
    END IF;

    IF OLD.description != NEW.description THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'description');
    END IF;
  
    IF OLD.standard_cost != NEW.standard_cost THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'standard_cost');
    END IF;
    
    IF OLD.list_price != NEW.list_price THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'list_price');
    END IF;

    IF OLD.reorder_level != NEW.reorder_level THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'reorder_level');
    END IF;

    IF OLD.target_level != NEW.target_level THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'target_level');
    END IF;
    
    IF OLD.quantity_per_unit != NEW.quantity_per_unit THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'quantity_per_unit');
    END IF;

    IF OLD.discontinued != NEW.discontinued THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'discontinued');
    END IF;
    
    IF OLD.minimum_reorder_quantity != NEW.minimum_reorder_quantity THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'minimum_reorder_quantity');
    END IF;
    
    IF OLD.category != NEW.category THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'category');
    END IF;

    IF OLD.resource_id != NEW.resource_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'resource_id');
    END IF;    
 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','product',changed_columns,NOW(),NOW());	           
	 
END //
DELIMITER;
 	           
DELIMITER //
CREATE TRIGGER after_product_supplier_update AFTER UPDATE ON product_supplier 
FOR EACH ROW
BEGIN
	DECLARE changed_columns VARCHAR(4096);
    SET changed_columns = '';
	    -- Check each column for changes
    IF OLD.product_id != NEW.product_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'product_id');
    END IF;
    
    IF OLD.supplier_id != NEW.supplier_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'supplier_id');
    END IF;
  
 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','product_supplier',changed_columns,NOW(),NOW());	           
	 
END //
DELIMITER;	

DELIMITER //
CREATE TRIGGER after_purchase_order_update AFTER UPDATE ON purchase_order 
FOR EACH ROW
    
BEGIN
	DECLARE changed_columns VARCHAR(4096);
    SET changed_columns = '';

	-- Check each column for changes
    IF OLD.created_by != NEW.created_by THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'created_by');
    END IF;
    
    IF OLD.submitted_date != NEW.submitted_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'submitted_date');
    END IF;

    IF OLD.creation_date != NEW.creation_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'creation_date');
    END IF;

    IF OLD.status_id != NEW.status_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'status_id');
    END IF;
    
    IF OLD.expected_date != NEW.expected_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'expected_date');
    END IF;

    IF OLD.shipping_fee != NEW.shipping_fee THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'shipping_fee');
    END IF;
    
    IF OLD.taxes != NEW.taxes THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'taxes');
    END IF;
    
    IF OLD.payment_date != NEW.payment_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'payment_date');
    END IF;

    IF OLD.payment_amount != NEW.payment_amount THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'payment_amount');
    END IF;    
    
    IF OLD.payment_method != NEW.payment_method THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'payment_method');
    END IF;
    
    IF OLD.notes != NEW.notes THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'notes');
    END IF;

    IF OLD.approved_by != NEW.approved_by THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'approved_by');
    END IF;      
    
    IF OLD.approved_date != NEW.approved_date THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'approved_date');
    END IF;
    
    IF OLD.submitted_by != NEW.submitted_by THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'submitted_by');
    END IF;

    IF OLD.supplier_id != NEW.supplier_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'supplier_id');
    END IF;    
    
 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','purchase_order',changed_columns,NOW(),NOW());	           
END //
DELIMITER;	         
	  
				 
DELIMITER //
CREATE TRIGGER after_purchase_order_detail_update AFTER UPDATE ON purchase_order_detail 
FOR EACH ROW
BEGIN
	DECLARE changed_columns VARCHAR(4096);
    SET changed_columns = '';
    
	-- Check each column for changes
    IF OLD.quantity != NEW.quantity THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'quantity');
    END IF;
    
    IF OLD.unit_cost != NEW.unit_cost THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'unit_cost');
    END IF;

    IF OLD.date_received != NEW.date_received THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'date_received');
    END IF;

    IF OLD.posted_to_inventory != NEW.posted_to_inventory THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'posted_to_inventory');
    END IF;
    
    IF OLD.inventory_transaction_id != NEW.inventory_transaction_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'inventory_transaction_id');
    END IF;
    
    IF OLD.product_id != NEW.product_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'product_id');
    END IF;

    IF OLD.purchase_order_id != NEW.purchase_order_id THEN
        SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'purchase_order_id');
    END IF;

 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','purchase_order_detail',changed_columns,NOW(),NOW());	           
	 
END //
DELIMITER;	
 				 	 				   
				 
DELIMITER //
CREATE TRIGGER after_shipper_update AFTER UPDATE ON shipper 
FOR EACH ROW
BEGIN
 DECLARE changed_columns VARCHAR(4096);
 SET changed_columns = '';
 
 -- Check each column for changes
 IF OLD.last_name != NEW.last_name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'last_name');
 END IF;	
 IF OLD.first_name != NEW.first_name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'first_name');
 END IF;	
 IF OLD.email_address != NEW.email_address THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'email_address');
 END IF;
 IF OLD.job_title != NEW.job_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'job_title');
 END IF;	
 IF OLD.business_phone != NEW.business_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'business_phone');
 END IF;	
 IF OLD.home_phone != NEW.home_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'home_phone');
 END IF;
 IF OLD.mobile_phone != NEW.mobile_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'mobile_phone');
 END IF;	
 IF OLD.fax_number != NEW.fax_number THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'fax_number');
 END IF;	
 IF OLD.address1 != NEW.address1 THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'address1');
 END IF;
 IF OLD.address2 != NEW.address2 THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'address1');
 END IF; 
 IF OLD.city != NEW.city THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'city');
 END IF;	
 IF OLD.state_province != NEW.state_province THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'state_province');
 END IF;	
 IF OLD.zip_postal_code != NEW.zip_postal_code THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'zip_postal_code');
 END IF;
 IF OLD.country_region != NEW.country_region THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'country_region');
 END IF;
 IF OLD.notes != NEW.notes THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'notes');
 END IF; 
 IF OLD.company_id != NEW.company_id THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'company_id');
 END IF;	 
 IF OLD.web_site_title != NEW.web_site_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'web_site_title');
 END IF;	
 IF OLD.web_site_url != NEW.web_site_url THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'web_site_url');
 END IF;
 IF OLD.portrait_path != NEW.portrait_path THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'portrait_path');
 END IF;	 
 IF OLD.portrait_title != NEW.portrait_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'portrait_title');
 END IF;	

 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','shipper',changed_columns,NOW(),NOW()); 
END //
DELIMITER;	
				          

DELIMITER //
CREATE TRIGGER after_supplier_update AFTER UPDATE ON supplier 
FOR EACH ROW
BEGIN
 DECLARE changed_columns VARCHAR(4096);
 SET changed_columns = '';
 
 -- Check each column for changes
 IF OLD.last_name != NEW.last_name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'last_name');
 END IF;	
 IF OLD.first_name != NEW.first_name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'first_name');
 END IF;	
 IF OLD.email_address != NEW.email_address THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'email_address');
 END IF;
 IF OLD.job_title != NEW.job_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'job_title');
 END IF;	
 IF OLD.business_phone != NEW.business_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'business_phone');
 END IF;	
 IF OLD.home_phone != NEW.home_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'home_phone');
 END IF;
 IF OLD.mobile_phone != NEW.mobile_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'mobile_phone');
 END IF;	
 IF OLD.fax_number != NEW.fax_number THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'fax_number');
 END IF;	
 IF OLD.address1 != NEW.address1 THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'address1');
 END IF;
 IF OLD.address2 != NEW.address2 THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'address1');
 END IF; 
 IF OLD.city != NEW.city THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'city');
 END IF;	
 IF OLD.state_province != NEW.state_province THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'state_province');
 END IF;	
 IF OLD.zip_postal_code != NEW.zip_postal_code THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'zip_postal_code');
 END IF;
 IF OLD.country_region != NEW.country_region THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'country_region');
 END IF;
 IF OLD.notes != NEW.notes THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'notes');
 END IF; 
 IF OLD.company_id != NEW.company_id THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'company_id');
 END IF;	 
 IF OLD.web_site_title != NEW.web_site_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'web_site_title');
 END IF;	
 IF OLD.web_site_url != NEW.web_site_url THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'web_site_url');
 END IF;
 IF OLD.portrait_path != NEW.portrait_path THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'portrait_path');
 END IF;	 
 IF OLD.portrait_title != NEW.portrait_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'portrait_title');
 END IF;	

 INSERT INTO audit_central (table_id,action,table_name,column_names,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','supplier',changed_columns,NOW(),NOW());
END //
          
	            
	 
	 
				
	 
	 
	 
	 				 
	 				 
	 				 