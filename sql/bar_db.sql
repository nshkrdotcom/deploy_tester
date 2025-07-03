-- Database schema for bar.com
CREATE DATABASE IF NOT EXISTS bar_db;
USE bar_db;

CREATE TABLE IF NOT EXISTS hello_world (
    id INT PRIMARY KEY AUTO_INCREMENT,
    message VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO hello_world (message) VALUES ('Hello World from Bar.com!');