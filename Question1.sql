--Best sales performing country 
SELECT ROUND(MAX(SalesYTD), 0) AS max_sales, CountryRegionCode
FROM [Sales].[SalesTerritory]
GROUP BY CountryRegionCode
ORDER BY max_sales DESC
--Regions in US with sales
SELECT Name AS regions, ROUND (SalesYTD,0) AS sales
FROM [Sales]. [SalesTerritory]
WHERE CountryRegionCode = 'US';

SELECT * FROM Sales.SalesTerritory
WHERE CountryRegionCode = 'US';

SELECT * FROM [Sales].[SalesPerson]