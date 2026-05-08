
CREATE TRIGGER after_supplier_insert AFTER INSERT ON supplier 
  FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'supplier', NOW());	           

