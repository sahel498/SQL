-- Question 1
-- Find the total milk production for the year 2023
select SUM(Value )
from milk_production 
where "Year" =2023;


-- Question 2
-- Show coffee production data for the year 2015. What is the total value?
SELECT SUM(value)
FROM coffee_production cp 
where cp."Year" = 2015;


-- Question 3
-- Find the average honey production for the year 2022.
SELECT AVG(hp.Value )
FROM honey_production hp 
WHERE "Year" =2022


-- Question 4
-- Get the state names with their corresponding ANSI codes from the state_lookup table. What number is Iowa?
SELECT State_ANSI,sl.State 
FROM state_lookup sl 
where sl.State LIKE  'Iowa'; 


-- Question 5
-- Find the highest yogurt production value for the year 2022.
select value 
from yogurt_production yp 
WHERE yp."Year" =2022
ORDER BY 
    Value DESC
LIMIT 1;


-- Question 6
--Find states where both honey and milk were produced in 2022. Did State_ANSI "35" produce both honey and milk in 2022?
SELECT 
    CASE 
        WHEN EXISTS (
            SELECT 1
            FROM honey_production h
            INNER JOIN milk_production m
            ON h.State_ANSI = m.State_ANSI
            WHERE h.Year = 2022
              AND m.Year = 2022
              AND h.State_ANSI = 35
        )
        THEN 'Yes, State 35 produced both honey and milk in 2022.'
        ELSE 'No, State 35 did not produce both.'
    END AS result;


-- Question 7
-- Find the total yogurt production for states that also produced cheese in 2022.
SELECT 
    SUM(yp.Value) AS total_yogurt_production_2022
FROM 
    yogurt_production yp
INNER JOIN 
    cheese_production cp
ON 
    yp.State_ANSI = cp.State_ANSI
WHERE 
    yp.Year = 2022
    AND cp.Year = 2022;

-- Question 8
-- Which states had cheese production greater than 100 million in April 2023? The Cheese Department wants to focus their marketing efforts there. How many states are there?
SELECT COUNT(cp.State_ANSI )
FROM cheese_production cp 
where cp.Value > 100000000
AND cp.Period = 'APR'
AND cp."Year" =2023;

-- Question 9
-- Your manager wants to know how coffee production has changed over the years. What is the total value of coffee production for 2011?
SELECT SUM(cp.Value )
FROM coffee_production cp 
WHERE cp."Year" =2011;

-- Question 10
-- There's a meeting with the Honey Council next week. Find the average honey production for 2022 so you're prepared.
SELECT AVG(hp.Value )
FROM honey_production hp 
WHERE hp."Year" =2022

-- Question 11
--The State Relations team wants a list of all states names with their corresponding ANSI codes. Can you generate that list? What is the State_ANSI code for Florida?
SELECT sl.State_ANSI,
sl.State 
FROM state_lookup sl 
WHERE sl.State like'Florida'

--Question 12
-- For a cross-commodity report, can you list all states with their cheese production values, even if they didn't produce any cheese in April of 2023? What is the total for NEW JERSEY?
SELECT 
    s.State,
    s.State_ANSI,
    cp.Value AS cheese_production_value
FROM 
    state_lookup s
LEFT JOIN 
    cheese_production cp
ON 
    s.State_ANSI = cp.State_ANSI
    AND cp.Year = 2023
    AND cp.Period = 'APR';

--Question 13
-- Can you find the total yogurt production for states in the year 2022 which also have cheese production data from 2023? This will help the Dairy Division in their planning.
SELECT Sum(yp.Value )
FROM yogurt_production yp 
INNER  JOIN cheese_production cp 
on yp.State_ANSI = cp.State_ANSI 
where yp."Year"  =2022
and cp.year= 2023;


-- Question 14
-- List all states from state_lookup that are missing from milk_production in 2023. How many states are there?
SELECT COUNT (sl.State)
from state_lookup sl 
left JOIN milk_production mp 
on sl.State_ANSI =mp.State_ANSI 
and mp."Year" = 2023
WHERE mp.State_ANSI IS NULL;

-- Question 15
--List all states with their cheese production values, including states that didn't produce any cheese in April 2023. Did Delaware produce any cheese in April 2023?
select sl.state, 
sl.State_ANSI,
cp.value
from state_lookup sl
left join cheese_production cp
on cp.state_ansi = sl.state_ansi
and cp.year=2023
AND cp.Period = 'APR';

-- Question 16
-- Find the average coffee production for all years where the honey production exceeded 1 million.
SELECT 
    AVG(cp.Value) AS avg_coffee_production
FROM 
    coffee_production cp
WHERE 
    cp.Year IN (
        SELECT 
            h.Year
        FROM 
            honey_production h
        GROUP BY 
            h.Year
        HAVING 
            SUM(h.Value) > 1000000
    );


