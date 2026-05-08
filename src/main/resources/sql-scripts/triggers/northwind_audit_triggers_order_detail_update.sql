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
DELIMITER  
