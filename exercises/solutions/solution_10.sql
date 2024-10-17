SELECT tracks.Name, COUNT(playlist_track.PlaylistId) AS PlaylistCount
FROM playlist_track
JOIN tracks ON playlist_track.TrackId = tracks.TrackId
GROUP BY tracks.Name
HAVING PlaylistCount > 1;