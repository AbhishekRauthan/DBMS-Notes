-- Q) Given are 2 table Departments and Employees with given properties:
-- Departments : Department No., Location and Name.
-- Employees : Employee No., Name, Designation, Salary
-- Relation between two: Departments (one) --> Employees(many)

-- @block
-- Creating Departments Table
CREATE TABLE Departments (
  DNo INT NOT NULL,
  DLocation VARCHAR(30) NOT NULL,
  DName VARCHAR(30) NOT NULL,
  PRIMARY KEY(DNo)
);
-- @block
-- Creating Employees Table 
CREATE TABLE EMPLOYEES (
  DNo INT NOT NULL,
  ENo INT NOT NULL,
  Name VARCHAR(30) NOT NULL,
  Designation VARCHAR(40) NOT NULL,
  Salary BIGINT NOT NULL,
  PRIMARY KEY (ENo),
  FOREIGN KEY (DNo) references Departments (Dno)
);
-- @block
-- Inserting values into Departments Table
INSERT INTO departments (dno, dlocation, dname)
VALUES (247, 'Pune', 'Engineering'),
  (225, 'Mumbai', 'Sales'),
  (223, 'Mumbai', 'Consulting'),
  (249, 'Pune', 'Finance');

-- @block
-- Inserting values into Employees Table
-- First for Engineering Department
INSERT INTO employees (dno, eno, name, designation, salary)
VALUES 
  (247,104,'Abhishek Rauthan','Cloud Developer',90000),
  (247, 127, 'Jatin Sharma', 'Backend Developer', 75000),
  (247, 116, 'Yash Patil', 'Systems Engineer', 80000),
  (247, 143, 'Aryan Gupta', 'IOS Developer', 96000);

-- @block
-- Inserting values into Employees Table
-- For Consulting Department
INSERT INTO employees (dno, eno, name, designation, salary)
VALUES 
  (223,	102, 'Anil Rana', 'Intern', 25000),
  (223,	125, 'Mohan Sharma', 'Assistant Manager', 100000),
  (223,	142, 'Raj Mishra', 'Product Manager', 120000),
  (223,	119, 'Akash Singh', 'Team Lead', 80000);