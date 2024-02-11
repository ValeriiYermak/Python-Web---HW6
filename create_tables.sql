-- Таблиця Груп
drop table if exists groups;
CREATE TABLE groups(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

-- Таблиця Студентів
drop table if exists students;
CREATE TABLE students(
  id SERIAL PRIMARY KEY,
  fullname VARCHAR(150) NOT NULL,
  group_id INTEGER REFERENCES groups(id)
  ON DELETE CASCADE
);

-- Таблиця Викладачів
drop table if exists teachers;
CREATE TABLE teachers(
  id SERIAL PRIMARY KEY,
  fullname VARCHAR(150) NOT NULL
);

-- Таблиця Предметів
drop table if exists subjects;
CREATE TABLE subjects(
  id SERIAL PRIMARY KEY,
  name VARCHAR(175) NOT NULL,
  teacher_id INTEGER REFERENCES teachers(id)
  ON DELETE CASCADE
 );
 
--Таблиця оцінок
drop table if exists grades;
CREATE TABLE grades(
  id SERIAL PRIMARY KEY,
  student_id INTEGER REFERENCES students(id)
  ON DELETE CASCADE,
  subject_id INTEGER REFERENCES subjects(id)
  ON DELETE CASCADE,
  grade INTEGER CHECK (grade >= 0 AND grade <= 100),
  grade_date DATE NOT NULL
 ); 