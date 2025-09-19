Select * 
from customers;

Select * 
from orders;

Select c.id,c.first_name,o.sales
from customers c
INNER JOIN orders o ON c.id=o.customer_id


Select c.id,c.first_name,o.sales
from customers c
LEFT JOIN orders o ON c.id=o.customer_id
 


Select o.customer_id,c.first_name,o.sales
from customers c
Right JOIN orders o ON c.id=o.customer_id


select * 
from customers c FULL Join orders o On c.id=o.customer_id

--- customer without orders Left anti join
select * 
from customers c 
LEFT  Join orders o On c.id =o.customer_id
Where o.customer_id is null

---orders without customer right anti join
select * 
from customers c 
right  Join orders o On c.id =o.customer_id
Where c.id is null

--- orders without customer and customer without order Full anti join
select * 
from customers c 
Full  Join orders o On c.id =o.customer_id
Where o.customer_id is null or c.id is null