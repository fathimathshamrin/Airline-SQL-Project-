
-- Insert Airlines
INSERT INTO Airlines VALUES
(1, 'Emirates', 'UAE'),
(2, 'OtherAir', 'USA');

-- Insert Airports
INSERT INTO Airports VALUES
('DXB', 'Dubai International Airport', 'Dubai', 'UAE'),
('LHR', 'Heathrow Airport', 'London', 'UK'),
('JFK', 'John F. Kennedy International Airport', 'New York', 'USA'),
('DEL', 'Indira Gandhi International Airport', 'Delhi', 'India'),
('CDG', 'Charles de Gaulle Airport', 'Paris', 'France'),
('SYD', 'Sydney Airport', 'Sydney', 'Australia');

-- Insert Flights
INSERT INTO Flights VALUES
(101, 'EK202', 'DXB', 'LHR', '2025-05-01 08:00:00', '2025-05-01 12:00:00', 'A380', 'On Time', 5500, 1),
(102, 'EK203', 'DXB', 'JFK', '2025-05-02 09:00:00', '2025-05-02 15:00:00', 'B777', 'Delayed', 11000, 1),
(103, 'EK204', 'DXB', 'DEL', '2025-05-03 06:00:00', '2025-05-03 09:00:00', 'A320', 'On Time', 2200, 1),
(104, 'OA101', 'DXB', 'CDG', '2025-05-04 07:00:00', '2025-05-04 11:00:00', 'A330', 'Cancelled', 5200, 2),
(105, 'OA102', 'DXB', 'SYD', '2025-05-05 10:00:00', '2025-05-05 20:00:00', 'B787', 'On Time', 12000, 2);

-- Insert Passengers
INSERT INTO Passengers VALUES
(1, 'Ahmed', 'Ali', '1985-03-10', 'Male', 'UAE'),
(2, 'Priya', 'Singh', '1990-07-15', 'Female', 'India'),
(3, 'John', 'Smith', '1980-11-22', 'Male', 'UK'),
(4, 'Sara', 'Johnson', '1995-05-30', 'Female', 'USA'),
(5, 'Faisal', 'Khan', '1987-02-18', 'Male', 'Saudi Arabia');

-- Insert Bookings
INSERT INTO Bookings VALUES
(201, 1, 101, '2025-04-25', 'Economy', 650.00),
(202, 2, 102, '2025-04-26', 'Business', 1200.50),
(203, 3, 103, '2025-04-27', 'Economy', 600.00),
(204, 4, 104, '2025-04-28', 'Business', 1100.75),
(205, 5, 105, '2025-04-29', 'Economy', 650.00);
