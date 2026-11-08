-- examples/basic-queries.sql
-- Run against PostgreSQL or MySQL

-- Create a sample table
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert data
INSERT INTO users (name, email) VALUES
    ('Alice', 'alice@example.com'),
    ('Bob', 'bob@example.com');

-- Query all users
SELECT * FROM users;

-- Filter
SELECT name, email FROM users WHERE name = 'Alice';

-- Update
UPDATE users SET email = 'alice.smith@example.com' WHERE name = 'Alice';

-- Delete
DELETE FROM users WHERE name = 'Bob';

-- Join example (with orders table)
-- SELECT u.name, o.total
-- FROM users u
-- JOIN orders o ON u.id = o.user_id;
