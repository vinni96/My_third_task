create table ecommercee(customer_name varchar(20) ,customer_id int(10) primary key, email varchar(20),amount int(10),city varchar(20),contact_no int(10));

insert into ecommercee(customer_name,customer_id,email,amount,city,contact_no) values
  ('abc',11,'abc@gmail.com',10000,'Nagpur', 123456789),
  ('asd',12,'asd@gmail.com',150000,'Gondia',234567890),
  ('dfg',13,'dfg@gmail.com',340000,'Pune', 987600556),
  ('wer',14,'wer@gmail.com',23000,'Mumbai',776798906),
  ('tyu',15,'tyu@gmail.com',4500,'Akola',897776123);
  
  
create table order_details (category_name varchar(20) ,order_id int(10) primary key, customer_name varchar(20),quantity int(10),profit int(10), order_date date);

insert into order_details (category_name,order_id,customer_name,quantity,profit,order_date) values
   ('Furniture',01,'abc',2,30,'2025-01-02'),
   ('Clothing',02,'asd',10,49,'2025-02-12'),
   ('Electronics',03,'dfg',1,25,'2025-02-20'),
   ('Furniture',04,'wer',3,4,'2025-3-01'),
   ('Clothing',05,'tyu',4,20,'2025-4-5');
   
   Select * from ecommercee where amount>10000;
   select * from ecommercee order by amount desc;
   
   select * from ecommercee
   inner join order_details on
   ecommercee.customer_name=order_details.customer_name;
   
   select * from ecommercee
   left join order_details on
   ecommercee.customer_name=order_details.customer_name;
   
   select * from ecommercee
   right join order_details on
   ecommercee.customer_name=order_details.customer_name;
   
   select * from ecommercee where customer_name in(select customer_name from order_details where city='Nagpur');
   
   select avg(amount) as average_order_value from ecommercee;
   
   create view customer as select customer_name,
   sum(amount) as total_amount from ecommercee
   group by customer_name;
   
   select * from customer;
   
   
   create index idx_customer_name on order_details(customer_name);
   
   select * from order_details where customer_name='tyu';
   
   
   
   