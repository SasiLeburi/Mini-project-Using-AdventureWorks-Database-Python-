-- QUESTION 2

--I Selected Human Resources and Sales person table to extract the data i needed which was the Vacation Hours and Bonus values
-- Inner join to link data together from both tables
use AdventureWorks2019
SELECT E.VacationHours, SP.Bonus
		FROM [HumanResources].[Employee] AS E
INNER JOIN
		[Sales].[SalesPerson] AS SP
	ON SP.BusinessEntityID = E.BusinessEntityID
ORDER BY E.VacationHours DESC


