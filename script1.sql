--Jose Lopez
--Practicing some SQL
--========================================================================================================================
--Creating Tables for SmithVideo DB
--==========================================================================================================================
CREATE TABLE dv_customer(
	customer_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR (50),
	address_id VARCHAR(50),
	active BOOLEAN
);

CREATE TABLE dv_address(
	address_id INT,
	address VARCHAR(50),
	address2 VARCHAR(50),
	district VARCHAR(50),
	city_id INT,
	postal_code VARCHAR(50),
	phone VARCHAR(50)
);

--For rating system must create enumerated type 
CREATE TYPE mpaa_rating AS ENUM (
	'G',
	'PG',
	'PG-13',
	'R',
	'NC-17'
);

CREATE TABLE dv_film(
	film_id INT,
	title VARCHAR(50),
	description TEXT,
	length smallint,
	rating mpaa_rating,
	release_year smallint
);


--========================================================================================================================
--Creating Tables for SmithBooks DB
--==========================================================================================================================
CREATE TABLE cb_customers(
	last_name VARCHAR(50),
	first_name VARCHAR(50)
);

CREATE TABLE cb_books(
	title VARCHAR(50),
	author_id INT,
	edition smallint,
	publisher VARCHAR(50)
);

CREATE TABLE cb_authors(
	author_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50)
);




--========================================================================================================================
--Merged Tables
--==========================================================================================================================

CREATE TABLE mg_customers(
	customer_id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	address_id INT,
	active BOOLEAN
);

















