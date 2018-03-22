<<<<<<< HEAD
=======

>>>>>>> c42b39d19d3ce1fe974089904d59779c84e63ede
-- 1
select products.productName,orderdetails.priceEach
from
products right join orderdetails on products.productCode = orderdetails.productCode;


-- 2 
select orderNumber, sum(quantityOrdered * priceEach) as OrderValue
from orderdetails
group by orderNumber;

-- 3
create view classicmodels.orderNumberValue
as
select orderNumber, sum(quantityOrdered * priceEach) as OrderValue
from orderdetails
group by orderNumber;


-- 4
select customers.customerName, sum(orderNumberValue.OrderValue)
from customers
inner join orders on customers.customerNumber=orders.customerNumber
inner join orderNumberValue on orders.orderNumber = orderNumberValue.orderNumber
group by customers.customerName;


-- 5
select customers.customerName, sum(orderNumberValue.OrderValue) as sumOrderValue,
(select sum(amount) from payments where customerNumber=customers.customerNumber) as paid
from customers
inner join orders on customers.customerNumber=orders.customerNumber
inner join orderNumberValue on orders.orderNumber = orderNumberValue.orderNumber
group by customers.customerName;


-- 6
create view newspaper.publishedArticles
as
select articles.Title, articles.Text, users.FirstName,users.LastName 
from
articles left join users on articles.Writer=users.userID
where articles.published = true;