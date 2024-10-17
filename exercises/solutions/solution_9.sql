SELECT customers.FirstName || ' ' || customers.LastName AS CustomerName
FROM customers
LEFT JOIN invoices ON customers.CustomerId = invoices.CustomerId
WHERE invoices.CustomerId IS NULL;