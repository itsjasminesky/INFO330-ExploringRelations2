-- What was the most purchased track of 2013?
SELECT tracks.Name as Track, COUNT(*) as NumPurchases
FROM invoice_items
JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
JOIN tracks ON invoice_items.TrackId;
