/*1. Create Player Table with id, name, and age*/
CREATE TABLE Player (
    id INT NOT NULL,
    name VARCHAR(255) UNIQUE,
    age INT,
    PRIMARY KEY (id)
);

/*2. Create Manager Table with id, name, and salary. id and name together must be unique*/
CREATE TABLE Manager_Salary (
    id INT NOT NULL,
    name VARCHAR(255) NOT NULL,
    salary DECIMAL(10, 2),
    PRIMARY KEY (id),
    CONSTRAINT unique_id_name2 UNIQUE (id, name)
);

/*3. Create Manager Table with id, name, and age. id must be NOT NULL and UNIQUE (Primary Key)*/
CREATE TABLE Manager_Age (
    id INT NOT NULL ,
    name VARCHAR(255),
    age INT,
    PRIMARY KEY (id)
);
