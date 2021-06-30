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
Email varchar(255);

--UC3:-Inserting contacts to addressbook

Insert into Addressbook(FirstName,LastName,Address,State,City,Zipcode,PhoneNumber,Email) VALUES
  ('Akhila','reddy','gandhinagar','mumbai','delhi',509142,9666616881,'akhila@gmail.com'),  
  ('Anu','Priya','hyd','karnataka','gadwal',590234,9908778909,'anuhya@gmail.com'),
  ('Shamu','Varma','kurnool','Mumbai','gujarat',345678,8796543256,'priya@gmail.com');
  

  select *from Addressbook