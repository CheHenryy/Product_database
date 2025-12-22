USE AdventureWorks2025

SELECT * FROM Sales.SalesOrderDetail

SELECT * FROM Production.Product


SELECT 
P.Name as ProductName,
COUNT(DISTINCT P.Name) AS ProductCount,
SUM(SOD.OrderQty * SOD.UnitPrice) as TotalSales
FROM Sales.SalesOrderDetail SOD
JOIN Production.Product P
ON SOD.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY TotalSales DESC; 
