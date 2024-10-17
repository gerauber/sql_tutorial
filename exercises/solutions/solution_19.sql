SELECT employees.FirstName || ' ' || employees.LastName AS EmployeeName, COUNT(invoices.InvoiceId) AS InvoiceCount
FROM employees
JOIN customers ON employees.EmployeeId = customers.SupportRepId
JOIN invoices ON customers.CustomerId = invoices.CustomerId
GROUP BY EmployeeName
ORDER BY InvoiceCount DESC;