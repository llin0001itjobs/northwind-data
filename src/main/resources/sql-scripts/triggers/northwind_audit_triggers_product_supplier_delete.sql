
CREATE TRIGGER after_product_supplier_delete AFTER DELETE ON product_supplier FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','product_supplier',NOW());