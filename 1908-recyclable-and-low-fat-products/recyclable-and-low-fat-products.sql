# Write your MySQL query statement below
-- Returning the product id of items that are low fat and recyclable
-- low_fats and recyclable are enums (Y for yes and N for no)

select product_id from Products
where low_fats='Y' and recyclable='Y';