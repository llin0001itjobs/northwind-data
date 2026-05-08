
CREATE TRIGGER after_authentication_insert AFTER INSERT ON authentication 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'authentication', NOW());	           

