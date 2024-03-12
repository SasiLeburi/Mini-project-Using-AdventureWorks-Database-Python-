--system view for store inforamtion
SELECT *From [Sales].[vStoreWithDemographics]

--Create a view to relate between Trading duration and Average AnnualRevenue
CREATE VIEW Tradingduration_vs_Revenue as 

SELECT AVG(AnnualRevenue) AS avg_Revenue, (2019-YearOpened ) as Trading_durations,YearOpened
From [Sales].[vStoreWithDemographics]
GROUP BY YearOpened;

-- Create a view to relate between Trading duration and Average AnnualRevenue(Road)
CREATE VIEW road_area as

SELECT s.YearOpened , AVG(s.AnnualRevenue) AS avg_Revenue, (2019-YearOpened ) as Trading_durations
From [Sales].[vStoreWithDemographics] as s
WHERE Specialty = 'Road'
GROUP BY s.YearOpened

-- Create a view to relate between Categorising Shops_size(3 groups of SquareFeet) and Average AnnualRevenue(Touring)
CREATE VIEW touring_sqf as


SELECT s.BusinessEntityID,s.AnnualRevenue,s.YearOpened,s.SquareFeet,CASE 
	     WHEN SquareFeet BETWEEN 6000 AND 39000 THEN 'Small_shops'
         WHEN SquareFeet BETWEEN 39000 AND 40000 THEN 'Medium_shops'
         WHEN SquareFeet BETWEEN 40000 AND 80000 THEN 'Large_shops'
      END AS category_shops
From [Sales].[vStoreWithDemographics] as s
WHERE Specialty = 'Touring'

-- relation between SquareFeet, Trading duration, Average AnnualRevenue(Touring)
SELECT category_shops, AVG(AnnualRevenue) AS avg_rev FROM touring_sqf
GROUP BY category_shops;
	  

--Create a view to relate between No_of_shops, Trading duration, Average AnnualRevenue(Mountain)
CREATE VIEW Mountain_Specality as


SELECT COUNT(s.YearOpened) as number_shops_opened, (2019-YearOpened ) as Trading_durations , AVG(s.AnnualRevenue) AS avg_Revenue
From [Sales].[vStoreWithDemographics] as s
WHERE Specialty = 'Mountain'
GROUP BY s.YearOpened
