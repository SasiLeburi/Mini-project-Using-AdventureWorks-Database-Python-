--This query contains the store size in squarefeet and the average avenue of the stores
CREATE VIEW storesize_rev AS
SELECT SquareFeet AS Store_Size,
	AVG(AnnualRevenue) AS AVG_Revenue
FROM  [Sales].[vStoreWithDemographics]
GROUP BY SquareFeet;


--Created a view for groups of 10 employees and the revenue
CREATE VIEW Employee_AVGrevenue AS
SELECT No_of_employees, AVG(Revenue) AS AVG_Revenue
FROM (
    SELECT 
        AVG(AnnualRevenue) AS Revenue,
        CASE 
            WHEN NumberEmployees <= 10 THEN '0-10'
            WHEN NumberEmployees <= 20 THEN '11-20'
            WHEN NumberEmployees <= 30 THEN '21-30'
            WHEN NumberEmployees <= 40 THEN '31-40'
            WHEN NumberEmployees <= 50 THEN '41-50'
            WHEN NumberEmployees <= 60 THEN '51-60'
            WHEN NumberEmployees <= 70 THEN '61-70'
            WHEN NumberEmployees <= 80 THEN '71-80'
			WHEN NumberEmployees <= 90 THEN '81-90'
			WHEN NumberEmployees <= 100 THEN '91-100'
        END AS No_of_employees
    FROM [Sales].[vStoreWithDemographics]
    GROUP BY 
        CASE 
            WHEN NumberEmployees <= 10 THEN '0-10'
            WHEN NumberEmployees <= 20 THEN '11-20'
            WHEN NumberEmployees <= 30 THEN '21-30'
            WHEN NumberEmployees <= 40 THEN '31-40'
            WHEN NumberEmployees <= 50 THEN '41-50'
            WHEN NumberEmployees <= 60 THEN '51-60'
            WHEN NumberEmployees <= 70 THEN '61-70'
            WHEN NumberEmployees <= 80 THEN '71-80'
			WHEN NumberEmployees <= 90 THEN '81-90'
			WHEN NumberEmployees <= 100 THEN '91-100'
        END
) AS sub
GROUP BY No_of_employees;

--This query contains revenue for no of employees
CREATE VIEW no_employees_rev AS
SELECT NumberEmployees AS Number_of_Employees,
		AVG(AnnualRevenue) AS Revenue 
FROM  [Sales].[vStoreWithDemographics]
GROUP BY NumberEmployees

--This query is used to look at the overall link
CREATE VIEW storedata AS
SELECT NumberEmployees AS No_of_employees,
	   SquareFeet AS Store_Size,AVG(AnnualRevenue) AS AVG_Revenue
FROM  [Sales].[vStoreWithDemographics]
GROUP BY NumberEmployees,SquareFeet;

