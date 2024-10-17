SELECT customers.FirstName || ' ' || customers.LastName AS CustomerName, SUM(invoices.Total) AS TotalSpent
FROM customers
JOIN invoices ON customers.CustomerId = invoices.CustomerId
GROUP BY customers.CustomerId
HAVING TotalSpent > (SELECT AVG(Total) FROM invoices);