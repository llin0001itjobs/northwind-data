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
DELIMITER 
	 