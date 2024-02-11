-- Знайти оцінки студентів у окремій групі з певного предмета.
SELECT 
	s.fullname AS student_name, 
	ROUND(AVG(g.grade), 2) AS average_grade
FROM students s
JOIN grades g ON s.id = g.student_id
WHERE s.group_id = 1 AND g.subject_id = 1
GROUP BY s.fullname;