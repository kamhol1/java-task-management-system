DROP TABLE IF EXISTS tasks;

CREATE TABLE tasks (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(64) NOT NULL,
    body TEXT,
    target_time DATETIME,
    created_at DATETIME,
    updated_at DATETIME
)