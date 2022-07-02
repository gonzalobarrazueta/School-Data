
1- Devuelve la cantidad de clases que llevan cursos de manera presencial o virtual

SELECT ModalityName, COUNT(MD.ModalityId) Quantity
FROM Modality MD JOIN Class C ON MD.ModalityID = C.ModalityId
GROUP BY ModalityName;


2- Muestra si el Apoderado registrado en la base de datos es el Padre o Madre o Tutor del alumno
SELECT IF(P.LastName = S.LastName, "Padre", "Madre o Tutor") AS Apoderado, CONCAT(S.FirstName, " ", S.LastName) AS Hijo 
	FROM Student S
    JOIN Parent P ON S.ParentId = P.ParentId;


3- Muestra el porcentaje de alumnos aprobados en cada curso
SELECT SubjectName, FirstName, CONCAT(ROUND(( SELECT COUNT(Score) Quantity 
	FROM Student S
    JOIN Grades G ON S.GradesId = G.GradesId
    JOIN Subject SJ ON G.SubjectId = SJ.SubjectId
    JOIN Class C ON S.ClassId = C.ClassId
    WHERE Score>13
 / ( SELECT COUNT(Score) Quantity 
	FROM Student S
    JOIN Grades G ON S.GradesId = G.GradesId
    JOIN Subject SJ ON G.SubjectId = SJ.SubjectId
    JOIN Class C ON S.ClassId = C.ClassId ) * 100 ),2 ), '%'
     ) AS Aprobados
     FROM Subject SJ
     JOIN Grades G ON SJ.SubjectId = G.SubjectId
     JOIN Teacher T ON SJ.TeacherId = T.TeacherId
     GROUP BY SubjectName, FirstName
     ORDER BY Aprobados DESC;
     

4- Muestra el porcentaje de alumnos desaprobados en cada curso
SELECT SubjectName, FirstName, CONCAT(ROUND(( SELECT COUNT(Score) Quantity 
	FROM Student S
    JOIN Grades G ON S.GradesId = G.GradesId
    JOIN Subject SJ ON G.SubjectId = SJ.SubjectId
    JOIN Class C ON S.ClassId = C.ClassId
    WHERE Score<13
 / ( SELECT COUNT(Score) Quantity 
	FROM Student S
    JOIN Grades G ON S.GradesId = G.GradesId
    JOIN Subject SJ ON G.SubjectId = SJ.SubjectId
    JOIN Class C ON S.ClassId = C.ClassId ) * 100 ),2 ), '%'
     ) AS Desaprobados
     FROM Subject SJ
     JOIN Grades G ON SJ.SubjectId = G.SubjectId
     JOIN Teacher T ON SJ.TeacherId = T.TeacherId
     GROUP BY SubjectName, FirstName
     ORDER BY Desaprobados DESC;