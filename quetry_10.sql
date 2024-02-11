-- Список курсів, які певному студенту читає певний викладач.

SELECT DISTINCT 
	sub.name AS course_name
FROM 
	grades grd
JOIN 
	subjects sub ON grd.subject_id = sub.id
JOIN 
	students stu ON grd.student_id = stu.id
JOIN 
	teachers tea ON sub.teacher_id = tea.id
WHERE 
    stu.id = 3 
    AND tea.id = 1;
