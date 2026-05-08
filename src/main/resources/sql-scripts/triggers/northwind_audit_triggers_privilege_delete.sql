
CREATE TRIGGER after_privilege_delete AFTER DELETE ON privilege FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','privilege',NOW());