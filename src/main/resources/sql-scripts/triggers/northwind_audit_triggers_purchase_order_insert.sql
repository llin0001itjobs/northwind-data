
CREATE TRIGGER after_purchase_order_insert AFTER INSERT ON purchase_order 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'purchase_order', NOW());