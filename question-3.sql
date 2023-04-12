-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT invoice_items.TrackId, tracks.Name AS trackName, artists.Name AS artisitsName
FROM invoice_items
JOIN tracks ON invoice_items.TrackId = tracks.TrackId
JOIN artists ON albums.ArtistId = artists.ArtistId;
