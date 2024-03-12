This project will include information that covers various aspects of organisational dynamics, aiming to provide further insight and understanding. We will investigate the relationships between store size, employee count, revenue, store trading duration, sick leave hours across job titles, and annual leave with bonus amounts. This will help us to identify patterns, trends and any correlation that may prove to be useful going forward.
List of libraries:
-	Pyodbc
-	Panda 
-	Matplotlib
-	Numpy
-	Seaborn
Q1.	What is the regional sales in the best performing country?
Firstly, we need to find the data of sales per country in the Sales.SalesTerritory table, Sales YTD column and define the highest performing country by SQL using ROUND, MAX.
Secondly, calculate the sales by regions of the highest performing country in SQL using ROUND(),and WHERE.
Finally, we use the queries into Jupiper Note using pyodbc library and create a DataFrame imported library pandas. We did visualizing the data aided in identifying the best-performing country, which was determined to be the US based on its substantial overall sales by importing library matplotlib and plot bar charts.

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/dfe76139-331a-407e-bc0c-dd1b530222ac) 
![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/8757adfc-c462-4904-9117-bd9a10672e31)

Q2.	What is the relationship between annual leave taken and bonus?
We performed an Inner join within this query because we needed data from two different tables had a primary key and foreign key to link. We selected the Human Resources and the Sales Person table to extract the data we needed which was the Vacation Hours taken and the Bonus values
we used the ORDER BY clause to order these from highest to lowest and so that data could be showcased better for others to see.

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/aa6c56a0-ceba-451e-9940-59f507025d29)

Q3.	What is the relationship between Country and Revenue?  
We extracted data from Sales Territory as it included the 2 columns we needed. SalesYTD shows the most recent revenue and CountryRegionCode shows the country with said revenue.
After selecting these values, We had seen ‘US’ in the Country column had duplicate records.
We used the GROUP BY clause with the SUM aggregate function to group the US data and put in DESC order to make my visual easily readable.
We then made an additional query which was a modified version of the initial query to widen the data we would present.
We was able to make comparison between current revenue and last year's revenue that enables me to expand on the relationship between revenue and country. We did this because it was relevant data within the table that may provide more insight to who we am presenting to.

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/bcb8da64-3468-43af-abfc-490eef5314e1)

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/853cf5eb-dc09-49ad-ae06-bb3581caf61d)

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/4376a807-aa6d-4236-986d-743732f5d8bd)


Q4.	What is the relationship between sick leave and Job Title? 
CREATE a view. SELECT the tables job title, organisation level and average the sick leave hours table. Find these tables FROM  HumanResources.Employee and alias it as E. To then GROUP BY job title and organisation level.
We SELECT organisation level and average sick leave hours FROM HumanResources.Employee. We used the WHERE clause and IS NOT NULL to not include the null values in organizationlevel. We then GROUPed it by organization level.
We SELECT Job title and organization level FROM HumanResources.Employee and aliased it. We used the WHERE clause to identify the table organizationlevel IN only levels 1 and 3. Where we GROUPED BY the job title and organization level and ORDERED BY organization level. 

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/0433811d-6315-4796-8147-d4c313cf0f1f)

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/9eda9329-f83f-4b3b-9e76-72bcde709772)

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/fbdd9d39-d98e-4855-be2d-fc48ee6821ed)

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/2624595a-3220-4dec-8a29-551858fe7045)



Q5.	What is the relationship between store trading duration and revenue?
According to Question5 We found the relationship between Store name trading duration (comparing with 2019 and year that the store opened) with their Annual Revenue.
So, we approached  a table Sale.Store where we found a View exist with a name [Sales].[vStoreWithDemographics]. We took information of Annual revenue, year_opened, Specialty(Area), SquareFeet.
We found a relationship between Trade duration, Avg_Revenue, YearOpened. From my findings we understand the overall store trading was done for duration with different store names and calculating the average of Annual Revenue.
We found a relationship between Trade duration, Avg_Revenue, YearOpened, Speciality. From my findings we understand the store trading was done for duration with different store names and calculating the average of Annual Revenue by filtering Speciality (Area) with Road.
We found a relationship between Trade duration, Avg_Revenue, YearOpened, Speciality, SqureFeet. From my findings we understand the store trading was done for duration with different store names and calculating the average of Annual Revenue by filtering Speciality (Area) with Touring and, we took a specific condition using CASE WHEN by group into 3 as (Large_shops, Medium_shops, Small_shops).
We found a relationship between Trade duration, Avg_Revenue, YearOpened, Speciality, Count (YearOpened). From my findings we understand the store trading was done for duration with different store names and calculating the average of Annual Revenue by filtering Speciality (Area) with Mountain and compared with No_of _shops from count of YearOpened.
To our understandings from the different queries and the tables,
We took trading duration between 2019 and Year opened, it shows the relationship between two quantitative variables measured for the same individuals.  
Plot 1, we did scatter plot from finding the relate between Trading duration and Average AnnualRevenue
As X-axis duration for every 10 years the Average annual revenue was varying, the data appears as a point on the graph. 
The overall pattern of a scatterplot can be described by the direction, form, and strength of the relationship. 
Direction: Negative association from bottom to top linearly, Form: Linear, Strength: Strongest linear relationship 
The correlation coefficient measures the direction and strength of a linear relationship. So, from this relationship r= -0.2214 which is weak negative correlation.
And we forwarded two more scatter plots of relating with Speciality, Sqaure feet and No of Shops opened annually with Average Revenue and calculated correlation coefficients.
We plotted a bar chart to relate with specific category 3 groups using column Square feet and average revenue.

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/8eb67b8d-b2e3-4273-97cc-03003b5b5d46)

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/676619d8-cdbc-4e7b-a615-34eea00ed380)

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/43bfd565-9ed4-4bec-8124-7aaae0ee3969)

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/73af15ea-d3e4-40fa-a5db-5d0a6e1cca27)





Q6.	What is the relationship between the size of the stores, number of employees and revenue? 
Using the system view called ‘[Sales].[vStoreWithDemographics]’ which contains information the store size in square feet, number of employees and the annual revenue. 
As a group we agreed that we need to visual the links between these variables using the line plot and scatter plot.
From the system view, we will be getting the store size which is saved as square feet and average of the annual revenue. Finally group it by square feet. This query helps to analyse the relationship between the store size and revenue.
Create a view. Select the numberemployee colums and the annual revenue column from the system view table ‘[Sales].[vStoreWithDemographics]’. Then group by the number of employees. This query helps to analyse the relationship between the number of employees and revenue.
Create a view. Select the number of employees, squarefeet and annual revenue (average), from the system view table ‘[Sales].[vStoreWithDemographics]’. Then group by number of employees and the square feet(store size). This query helps to understand the overall relationship between all the three variables.
Create a view for this query. Select the number of employees from a subquery in the ‘FROM’ statement and the average revenue.  Then, we group by the CASE WHEN statement in the subquery. Finally, we group the main query by the number of employee alias from the subquery. This query helps to inspect the revenue in relation to the average avenue.
In python a line plot will be created to display the relationship between the store size and the average revenue
To display the relationship between the number of employees and the average revenue, a line plot will be used
Two bar charts will be plotted for the number employees (in groups of 10) to clearly indicate the changes in the revenue in relation to the category of groups of employees
The distribution for the number of employees and the average revenue would be displayed using histograms
A scatter plot of the three variables will be created: number of employees, store size and average revenue, using seaborn.
The correlation coefficients will be calculated for store size and revenue, and for number of employees and revenue, using NumPy. 

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/d0d5d3cc-c7ab-4430-9406-ec7e247e1561)

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/80709c73-b3bb-4f33-92be-de447dd07287)

![image](https://github.com/SasiLeburi/Mini-project-Using-AdventureWorks-Database-Python-/assets/142025947/c41157ac-efae-43cc-a1db-19930c80d287)








