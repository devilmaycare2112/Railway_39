-- Creating database testing_system_assignment_1
CREATE DATABASE testing_system_assignment_1;

-- using database testing_system_assignment_1
USE testing_system_assignment_1;

-- creating table department
CREATE TABLE department(
department_id INT,
department_name VARCHAR(20)
);

-- creating table position
CREATE TABLE position (
position_id INT,
position_name VARCHAR(20)
);

-- creating table account
CREATE TABLE `account` (
account_id INT,
email VARCHAR(30),
user_name VARCHAR(20),
full_name VARCHAR(30),
department_id INT,
position_id INT,
create_date DATE
) ;

-- creating table group
CREATE TABLE `group` (
group_id INT,
group_name VARCHAR(25),
creator_id INT,
create_date DATE 
);

-- creating table group_account
CREATE TABLE group_account(
group_id INT,
account_id INT,
join_date DATE
);

-- creating table type_question
CREATE TABLE type_question(
type_id INT,
type_name VARCHAR(20)
);

-- creating table category_question
CREATE TABLE category_question(
category_id INT,
category_name VARCHAR(20)
);

-- creating table quetion
CREATE TABLE question(
question_id INT,
content VARCHAR(50),
category_id INT,
type_id INT,
creator_id INT,
create_date DATE
);

-- creating table answer
CREATE TABLE answer(
answer_id INT,
content VARCHAR(50),
question_id INT,
is_correct BOOLEAN
);

-- creating table examexam
CREATE TABLE exam(
exam_id INT,
`code` VARCHAR(15),
title VARCHAR(25),
category_id INT,
duration TIMESTAMP,
creator_id INT,
create_date DATE
);

-- creating exam_question
CREATE TABLE exam_question(
exam_id INT,
question_id INT
);