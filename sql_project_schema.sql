-- Airlines Table
CREATE TABLE Airlines (
    airline_id INT PRIMARY KEY,
    airline_name VARCHAR(100),
    country VARCHAR(100)
);

-- Airports Table
CREATE TABLE Airports (
    airport_code VARCHAR(10) PRIMARY KEY,
    airport_name VARCHAR(100),
    city VARCHAR(100),
    country VARCHAR(100)
);

-- Flights Table
CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(10),
    origin_airport VARCHAR(10),
    destination_airport VARCHAR(10),
    departure_time DATETIME,
    arrival_time DATETIME,
    aircraft_type VARCHAR(50),
    status VARCHAR(20),
    distance_km INT,
    airline_id INT,
    FOREIGN KEY (origin_airport) REFERENCES Airports(airport_code),
    FOREIGN KEY (destination_airport) REFERENCES Airports(airport_code),
    FOREIGN KEY (airline_id) REFERENCES Airlines(airline_id)
);

-- Passengers Table
CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    nationality VARCHAR(50)
);

-- Bookings Table
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    booking_date DATE,
    seat_class VARCHAR(20),
    ticket_price DECIMAL(10, 2),
    FOREIGN KEY (passenger_id) REFERENCES Passengers(passenger_id),
    FOREIGN KEY (flight_id) REFERENCES Flights(flight_id)
);
