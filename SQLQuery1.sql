use SalesDB

---datetime getdate()

select OrderID, OrderDate , day(OrderDate) daywise , MONTH(OrderDate) monthwise, YEAR(OrderDate) yearwise
from Sales.Orders


select OrderID, OrderDate , datepart(DAY,OrderDate) daywise , MONTH(OrderDate) monthwise, YEAR(OrderDate) yearwise,datepart(quarter,OrderDate) quarterwise , datepart(weekday,OrderDate) week
from Sales.Orders

--datename

select OrderID, OrderDate,DATENAME(DAY,OrderDate)  datename, DATENAME(MONTH,OrderDate)  monthly
from Sales.Orders

---datetrunk

select OrderID, CreationTime, datetrunc(MINUTE,CreationTime) truncateddate
from Sales.Orders
---Orders monthly and yearlywise

select datetrunc(MONTH,CreationTime) truncatemonth,count(*) orders
from Sales.Orders
group by datetrunc(MONTH,CreationTime)

---end oof the month 
select OrderID, CreationTime, EOMONTH(Orderdate) , DATETRUNC(month,OrderDate) firstdayofmonth
from Sales.Orders
---SHow all the orders placed on february month 

select * 
from Sales.Orders
where month(OrderDate)=2

Select datename(month,Orderdate) monthly , count (* )
from Sales.Orders
group by datename(month,Orderdate) 
having datename(month,Orderdate)='February'
