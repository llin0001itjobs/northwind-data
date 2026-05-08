
CREATE TRIGGER after_customer_order_insert AFTER INSERT ON customer_order 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'customer_order', NOW());