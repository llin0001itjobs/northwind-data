 
insert into customer_order(table_id, employee_id, customer_id, order_date,shipped_date,shipper_id,ship_name)
values(30, 9,27,'2006-01-15 00:00:00','2006-01-22 00:00:00',2,'Karen Toh');

insert into customer_order(table_id, employee_id, customer_id, order_date,shipped_date,shipper_id,ship_name)
values(31,3,4,'2006-01-20 00:00:00','2006-01-22 00:00:00',1,'Christina Lee');

insert into customer_order(table_id, employee_id, customer_id, order_date,shipped_date,shipper_id,ship_name)
values(32,4,12,'2006-01-22 00:00:00','2006-01-22 00:00:00',2,'John Edwards');

insert into customer_order(table_id, employee_id, customer_id, order_date,shipped_date,shipper_id,ship_name)
values(33,6,8,'2006-01-30 00:00:00','2006-01-31 00:00:00',3,'Elizabeth Andersen');

insert into customer_order(table_id, employee_id, customer_id, order_date,shipped_date,shipper_id,ship_name)
values(34,9,4,'2006-02-06 00:00:00','2006-02-07 00:00:00',3,'Christina Lee');

insert into customer_order(table_id, employee_id, customer_id, order_date,shipped_date,shipper_id,ship_name)
values(35,3,29,'2006-02-10 00:00:00','2006-02-12 00:00:00',2,'Soo Jung Lee');

insert into employee(table_id, privilege_id, last_name, first_name) values (3,1,'Simpson','Lisa Marie');
insert into employee(table_id, privilege_id, last_name, first_name) values (4,1,'Simpson','Margaret Evelyn Maggie');
insert into employee(table_id, privilege_id, last_name, first_name) values (6,1,'Flanders','Ned');
insert into employee(table_id, privilege_id, last_name, first_name) values (9,1,'Simpson','Marjorie Jacqueline Marge');

insert into privilege(table_id, privilege_name) values (1,'None');
insert into privilege(table_id, privilege_name) values (2,'Purchase Approvals');

insert into customer(table_id, last_name, first_name)	values (4,'Lee','Christina');
insert into customer(table_id, last_name, first_name)	values (8,'Andersen','Elizabeth');
insert into customer(table_id, last_name, first_name)	values (12,'Edwards','John');
insert into customer(table_id, last_name, first_name)	values (27,'Toh','Karen');
insert into customer(table_id, last_name, first_name)	values (28,'Raghav','Amritansh');
insert into customer(table_id, last_name, first_name)	values (29,'Lee','Soo Jung');
  
insert into shipper(table_id, company_id) values(1,1);
insert into shipper(table_id, company_id) values(2,1);
insert into shipper(table_id, company_id) values(3,1);

insert into company(table_id, name) values(1,'None');
insert into company(table_id, name) values(2,'Springfield Elementary School');
insert into company(table_id, name) values(3,'Springfield DMV');


