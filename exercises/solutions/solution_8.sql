SELECT artists.Name, COUNT(albums.AlbumId) AS AlbumCount
FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
GROUP BY artists.Name
ORDER BY AlbumCount DESC
LIMIT 1;