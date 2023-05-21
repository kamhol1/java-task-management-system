DROP TABLE IF EXISTS categories;

CREATE TABLE categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(64) NOT NULL
);

ALTER TABLE tasks ADD COLUMN category_id INT;
ALTER TABLE tasks ADD FOREIGN KEY (category_id) REFERENCES categories(id);