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
DELIMITER 