-- Create database
CREATE DATABASE IF NOT EXISTS employee_task_db;
USE employee_task_db;

-- Drop existing tables (optional during resets)
DROP TABLE IF EXISTS Tasks;
DROP TABLE IF EXISTS Employees;

-- Create Employees table
CREATE TABLE Employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    role VARCHAR(100) NOT NULL,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Create Tasks table
CREATE TABLE Tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'todo',
    employeeId INT NOT NULL,
    createdAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    CONSTRAINT fk_employee
        FOREIGN KEY (employeeId) REFERENCES Employees(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Sample Data (Optional)
INSERT INTO Employees (name, email, role) VALUES
('Ayush Gupta', 'ayush@example.com', 'Developer'),
('Reenu', 'reenu@example.com', 'Project Manager'),
('John Doe', 'john@example.com', 'Designer');

INSERT INTO Tasks (title, description, status, employeeId) VALUES
('Create Login API', 'Develop authentication API in Node.js', 'todo', 1),
('Design Dashboard', 'UI/UX design for dashboard', 'doing', 3),
('Team Meeting', 'Weekly sync with project team', 'done', 2);
