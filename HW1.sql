#1. HNL, Honolulu is the furtherest destination
SELECT dest FROM flights ORDER BY distance DESC LIMIT 1;
SELECT distance FROM flights WHERE dest = 'HNL' LIMIT 1;

#2. Engines numbers are 1, 2,3, and 4. **The second part I am having trouble with
SELECT DISTINCT engines FROM planes;
SELECT DISTINCT model AS 'Model', SUM(seats) AS 'Total Seats' FROM planes WHERE engines = 1 order by SUM(seats) DESC LIMIT 1;


#3. total flights = 336776
SELECT COUNT(*) FROM flights;

#4.
SELECT COUNT(*) AS 'Total Flights', carrier AS 'Carrier' FROM Flights GROUP BY carrier;

#5.
SELECT COUNT(Flight) AS 'Number of Flights', carrier AS 'Airline' FROM flights Group By carrier Order By count(flight) desc;

#6.
SELECT COUNT(Flight) AS 'Number of Flights', carrier AS 'Airline' FROM flights Group By carrier Order By count(flight) desc LIMIT 5;

#7.
SELECT COUNT(Flight) AS 'Total Flights', carrier AS 'Airline' FROM flights WHERE distance >= 1000 Group By carrier Order By count(flight) desc LIMIT 5;

#8. Which airline had the lowest dep_time average(most on time)? Answer: US Airways (US)..
#Which airline had the highest dep_time average(least on time)? Answer: Frontier Airlines (F9).

SELECT AVG(dep_delay) AS ' Longest Departure Time', carrier AS 'Airline' FROM flights Group By carrier Order By AVG(dep_delay) DESC LIMIT 1;
SELECT AVG(dep_delay) AS ' Shortest Departure Time', carrier AS 'Airline' FROM flights Group By carrier Order By AVG(dep_delay) ASC LIMIT 1;
