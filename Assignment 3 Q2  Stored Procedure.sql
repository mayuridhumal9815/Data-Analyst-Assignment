CREATE DEFINER=`root`@`localhost` PROCEDURE `Cancellation`()
BEGIN
create table if not exists cancellations(id int PRIMARY KEY auto_increment,
id int primary key auto_increment, 
customernumber int,
FOREIGN KEY(customerNumber)REFERENCES customers(customerNumber) ,
orderNumber int, FOREIGN KEY(orderNumber)REFERENCES orders(orderNumber));
insert into cancellations(customernumber,orderNumber)
select customerNumber,orderNumber from orders where status='Cancelled' ;
END