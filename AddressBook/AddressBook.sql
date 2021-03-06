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
('Rushi', 'Patil', 'rp', 'kolhapur', 'Maharashtra', 416008, 8185632101, 'ruship12@gmail.com'),
('rti', 'Pawar', 'Sangli', 'mumbai', 'UP', 412007, 7896584125, 'rti134@gmail.com'),
('prashant', 'Gokhale', 'mkroad', 'karnataka', 'rajshthan', 856142, 8562102035, 'gokhale555@gmail.com'),
('Pratham', 'Tibile', '', 'chittod', 'Rajasthan', 522412, 6525140052, 'tibilepratham@gmail.com');

-- for Displaying adressbook
select * from AddressBook_Table;

--UC4 - Edit existing contact person using name
update AddressBook_Table set City = 'Gujrat' where FirstName = 'Pratham' and LastName = 'Tibile';
update AddressBook_Table set State = 'Goa' where FirstName = 'prashant' and LastName = 'Gokhale';
select * from AddressBook_Table;

--UC5 - Delete existing contact person using name.
delete from AddressBook_Table where FirstName = 'Pratham' and LastName = 'Tibile';
select * from AddressBook_Table;

--UC6 - Retrieve person belonging to a city or state from AddressBook.
select * from AddressBook_Table where City = 'kolhapur' or State = 'Maharashtra';

--UC7 - Size of AddressBook by city and state 
select COUNT(*) as StateCount, State from AddressBook_Table group by State;
select COUNT(*) as CityCount, City from AddressBook_Table group by City;

---UC8 - Get Sorted entries alphabeticaly by person's name for a given city.
select * from AddressBook_Table where City = 'kolhapur' order by FirstName,LastName;


--UC9 - Adding Address Book With Name and Type.
alter table AddressBook_Table add AddressBookName varchar(50),AddressBookType varchar(50);
select * from AddressBook_Table;

--update values for created book name and book type column
update AddressBook_Table set AddressBookName = 'family address book', AddressBookType = 'Family' where FirstName = 'rti';
update AddressBook_Table set AddressBookName = 'friends address book', AddressBookType = 'Friends' where FirstName = 'Pratham';
update AddressBook_Table set AddressBookName = 'profession address book', AddressBookType = 'Profession' where FirstName = 'prashant';

