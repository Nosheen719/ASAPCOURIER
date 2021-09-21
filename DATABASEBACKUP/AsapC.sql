select * from employee
drop table employee
drop table branchinfo
create table employee
(
employeeid int identity(1001,1) primary key,
employeename varchar(500) not null,
employeemail varchar(500) not null,
Branchid int not null foreign key references branchinfo(Branchid),
employeephone varchar (11) not null,
employeesalary int not null,
employeejoin date not null,
empoloyeerank varchar(500) default 'NO RANK' not null,
employeepass varchar(500) default 'abcdef' not null
)
create table branchinfo
(
Branchid int identity(2001,1) not null primary key,
branchname varchar(500) not null,
area varchar(500) not null,
city varchar(500) not null
)
select * from branchinfo
insert into branchinfo values('Dhk','Motijheel','Dhaka')
insert into branchinfo values('Ctg','Port area','Chittagong')
insert into branchinfo values('Khl','New Market','Khulna')