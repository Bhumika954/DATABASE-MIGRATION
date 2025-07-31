-- Creating the Employees table with a primary key on EmployeeID
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,              -- Unique ID for each employee
    Name VARCHAR(100),                       -- Full name of the employee
    Department VARCHAR(50)                   -- Department the employee belongs to
);

-- Creating the Sales table with a foreign key linking to Employees
CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,                  -- Unique ID for each sale record
    EmployeeID INT REFERENCES Employees(EmployeeID),  -- Refers to employee who made the sale
    SaleAmount DECIMAL(10,2),                -- Sale amount in proper decimal format
    SaleDate DATE                            -- Date the sale was made
);

-- Importing employee data from a CSV file
COPY Employees(EmployeeID, Name, Department)
FROM 'C:/full/path/to/employees_fixed.csv'  -- Path to the cleaned employee data file
WITH (
    FORMAT csv,                              -- Specifies the file format
    HEADER true,                             -- Indicates the first row contains column headers
    DELIMITER ','                            -- Data is comma-separated
);

-- Importing sales data from another CSV file
COPY Sales(SaleID, EmployeeID, SaleAmount, SaleDate)
FROM 'C:/full/path/to/sales_fixed.csv'      -- Path to the cleaned sales data file
WITH (
    FORMAT csv,                              -- File format is CSV
    HEADER true,                             -- First row contains headers
    DELIMITER ','                            -- Values are separated by commas
);

-- Displaying all data from Employees table
SELECT * FROM Employees;                     -- Verifying successful import of employee records

-- Displaying all data from Sales table
SELECT * FROM Sales;                         -- Verifying sales data and EmployeeID mapping
