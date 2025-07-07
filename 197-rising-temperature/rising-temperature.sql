# Write your MySQL query statement below
-- find all date id, self join temps to find higher temps compared to previous date
-- Took whether 1 joined it on itself, made w2 = to the day after w1 then did a greater than
select distinct w1.id from Weather w1
join Weather w2
on w1.recordDate = date_add(w2.recordDate, interval 1 day)
where w1.temperature > w2.temperature;
