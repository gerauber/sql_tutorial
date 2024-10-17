SELECT media_types.Name, COUNT(tracks.TrackId) AS TrackCount
FROM tracks
JOIN media_types ON tracks.MediaTypeId = media_types.MediaTypeId
GROUP BY media_types.Name
ORDER BY TrackCount DESC;