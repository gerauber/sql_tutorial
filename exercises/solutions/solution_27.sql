SELECT invoices.InvoiceId, COUNT(invoice_items.InvoiceLineId) AS ItemCount
FROM invoices
JOIN invoice_items ON invoices.InvoiceId = invoice_items.InvoiceId
GROUP BY invoices.InvoiceId
ORDER BY ItemCount DESC
LIMIT 1;