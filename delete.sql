delete a from student a inner join (select * from student limit 29,11) b on a.student_id=b.student_id;
