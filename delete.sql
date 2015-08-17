delete a from student a inner join (select * from student limit 30,10) b on a.student_id=b.student_id;
