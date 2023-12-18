Select query with constraints
SELECT column, another_column, …
FROM mytable
WHERE condition
    AND/OR another_condition
    AND/OR …;

SELECT * FROM movies;
SELECT id, title FROM movies 
WHERE id = 6;
SELECT title, year FROM movies
WHERE year BETWEEN 2000 AND 2010;
SELECT title, year FROM movies
WHERE year < 2000 OR year > 2010;
SELECT title, year FROM movies
WHERE year <= 2003;

Exercise 3
SELECT * FROM movies;
SELECT title, director FROM movies 
WHERE title LIKE "Toy Story%";
SELECT title, director FROM movies 
WHERE director = "John Lasseter";
SELECT title, director FROM movies 
WHERE director != "John Lasseter";
SELECT * FROM movies 
WHERE title LIKE "WALL-_";
