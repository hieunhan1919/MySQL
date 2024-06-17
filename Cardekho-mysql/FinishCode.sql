-- Q1:Read Cars data.
select * from cardekho;


-- Q2:Total Cars: To get a count of total records
select count(*) from cardekho;


-- Q3:The manager asked the employee How many cars will be available in 2023?
select name, count(*) as soluong
from cardekho
where year = '2023'
group by name;


--Q4:The manager asked the employee How many cars is available in 2020,2021,2022
select count(*)
from cardekho
where year in (2020,2021,2022)
group by year;

-- Q5:Clint asked me to print the total of all cars by year. I don't see all the details.
select  year , count(*)
from cardekho
group by  year;


-- Q6:Clint asked to car dealer agent How many diesel cars will there be in 2020?
select count(*)
from cardekho
where fuel = 'Diesel' and year = '2020';


-- Q7: Clint requested a car dealer agent How many petrol cars will there be in 2020?
SELECT 
    COUNT(*)
FROM
    cardekho
WHERE
    fuel = 'Petrol' AND year = '2020';


-- Q8: The manager told the employee to give a print All the fuel cars (petrol, diesel, and CNG) come by all year.






-- Q9: Manager said there were more than 100 cars in a given year, which year had more than 100
SELECT 
    COUNT(*) AS sloto, year
FROM
    cardekho
GROUP BY year 	
having sloto > 100;





-- Q10: The manager said to the employee All cars count details between 2015 and 2023; we need a complete list.
select count(*) from cardekho where year between 2015 and 2023;


-- Q11: The manager said to the employee All cars details between 2015 to 2023 we need complete list

SELECT 
    *
FROM
    cardekho
WHERE
    year BETWEEN 2015 AND 2023;












