DROP TABLE IF EXISTS groups;

CREATE TABLE groups (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL
);

ALTER TABLE tasks ADD COLUMN assigned_group_id INT;
ALTER TABLE tasks ADD COLUMN assigned_user_id INT;

ALTER TABLE tasks ADD FOREIGN KEY (assigned_group_id) REFERENCES groups(id);
ALTER TABLE tasks ADD FOREIGN KEY (assigned_user_id) REFERENCES users(id);