 

CREATE TRIGGER after_shipper_insert AFTER INSERT ON shipper
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'shipper', NOW());	   
				 
