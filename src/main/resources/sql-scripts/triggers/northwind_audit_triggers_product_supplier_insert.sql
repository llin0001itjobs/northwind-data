
CREATE TRIGGER after_product_supplier_insert AFTER INSERT ON product_supplier 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'product_supplier', NOW());