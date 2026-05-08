
CREATE TRIGGER after_shipper_delete AFTER DELETE ON shipper FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','shipper',NOW());