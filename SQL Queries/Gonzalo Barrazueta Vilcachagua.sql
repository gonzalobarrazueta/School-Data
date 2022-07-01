/* 1. Retorna una tabla con el promedio de notas de una clase determinada */
create procedure
    get_avgGrades_score_per_class(Class varchar(30), YearId int, LevelId int)
    begin
        select c.ClassName, avg(g.Score) AverageScore from Student s
            join class c on c.ClassId = s.ClassId
            join grades g on g.GradesId = s.GradesId
        where c.ClassName = Class and c.SchoolYearId = YearId and c.LevelId = LevelId
        group by c.ClassName;
    end;

call get_students_from_class('C', 2, 2); /* los parámetros quieren decir: 2do de Secundaria, sección 'C' */

/* 2. Retorna el promedio de notas por cada curso y por cada tipo de nota del curso */
select  SubjectName, gt.GradeTypeName, avg(g.Score) AVGScore from student s
    join grades g on g.GradesId = s.StudentId
    join gradetype gt on gt.GradeTypeId = g.GradeTypeId
    join subject sb on sb.SubjectId = g.SubjectId
    join class c on c.ClassId = s.ClassId
where c.ClassName = 'C' and c.SchoolYearId = 2 and c.LevelId = 2
group by gt.GradeTypeName, g.SubjectId;

/* 3. La función retorna el promedio más alto por curso */
create function get_bestScore_per_Teacher()
returns int
deterministic
begin
    declare bestGrade int;

    select max(avgGrade) into bestGrade
    from (select avg(Score) avgGrade from teacher t
        join subject s on s.TeacherId = t.TeacherId
        join grades g on g.SubjectId = s.SubjectId
    group by SubjectName, s.TeacherId) as avgScore_perCourse;

    return bestGrade;
end;

/* 4. Retorna el profesor que enseña el curso que tiene el mejor promedio de notas entre los estudiantes y el curso que enseña */
select FirstName, LastName, SubjectName from (
        select FirstName, LastName, SubjectName, avg(Score) avgGrade from teacher t
            join subject s on s.TeacherId = t.TeacherId
            join grades g on g.SubjectId = s.SubjectId
        group by SubjectName, s.TeacherId) as teacher_avgGrade
where floor(avgGrade) = floor(get_bestScore_per_Teacher());