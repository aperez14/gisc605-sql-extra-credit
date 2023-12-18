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
