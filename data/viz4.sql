USE AdventureWorks2025

SELECT * FROM Sales.SalesOrderHeader

SELECT 
    
    COUNT(DISTINCT SalesOrderID) AS OrderCount,
    TerritoryID AS SalesTerritory,
    SUM(TotalDue) as TotalSales,
    YEAR(OrderDate) as SalesYear
FROM Sales.SalesOrderHeader
GROUP BY YEAR(OrderDate), TerritoryID
ORDER BY SalesYear DESC, TotalSales DESC;


