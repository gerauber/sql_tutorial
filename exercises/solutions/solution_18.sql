SELECT tracks.Name
FROM tracks
JOIN albums ON tracks.AlbumId = albums.AlbumId
JOIN artists ON albums.ArtistId = artists.ArtistId
WHERE artists.Name = 'Led Zeppelin';