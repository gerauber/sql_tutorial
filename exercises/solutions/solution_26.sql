SELECT DISTINCT employees.FirstName || ' ' || employees.LastName AS EmployeeName
FROM employees
JOIN customers ON employees.EmployeeId = customers.SupportRepId
JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE employees.City = customers.City;