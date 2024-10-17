SELECT e.FirstName, e.LastName
FROM employees e
JOIN employees m ON e.ReportsTo = m.EmployeeId
WHERE m.FirstName = 'Andrew' AND m.LastName = 'Adams';