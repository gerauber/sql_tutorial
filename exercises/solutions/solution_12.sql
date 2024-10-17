SELECT albums.Title
FROM albums
JOIN artists ON albums.ArtistId = artists.ArtistId
WHERE artists.Name = 'AC/DC';