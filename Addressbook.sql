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
 select *from AddressBook 

 --UC5-Deleting the contacts in addressbook

 delete from Addressbook where FirstName = 'Ramu'
 select *from Addressbook 

 --UC6:-Ability to retrieve person from city or state

 Insert into Addressbook values('Anu','Priya','hyd','karnataka','gadwal',590234,990877890,'anuhya@gmail.com');
 select *from Addressbook where city='gadwal' or State = 'karnataka'

 --UC7:-Find the Size of the table

 select count (*)from Addressbook 
 select distinct city,state
 into #temp
 from Addressbook ;
 select count (*) from #temp 

 --UC8:-sort the entries according to alphabetically by city
 --Ascending order
 select *from Addressbook ORDER BY city asc
 --Descending order
 select *from Addressbook ORDER BY state desc

 --UC9-Identify each addressbook with name and type

Alter Table Addressbook Add
type varchar(255),
name varchar(32);

update Addressbook set type = 'Teacher' where FirstName = 'Akhila' or FirstName ='Ramu'
update Addressbook set name = 'friendsContacts' where FirstName = 'Akhila' or FirstName = 'Anu'
update Addressbook set type = 'Friend' where FirstName = 'Anu'
update Addressbook set type = 'Family' where FirstName = 'Shamu'
update Addressbook set  name = 'colleguecontacts' where FirstName = 'Shamu' or FirstName = 'Ramu'
--display addressbook
select *from Addressbook 

