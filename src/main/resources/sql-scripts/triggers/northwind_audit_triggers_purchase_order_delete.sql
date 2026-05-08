
CREATE TRIGGER after_purchase_order_delete AFTER DELETE ON purchase_order FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','purchase_order',NOW());