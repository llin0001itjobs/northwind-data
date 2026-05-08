
CREATE TRIGGER after_inventory_transaction_insert AFTER INSERT ON inventory_transaction 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'inventory_transaction', NOW());