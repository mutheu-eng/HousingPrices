SELECT *
FROM `housing prices`;

SELECT SUBSTRING(TIME,6,2) as Quarterly
FROM `housing prices`;

SELECT SUBJECT,ROUND(SUM(Value),2) AS Total_value
FROM `housing prices`
GROUP BY SUBJECT; 

SELECT LOCATION,ROUND(SUM(Value),2) AS Total_value
FROM `housing prices`
GROUP BY LOCATION
ORDER BY Total_value DESC
LIMIT 10; 

SELECT LOCATION,ROUND(SUM(Value),2) AS Total_value
FROM `housing prices`
GROUP BY LOCATION
ORDER BY Total_value ASC
LIMIT 10; 

SELECT LOCATION, TIME,ROUND(SUM(Value),2) AS Total_value
FROM `housing prices`
GROUP BY TIME,LOCATION
ORDER BY Total_value DESC
LIMIT 10; 

SELECT ROUND(AVG(Value),2)  AS avg_value
FROM `housing prices`;

SELECT LOCATION,ROUND(Value,2) AS Value
FROM `housing prices`
WHERE Value >=
(
SELECT ROUND(AVG(Value),2)  AS avg_value
)
ORDER BY Value DESC
LIMIT 10;

SELECT LOCATION,ROUND(Value,2) AS Value
FROM `housing prices`
WHERE Value >=
(
SELECT ROUND(AVG(Value),2)  AS avg_value
)
ORDER BY Value ASC
LIMIT 10;




