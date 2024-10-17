SELECT genres.Name AS genres, tracks.Name AS TrackName, MAX(tracks.Milliseconds) AS LongestTrack
FROM tracks
JOIN genres ON tracks.GenreId = genres.GenreId
GROUP BY genres.GenreId;