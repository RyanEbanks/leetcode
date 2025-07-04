# Write your MySQL query statement below
-- find the names of customers where referee_id != 2

select name from Customer
where referee_id !=2 or referee_id is null;