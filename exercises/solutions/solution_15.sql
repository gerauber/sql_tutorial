SELECT genres.Name, COUNT(tracks.TrackId) AS TrackCount
FROM tracks
JOIN genres ON tracks.GenreId = genres.GenreId
GROUP BY genres.Name
ORDER BY TrackCount DESC
LIMIT 1;