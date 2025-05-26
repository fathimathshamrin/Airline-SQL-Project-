
-- Query 1: On-time Performance by Airline
SELECT
    a.AirlineName,
    COUNT(*) AS TotalFlights,
    SUM(CASE 
        WHEN TIMESTAMPDIFF(MINUTE, f.ArrivalTime, f.ActualArrivalTime) <= 15 THEN 1
        ELSE 0
    END) AS OnTimeFlights,
    ROUND(SUM(CASE 
        WHEN TIMESTAMPDIFF(MINUTE, f.ArrivalTime, f.ActualArrivalTime) <= 15 THEN 1
        ELSE 0
    END) * 100.0 / COUNT(*), 2) AS OnTimePercentage
FROM Flights f
JOIN Airlines a ON f.AirlineID = a.AirlineID
WHERE f.ActualArrivalTime IS NOT NULL
GROUP BY a.AirlineName
ORDER BY OnTimePercentage DESC;

-- Query 2: Average Ticket Price by Airline & Seat Class
SELECT
    A.airline_name,
    B.seat_class,
    ROUND(AVG(B.ticket_price), 2) AS avg_ticket_price
FROM Bookings B
JOIN Flights F ON B.flight_id = F.flight_id
JOIN Airlines A ON F.airline_id = A.airline_id
GROUP BY A.airline_name, B.seat_class
ORDER BY A.airline_name, avg_ticket_price DESC;

-- Query 3: Top Passenger Nationalities
SELECT
    nationality,
    COUNT(*) AS passenger_count
FROM Passengers
GROUP BY nationality
ORDER BY passenger_count DESC
LIMIT 10;

-- Query 4: Top 5 Busiest Routes
SELECT
    F.origin_airport,
    F.destination_airport,
    COUNT(B.booking_id) AS total_passengers
FROM Bookings B
JOIN Flights F ON B.flight_id = F.flight_id
GROUP BY F.origin_airport, F.destination_airport
ORDER BY total_passengers DESC
LIMIT 5;
