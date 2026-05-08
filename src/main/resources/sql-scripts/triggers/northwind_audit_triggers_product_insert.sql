
CREATE TRIGGER after_product_insert AFTER INSERT ON product 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'product', NOW());