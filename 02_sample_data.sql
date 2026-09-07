SELECT c.CustomerID, c.CustomerName, SUM(o.Amount) AS TotalAmount FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID GROUP BY c.CustomerID, c.CustomerName;
SELECT c.City, COUNT(o.OrderID) AS OrderCount FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID GROUP BY c.City;
SELECT c.CustomerID, c.CustomerName, SUM(o.Amount) AS TotalAmount FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID GROUP BY c.CustomerID, c.CustomerName HAVING SUM(o.Amount) > 50000;
SELECT c.CustomerID, c.CustomerName, SUM(o.Amount) AS TotalAmount FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID GROUP BY c.CustomerID, c.CustomerName ORDER BY TotalAmount DESC LIMIT 3;
SELECT p.Category, SUM(p.Price * od.Quantity) AS Revenue FROM Products p JOIN OrderDetails od ON p.ProductID = od.ProductID GROUP BY p.Category ORDER BY Revenue DESC LIMIT 1;
SELECT c.CustomerID, c.CustomerName FROM Customers c JOIN Orders o ON c.CustomerID = o.CustomerID GROUP BY c.CustomerID, c.CustomerName HAVING SUM(CASE WHEN o.Status = 'Cancelled' THEN 1 ELSE 0 END) = 0;
