SELECT BillingCountry, SUM(Total) as total_payments
FROM invoice
WHERE YEAR(InvoiceDate) = 2023
GROUP BY BillingCountry;

SELECT COUNT(*) as com_emails
FROM customer
WHERE SupportRepId = 4
  AND Email LIKE '%.com';

SELECT BillingCity, BillingCountry, SUM(Total) as total_payments
FROM invoice
GROUP BY BillingCity, BillingCountry
ORDER BY total_payments DESC
LIMIT 1;

SELECT staff_id, SUM(amount) as total_amount
FROM payment
GROUP BY staff_id
ORDER BY total_amount DESC
LIMIT 1;

SELECT Region, COUNT(*) as country_count
FROM country
GROUP BY Region
ORDER BY country_count DESC
LIMIT 1;

SELECT Continent, COUNT(DISTINCT Region) as region_count
FROM country
GROUP BY Continent
ORDER BY region_count ASC
LIMIT 1;

SELECT Continent, AVG(Population) as avg_population
FROM country
GROUP BY Continent
ORDER BY avg_population DESC;

SELECT Continent,
       CASE
           WHEN AVG(LifeExpectancy) = 0 THEN 'Notclear'
           ELSE CAST(AVG(LifeExpectancy) AS VARCHAR)
           END as avg_lifetime
FROM country
GROUP BY Continent;

SELECT CountryCode, SUM(Percentage) as official_language_percentage
FROM countrylanguage
WHERE IsOfficial = 'T'
GROUP BY CountryCode;

SELECT CountryCode, SUM(Percentage) as unofficial_language_percentage
FROM countrylanguage
WHERE IsOfficial = 'F'
GROUP BY CountryCode;

SELECT Region, SUM(GNP) as total_gnp
FROM country
GROUP BY Region;

SELECT Continent, AVG(GNP) as avg_gnp
FROM country
GROUP BY Continent;

SELECT Region, AVG(LifeExpectancy) as avg_life_expectancy
FROM country
GROUP BY Region;

SELECT Continent, AVG(Population) as avg_population
FROM country
GROUP BY Continent;

SELECT Region, AVG(Population) as avg_population
FROM country
GROUP BY Region;