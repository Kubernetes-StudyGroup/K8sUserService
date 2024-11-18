CREATE DATABASE IF NOT EXISTS user_service;
USE user_service;

CREATE TABLE IF NOT EXISTS users (
    user_id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(50),
    password_hash VARCHAR(255) NOT NULL
);

INSERT INTO users (user_id, name, email, phone, password_hash)
VALUES
    ('user001', 'Ruby Wu', 'rubywu@example.com', '0987654321', '$2b$12$92IXUNpkjy0I0PZXuHTfEuOJ8HRd62OhXf6sqP1t3xqxjUnox7VFG'),
    ('user002', 'Raymond Hung', 'raymondhung@example.com', '0987654322', '$2b$12$eXn6Q3bG8Dt6zGZlOze2LejqAIvHHB8Tx6Wy5UOlM7CjjeQRoC9Q6'),
    ('user003', 'Jenny Hsiao', 'jennyhsiao@example.com', '0987654323', '$2b$12$9QvHi8VuD9nTja.AXQhIe.kGoVd0wh/AjTtD07D11OVHp7HLp1Wmi');
