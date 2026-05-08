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
DELIMITER 
	 