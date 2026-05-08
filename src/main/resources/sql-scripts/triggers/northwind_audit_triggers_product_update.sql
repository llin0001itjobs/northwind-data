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
DELIMITER 
 