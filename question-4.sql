-- Which sales agent made the most in sales in 2010?
SELECT employees.FirstName, employees.LastName, SUM(invoices.Total) as TotalSales
FROM employees, customers, invoices
WHERE employees.EmployeeId = customers.SupportRepId
AND customers.CustomerId = invoices.CustomerId
AND invoices.InvoiceDate
BETWEEN '2010-01-01' AND '2010-12-31'
GROUP BY employees.EmployeeId
ORDER BY TotalSales DESC;
