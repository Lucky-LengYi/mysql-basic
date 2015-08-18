select * from student limit 19,11;

select class.class_name,count(*) as 'sum' from student,class where student.class_id = class.class_id group by student.class_id;

select class.class_name,student.sex,count(*) as 'sum' from student,class where student.class_id = class.class_id group by student.class_id,student.sex;

select * from schedule_detail;
