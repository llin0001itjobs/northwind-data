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
DELIMITER 
         
	 