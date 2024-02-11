-- Знайти середній бал на потоці (по всій таблиці оцінок).
SELECT Round(AVG(grade), 2) AS average_grade
FROM grades;
