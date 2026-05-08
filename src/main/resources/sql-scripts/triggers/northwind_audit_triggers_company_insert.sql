
CREATE TRIGGER after_company_insert AFTER INSERT ON company 
FOR EACH ROW
  INSERT INTO audit_central (table_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'company', NOW());	