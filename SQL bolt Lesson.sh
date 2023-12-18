
#Lesson 1: Lesson 1: SELECT queries 101
Select query for a specific columns
SELECT column, another_column, …
FROM mytable;

Select query for all columns
SELECT * 
FROM mytable;

SELECT title FROM movies;
SELECT director FROM movies; 
SELECT title, director FROM movies; 
SELECT title, year FROM movies; 
SELECT * FROM movies; 

#Lesson 2: Queries with constraints
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

#Exercise 3
SELECT * FROM movies;
SELECT title, director FROM movies 
WHERE title LIKE "Toy Story%";
SELECT title, director FROM movies 
WHERE director = "John Lasseter";
SELECT title, director FROM movies 
WHERE director != "John Lasseter";
SELECT * FROM movies 
WHERE title LIKE "WALL-_";

#Lesson 4: Filtering and sorting Query results
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

#Exercise 5: Simple SELECT Queries
SELECT * FROM north_american_cities;
SELECT city, population FROM north_american_cities
WHERE country = "Canada";
SELECT city, latitude FROM north_american_cities
WHERE country = "United States"
ORDER BY latitude DESC;
SELECT city, longitude FROM north_american_cities
WHERE longitude < -87.629798
ORDER BY longitude ASC;
SELECT city, population FROM north_american_cities
WHERE country LIKE "Mexico"
ORDER BY population DESC
LIMIT 2;
SELECT city, population FROM north_american_cities
WHERE country LIKE "United States"
ORDER BY population DESC
LIMIT 2 OFFSET 2;

#Exercise 6: Multi-table queries with JOINs
SELECT * FROM movies;
SELECT title, domestic_sales, international_sales 
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;

SELECT title, domestic_sales, international_sales
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;

SELECT title, rating
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;

#Exercise 7: OUTER Joins
SELECT * FROM employees;
SELECT DISTINCT building FROM employees;
SELECT * FROM buildings;
SELECT DISTINCT building_name, role 
FROM buildings 
  LEFT JOIN employees
    ON building_name = building;
    
#Exercise 8:  A short note on NULLs
SELECT * FROM employees;
SELECT name, role FROM employees
WHERE building IS NULL;
SELECT DISTINCT building_name
FROM buildings 
  LEFT JOIN employees
    ON building_name = building
WHERE role IS NULL;

#Exercise 9: Queries with expressions
SELECT * FROM movies;
SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;
SELECT title, rating * 10 AS rating_percent
FROM movies
  JOIN boxoffice
    ON movies.id = boxoffice.movie_id;
SELECT title, year
FROM movies
WHERE year % 2 = 0;

#Exercise 10: Queries with aggregates
SELECT * FROM employees;
SELECT MAX(years_employed) as Max_years_employed
FROM employees;
SELECT role, AVG(years_employed) as Average_years_employed
FROM employees
GROUP BY role;
SELECT building, SUM(years_employed) as Total_years_employed
FROM employees
GROUP BY building;

#Exercise 11: Queries with aggregates
#the number of Artists in the studio (without a HAVING clause)
SELECT * FROM employees;
#the number of Employees of each role in the studio
SELECT role, COUNT(*) as Number_of_artists
FROM employees
WHERE role = "Artist";
#the total number of years employed by all Engineers
SELECT role, COUNT(*)
FROM employees
GROUP BY role;

#Exercise 12: Order of execution of a Query
#the number of movies each director has directed
SELECT * FROM movies;
#the total domestic and international sales that can be attributed to each director
SELECT director, COUNT(id) as Num_movies_directed
FROM movies
GROUP BY director;
