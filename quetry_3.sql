-- Знайти середній бал у групах з певного предмета.
SELECT 
	s.group_id, 
	Round(AVG(g.grade), 2) AS average_grade
FROM grades g
JOIN students s ON g.student_id = s.id
WHERE g.subject_id = 1
GROUP BY s.group_id;
