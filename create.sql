CREATE DATABASE IF NOT EXISTS TWDemo DEFAULT CHARSET utf8 COLLATE utf8_general_ci;

use TWDemo;

CREATE TABLE class
(
    class_id int not null auto_increment,
    class_name varchar(20) not null,
    college varchar(20) not null,
    department varchar(20) not null,
    PRIMARY KEY (class_id)
)ENGINE=InnoDB;

CREATE TABLE student
(
    student_id int not null auto_increment,
    name varchar(20) not null,
    sex varchar(20) not null,
    class_id int not null,
    PRIMARY KEY (student_id),
    FOREIGN KEY (class_id) REFERENCES class(class_id) on delete cascade on update cascade
)ENGINE=InnoDB;

CREATE TABLE course
(
    course_id int not null auto_increment,
    course_name varchar(20) not null,
    start_time varchar(20) not null,
    end_time varchar(20) not null,
    day varchar(20) not null,
    PRIMARY KEY (course_id)
)ENGINE=InnoDB;

CREATE TABLE schedule
(
    student_id int not null,
    course_id int not null ,
    PRIMARY KEY (student_id,course_id),
    FOREIGN KEY (student_id)  REFERENCES student(student_id) on delete cascade on update cascade,
    FOREIGN KEY (course_id)  REFERENCES course(course_id) on delete cascade on update cascade
)ENGINE=InnoDB;

create view schedule_detail
    as select st.*,GROUP_CONCAT(c.course_name SEPARATOR ' | ') AS schedule
    from student as st
        left join schedule as s
            on s.student_id=st.student_id
                left join course as c
                    on s.course_id=c.course_id
                        GROUP BY st.student_id
