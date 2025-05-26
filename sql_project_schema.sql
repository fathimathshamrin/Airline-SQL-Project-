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
ADD COLUMN ActualArrivalTime DATETIME;
