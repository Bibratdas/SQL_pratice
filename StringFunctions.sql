---Concatinate  first name and last name
---Show list of customer

Use SalesDB

Select FirstName,LastName,CONCAT(FirstName,' ',LastName) as fullname
from sales.Customers

use MyDatabase

Select Lower(first_name) as lowercase, UPPER (first_name) as uppercase
from dbo.customers

---find the customers first name having white spaces


Select first_name
from dbo.customers
where first_name!=trim(first_name)

Select first_name,Len(first_name) len_firstname, 
len(trim(first_name)) as trimmed_,Len(first_name)-len(trim(first_name)) flag
from dbo.customers

--=Replacewithnew character 

Select *
from dbo.customers



--leftfunction

Select  left(trim(first_name),2) as shortname
from  dbo.customers



--lenth of customer firstname
Select first_name, len(first_name) as len_name 
from dbo.customers

--leftfunctions

Select left(

Select first_name, len(first_name) as len_name 
from dbo.customers
where right(trim(first_name),1)='n'


--retrive list of customer removing the firstcharacters

select first_name , Substring(trim(first_name),2,len(first_name)) as removed_name
from dbo.customers

--roundfunctions

select 3.516 as number,
round(3.516,2) as rounded_num,
round(3.516,1) as rounded_num2,
round(3.516,0) as rounded_num3

---ABS number /Absolutenumber

select -10,
ABS(-10)

--dateandtime

select  Datetime2