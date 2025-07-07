# Write your MySQL query statement below
-- Find id of users who visisted without transactions and # of times they made the visit
-- We used count customer id because we grouped it allowing us to aggregate it and made it countable

select v.customer_id , count(v.customer_id) as count_no_trans from Visits v
left join Transactions t on v.visit_id = t.visit_id
where t.transaction_id is null
group by v.customer_id;