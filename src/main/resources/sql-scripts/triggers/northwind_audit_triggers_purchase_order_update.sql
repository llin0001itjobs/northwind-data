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
                VALUES (NEW.id,'UPDATE','authentication',changed_columns,NOW(),NOW());	           
	 
END //
DELIMITER            
	 