USE AdventureWorks2025



SELECT * FROM Sales.SalesTerritory

SELECT * FROM Sales.SalesOrderHeader 

SELECT * FROM Sales.Customer


SELECT
    TERR.Name AS TerritoryName,   
    COUNT(DISTINCT CUST.CustomerID) AS CustomerCount,
    SUM(SOH.TotalDue) AS TotalSales,
    TERR.[Group] AS Continent
FROM Sales.SalesOrderHeader AS SOH
JOIN Sales.Customer AS CUST
ON SOH.CustomerID = CUST.CustomerID
JOIN Sales.SalesTerritory AS TERR
ON CUST.TerritoryID = TERR.TerritoryID
GROUP BY TERR.Name, TERR.[Group]
ORDER BY TotalSales DESC, CustomerCount DESC;