
CREATE TRIGGER after_employee_delete AFTER DELETE ON employee FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','employee',NOW());