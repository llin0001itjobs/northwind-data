
CREATE TRIGGER after_privilege_insert AFTER INSERT ON privilege 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'privilege', NOW());