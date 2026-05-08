
CREATE TRIGGER after_authentication_delete AFTER DELETE ON authentication 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','authentication',NOW());	           
	 
