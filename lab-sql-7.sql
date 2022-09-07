use sakila;

-- 1. In the table actor, which are the actors whose last names are not repeated? 
select * from actor;
select last_name, first_name, count(last_name) from actor group by last_name having count(last_name) = 1; 

 -- Which last names appear more than once?
 select * from actor;
 select last_name, count(last_name) from actor group by last_name having count(last_name) > 1;
 
 -- 3. Using the rental table, find out how many rentals were processed by each employee.
select * from rental;
select distinct staff_id, count(rental_id) from rental group by staff_id;

-- 4. Using the film table, find out how many films were released each year.
select * from film;
select distinct release_year, count(film_id) from film group by release_year;

-- 5. Using the film table, find out for each rating how many films were there.
select * from film;
select distinct rating, count(film_id) from film group by rating;

-- 6. What is the mean length of the film for each rating type.
-- Round off the average lengths to two decimal places
select * from film;
select distinct rating, round(avg(length), 2) from film group by rating;

-- 7. Which kind of movies (rating) have a mean duration of more than two hours?
select * from film;
select distinct rating from film group by rating having avg(length) > 120;
-- select distinct rating, avg(length) from film group by rating;

