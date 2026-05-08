
CREATE TRIGGER after_employee_insert AFTER INSERT ON employee 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'employee', NOW());