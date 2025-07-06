# Write your MySQL query statement below
-- Show unique ID of each user, null if no ID
select eu.unique_id, e.name from Employees e
left join EmployeeUNI eu on e.id=eu.id ;