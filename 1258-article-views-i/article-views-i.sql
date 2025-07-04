# Write your MySQL query statement below
-- Find author who viewd at least 1 of their own article
-- use distinct so the same author doesnt appear more than once

select distinct author_id as id from Views
where author_id = viewer_id
order by id asc;