-- Airlines Table
CREATE TABLE Airlines (
    AirlineID INT PRIMARY KEY,
    AirlineName VARCHAR(100),
    Country VARCHAR(50)
);

-- Airports Table
CREATE TABLE Airports (
    AirportID INT PRIMARY KEY,
    AirportName VARCHAR(100),
    City VARCHAR(50),
    Country VARCHAR(50),
    IATA_Code CHAR(3)
);

-- Flights Table
CREATE TABLE Flights (
    FlightID INT PRIMARY KEY,
    AirlineID INT,
    FlightNumber VARCHAR(10),
    DepartureAirportID INT,
    ArrivalAirportID INT,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    Duration INT, -- Duration in minutes
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID),
    FOREIGN KEY (DepartureAirportID) REFERENCES Airports(AirportID),
    FOREIGN KEY (ArrivalAirportID) REFERENCES Airports(AirportID)
);

-- Passengers Table
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Nationality VARCHAR(50)
);

-- Bookings Table
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY,
    PassengerID INT,
    FlightID INT,
    BookingDate DATE,
    SeatClass VARCHAR(20), -- e.g., Economy, Business, First
    Price DECIMAL(10, 2),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID)
);

ALTER TABLE Flights
UPDATE Flights SET ActualArrivalTime = '2025-06-01 13:05:00' WHERE FlightID = 101;  -- 5 min late
UPDATE Flights SET ActualArrivalTime = '2025-06-01 21:50:00' WHERE FlightID = 102;  -- 10 min early
UPDATE Flights SET ActualArrivalTime = '2025-06-02 10:45:00' WHERE FlightID = 103;  -- on time
UPDATE Flights SET ActualArrivalTime = '2025-06-02 10:15:00' WHERE FlightID = 104;  -- 15 min late
UPDATE Flights SET ActualArrivalTime = '2025-06-03 18:20:00' WHERE FlightID = 105;  -- 10 min early
UPDATE Flights SET ActualArrivalTime = '2025-06-04 05:10:00' WHERE FlightID = 106;  -- 10 min late
UPDATE Flights SET ActualArrivalTime = '2025-06-04 14:25:00' WHERE FlightID = 107;  -- 5 min late
UPDATE Flights SET ActualArrivalTime = '2025-06-04 15:40:00' WHERE FlightID = 108;  -- 10 min late
UPDATE Flights SET ActualArrivalTime = '2025-06-05 18:55:00' WHERE FlightID = 109;  -- 5 min early
UPDATE Flights SET ActualArrivalTime = '2025-06-05 12:30:00' WHERE FlightID = 110;  -- 30 min late (not on time)


