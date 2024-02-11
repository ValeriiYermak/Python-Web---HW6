-- Знайти студента із найвищим середнім балом з певного предмета.
SELECT 
	s.id, 
	s.fullname,
	ROUND(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON s.id = g.student_id
where g.subject_id = 1
GROUP BY s.id
ORDER BY AVG(g.grade) DESC
LIMIT 1;
