# PostgreSQL-B5A2

## What is PostgreSQL?
PostgreSql is a open source and a powerful relational database system. And also known for robust and high performance relational database management system.

## What is the purpose of a database schema in PostgreSQL?
This is used to logically organize database objects like tables, views, functions etc. It makes easier  to manage and access.

Example:
Like i have an e-commerce platform. I could use schemas to different parts:

- public schema (default)
- sales schema for orders, customers, products.
- hr schema for employee and payroll data.
- reporting schema for specific views used for analytics.

This helps avoid naming conflicts and organize large databases.

## Explain the Primary Key and Foreign Key concepts in PostgreSQL.
Primary key is a column in a table that uniquely identifies each row in that table.

- Example (Primary Key):
<pre> CREATE TABLE students (
    student_id SERIAL PRIMARY KEY, -primary key
    name VARCHAR(100)
); </pre>

And foreign key is a column or set of columns in each table that refers to the primary key in another table. It maintain link or relations between two or more tables.

- Example (Foreign Key):
<pre> CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY, -primary key
    course_name VARCHAR(100)
); </pre>

<pre> CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id), -foreign key
    course_id INT REFERENCES courses(course_id) -foreign key    
); </pre>

## What is the difference between the VARCHAR and CHAR data types?
In Postgresql varchar and char are both used to store character strings. But they significantly differ in how they handle storage and string length.

- Char: 
<pre> CREATE TABLE countries (
    country_code CHAR(3) -- it will only stores 3 character
); </pre>

- Varchar:
<pre> CREATE TABLE users (
    username VARCHAR(50) -it will only stores 50 character
); </pre>


## Explain the purpose of the WHERE clause in a SELECT statement.
The WHERE clause in a SELECT statement in SQL serves a crucial purpose to filter the rows returned by the query based on specified conditions.

- Example:
<pre> SELECT product_name, price
FROM products
WHERE price > 50.00; --only products with a price greater than 50.00
</pre>

<pre> SELECT *
FROM products
WHERE category = 'Electronics'; -products from the 'Electronics' category
</pre>