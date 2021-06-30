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
PhoneNumber varchar(20)
)
