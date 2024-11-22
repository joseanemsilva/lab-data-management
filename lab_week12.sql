-- Concatenate
select concat(course_name,' - ', semester)
from courses;

-- Finding specific data 
SELECT course_id, course_name, lab_time
from courses
where lab_time LIKE 'Fri%';

--Upcoming Assignments
SELECT *
from assignments
where due_date > '2024-11-21';

-- Count data by status
SELECT status as prefix, count(*)
from assignments
GROUP by prefix;

-- Select the longest name
select course_name
from courses
order by length(course_name) DESC
limit 1;

-- Display in uppercase 
SELECT upper(course_name)
from courses;

-- Select specific due-date month
SELECT title 
from assignments
where due_date LIKE '%-09-%';

-- Select missed information
SELECT *
from assignments
WHERE due_date is NULL;


