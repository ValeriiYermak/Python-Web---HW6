-- Знайти список курсів, які відвідує студент.

SELECT DISTINCT
    sub.name AS course_name
FROM 
    students stu
JOIN 
    groups grp ON stu.group_id = grp.id
JOIN 
    subjects sub ON sub.teacher_id = grp.id
WHERE 
    stu.id = 11;
