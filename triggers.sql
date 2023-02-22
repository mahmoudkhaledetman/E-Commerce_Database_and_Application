
1----
create trigger line_total1 
on [dbo].[order_details]
after update,insert
as 
update order_details
set   line_total = quantity * price from [dbo].[order_details] o inner join [dbo].[Products] p 
on o.product_id=p.Product_ID 

2------
create trigger sub_total
on order_details
after insert,update
as
update orders
set sub_total = (select sum(line_total) from order_details o where o.order_id= inserted.order_id)
	from orders inner join inserted on orders.order_id=inserted.order_id

3-----
alter TRIGGER order_data
ON orders
AFTER UPDATE
AS
UPDATE Orders
SET total_tax = .14*sub_total,
total_freight=.07*sub_total,
total_due=sub_total+total_tax+total_freight

	
4-----

create trigger OrderDate
on Orders
after insert
as
   UPDATE Orders
   set Order_date= GETDATE() from orders inner join inserted on orders.order_id=inserted.order_id

	
5-------
create trigger shiping_method 
on orders
after insert
as 
declare @shiping_city varchar(20)

select @shiping_city = shipping_city from inserted where order_id = inserted.order_id

if @shiping_city in ('cairo' , 'Alexandria','Aswan','Ismailia','Qena')
update orders set shipping_method = 'car' where orders.order_id= (select order_id from inserted)
else
update orders set shipping_method = 'train' where orders.order_id= (select order_id from inserted)

