
CREATE TRIGGER after_customer_delete AFTER DELETE ON customer FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','customer',NOW());