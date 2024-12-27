-- Create user dan beri privileges
CREATE USER IF NOT EXISTS 'datauser'@'%' IDENTIFIED BY 'datapassword';
GRANT ALL PRIVILEGES ON mydatabase.* TO 'datauser'@'%';
FLUSH PRIVILEGES;

-- Create database and table
CREATE DATABASE IF NOT EXISTS classdata;
USE classdata;

CREATE TABLE IF NOT EXISTS stud (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    height_details VARCHAR(100) NOT NULL,
    age VARCHAR(20) NOT NULL UNIQUE
);

-- Insert sample data
INSERT INTO stud (name, birth_details, age) VALUES
('Andika Febrianto', '171cm', '18'),
('Kekila Akmal Nifcky', '168cm', '18');