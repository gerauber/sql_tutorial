SELECT country, COUNT(*) AS customercount
FROM customers
GROUP BY country
ORDER BY customercount DESC;