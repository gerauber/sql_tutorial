SELECT customers.FirstName || ' ' || customers.LastName AS CustomerName, COUNT(invoices.InvoiceId) AS TotalInvoices
FROM invoices
JOIN customers ON invoices.CustomerId = customers.CustomerId
GROUP BY CustomerName
ORDER BY TotalInvoices DESC;