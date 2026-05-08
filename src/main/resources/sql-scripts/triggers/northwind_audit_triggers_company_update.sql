DELIMITER //
CREATE TRIGGER after_company_update AFTER UPDATE ON company 
FOR EACH ROW
BEGIN
 DECLARE changed_columns VARCHAR(4096);
 SET changed_columns = '';
 
 -- Check each column for changes
 IF OLD.name != NEW.name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'name');
 END IF;	
 INSERT INTO audit_central (table_id,action,table_name,column_name,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','company',NOW(),NOW());
                
END //
DELIMITER 