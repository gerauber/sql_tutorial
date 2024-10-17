SELECT Name, UnitPrice
FROM tracks
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM tracks);