USE AdventureWorks2025

select * from Production.ProductCategory

select * from Production.ProductSubcategory

select * from Production.Product

select * from sales.SalesOrderDetail


SELECT 
    PC.Name AS CategoryName, 
    SUM(SOD.LineTotal) AS LineTotal,
    SUM(SOD.OrderQty * SOD.UnitPrice) AS TotalSales --verifying this figure with thr LineTotal
FROM Production.ProductCategory AS PC 
INNER JOIN Production.ProductSubcategory AS PS ON PC.ProductCategoryID = PS.ProductCategoryID  
INNER JOIN Production.Product AS P ON PS.ProductSubcategoryID = P.ProductSubcategoryID
INNER JOIN sales.SalesOrderDetail AS SOD ON P.ProductID = SOD.ProductID
GROUP BY PC.Name     
ORDER BY SUM(SOD.LineTotal) DESC, SUM(SOD.OrderQty * SOD.UnitPrice) DESC;

