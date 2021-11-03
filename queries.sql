-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select
	c.categoryname, p.productname
from products as p
join categories as c
on c.categoryid = p.categoryid
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.orderid, s.shippername
from orders as o
join shippers as s
on o.shipperid = s.shipperid
where o.orderdate < "2012-08-08"
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT p.productname, o.quantity
from products as p
join orderdetails as o
where o.orderid = 10251 and o.productid=p.productid
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.orderid, c.customername as CompanyName, e.lastname
from orders as o
join customers as c
join employees as e
on o.employeeid = e.employeeid