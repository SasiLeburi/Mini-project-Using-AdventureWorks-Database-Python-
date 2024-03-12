--Created a view
CREATE VIEW jobtitle_sickleavehours AS
SELECT E.JobTitle, E.OrganizationLevel, AVG(E.SickLeaveHours) As Avg_SickLeaveHours
FROM HumanResources.Employee AS E
GROUP BY JobTitle, OrganizationLevel;

-- Looking at the average sick leave hours with organisational level
SELECT E.OrganizationLevel, AVG(E.SickLeaveHours) As Avg_SickLeaveHours
FROM HumanResources.Employee AS E
WHERE OrganizationLevel IS NOT NULL
GROUP BY OrganizationLevel;

-- Distinguishing the job titles in only organisation level 1 and 3 
SELECT E.JobTitle, E.OrganizationLevel
FROM HumanResources.Employee AS E
WHERE OrganizationLevel IN (1,3)
GROUP BY JobTitle, OrganizationLevel
ORDER BY E.OrganizationLevel;


