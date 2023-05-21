DROP TABLE IF EXISTS clients;

CREATE TABLE clients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(64) NOT NULL,
    last_name VARCHAR(64) NOT NULL,
    phone VARCHAR(16),
    email VARCHAR(64)
);

ALTER TABLE tasks ADD COLUMN client_id INT;
ALTER TABLE tasks ADD FOREIGN KEY (client_id) REFERENCES clients(id);