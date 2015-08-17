CREATE DATABASE IF NOT EXISTS TWDemo DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

use TWDemo;

CREATE TABLE class
(
    class_id int not null,
    class_name varchar(20) not null,
    college varchar(20) not null,
    department varchar(20) not null,
    PRIMARY KEY (class_id)
);

CREATE TABLE student
(
    student_id int not null,
    name varchar(20) not null,
    sex varchar(20) not null,
    class_id int not null,
    PRIMARY KEY (student_id),
    FOREIGN KEY (class_id) REFERENCES class(class_id)
);

CREATE TABLE course
(
    course_id int not null,
    course_name varchar(20) not null,
    start_time varchar(20) not null,
    end_time varchar(20) not null,
    day varchar(20) not null,
    PRIMARY KEY (course_id)
);

CREATE TABLE schedule
(
    student_id int not null,
    course_id int not null,
    PRIMARY KEY (course_id),
    FOREIGN KEY (student_id)  REFERENCES student(student_id),
    FOREIGN KEY (course_id)  REFERENCES course(course_id)
);
