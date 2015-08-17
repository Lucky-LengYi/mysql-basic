DELIMITER //
CREATE PROCEDURE insert_class()
    begin
    declare a int;
    declare b int;
    set a=1201;
    set b=1;
    while b<10 do
        insert into class(class_name,college,department) values(a,"信息工程学院","通讯工程");
        set a=a+1;
        set b=b+1;
    end while;
    end;
CREATE PROCEDURE insert_student()
begin
    declare a int;
    declare b int;
    declare c int;
    set a=1;
    set b=3;
    set c=4;
    while a<51 do
        IF a < 30 THEN
        insert into student(name,sex,class_id) values(concat(b,"班小风",a),"男",b);
        insert into student(name,sex,class_id) values(concat(c,"班小风",a),"男",c);
        ELSE
        insert into student(name,sex,class_id) values(concat(b,"班小兰",a),"女",b);
        insert into student(name,sex,class_id) values(concat(c,"班小兰",a),"女",c);
        END IF;
        set a=a+1;
    end while;
end;
CREATE PROCEDURE insert_course()
begin
    insert into course(course_name,start_time,end_time,day) values('音乐','15:00','18:00','周一');
    insert into course(course_name,start_time,end_time,day) values('礼仪','15:00','18:00','周二');
    insert into course(course_name,start_time,end_time,day) values('写作','15:00','18:00','周三');
    insert into course(course_name,start_time,end_time,day) values('绘画','15:00','18:00','周四');
    insert into course(course_name,start_time,end_time,day) values('食品','15:00','18:00','周五');
    insert into course(course_name,start_time,end_time,day) values('营销','15:00','18:00','周六');
    insert into course(course_name,start_time,end_time,day) values('管理','15:00','18:00','周一');
    insert into course(course_name,start_time,end_time,day) values('电脑','15:00','18:00','周二');
    insert into course(course_name,start_time,end_time,day) values('历史','15:00','18:00','周三');
    insert into course(course_name,start_time,end_time,day) values('经济','15:00','18:00','周四');
end;
CREATE PROCEDURE insert_schedule()
begin
declare a int;
declare b int;
set a=1;
set b=1;
while a<101 do
    insert into schedule(student_id,course_id) values(a,b);
    insert into schedule(student_id,course_id) values(a,b+1);
    insert into schedule(student_id,course_id) values(a,b+2);
    set a=a+1;
    set b=b+1;
    while b=7 do
        set b=1;
    end while;
end while;
end;
//
DELIMITER ;
call insert_class();
call insert_student();
call insert_course();
call insert_schedule();
DROP PROCEDURE insert_class;
DROP PROCEDURE insert_student;
DROP PROCEDURE insert_course;
DROP PROCEDURE insert_schedule;
