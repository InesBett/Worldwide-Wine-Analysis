#1 Show the number of countries present in the project_db
SELECT COUNT(DISTINCT country) AS total_countries
FROM project_db.wineclean;

#2.Retrieve unique production years
SELECT DISTINCT year
FROM project_db.wineclean
ORDER BY year ASC;

#2.1 Retrieve the number of unique production years
SELECT COUNT(DISTINCT year) AS total_year
FROM project_db.wineclean;

#3 Show all prices for White wines grouped by country with ascending order
SELECT price, country
FROM project_db.wineclean
WHERE type = "White"
GROUP BY country, price
ORDER BY price ASC;

#4 Show all grapes grouped by region and country
SELECT grape, region, country
FROM project_db.wineclean
GROUP BY region, country,grape;

#5 Select wines from 2019 Grouped by style
SELECT title, year, style
FROM project_db.wineclean
WHERE year = "2019"
GROUP BY style, title;

#6 Select wines between 2017 and 2020
SELECT title, year
FROM project_db.wineclean
WHERE year BETWEEN 2017 AND 2019
ORDER by year ASC;

#7 Select countries that produce red wines
SELECT country, type
FROM project_db.wineclean
WHERE type ="Red";

#7.1 Show number of countries that produce red wines
SELECT COUNT(DISTINCT country) AS num_countries
FROM project_db.wineclean
WHERE type ="Red";

#8 Show all the wines with 13% alcohol percentage
SELECT title, alcohol_percentage
FROM project_db.wineclean
WHERE alcohol_percentage = 13;

#8 Show the number of wines with 13% alcohol percentage
SELECT COUNT(DISTINCT title) AS wine_count
FROM project_db.wineclean
WHERE alcohol_percentage = 13;

#9 Retrieve all wines that have Cabernet in their name and from 2019
SELECT title, year
FROM project_db.wineclean
WHERE title LIKE "%Cabernet%" AND year = 2019;

#9 Show how many wines have Cabernet in their name and from 2019
SELECT COUNT(DISTINCT title)
FROM project_db.wineclean
WHERE title LIKE "%Cabernet%" AND year = 2019;

#10 Determine the number of wine that have closure type of Screwcap and are betwwen 2017 and 2019
SELECT COUNT(DISTINCT title)
FROM project_db.wineclean
WHERE closure_type= "screwcap" AND year BETWEEN 2017 AND 2019;

#10.1 Show which are those wines
SELECT title, year, closure_type
FROM project_db.wineclean
WHERE closure_type= "screwcap" AND year BETWEEN 2017 AND 2019;