
CREATE TRIGGER after_supplier_delete AFTER DELETE ON supplier FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','supplier',NOW());
