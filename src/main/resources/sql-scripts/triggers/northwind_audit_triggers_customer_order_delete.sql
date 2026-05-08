
CREATE TRIGGER after_customer_order_delete AFTER DELETE ON customer_order FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','customer_order',NOW());