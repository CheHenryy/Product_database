USE AdventureWorks2025

Select * from Production.ProductCategory

Select * from Production.Product

Select * from Production.ProductSubcategory

 
Select 
PC.Name as CategoryName, 
PS.Name as SubcategoryName, 
P.Name as ProductName
From Production.ProductCategory as PC
Join Production.ProductSubcategory as PS
    On PC.ProductCategoryID = PS.ProductCategoryID  
Join Production.Product as P
    On PS.ProductSubcategoryID = P.ProductSubcategoryID
Order by CategoryName, SubcategoryName, ProductName  
