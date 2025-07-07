# Write your MySQL query statement below
-- report prod name, year, price for each sale id in sales table
select p.product_name, s.year, s.price from Product p
inner join Sales s on p.product_id = s.product_id;