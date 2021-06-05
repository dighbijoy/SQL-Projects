-- This project has been done by Dighbijoy Samaddar for the Codeacademy project which is World Populations 2
-- This project will be uploaded to my repository SQL_projects
-- datetime: 05-06-2021 22:33:00

--- 1.  How many African countries are there? 

SELECT COUNT(*)
FROM countries
WHERE continent = 'Africa'; 
-- There are 56 African countries in this dataset

--- 2.  What was the total population of Oceania in 2005
-- For this we have to join countries with population

SELECT SUM(population) AS 'Total_Population_Oceania_2005' 
FROM countries
INNER JOIN population_years ON countries.id = population_years.country_id
WHERE countries.continent = 'Oceania' AND population_years.year = 2005;

-- The total population for Oceania for 2005 was 32.66 million 

--- What is the average population of South America in 2003

SELECT AVG(population) AS 'Average_Population_Oceania_2005' 
FROM countries
INNER JOIN population_years ON countries.id = population_years.country_id
WHERE countries.continent = 'South America' AND population_years.year = 2003;

-- The Average population of South America for the year 2003 was 25.89 million

---  Which country had the smallest population in 2007?

SELECT name, MIN(population) AS 'Minimum_Population_2007' 
FROM countries
INNER JOIN population_years ON countries.id = population_years.country_id
WHERE year = 2007; 

-- The country of Niue which had a population of 0.00216 million had the smallest population in 2007

--- The Average population of Poland during the time period of this dataset

SELECT AVG(population) AS 'Average_Population_Poland' 
FROM countries
INNER JOIN population_years ON countries.id = population_years.country_id
WHERE countries.name = 'Poland' 

-- It turns out that the average population of Poland was 38.56 million 

--- Countries which have the word 'The' in their names

SELECT COUNT(*)
FROM countries
WHERE name LIKE '%The%';

-- There are 4 such countries with 'The' in their names

--- Total Population of each continent in 2010

SELECT continent, SUM(population)
FROM countries
INNER JOIN population_years ON countries.id = population_years.country_id
WHERE year = 2010
GROUP BY 1
ORDER BY 2 DESC;

-- Asia leads the list with 4133.09148 million population in 2010 while Oceania is the least with 34.96 million population in 2010

------- To be Continued.....just joking, The END -----------








