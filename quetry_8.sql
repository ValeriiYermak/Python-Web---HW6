-- Знайти середній бал, який ставить певний викладач зі своїх предметів.

SELECT 
	round(AVG(g.grade), 2) AS average_teacher_grade
FROM grades g
JOIN subjects s ON g.subject_id = s.id
JOIN teachers t ON s.teacher_id = t.id
WHERE t.id = 1;