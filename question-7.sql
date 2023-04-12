-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT TrackId, Name, Composer
FROM tracks 
WHERE TrackId
NOT IN 
(SELECT TrackId
FROM invoice_items)
ORDER BY TrackId ASC;