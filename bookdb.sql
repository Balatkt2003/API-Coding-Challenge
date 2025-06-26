-- 1️⃣ Create & select the database
CREATE DATABASE IF NOT EXISTS bookdb;
USE bookdb;

-- 2️⃣ Create the books table
CREATE TABLE IF NOT EXISTS books (
    isbn VARCHAR(20) PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    publication_year INT NOT NULL
);

-- 3️⃣ Create the users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(100) NOT NULL,
    role VARCHAR(20) NOT NULL
);

-- 4️⃣ Insert sample books (13-digit ISBNs)
INSERT INTO books (isbn, title, author, publication_year) VALUES
('9780000000001', 'The Odyssey',            'Homer',                  1996),
('9780000000002', '1984',                   'George Orwell',         1949),
('9780000000003', 'The Iliad',              'Homer',                  1998),
('9780000000004', 'Pride and Prejudice',    'Jane Austen',            1813),
('9780000000005', 'To Kill a Mockingbird',  'Harper Lee',             1960),
('9780000000006', 'Great Expectations',     'Charles Dickens',        1861),
('9780000000007', 'The Great Gatsby',       'F. Scott Fitzgerald',    1925),
('9780000000008', 'The Aeneid',             'Virgil',                -19),
('9780000000009', 'Animal Farm',            'George Orwell',         1945),
('9780000000010', 'The Alchemist',          'Paulo Coelho',           1988);

-- 5️⃣ Insert sample users (password = 'password123' hashed via BCrypt)
INSERT INTO users (username, password, role) VALUES
('arvind.kumar', '$2a$10$X1Rre6o/1hMRG.b1adkfeO3WY0yk0U2Xlft3QmXu4VkEj0NAsqKKW', 'ADMIN'),
('priya.sharma', '$2a$10$X1Rre6o/1hMRG.b1adkfeO3WY0yk0U2Xlft3QmXu4VkEj0NAsqKKW', 'USER'),
('rahul.verma',  '$2a$10$X1Rre6o/1hMRG.b1adkfeO3WY0yk0U2Xlft3QmXu4VkEj0NAsqKKW', 'USER'),
('meena.ravi',   '$2a$10$X1Rre6o/1hMRG.b1adkfeO3WY0yk0U2Xlft3QmXu4VkEj0NAsqKKW', 'ADMIN'),
('vijay.rao',    '$2a$10$X1Rre6o/1hMRG.b1adkfeO3WY0yk0U2Xlft3QmXu4VkEj0NAsqKKW', 'USER'),
('sneha.patel',  '$2a$10$X1Rre6o/1hMRG.b1adkfeO3WY0yk0U2Xlft3QmXu4VkEj0NAsqKKW', 'USER'),
('karthik.nair', '$2a$10$X1Rre6o/1hMRG.b1adkfeO3WY0yk0U2Xlft3QmXu4VkEj0NAsqKKW', 'USER'),
('anita.desai',  '$2a$10$X1Rre6o/1hMRG.b1adkfeO3WY0yk0U2Xlft3QmXu4VkEj0NAsqKKW', 'ADMIN'),
('manoj.pillai', '$2a$10$X1Rre6o/1hMRG.b1adkfeO3WY0yk0U2Xlft3QmXu4VkEj0NAsqKKW', 'USER'),
('rekha.iyer',   '$2a$10$X1Rre6o/1hMRG.b1adkfeO3WY0yk0U2Xlft3QmXu4VkEj0NAsqKKW', 'USER');
