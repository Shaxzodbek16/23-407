-- 1 --

SELECT track.Name  AS TrackName,
       album.Title AS AlbumTitle
FROM track
         LEFT JOIN
     album ON track.AlbumId = album.AlbumId;

-- 2 --

SELECT track.Name AS TrackName,
       genre.Name AS GenreName
FROM track
         LEFT JOIN
     genre ON track.GenreId = genre.GenreId;

-- 3 --

SELECT CONCAT(customer.FirstName, ' ', customer.LastName) AS CustomerName,
       SUM(invoice.Total)                                 AS TotalSpent
FROM customer
         LEFT JOIN
     invoice ON customer.CustomerId = invoice.CustomerId
GROUP BY customer.CustomerId;

-- 4 --

SELECT album.Title          AS AlbumTitle,
       COUNT(track.TrackId) AS TrackCount
FROM album
         LEFT JOIN
     track ON album.AlbumId = track.AlbumId
GROUP BY album.AlbumId;

-- 5 --

SELECT genre.Name           AS GenreName,
       SUM(track.UnitPrice) AS TotalPrice
FROM genre
         LEFT JOIN
     track ON genre.GenreId = track.GenreId
GROUP BY genre.GenreId;


-- 6 --
SELECT CONCAT(customer.FirstName, ' ', customer.LastName) AS CustomerName,
       MAX(invoice.Total)                                 AS MaxInvoice
FROM customer
         LEFT JOIN
     invoice ON customer.CustomerId = invoice.CustomerId
GROUP BY customer.CustomerId;


-- 7 --
SELECT CONCAT(customer.FirstName, ' ', customer.LastName) AS CustomerName,
       MAX(invoice.InvoiceDate)                           AS LastInvoiceDate
FROM customer
         LEFT JOIN
     invoice ON customer.CustomerId = invoice.CustomerId
GROUP BY customer.CustomerId;


-- 8 --
SELECT track.Name                AS TrackName,
       SUM(invoiceline.Quantity) AS TotalSold
FROM track
         LEFT JOIN
     invoiceline ON track.TrackId = invoiceline.TrackId
GROUP BY track.TrackId;


-- 9 --

SELECT invoice.InvoiceId                AS InvoiceId,
       COUNT(invoiceline.InvoiceLineId) AS TrackCount
FROM invoice
         LEFT JOIN
     invoiceline ON invoice.InvoiceId = invoiceline.InvoiceId
GROUP BY invoice.InvoiceId;


-- 10 --
SELECT CONCAT(employee.FirstName, ' ', employee.LastName) AS SalesAgent,
       COUNT(customer.CustomerId)                         AS CustomerCount
FROM employee
         LEFT JOIN
     customer ON employee.EmployeeId = customer.SupportRepId
GROUP BY employee.EmployeeId;
