
CREATE TRIGGER after_product_delete AFTER DELETE ON product FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','product',NOW());