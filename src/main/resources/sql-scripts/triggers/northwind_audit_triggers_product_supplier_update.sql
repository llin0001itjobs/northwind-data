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
DELIMITER 
           
	 