DROP TABLE IF EXISTS notes;

CREATE TABLE notes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    body TEXT NOT NULL,
    task_id INT NOT NULL,
    user_id INT NOT NULL,
    created_at DATETIME,
    updated_at DATETIME,
    FOREIGN KEY (task_id) REFERENCES tasks(id) ON DELETE CASCADE
)