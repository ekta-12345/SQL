-----UC1-----
----creating a database----
create database Address_Book;
use Address_Book;

-----UC2----
----creating a table----
create table Address_Book(
FirstName varchar(50),
LastName varchar(50),
City varchar(50),
StateName varchar(40),
Zip int,
Phone varchar(15),
Email varchar(40)
);

----UC3----
----Ability to insert new contacts to addressbook----
insert into Address_Book values

('Ekta','Kumbhare','Pune','Maharashtra','560085','7709283353','abhikumbhare3@gmail.com'),
('Shraddha','Sathe','Pune','Maharashtra','455454','0845678903','shraddhas5@gmail.com'),
('Manthan','Nannaware','Nagpur','Maharashtra','560085','7745454645','mandynnaware@gmail.com'),
('Shruti','Hande','Jalgaon','Maharashtra','837575','7754263784','shruhande3@gmail.com'),
('Aditya','Patil','Kolhapur','Maharashtra','574895','09368479083','adyPatil7@gmail.com');


select*from Address_Book;

----UC4----
----Ability to edit existing contact person using their name----

update Address_Book set Phone='897537733' where FirstName='Shraddha';

----UC5----
----Ability to delete existing contact person using their name----

delete from Address_Book where FirstName= 'Ekta';

----UC6----
----Ability to retrieve person belonging to a city or state from address book table----

select*from Address_Book where City='Pune' ;
select*from Address_Book where StateName='Maharashtra';

----UC7----
----Ability to understand the size of address book by City and State----

select count(City) as City_Count from Address_Book;
select count(StateName) as State_Count from Address_Book;
----UC8----
----Ability to retrieve entries sorted alphabetically by Person’s name for a given city----

select*from  Address_Book where City='Pune' order by FirstName;

----UC9----
----Ability to identify each Address Book with name and Type----

alter table Address_Book add Address_BookType varchar(40), Address_BookName varchar(50);
----adding new columns
select*from Address_Book;
update Address_Book set Address_BookType = 'Friends' where City ='Pune';
update Address_Book set Address_BookName = 'MyContacts';
update Address_Book set Address_BookType = 'Family' where LastName ='Kumbhare';
update Address_Book set Address_BookType = 'CollegeFriends' where LastName ='Patil';
----UC10----
----Ability to get number of contact persons----
select Address_BookType,Count(Address_BookType) as NumberOfContacts from Address_Book group by Address_BookType;

----UC11----
----Ability to add person to both Friend and Family----
insert into Address_Book(FirstName,LastName,City,StateName,Zip,Phone,Email,Address_BookType,Address_BookName)
values
('Pallavi', 'Kumbhare','Nagpur', 'Maharashtra',414566,8891144333, 'pallu23@gmail.com','Family','MyContacts'),
('Pallavi', 'Kumbhare','Nagpur', 'Maharashtra',414566,8891144333, 'pallu23@gmail.com','Friends','MyContacts')

select*from Address_Book;



