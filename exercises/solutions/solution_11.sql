SELECT customers.FirstName || ' ' || customers.LastName AS CustomerName, SUM(invoices.Total) AS TotalSpent
FROM invoices
JOIN customers ON invoices.CustomerId = customers.CustomerId
GROUP BY CustomerName
ORDER BY TotalSpent DESC
LIMIT 5;