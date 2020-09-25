-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
-- SELECT c.categoryname, p.ProductName
-- FROM product AS p
-- JOIN category AS c 
-- ON p.CategoryId = c.Id;


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
-- SELECT o.Id,
--        s.CompanyName,
--        o.ShippedDate
--   FROM [order] AS o
--        JOIN
--        shipper AS s ON s.id = o.ShipVia
--  WHERE o.ShippedDate < '2012-08-09';


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
-- SELECT ProductName, Quantity
--     FROM [Product]
--     JOIN [OrderDetail]
--     ON Product.Id = OrderDetail.ProductId
--     WHERE OrderDetail.OrderId = 10251
--     ORDER BY Product.ProductName


-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
-- SELECT [Order].Id as OrderID, Customer.CompanyName as CustomerCompanyName, Employee.LastName as EmployeeLastName
--     FROM [Order]
--     JOIN [Customer]
--     ON [Order].CustomerId = Customer.Id
--     JOIN [Employee]
--     ON [Order].EmployeeId = Employee.Id