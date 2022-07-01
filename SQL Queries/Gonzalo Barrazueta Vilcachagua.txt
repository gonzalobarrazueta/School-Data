delimiter //
create procedure
    get_avgGrades_score_per_class(Class varchar(30), YearId int, LevelId int)
    begin
        select c.ClassName, avg(g.Score) AverageScore from Student s
            join class c on c.ClassId = s.ClassId
            join grades g on g.GradesId = s.GradesId
        where c.ClassName = Class and c.SchoolYearId = YearId and c.LevelId = LevelId
        group by c.ClassName;
    end
//
call get_students_from_class('C', 2, 2);

/* te devuelve el avgScore por cada curso y por cada tipo de nota */
select  SubjectName, gt.GradeTypeName, avg(g.Score) AVGScore from student s
    join grades g on g.GradesId = s.StudentId
    join gradetype gt on gt.GradeTypeId = g.GradeTypeId
    join subject sb on sb.SubjectId = g.SubjectId
    join class c on c.ClassId = s.ClassId
where c.ClassName = 'C' and c.SchoolYearId = 2 and c.LevelId = 2
group by gt.GradeTypeName, g.SubjectId;

drop function get_bestScore_per_Teacher;

/* Obtener el profesor que enseña el curso que tiene el mejor promedio de notas en todos los grados
   esto nos ayudará a guiarnos de su forma de enseñanaza */
create function get_bestScore_per_Teacher()
returns int
deterministic
begin
    declare bestGrade int;

    select max(avgGrade) into  bestGrade
    from (select avg(Score) avgGrade from teacher t
        join subject s on s.TeacherId = t.TeacherId
        join grades g on g.SubjectId = s.SubjectId
    group by SubjectName, s.TeacherId) as avgScore_perCourse;

    return bestGrade;
end;

select FirstName, LastName, SubjectName from (
        select FirstName, LastName, SubjectName, avg(Score) avgGrade from teacher t
            join subject s on s.TeacherId = t.TeacherId
            join grades g on g.SubjectId = s.SubjectId
        group by SubjectName, s.TeacherId) as teacher_avgGrade
where floor(avgGrade) = floor(get_bestScore_per_Teacher());