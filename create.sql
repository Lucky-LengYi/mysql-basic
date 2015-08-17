CREATE DATABASE IF NOT EXISTS TWDemo DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

use TWDemo;

CREATE TABLE student
(
    id int(10) auto_increment not null primary key,
    student_id int(20) not null,
    name varchar(20) not null,
    sex varchar(20) not null,
    class_name varchar(20) not null
);

CREATE TABLE class
(
    id int(10) auto_increment not null primary key,
    class_id int(20) not null,
    class_name varchar(20) not null,
    college varchar(20) not null,
    department varchar(20) not null
);

CREATE TABLE course
(
    id int(10) auto_increment not null primary key,
    course_id int(20) not null,
    course_name varchar(20) not null,
    start_time varchar(20) not null,
    end_time varchar(20) not null,
    day varchar(20) not null
);

CREATE TABLE schedule
(
    student_id int(20) not null,
    course_id int(20) not null
);
