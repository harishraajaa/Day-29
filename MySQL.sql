-- create schema harish
-- use harish;
-- create table users(id int, name varchar(255), email varchar(255), status boolean, primary key(id))
drop table users;
-- select * from users;

insert into users values (1,'Harish','rvharishraajaa@gmail.com',true);
insert into users values (2,'Raajaa','raajaa@gmail.com',true);
insert into users values (3,'Pavithra','rvpavibas@gmail.com',true);
insert into users values (4,'Ramesh','rameshkumar@gmail.com',true);

-- insert into users values (5,'Santha','santhamma@gmail.com',false);

-- alter table users
-- add phnnum varchar(10);

-- alter table users
-- drop column phnnum;

use harish;


create table student(
id int unique auto_increment not null,
name varchar(255),
email varchar(255),
mobile varchar(12),
status boolean default true,
createdon timestamp default current_timestamp,
primary key(id) 
);

insert into student (name,email,mobile) values ('Harish','rvharishraajaa@gmail,com','918973815197');

insert into student (name,email,mobile) values ('Pavithra','pavibas@gmail,com','918883670253');
insert into student (name,email,mobile) values ('Ramesh','rameshraajaa@gmail,com','919842905445');
insert into student (name,email,mobile) values ('Vijayalakshmi','vijiharish@gmail,com','919942503324');

insert into student (name,email,mobile) values ('Santha','santhamma@gmail.com','919942503324');

delete from student where id=5;

select * from student;

select * from products;

create table products (id int unique not null auto_increment ,pname varchar(255) not null,pprice decimal not null);

insert into products(pname,pprice) values ('Curd',10.00);
insert into products(pname,pprice) values ('Milk',20.00);
insert into products(pname,pprice) values ('Panner',30.00);
insert into products(pname,pprice) values ('Butter',40.00);
insert into products(pname,pprice) values ('Ice Cream',50.00);
insert into products(pname,pprice) values ('Milk Shake',60.00);
insert into products(pname,pprice) values ('Cheese',70.00);

drop table products;

select * from  invoices;

create table invoices (id int unique not null auto_increment, userid int not null, productid int not null, qty int not null,
primary key(id), foreign key(userid) references users(id),foreign key(productid) references products(id) );

insert into invoices(userid,productid,qty) values (1,1,5);
insert into invoices(userid,productid,qty) values (2,3,5);
insert into invoices(userid,productid,qty) values (3,4,5);
insert into invoices(userid,productid,qty) values (4,5,5);
insert into invoices(userid,productid,qty) values (4,6,5);

