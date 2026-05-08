
CREATE TRIGGER after_purchase_order_detail_insert AFTER INSERT ON purchase_order_detail 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'purchase_order_detail', NOW());