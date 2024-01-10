#Create Database
create database sql_intro;

#Select Database
use sql_intro;

#Create a Table for employess
create table emp_details(
Name varchar(25),
Age int ,
sex char(25),
Doj date,
city varchar(25),
salary float);

#Details for all employess;
select * from emp_details;

#More information about emplyoess tables
describe emp_details;

#Create Table for Employess
insert into emp_details values
("Hasham" , 29 , "M" , "1996-12-09" , "Kamoke" , 120000),
("Haris" , 24 , "M" , "2000-12-09" , "Gujranwala" , 100000),
("Faisal" , 32 , "F" , "1991-12-09" , "Fasialabad" , 80000),
("Bilal" , 30 , "M" , "1994-11-09" , "Lahore" , 170000),
("Abid" , 31 , "F" , "1994-09-09" , "Sialkot" , 70000);

#Distinct Function
select  distinct  from emp_details;

#Count Function
select count(name) as count_name from emp_details;

#Sum Function
select sum(salary) as Sum_of_Salries_for_All_employess from emp_details;

#Average Function
select avg(salary) as Average_of_Salries_for_All_employess from emp_details;

#Show specific coloums from tables
 select name , age, city from emp_details;
 
 #Where conditon
 select * from emp_details where age >= 30 or age = 24;
 select name, sex, city from emp_details where sex = "M";
 
 #Where condition with Or operator
 select name, city, age from emp_details
 where city = "Gujranwala" or city = "Lahore";
 
 #Where condition with in operator
 select * from emp_details
 where city in ("Gujranwala" , "Kamoke")
 
 #Between Function with and operator
 select Name, age, doj from emp_details
 where doj between "1994-09-09" and "2000-12-09";
 
#Between Function with and operator
 select * from emp_details
 where age>29 and sex = "F";
 
 #GroupBy Function
 select * from emp_details;
 select sex, sum(salary) as total_salary from emp_details
 group by sex;
 
 #Round Function
 select sex, sum(salary) as total_salary from emp_details
 group by sex;
 
 #Order by function with desc (BY default with insending)
 select * from emp_details
 order by salary desc;
 
 #select Statement
 select (10+20) as addtion_between_two_numbers;
 select (20-20) as subraction_between_two_numbers;
 select length("Pakistan") as total_length;
 select repeat('@', 10) as repeat_functions;
 select upper("Hasham") as upper_case_letter;
 select lower("HASHAM") as lower_case_letter;
 select curdate();
 select day(curdate());
 select now();
 
 #Strings Functions

 select upper("Pakistan") as upper_case;
 select lower("Pakistan") as lower_case;
 select lcase("Pakistan") as lower_case;
 select character_length("Paksitan") as total_len;
 
 #Examples from table
 select character_length(Name) as length_of_Name
 from emp_details;

 #Concatenate Function
 select  upper(concat("Pakistan", " is" , " in Asia"))
 as String_Together; 
 
 #Exmaples from tables
 select name , age, concat(name," ",age) as name_age 
 from emp_details;

 #Reverse Function
 select reverse("Pakistan") as reverse_string;
 
 #Examples from tables
 select reverse(Name) as Reverse_Name from emp_details;
 
 #Replace Function
 select replace("Rose is not a flower" ,"not a flower" , "a flower") 
 as Replace_string_together;
 
 #Trim Function
 select length(rtrim("   Pakistan"));
 select length(ltrim("Pakstan        "));
 select length(trim("       Pakistan     "));
 
 #Position Function
 select position("Flower" in "Rose in Flower") 
 as checking_Position;
 
 #Ascii Function
 select ascii(97);
 
 #Create a table of sales
 create table sales (
 product_id int,
 sell_price float,
 quantity int,
 state varchar(20));
  
  #Insert some values into this table
  insert into sales values
  (121, 245.0 , 1 , "Kamoke"),
  (121, 344.0 , 2 , "Gujranwala"),
  (121, 325.0 , 5 , "Lahore"),
  (122, 245.0 , 7 , "Islamabad"),
  (122, 365.0 , 8 , "Peshawar"),
  (123, 745.0 , 6 , "Sialkot"),
  (123, 645.0 , 3 , "Kasuor"),
  (124, 845.0 , 4 , "Fasilabad");

# Details all records of sales
select * from sales;

#Show the table description 
describe sales;      

#Exmaples
select product_id , sum(sell_price * quantity) as Revenue
from sales 
group by product_id;

#Table for cost product
create table c_product
( product_id int,
cost_price float);

#Insert some values in cost product
insert into c_product value
(121 , 270.0),
(123 , 250.0),
(124 , 280.0),
(122, 290.0);

#display the all values of c_product
select * from c_product;

#Examples with innerjoin
select c.product_id , sum((s.sell_price - c.cost_price) * s.quantity)
as profit from sales as s 
inner join c_product as c 
where s.product_id = c.product_id
group by c.product_id;

#Having Function

select name , salary from emp_details
having salary >= "100000";


