
CREATE TRIGGER after_order_detail_insert AFTER INSERT ON order_detail 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'order_detail', NOW());