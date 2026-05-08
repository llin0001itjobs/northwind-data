
CREATE TRIGGER after_order_detail_delete AFTER DELETE ON order_detail FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','order_detail',NOW());