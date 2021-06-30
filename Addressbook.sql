--UC1:-Create database for addressbook

create database AdressBook
use AdressBook

--UC2:-Create Address book table 

create table Addressbook(
FirstName varchar(32),
LastName varchar(32),
Address varchar(32),
State  varchar(255),
City varchar(32),
Zipcode varchar(30),
PhoneNumber varchar(20),
)
Alter Table Addressbook Add
Email varchar(255) not null default 0;

--UC3:-Inserting contacts to addressbook

Insert into Addressbook(FirstName,LastName,Address,State,City,Zipcode,PhoneNumber,Email) VALUES
  ('Akhila','reddy','gandhinagar','mumbai','delhi',509142,9666616881,'akhila.it@gmail.com'),  
  ('Anu','Priya','hyd','karnataka','gadwal',590234,990877890,'anuhya@gmail.com'),
  ('Shamu','Varma','kurnool','Mumbai','gujarat',345678,8796543256,'varma@gmail.com'),
  ('Ramu','shamu','amaravati','Rajasthan','Pune',509234,7896543452,'ram@gmail.com');
 
 select * from Addressbook 

 --UC4:-Editing the contacts in addressbook

 Update Addressbook set state = 'maharastra' where FirstName = 'Akhila'

 --UC5-Deleting the contacts in addressbook

 delete from Addressbook where FirstName = 'Anu'

 --UC6:-Ability to retrieve person from city or state

 Insert into Addressbook values('Anu','Priya','hyd','karnataka','gadwal',590234,990877890,'anuhya@gmail.com');
 select *from Addressbook where city='gadwal' or State = 'karnataka'