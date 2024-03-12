
--QUESTION 3
-- Extracted data from the the relevant tables (Sales Terriroty) to view relation
SELECT
    CountryRegionCode,
    SUM(SalesYTD) AS TotalSalesYTD
FROM
    [Sales].[SalesTerritory]
GROUP BY
    CountryRegionCode
	ORDER BY TotalSalesYTD DESC;

-- Comparision between current revenue and last years revenue
	SELECT
    CountryRegionCode,
    SUM(SalesYTD) AS TotalSalesYTD, SUM(SalesLastYear) AS TotalSalesLastYear
FROM
    [Sales].[SalesTerritory]
GROUP BY
    CountryRegionCode
	ORDER BY TotalSalesYTD DESC;