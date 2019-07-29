--id AI PK
--coffee_name_id FK REF tbl_coffee_name
--coffee_type_id FK REF tbl_coffee_type
--Place name - Free text 
--Address - free text
--Rating - number from 1 to 10

CREATE TABLE tbl_coffee_orders (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    coffee_name_id INT,
    coffee_type_id INT,
    place VARCHAR(100),
    address VARCHAR(300),
    rating INT CHECK(rating <= 10),
    FOREIGN KEY(coffee_name_id) REFERENCES tbl_coffee_name(id) ON DELETE SET NULL,
    FOREIGN KEY(coffee_type_id) REFERENCES tbl_coffee_type(id) ON DELETE SET NULL)
ENGINE=INNODB;