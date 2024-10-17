SELECT media_types.Name AS media_types, SUM(invoice_items.UnitPrice * invoice_items.Quantity) AS TotalSales
FROM media_types
JOIN tracks ON media_types.MediaTypeId = tracks.MediaTypeId
JOIN invoice_items ON tracks.TrackId = invoice_items.TrackId
GROUP BY media_types.Name
ORDER BY TotalSales DESC
LIMIT 1;