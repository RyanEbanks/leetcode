# Write your MySQL query statement below
-- find number of times each student attended each exam
-- output - student_id, student_name, subject_name and attended_exams
-- 1. we count by examinations student id because thats whats linked to the exam
-- 2. We cross join with subjects to get everything from student and subjects and left join on exam to get only related exams
-- 3. order by student id to get everything in order, group by student_id and sub name because we are trying to put all rows with the same name and id in one group eg.(1| Alice, 1| Alice, 1|Alice)
select s.student_id, s.student_name, sub.subject_name, count(e.student_id)  as attended_exams 
from Students s
cross join Subjects sub
left join Examinations e
on s.student_id = e.student_id
and sub.subject_name = e.subject_name

group by s.student_id, sub.subject_name
order by s.student_id
