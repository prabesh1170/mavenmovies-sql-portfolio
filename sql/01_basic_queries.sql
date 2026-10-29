/* SELECT and columns */

-- List every film title.
Select title From film;

-- Show each customer’s first name, last name, and email.
Select first_name, last_name, email From customer;

-- Display all category names.
Select Distinct name FROM category;

-- List the names of all actors.
Select first_name,last_name From actor;

-- Show each store ID and its address ID. 
Select store_id, address_id From store;

/* WHERE filters*/

-- Find films rated PG.
Select* From film
Where rating='PG';

-- Find customers marked active.
Select * From customer
Where Active=1;

-- List films with rental_rate greater than 3.00.
Select* From film
Where rental_rate>3;

-- Find rentals that have not been returned.
Select *From rental
Where return_date is Null;

-- Show payments above 5.00.
Select * From Payment
Where amount>5;

/* AND / OR / NOT */

 -- Find PG-rated films with rental_rate below 3.00.
 Select * From film
 Where rating = 'PG' AND rental_rate<3;
 
 -- Find films rated G or PG.
 Select * From film
 Where rating = 'PG' OR rating='G';
 
-- Find inactive customers.
Select * From Customer
Where active=0 OR active IS Null;

-- Find films not rated R.
Select * From film
Where rating !="R";

-- Find customers belonging to store 1 or store 2.
Select * From customer
Where store_id=1 Or store_id=2;

/* ORDER BY */

-- List films from highest to lowest rental rate.
Select * From film
Order By rental_rate DESC;

-- Sort customers by last name A–Z.
Select * From customer
Order By last_name Asc;

-- Show the 10 longest films first.
Select * From film
Order By length Desc Limit 10 ;

-- Sort payments by amount descending.
Select * From payment
Order By amount DESC;

-- List rentals from newest to oldest rental_date.
Select * From rental
Order By rental_date DESC;

/* 
LIMIT and DISTINCT
*/ 

-- Show the first 10 films.
Select * From film
Order By release_year DESC
Limit 10;

-- List unique film ratings.
Select Distinct rating FROM film;

-- Show the five most expensive rental rates
Select * From film
Order By rental_rate DESC Limit 5;

-- List distinct customer store IDs.
Select Distinct store_id From Customer;

-- Show 20 most recent payments.
Select * FROM payment
Order By payment_date DESC Limit 20;

/* LIKE and text */

-- Find films whose titles begin with A.
 Select * From film
 Where title Like 'A%';

-- Find actors whose last name contains SON.
Select  * From actor
Where last_name LIKE '%SON%';

-- Find customers with an email ending in .com.
SELECT * From customer
Where email Like '%.com';

-- Find film titles containing LOVE.
Select * FROM film
Where title LIKE '%love%';

-- Find cities beginning with S.
Select * From city
Where city Like 'S%';






