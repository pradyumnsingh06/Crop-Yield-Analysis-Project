use crop_project;

SELECT COUNT(*) FROM yield_data;




-- question 1
SELECT
Region,
AVG(Yield_tons_per_hectare) AS Average_Yield
FROM
yield_data
GROUP BY
Region
ORDER BY
Average_Yield DESC;
    
    
SELECT
Soil_Type,
AVG(Yield_tons_per_hectare) AS Average_Yield
FROM
yield_data
GROUP BY
Soil_Type
ORDER BY
Average_Yield DESC;



SELECT
Crop,
AVG(Yield_tons_per_hectare) AS Average_Yield
FROM
yield_data
GROUP BY
Crop
ORDER BY
Average_Yield DESC;





-- question 2

SELECT
    CASE
        WHEN Rainfall_mm < 250 THEN '1. Very Low (0-250mm)'
        WHEN Rainfall_mm BETWEEN 250 AND 500 THEN '2. Low (250-500mm)'
        WHEN Rainfall_mm BETWEEN 500 AND 750 THEN '3. Moderate (500-750mm)'
        WHEN Rainfall_mm BETWEEN 750 AND 1000 THEN '4. High (750-1000mm)'
        ELSE '5. Very High (>1000mm)'
    END AS Rainfall_Bracket,
    COUNT(*) AS Number_of_Records,
    AVG(Yield_tons_per_hectare) AS Average_Yield
FROM
    yield_data
GROUP BY
    Rainfall_Bracket
ORDER BY
    Rainfall_Bracket;
    
    
    
SELECT
    Crop,
    CASE
        WHEN Temperature_Celsius < 15 THEN '1. Cool (<15C)'
        WHEN Temperature_Celsius BETWEEN 15 AND 25 THEN '2. Mild (15-25C)'
        WHEN Temperature_Celsius BETWEEN 25 AND 30 THEN '3. Warm (25-30C)'
        ELSE '4. Hot (>30C)'
    END AS Temperature_Bracket,
    AVG(Yield_tons_per_hectare) AS Average_Yield
FROM
    yield_data
GROUP BY
    Crop,
    Temperature_Bracket
ORDER BY
    Crop,
    Temperature_Bracket;
    
    
    
SELECT
Weather_Condition,
AVG(Yield_tons_per_hectare) AS Average_Yield
FROM
yield_data
GROUP BY
Weather_Condition
ORDER BY
Average_Yield DESC;




-- question 3


SELECT
    Irrigation_Used,
    AVG(Yield_tons_per_hectare) AS Average_Yield
FROM
    yield_data
GROUP BY
    Irrigation_Used
ORDER BY
    Average_Yield DESC;
    
    
    
SELECT
CASE
WHEN Fertilizer_Used < 25 THEN '1. Low (<25L)'
WHEN Fertilizer_Used BETWEEN 25 AND 50 THEN '2. Moderate (25-50L)'
WHEN Fertilizer_Used BETWEEN 50 AND 75 THEN '3. High (50-75L)'
ELSE '4. Very High (>75L)'
END AS Fertilizer_Bracket,
AVG(Yield_tons_per_hectare) AS Average_Yield
FROM
yield_data
GROUP BY
Fertilizer_Bracket
ORDER BY
Fertilizer_Bracket;



SELECT
CASE
WHEN Days_to_Harvest < 90 THEN '1. Short (<90 Days)'
WHEN Days_to_Harvest BETWEEN 90 AND 120 THEN '2. Medium (90-120 Days)'
ELSE '3. Long (>120 Days)'
END AS Harvest_Duration,
AVG(Yield_tons_per_hectare) AS Average_Yield
FROM
yield_data
GROUP BY
Harvest_Duration
ORDER BY
Harvest_Duration;