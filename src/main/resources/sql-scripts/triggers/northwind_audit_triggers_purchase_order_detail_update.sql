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
DELIMITER 