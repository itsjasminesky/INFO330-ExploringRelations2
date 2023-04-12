-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT  invoices.invoiceID, employees.FirstName, employees.LastName, invoices.InvoiceDate, invoices.BillingCountry, invoices.Total
   FROM employees
   JOIN customers ON employees.EmployeeId 
   JOIN invoices ON customers.CustomerId
   ORDER BY employees.LastName, employees.FirstName, invoices.InvoiceId;