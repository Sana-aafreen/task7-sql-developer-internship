Create database legacydb;
use legacydb;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone VARCHAR(20)
);

CREATE TABLE addresses (
    address_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    address VARCHAR(255)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    amount DECIMAL(10,2)
);
-- Insert sample users
INSERT INTO users (user_id, first_name, last_name, phone) VALUES
(1, 'John', 'Doe', '1234567890'),
(2, 'Jane', 'Smith', '0987654321');

-- Insert sample addresses
INSERT INTO addresses (user_id, address) VALUES
(1, '123 Main St'),
(2, '456 Oak Ave');

-- Insert sample orders
INSERT INTO orders (order_id, user_id, amount) VALUES
(101, 1, 500.00),
(102, 2, 1200.00);

-- Validate migration results

SELECT COUNT(*) AS total_users FROM users;
SELECT COUNT(*) AS total_addresses FROM addresses;
SELECT COUNT(*) AS total_orders FROM orders;

-- Spot check sample data
SELECT * FROM users;
SELECT * FROM addresses;
SELECT * FROM orders;
