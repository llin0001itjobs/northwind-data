
CREATE TRIGGER after_invoice_delete AFTER DELETE ON invoice FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','invoice',NOW());