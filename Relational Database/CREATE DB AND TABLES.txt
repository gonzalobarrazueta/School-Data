CREATE DATABASE SchoolsData;
USE SchoolsData;

CREATE TABLE Parent(
  ParentId int not null PRIMARY KEY AUTO_INCREMENT,
  FirstName varchar(30) not null,
  LastName varchar(30) not null,
  Email varchar(30) not null,
  Username varchar(30) not null,
  DNI int not null
);

CREATE TABLE Picture(
   PictureId int not null PRIMARY KEY AUTO_INCREMENT,
   PictureURL varchar(100) not null
);

CREATE TABLE Level(
   LevelId int not null PRIMARY KEY AUTO_INCREMENT,
   LevelName varchar(10) not null
);

CREATE TABLE SchoolYear(
   SchoolYearId int not null PRIMARY KEY AUTO_INCREMENT,
   Year int not null
);

CREATE TABLE Modality(
   ModalityId int not null PRIMARY KEY AUTO_INCREMENT,
   ModalityName varchar(30) not null
);

CREATE TABLE Teacher(
   TeacherId int not null PRIMARY KEY AUTO_INCREMENT,
   FirstName varchar(30) not null,
   LastName varchar(30) not null,
   Email varchar(30) not null
);

CREATE TABLE GradeType(
   GradeTypeId int not null PRIMARY KEY AUTO_INCREMENT,
   GradeTypeName varchar(4) not null
);

CREATE TABLE Subject(
   SubjectId int not null PRIMARY KEY AUTO_INCREMENT,
   SubjectName varchar(30) not null,
   TeacherId int not null,
   FOREIGN KEY (TeacherId) REFERENCES Teacher(TeacherId)
);

CREATE TABLE Schedule(
  ScheduleId int not null PRIMARY KEY AUTO_INCREMENT,
   StartTime time not null,
   EndTime time not null
);

CREATE TABLE Grades(
   GradesId int not null PRIMARY KEY AUTO_INCREMENT,
   Score int not null,
   SubjectId int not null,
   FOREIGN KEY (SubjectId) REFERENCES Subject(SubjectId),
   GradeTypeId int not null,
   FOREIGN KEY (GradeTypeId) REFERENCES GradeType(GradeTypeId)
);

CREATE TABLE Class(
   ClassId int not null PRIMARY KEY AUTO_INCREMENT,
   ClassName varchar(30) not null,
   SchoolYearId int not null,
   FOREIGN KEY (SchoolYearId) REFERENCES SchoolYear(SchoolYearId),
   LevelId int,
   FOREIGN KEY (LevelId) REFERENCES Level(LevelId),
   ModalityId int,
   FOREIGN KEY (ModalityId) REFERENCES Modality(ModalityId),
   ScheduleId int,
   FOREIGN KEY (ScheduleId) REFERENCES Schedule(ScheduleId)
);

CREATE TABLE Student(
  StudentId int not null PRIMARY KEY AUTO_INCREMENT,
   ParentId int not null,
   FOREIGN KEY (ParentId) REFERENCES Parent(ParentId),
   DNI int not null,
   PictureId int not null,
   FOREIGN KEY (PictureId) REFERENCES Picture(PictureId),
   FirstName varchar(30) not null,
   LastName varchar(30) not null,
   ClassId int not null,
   FOREIGN KEY (ClassId) REFERENCES Class(ClassId),
  GradesId int not null,
  FOREIGN KEY (GradesId) REFERENCES Grades(GradesId)
);