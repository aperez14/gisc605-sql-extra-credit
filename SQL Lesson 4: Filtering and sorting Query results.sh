SELECT * FROM movies;
SELECT DISTINCT director FROM movies
ORDER BY director ASC;
SELECT title, year FROM movies
ORDER BY year DESC
LIMIT 4;
SELECT title FROM movies
ORDER BY title ASC
LIMIT 5;
SELECT title FROM movies
ORDER BY title ASC
LIMIT 5 OFFSET 5;
