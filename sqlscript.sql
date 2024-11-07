REM   Script: file no 1
REM   all tables nd quries

create table client_master0405(c_no varchar2(10)primary key, c_name varchar2(20), c_city varchar2(10), c_pincode number, c_state varchar2(20), c_baldue number);

insert into client_master0405 values('C00001', 'Ivan Bayross', 'Mumbai', 400054, 'Maharashtra', 15000);

insert into client_master0405 values('C00002', 'Mamta Muzumdar', 'Madras', 780001, 'Tamil Nadu', 0);

insert into client_master0405 values('C00003', 'Chhaya Banker', 'Mumbai', 400057, 'Maharashtra', 5000);

insert into client_master0405 values('C00004', 'Ashwini Joshi', 'Bangalore', 560001, 'Karnataka', 0);

insert into client_master0405 values('C00005', 'Hansel Colaco', 'Mumbai', 400060, 'Maharashtra', 2000);

insert into client_master0405 values('C00006', 'Deepak Sharma ', 'Mangalore', 560050, 'Karnataka', 0);

select*from client_master0405;

commit;

create table product_master0405(p_no varchar2(10), p_description varchar2(20), p_profitpercent varchar2(10), p_unitmeasure varchar2(10), p_qtyonhand number, p_reorderlvl number, p_sellprice number, p_costprice number);

commit;

insert into product_master0405 values('P00001', 'T-Shirts', 5, 'Piece', 200, 50, 350, 250);

insert into product_master0405 values('P0345', 'Shirts', 6, 'Piece', 150, 50, 500, 350);

insert into product_master0405 values('P06734', 'Cotton Jeanse', 5, 'Piece', 100, 20, 600, 450);

insert into product_master0405 values('P07865', 'Jeanse', 5, 'Piece', 100, 20, 750, 500);

insert into product_master0405 values('P07868', 'Trousers', 2, 'Piece', 150, 50, 850, 550);

insert into product_master0405 values('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450);

insert into product_master0405 values('P07965', 'Denim Shirts', 4, 'Piece', 100, 40, 350, 250);

insert into product_master0405 values('P07975', 'Lycra Tops', 5, 'Piece', 70, 30, 300, 175);

insert into product_master0405 values('P08865', 'Skirts', 5, 'Piece', 75, 30, 450, 300);

commit;

select*from product_master0405;

commit;

create table salesman_master0405(salesman_no varchar2(10), s_name varchar2(10), s_address1 varchar2(10), s_address2 varchar2(10), s_city varchar(10), s_pincode number, s_state varchar2(20), s_salamt number, s_tgttoget number, s_ytdsales number, remarks varchar2(10));

insert into salesman_master0405 values('S0001', 'Aman', 'A/14', 'Worli', 'Mumbai', 40002, 'Maharashtra', 3000, 100, 50, 'Good');

insert into salesman_master0405 values('S0002', 'Omkar', '65', 'Nariman', 'Mumbai', 40001, 'Maharashtra', 3000, 200, 100, 'Good');

insert into salesman_master0405 values('S0003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 40032, 'Maharashtra', 3000, 200, 100, 'Good');

insert into salesman_master0405 values('S0004', 'Ashish', 'A/5', 'juhu', 'Mumbai', 40044, 'Maharashtra', 3500, 200, 150, 'Good');

select*from salesman_master0405;

select c_name from client_master0405;

select* from client_master0405;

select c_name, c_city, c_state from client_master0405;

select P_DESCRIPTION from product_master0405;

select c_name from client_master0405 
where c_city ='Mumbai';

select s_name from salesman_master0405 
where s_salamt =3000;

update client_master0405 
set c_city ='Bangalore' 
where c_no ='C00001';

update client_master0405 
set c_baldue =1000 
where c_no ='C00001';

update product_master0405 
set p_costprice =950 
where P_DESCRIPTION ='trouser';

update product_master0405 
set p_costprice =950 
where p_description ='trouser';

update product_master0405 
set P_COSTPRICE =950 
where p_description ='trouser';

update salesman_master0405 
set s_city ='Pune';

delete from salesman_master0405 
where s_salamt = 3500;

delete from product_master0405 
where P_QTYONHAND = 100;

delete from client_master0405 
where c_state = 'Tamil Nadu';

select*from client_master0405;

select*from product_master0405;

select*from salesman_master0405;

