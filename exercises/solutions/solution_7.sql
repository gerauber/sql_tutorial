SELECT BillingCountry, SUM(Total) AS TotalSales
FROM invoices
GROUP BY BillingCountry
ORDER BY TotalSales DESC;