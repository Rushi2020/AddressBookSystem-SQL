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

--UC3 - Insert new contacts into Addressbook
insert into AddressBook_Table(FirstName, LastName, Address, City, State, Zip, PhoneNumber, Email)
values
('Rushi', 'Patil', 'Kolhapur', 'Latur', 'Maharashtra', 416008, 8185632101, 'ruship12@gmail.com'),
('rti', 'Pawar', 'Sangli', 'mumbai', 'UP', 412007, 7896584125, 'rti134@gmail.com'),
('prashant', 'Gokhale', 'mkroad', 'karnataka', 'rajshthan', 856142, 8562102035, 'gokhale555@gmail.com'),
('Pratham', 'Tibile', '', 'chittod', 'Rajasthan', 522412, 6525140052, 'tibilepratham@gmail.com');

-- for Displaying adressbook
select * from AddressBook_Table;

--UC4 - Edit existing contact person using name
update AddressBook_Table set City = 'Gujrat' where FirstName = 'Pratham' and LastName = 'Tibile';
update AddressBook_Table set State = 'Goa' where FirstName = 'prashant' and LastName = 'Gokhale';
select * from AddressBook_Table;