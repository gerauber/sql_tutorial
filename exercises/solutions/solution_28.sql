SELECT employees.FirstName || ' ' || employees.LastName AS EmployeeName, AVG(invoices.Total) AS AverageInvoiceTotal
FROM employees
JOIN customers ON employees.EmployeeId = customers.SupportRepId
JOIN invoices ON customers.CustomerId = invoices.CustomerId
GROUP BY employees.EmployeeId
ORDER BY AverageInvoiceTotal DESC;