DELIMITER //
CREATE TRIGGER after_shipper_update AFTER UPDATE ON shipper 
FOR EACH ROW
BEGIN
 DECLARE changed_columns VARCHAR(4096);
 SET changed_columns = '';
 
 -- Check each column for changes
 IF OLD.last_name != NEW.last_name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'last_name');
 END IF;	
 IF OLD.first_name != NEW.first_name THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'first_name');
 END IF;	
 IF OLD.email_address != NEW.email_address THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'email_address');
 END IF;
 IF OLD.job_title != NEW.job_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'job_title');
 END IF;	
 IF OLD.business_phone != NEW.business_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'business_phone');
 END IF;	
 IF OLD.home_phone != NEW.home_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'home_phone');
 END IF;
 IF OLD.mobile_phone != NEW.mobile_phone THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'mobile_phone');
 END IF;	
 IF OLD.fax_number != NEW.fax_number THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'fax_number');
 END IF;	
 IF OLD.address1 != NEW.address1 THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'address1');
 END IF;
 IF OLD.address2 != NEW.address2 THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'address1');
 END IF; 
 IF OLD.city != NEW.city THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'city');
 END IF;	
 IF OLD.state_province != NEW.state_province THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'state_province');
 END IF;	
 IF OLD.zip_postal_code != NEW.zip_postal_code THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'zip_postal_code');
 END IF;
 IF OLD.country_region != NEW.country_region THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'country_region');
 END IF;
 IF OLD.notes != NEW.notes THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'notes');
 END IF; 
 IF OLD.company_id != NEW.company_id THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'company_id');
 END IF;	 
 IF OLD.web_site_title != NEW.web_site_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'web_site_title');
 END IF;	
 IF OLD.web_site_url != NEW.web_site_url THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'web_site_url');
 END IF;
 IF OLD.portrait_path != NEW.portrait_path THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'portrait_path');
 END IF;	 
 IF OLD.portrait_title != NEW.portrait_title THEN
    SET changed_columns = CONCAT(changed_columns, IF(changed_columns != '', ',', ''), 'portrait_title');
 END IF;	

 INSERT INTO audit_central (table_id,action,table_name,column_name,date_created,date_updated)
                VALUES (NEW.id,'UPDATE','shipper',changed_columns,NOW(),NOW()); 
END //
DELIMITER 
           
	 