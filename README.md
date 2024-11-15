# Sakila SQL Analysis 🎬
This repository showcases a series of SQL exercises performed as part of a data bootcamp. The exercises focus on data analysis and manipulation for the Sakila DVD Rental Company, a fictional DVD rental business. Each query explores different aspects of the company's operations, helping to drive data-driven business decisions.

This project was particularly unique because the Sakila database was highly normalized, requiring extensive use of joins and close reference to the Entity Relationship (ER) Diagram to understand table relationships. This structure provided valuable practice in working with complex, interconnected tables—essential skills for performing accurate queries in real-world, normalized databases.

## 📊 Project Overview
The SQL queries in this repository analyze various facets of the Sakila database, such as:
* Customer spending patterns and revenue insights;
* Inventory management and stock analysis;
* Rental statistics and frequency;
* Data quality checks and duplicate detection.

## 🗃️ Database Structure
The database contains several key tables, including:
* customers: Customer details such as name, contact, and rental history;
* films: Information about available DVDs, genres, rental rates, and stock;
* rentals: Transaction data on DVD rentals, including timestamps and return status;
* actors: Actor information linked to the films they appear in.

## 📝 SQL Exercises
Here’s a summary of the exercises included:
**1. Actors in a Specific Movie**  
  - Retrieve the first and last names of actors who starred in the movie *Poseidon Forever*.
  - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_1.sql) 
**2. Top Spending Customers**
  - Identify the top 5 customers by total rental spend, including their name, email, and total amount spent.
  - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_2.sql)
**3. Duplicate Actor Names**
  - Check for duplicates in the `actor` table by actor name.
   - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_3.sql)
**4. Rental Rate Adjustment**
  - Add a column to display rental rates increased by 10%.
  - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_4.sql)
**5. Out of Stock Films**
  - Retrieve the list of films that are currently not in stock.
   - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_5.sql)
**6. Revenue by Category**
  - Create a report showing total revenue generated by each film category.
   - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_6.sql)
**7. Highly Rented Films**
  - Find films rented more than 30 times, showing the title and rental count.
   - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_7.sql)
**8. City-Based Rental Analysis**
  - Identify cities with the highest and lowest average rental rates.
   - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_8.sql)
**9. Overdue Rentals by Customers**
  - Calculate how many customers have more than one unreturned DVD.
   - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_9.sql)
**10. Top Actors by Appearances**
  - List the top 10 actors based on the number of films they've appeared in.
  - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_10.sql)
**11. Most Rented Movies by Genre**
  - Show the most rented movies by genre and the revenue generated from them.
  - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_11.sql)
**12.Return Timing Analysis**
  - Calculate the number of movies returned late, early, and on time.
  - [View Query](https://github.com/vanessacrramos/SQL-Case-Study-Sakila/blob/main/sql_scripts/exercise_12.sql)
      
## 🚀 Getting Started
To run these SQL scripts, you’ll need:
1. SQLite Database: Download the Sakila database in .db format.
2. SQL Client: Use a tool like DBeaver or DB Browser for SQLite to execute the queries.

## How to Import the Database in DBeaver
- Install DBeaver and open it.
- Go to Database > New Database Connection > SQLite.
- Import the sqlite-sakila.db file and click Finish.

## 🤝 Contributions
Feel free to fork this repository, suggest improvements, or add more exercises.
