--UC1 - Create AddressBook_Service Database.
create database AddressBook_Service;
use AddressBook_Service;

--UC2 - Create AddressBook Table
create table AddressBook_Table
(
FirstName varchar(100),
LastName varchar(100),
Address varchar(100),
City varchar(100),
State varchar (100),
Zip bigint,
PhoneNumber bigint,
Email varchar(100)
);
select * from AddressBook_Table;