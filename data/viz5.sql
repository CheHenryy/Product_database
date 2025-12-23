USE AdventureWorks2025

SELECT * FROM Sales.SalesOrderDetail

SELECT * FROM Production.Product


SELECT 
Distinct TOP 10 P.Name as ProductName,
SOD.LineTotal as TotalSales
FROM Sales.SalesOrderDetail SOD
JOIN Production.Product P
ON SOD.ProductID = P.ProductID
ORDER BY TotalSales DESC; 


