CREATE DATABASE EMPLOYEEORDER

CREATE TABLE CUSTOMERINFO
(
CustomerId int IDENTITY(3000,1) PRIMARY KEY,
CustomerName varchar(256) NOT NULL,
CustomerEmail varchar(256) NOT NULL,
CustomerPhone varchar(11) NOT NULL,
CustomerAddress varchar(256) NOT NULL,
CustomerArea varchar(256) NOT NULL,
CustomerCity varchar(256) NOT NULL,
CustomerPassword text NOT NULL,
)

CREATE TABLE ORDERINFO
(
OrderId int IDENTITY(10000,1) PRIMARY KEY,
CustomerID int NOT NULL FOREIGN KEY REFERENCES CUSTOMERINFO (CustomerID),
OrderDate DATE NOT NULL,
OrderTime TIME NOT NULL,
RecieversName varchar(256) NOT NULL,
RecieversPhone varchar(11) NOT NULL,
RecieversAddress varchar(256) NOT NULL,
RecieversArea varchar(256) NOT NULL,
ParcelType varchar(256) NOT NULL,
DeliveryInstruction varchar(512) NULL,
OrderStatus varchar(256) NOT NULL,
PaymentStatus varchar(256) NOT NULL,
)


CREATE TABLE EMPLOYEEORDER (
    EmployeeOrderId int IDENTITY(6000,1) PRIMARY KEY,
	CustomerId int NOT NULL FOREIGN KEY REFERENCES CUSTOMERINFO (CustomerId),
	orderId int NOT NULL FOREIGN KEY REFERENCES ORDERINFO (orderId),
	status varchar(256) NOT NULL ,
)
SELECT * FROM EMPLOYEEORDER