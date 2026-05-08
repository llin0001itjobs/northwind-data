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
DELIMITER 
           
	 