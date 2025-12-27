USE AdventureWorks2025

SELECT * FROM Sales.SalesTerritory
SELECT * FROM Sales.SalesOrderHeader
SELECT * FROM Sales.Customer
SELECT * FROM Sales.Store


SELECT
    st.Name AS Region,
    st.[Group] AS RegionGroup,
    CASE 
        WHEN c.StoreID IS NOT NULL THEN 'Store'
        WHEN c.PersonID IS NOT NULL THEN 'Individual'
    END AS CustomerType,
    SUM(soh.TotalDue) AS TotalSales,
    COUNT(DISTINCT soh.SalesOrderID) AS OrderCount,
    SUM(TotalDue)/COUNT(DISTINCT SalesOrderID) AS AvgOrderValue
FROM Sales.SalesOrderHeader AS soh
JOIN Sales.Customer AS c ON soh.CustomerID = c.CustomerID
JOIN Sales.SalesTerritory AS st ON c.TerritoryID = st.TerritoryID
GROUP BY st.Name,
         CASE 
             WHEN c.StoreID IS NOT NULL THEN 'Store'
             WHEN c.PersonID IS NOT NULL THEN 'Individual'
         END, st.[Group]
ORDER BY AVG(soh.TotalDue) DESC;

