SELECT customers.FirstName || ' ' || customers.LastName AS CustomerName, COUNT(DISTINCT invoices.BillingCountry) AS CountryCount
FROM customers
JOIN invoices ON customers.CustomerId = invoices.CustomerId
GROUP BY customers.CustomerId
HAVING CountryCount > 1;