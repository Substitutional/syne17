select * from products;

select productName,buyPrice,productDescription from products;

select productName,buyPrice,productDescription from products
order by buyPrice desc
limit 3;

select productName,quantityInStock,buyPrice from products
where quantityInStock < 100 or buyPrice > 100;

select * from orders;

select orderDate,comments,status from orders 
where customerNumber = 114;

select * from orderdetails;

select orders.orderDate,orders.comments,orders.status,orderdetails.quantityOrdered,orderdetails.priceEach
from
orders inner join orderdetails on orders.orderNumber = orderdetails.orderNumber
where
customerNumber = 114;

select * from employees;

select * from offices;

select employees.*, offices.city, offices.country
from
employees left join offices on employees.officeCode = offices.officeCode;
