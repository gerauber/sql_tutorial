SELECT tracks.Name, COUNT(invoice_items.TrackId) AS PurchaseCount
FROM invoice_items
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
GROUP BY tracks.Name
ORDER BY PurchaseCount DESC
LIMIT 1;