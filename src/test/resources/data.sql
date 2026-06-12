
INSERT INTO COMPANY VALUES (1,'None'),(2,'Springfield Elementary School'),(3,'Springfield DMV'),
  (4,'Springfield Nuclear Power Plant'),(5,'Moe''s Tavern'),(6,'Kwik-E-Mart'),(7,'Planet Express'),
  (8,'The Leftorium'),(9,'Spingfield Shippers'),(10,'Expert Shipping Solutions'),
  (11,'Democratic Order Of Planets'),(12,'The Krusty the Clown Show'),(13,'Other');

INSERT INTO ORDER_STATUS VALUES (0,'New'),(1,'Invoiced'),(2,'Shipped'),(3,'Closed');

INSERT INTO ORDER_TAX_STATUS VALUES (0,'Tax Exempt'),(1,'Taxable');

INSERT INTO PAYMENT_TYPE VALUES (1,'CASH','Cash'),(2,'CHECK','Check'),(3,'CREDIT','Credit Card');

INSERT INTO PRIVILEGE VALUES (1,'None'),
							   (2,'Purchase Approvals');

INSERT INTO CUSTOMER VALUES 
 (1,'Bedecs','Anna',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 1st Street','Seattle','WA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (2,'Gratacos Solsona','Antonio',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 2nd Street','Boston','MA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (3,'Axen','Thomas',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','123 3rd Street','Los Angelas','CA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (4,'Lee','Christina',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 4th Street','New York','NY','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (5,'O’Donnell','Martin',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 5th Street','Minneapolis','MN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (6,'Pérez-Olaeta','Francisco',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 6th Street','Milwaukee','WI','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (7,'Xie','Ming-Yang',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 7th Street','Boise','ID','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (8,'Andersen','Elizabeth',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','123 8th Street','Portland','OR','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (9,'Mortensen','Sven',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 9th Street','Salt Lake City','UT','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (10,'Wacker','Roland',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 10th Street','Chicago','IL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (11,'Krschne','Peter',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 11th Street','Miami','FL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (12,'Edwards','John',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 12th Street','Las Vegas','NV','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (13,'Ludick','Andre',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 13th Street','Memphis','TN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (14,'Grillo','Carlos',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 14th Street','Denver','CO','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (15,'Kupkova','Helena',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','456 15th Street','Honolulu','HI','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (16,'Goldschmidt','Daniel',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 16th Street','San Francisco','CA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (17,'Bagel','Jean Philippe',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','456 17th Street','Seattle','WA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (18,'Autier Miconi','Catherine',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 18th Street','Boston','MA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (19,'Eggerer','Alexander',NULL,'Accounting Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 19th Street','Los Angelas','CA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (20,'Li','George',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 20th Street','New York','NY','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (21,'Tham','Bernard',NULL,'Accounting Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 21th Street','Minneapolis','MN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (22,'Ramos','Luciana',NULL,'Purchasing Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 22th Street','Milwaukee','WI','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (23,'Entin','Michael',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 23th Street','Portland','OR','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (24,'Hasselberg','Jonas',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','789 24th Street','Salt Lake City','UT','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (25,'Rodman','John',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 25th Street','Chicago','IL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (26,'Liu','Run',NULL,'Accounting Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 26th Street','Miami','FL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (27,'Toh','Karen',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 27th Street','Las Vegas','NV','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (28,'Raghav','Amritansh',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 28th Street','Memphis','TN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
 (29,'Lee','Soo Jung',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 29th Street','Denver','CO','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL);

 INSERT INTO EMPLOYEE VALUES 
(1,1,'Bouvier','Patty','nancy@northwindtraders.com','Clerk','4255550100','4255550102','','4255550103','','Springfield','WA','99999','USA',
'Twin sister of Selma and older sister of Marge.',3,'','','groenig/simpsons/Patty_Bouvier.png','Patty Bouvier',''),
(2,2,'Simpson','Homer','andrew@northwindtraders.com','Safety Inspector','4255550777','4255550199','','4255550888','742 Evergreen Terrace','Bellevue','WA','99999','USA',
'Homer is one of the most influential characters in the history of television, and is widely considered to be an American cultural icon.',4,'','','groenig/simpsons/Homer_Simpson.png','Homer Simpson','Suite 5'),
(3,1,'Simpson','Lisa Marie','jan@northwindtraders.com','Student','4255550100','4255550102','','4255550103','','Redmond','WA','99999','USA',
 'Was hired as a sales associate and was promoted to sales representative.',2,'','','groenig/simpsons/Lisa_Simpson.png','Lisa Simpson',''),
(4,1,'Simpson','Margaret Evelyn '' Maggie'' ','mariya@northwindtraders.com','Kid','4255550100','4255550102','','4255550103','742 Evergreen Terrace','Kirkland','WA','99999','USA',
'Maggie is the youngest child of Homer and Marge, and sister to Bart and Lisa. She is often seen sucking on her red pacifier and, when she walks, she trips over her clothing and falls on her face.',1,'','','groenig/simpsons/Maggie_Simpson.png','Maggie Simpson',''),
(5,1,'Bouvier','Selma','steven@northwindtraders.com','Clerk','4255550100','4255550102','','4255550103','','Springfield','WA','99999','USA','Twin sister of Patty and older sister of Marge.',3,'','','groenig/simpsons/Selma_Bouvier.png','Selma Bouvier','');


INSERT INTO SHIPPER VALUES 
(1,13,'Haiser','Kimberly','info@officedepot.com','Manager',NULL,NULL,NULL,NULL,'6600 North Military Trail','Boca Raton','FL','33496','USA',
	 'Office Depot, Inc. (NASDAQ:ODP) is a leading provider of business services and supplies, products and technology solutions through its fully integrated omni-channel platform of approximately 1,400 stores, online presence, and dedicated sales professionals and technicians to small, medium and enterprise businesses.',NULL,NULL,NULL,NULL,NULL),
(2,13,'Simtha','Bob','pr@cinemark.com','Manager',NULL,NULL,NULL,NULL,'3200 Airport Rd.','Boca Raton','FL','33431','USA',
	 'Cinemark is proud to exhibit a variety of content, from the latest blockbusters to special live events, and has a strategically built portfolio of brands to reach movie lovers across the country, including Century Theatres, Rave Cinemas, Tinseltown USA and CinéArts.',NULL,NULL,NULL,NULL,NULL),
(3,13,'Jones','Doug','shipper.service@uline.com','shipper Representative','1-800-295-5510',NULL,NULL,'1-800-295-5571','12575 Uline Drive','Pleasant Prairie','WI','53158','USA',
	 'Uline, a family-owned business, is the leading distributor of shipping, industrial and packaging materials to businesses throughout North America. For over 40 years, we''ve stayed committed to providing the highest levels of service and quality products to our shippers. Depend on Uline to build your business — we won''t let you down.',NULL,NULL,NULL,NULL,NULL);

 
INSERT INTO CUSTOMER_ORDER ( 
  ID, EMPLOYEE_ID, CUSTOMER_ID, ORDER_DATE, SHIPPED_DATE, SHIPPER_ID, 
  SHIP_NAME, SHIP_ADDRESS, SHIP_CITY, SHIP_STATE_PROVINCE, 
  SHIP_ZIP_POSTAL_CODE, SHIP_COUNTRY_REGION, SHIPPING_FEE, TAXES, 
  PAYMENT_TYPE_ID, PAID_DATE, NOTES, TAX_RATE, TAX_STATUS_ID, 
  STATUS_ID, PAYMENT_TYPE
) VALUES
(30,5,27,'2006-01-15 00:00:00','2006-01-22 00:00:00',2,'Karen Toh','789 27th Street','Las Vegas','NV','99999','USA',200.0000,0.0000,2,'2006-01-15 00:00:00',NULL,0,NULL,3,NULL),
(31,3,4,'2006-01-20 00:00:00','2006-01-22 00:00:00',1,'Christina Lee','123 4th Street','New York','NY','99999','USA',5.0000,0.0000,3,'2006-01-20 00:00:00',NULL,0,NULL,3,NULL),
(32,4,12,'2006-01-22 00:00:00','2006-01-22 00:00:00',2,'John Edwards','123 12th Street','Las Vegas','NV','99999','USA',5.0000,0.0000,3,'2006-01-22 00:00:00',NULL,0,NULL,3,NULL),
(33,2,8,'2006-01-30 00:00:00','2006-01-31 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,3,'2006-01-30 00:00:00',NULL,0,NULL,3,NULL),
(34,5,4,'2006-02-06 00:00:00','2006-02-07 00:00:00',3,'Christina Lee','123 4th Street','New York','NY','99999','USA',4.0000,0.0000,2,'2006-02-06 00:00:00',NULL,0,NULL,3,NULL),
(35,3,29,'2006-02-10 00:00:00','2006-02-12 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',7.0000,0.0000,2,'2006-02-10 00:00:00',NULL,0,NULL,3,NULL),
(36,4,3,'2006-02-23 00:00:00','2006-02-25 00:00:00',2,'Thomas Axen','123 3rd Street','Los Angelas','CA','99999','USA',7.0000,0.0000,1,'2006-02-23 00:00:00',NULL,0,NULL,3,NULL),
(37,3,6,'2006-03-06 00:00:00','2006-03-09 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',12.0000,0.0000,3,'2006-03-06 00:00:00',NULL,0,NULL,3,NULL),
(38,5,28,'2006-03-10 00:00:00','2006-03-11 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',10.0000,0.0000,2,'2006-03-10 00:00:00',NULL,0,NULL,3,NULL),
(39,3,8,'2006-03-22 00:00:00','2006-03-24 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',5.0000,0.0000,2,'2006-03-22 00:00:00',NULL,0,NULL,3,NULL),
(40,4,10,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',9.0000,0.0000,3,'2006-03-24 00:00:00',NULL,0,NULL,3,NULL),
(41,1,7,'2006-03-24 00:00:00',NULL,NULL,'Ming-Yang Xie','123 7th Street','Boise','ID','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL),
(42,1,10,'2006-03-24 00:00:00','2006-04-07 00:00:00',1,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,2,NULL),
(43,1,11,'2006-03-24 00:00:00',NULL,3,'Peter Krschne','123 11th Street','Miami','FL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL),
(44,1,1,'2006-03-24 00:00:00',NULL,NULL,'Anna Bedecs','123 1st Street','Seattle','WA','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL),
(45,1,28,'2006-04-07 00:00:00','2006-04-07 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',40.0000,0.0000,3,'2006-04-07 00:00:00',NULL,0,NULL,3,NULL);



