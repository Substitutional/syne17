select * from products;

select * from orderdetails;
-- 1
select products.productName,orderdetails.priceEach
from
products right join orderdetails on products.productCode = orderdetails.productCode;


-- 6
create view newspaper.publishedArticles
as
select articles.Title, articles.Text, users.FirstName,users.LastName 
from
articles left join users on articles.Writer=users.userID
where articles.published = true;