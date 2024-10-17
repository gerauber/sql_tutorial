SELECT BillingCountry, AVG(Total) AS AverageInvoice
FROM invoices
GROUP BY BillingCountry
ORDER BY AverageInvoice DESC;