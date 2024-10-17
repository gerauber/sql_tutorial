SELECT tracks.Name, genres.Name AS genres 
FROM tracks 
JOIN genres ON tracks.GenreId = genres.GenreId 
WHERE genres.Name = 'Rock';