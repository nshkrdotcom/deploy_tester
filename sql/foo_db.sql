-- Database schema for foo.com
CREATE DATABASE IF NOT EXISTS foo_db;
USE foo_db;

CREATE TABLE IF NOT EXISTS hello_world (
    id INT PRIMARY KEY AUTO_INCREMENT,
    message VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO hello_world (message) VALUES ('Hello World from Foo.com!');