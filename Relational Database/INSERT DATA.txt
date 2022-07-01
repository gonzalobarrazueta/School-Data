INSERT INTO Parent(FirstName, LastName, Email, Username,DNI)
	VALUES
("Luis", "Compare", "costacompa@gmail.com", "LuisCompa", 71234655),
("Manuel", "García", "mangar@gmail.com", "Manuelgar", 12345678),
("Miguel", "Sánchez", "sanchez46@gmail.com", "SánchesMig", 87654321),
("Nick", "Bolisa", "nickeal@hotmail.com", "NickBOl", 85764132),
("Esteban", "Prada", "lestebon@hotmail.com", "EstePra", 71532522),
("Lisa", "Sánchez", "luisanc@gmail.com", "Lisa", 23456789),
("Carlitos", "Silva", "carl@hotmail.com", "Carlos", 34525654),
("Natalie", "Obregón", "natl@gmail.com", "Natal", 99887645),
("Carla", "Nuñez", "carnu@gmail.com", "Carnu", 72994176),
("Frank", "Chumpitaz", "frankchu@gmail.com", "Frankchu", 79988761),
("Celeste", "Zavala", "celezav@gmail.com", "Celezav", 41489612),
("Joel", "Gonzales", "joegon@gmail.com", "Joegon", 09213023),
("Flavia", "Guevara", "flaviague@gmail.com", "Flaviague", 09432120),
("Nicol", "Fajardo", "nicolfaj@gmail.com", "Nicolfaj", 41231203),
("Hermán", "Sandoval", "hersa@gmail.com", "Hermánsito", 71532045),
("Luisito", "Ortiz", "luisisih@gmail.com", "LuisitoSIuuuu", 74350755),
("Michael", "Rock", "mijas@hotmail.com", "TheRock", 89753959),
("Jhonny", "Meep", "amberoye@gmail.com", "Jhooonnn", 12309856 ),
("Bradd", "Peet", "braaad@hotmail.com", "Bradeer", 76539861 ),
("Jhonny", "Pecador", "jhonnnn@hotmail.com", "Jhonas", 87609836 ),
("Andrés", "Carbajal", "carbajal@gmail.com", "vcarbjl", 77218903),
("Leonidas", "Abel", "ableleon@gmail.com", "ablLeon", 36178292),
("Manuel", "Guzman", "gmManuel@outlook.com", "guzmanManuel", 70293748),
("Julia", "Gutierrez", "djuliaa@outlook.com", "jul302", 62730421),
("Marisol", "Butrich", "butrichMar@outlook.com", "marBu", 70192834),
("Andrea", "Alameda", "alameAndrea@gmail.com", "dreaAndrea", 72560481),
("Teresa", "Salazar", "salazarTeresa@gmail.com", "salTeresa", 75843692),
("Samantha", "Bazalar", "bazalarSammy@gmail.com", "bazalarSammy", 75236418),
("Jared", "Ore", "oreJared@hotmail.com", "jaredOre", 78912354),
("Maricielo", "Salas", "maricieloSalas@gmail.com", "mariSalas", 75316498),
("Obed", "Blass", "obedBlass@hotmail.com", "obedblass",75486129),
("Allison", "Saavedra", "alliSaavedra@hotmail.com", "allisaavedra", 78546213),
("Axel", "Flores", "axelFlores@gmail.com", "axelFlo", 45887456);

INSERT INTO Picture(PictureURL)
VALUES
("www.cloud.com/profilephoto/BWIANYV71"),
("www.cloud.com/profilephoto/NAYV28910"),
("www.cloud.com/profilephoto/MI027UL1K"),
("www.cloud.com/profilephoto/MMIQO0231"),
("www.cloud.com/profilephoto/YN12099AQ"),
("www.cloud.com/profilephoto/U71L0A3MI"),
("www.cloud.com/profilephoto/OOP102L21"),
("www.cloud.com/profilephoto/QW2530MAL"),
("www.cloud.com/profilephoto/PQ2217MAN"),
("www.cloud.com/profilephoto/PQ2217MAK"),
("www.cloud.com/profilephoto/H58I0E3QI"),
("www.cloud.com/profilephoto/H58I0E3QI"),
("www.cloud.com/profilephoto/T44T0G3KI"),
("www.cloud.com/profilephoto/D21P0N3ZX"),
("www.cloud.com/profilephoto/WQ21GN3BV"),
("www.cloud.com/profilephoto/AQ21NN3IV"),
("www.cloud.com/profilephoto/UQ21ASNIX"),
("www.cloud.com/profilephoto/JK21WSC3C"),
("www.cloud.com/profilephoto/VX21FDCMP"),
("www.cloud.com/profilephoto/YR21ASCTY"),
("www.cloud.com/profilephoto/FF21UJCVC"),
("www.cloud.com/profilephoto/LT21ZC2DP"),
("www.cloud.com/profilephoto/BWIANV71Y"),
("www.cloud.com/profilephoto/CDFVT191E"),
("www.cloud.com/profilephoto/SQR1V297Z"),
("www.cloud.com/profilephoto/GFTR4K5NY"),
("www.cloud.com/profilephoto/KSU76SWO0"),
("www.cloud.com/profilephoto/XSKLQ47LZ"),
("www.cloud.com/profilephoto/AVRIQ20LD"),
("www.cloud.com/profilephoto/LMNQ0LZA4"),
("www.cloud.com/profilephoto/JHT64CAA4"),
("www.cloud.com/profilephoto/JH6FR3LP0"),
("www.cloud.com/profilephoto/ASQ4TUIO8");

INSERT INTO Level (LevelName)
	VALUES
	("PRIMARIA"),
	("SECUNDARIA");

INSERT INTO SchoolYear (Year)
VALUES
	(1),
    	(2),
    	(3),
    	(4),
    	(5),
    	(6);

INSERT INTO Modality (ModalityName)
VALUES
	("Presencial"),
    	("Virtual");	

INSERT INTO Teacher (FirstName, LastName, Email) 
	VALUES 
	("Cesar","Curi","cesarui@gmail.com"),
	("Manuel","Costa","frogoestudent@hotmail.com"),
	("Alfredo","Quispe","gaturedo2013@hotmail.com"),
	("Karen","Hermosa","kareloki@gmail.pe"),
	("Imanol","Ortiz","mellamanimanol@gmail.com"),
	("Jonatan","Mosqueira","cerroalto@gmail.com");

INSERT INTO GradeType(GradeTypeName)
VALUES
	("TF"),
    ("PC1"),
    ("PC2"),
    ("LAB"),
    ("TP");
    
INSERT INTO Subject (SubjectName, TeacherId)
	VALUES	
	("Matemáticas", 1),
	("Ciencias", 3),
	("Comunicación", 2),
	("Química", 2),
	("Física", 1),
	("Computación", 4),
	("Religión", 1),
	("Arte", 5),
	("Educación Física", 4);


INSERT INTO Schedule (StartTime, EndTime)
	VALUES
	("08:30:00","10:00:00"),
	("09:00:00","11:00:00");
    
INSERT INTO Grades (Score, SubjectId, GradeTypeId)
	VALUES
(16, 1, 1),
(14, 4, 3),
(18, 5, 2),
(12, 7, 4),
(06, 2, 1),
(20, 9, 1),
(20, 1, 1),
(15, 1, 3),
(12, 8, 2),
(17, 3, 5),
(08, 6, 3),
(13, 6, 2),
(17, 3, 4),
(20, 9, 1),
(11, 9, 1),
(17, 6, 4),
(13, 5, 5),
(20, 7, 3),
(19, 5, 3),
(10, 2, 5),
(18, 5, 1),
(16, 3, 5),
(17, 2, 1),
(15, 4, 2),
(20, 2, 5),
(08, 8, 3),
(12, 7, 1),
(18, 5, 5),
(13, 1, 4),
(05, 9, 5),
(13, 2, 3),
(20, 8, 1),
(16, 2, 2);

INSERT INTO Class(ClassName, SchoolYearId, LevelId, ModalityId, ScheduleId)
VALUES
("A", 1, 1, 2, 2),
    ("A", 2, 1, 2, 1),
    ("A", 3, 1, 2, 2),
    ("A", 4, 1, 2, 1),
    ("A", 5, 1, 2, 2),
    ("A", 6, 1, 2, 2),
    ("A", 1, 2, 1, 2),
    ("A", 2, 2, 1, 1),
    ("A", 3, 2, 1, 1),
    ("A", 4, 2, 1, 2),
    ("A", 5, 2, 1, 2),
    ("B", 1, 1, 2,2),
    ("B", 2, 1, 2,2),
    ("B", 3, 1, 2,2),
    ("B", 4, 1, 2,2),
    ("B", 5, 1, 2,2),
    ("B", 6, 1, 2,2),
    ("B", 1, 2, 1,1),
    ("B", 2, 2, 1,2),
    ("B", 3, 2, 1,1),
    ("B", 4, 2, 1,2),
    ("B", 5, 2, 1,1),
    ("C", 1, 1, 2, 1),
    ("C", 2, 1, 2, 2),
    ("C", 3, 1, 2, 2),
    ("C", 4, 1, 2, 2),
    ("C", 5, 1, 2, 1),
    ("C", 6, 1, 2, 2),
    ("C", 1, 2, 1, 1),
    ("C", 2, 2, 1, 1),
    ("C", 3, 2, 1, 2),
    ("C", 4, 2, 1, 2),
    ("C", 5, 2, 1, 1);
    
INSERT INTO Student(ParentId, DNI, PictureId, FirstName, LastName, ClassId, GradesId)
	VALUES
(1, 87651341, 1, "Luis", "Compare", 4, 1),
(2, 12345876, 2, "Martha", "García", 4, 2),
(3, 70982501, 3, "Nancy", "Contreras", 4, 3),
(4, 71532873, 4, "Andrea", "Contreras", 4, 4),
(5, 77777821, 5, "Alfredo", "Bolisa", 4, 5),
(6, 98267612, 6, "Selena", "Prada", 4, 6),
(7, 77768231, 7, "Michael", "Cruzado", 4, 7),
(8, 33473214, 8, "Bruno", "Silva", 4, 8),
(9, 97467823, 9, "Bruce", "Quispe", 4, 9),
(10, 45689002, 10, "Estrella", "Quispe", 4, 10),
(11, 98798798, 11, "Lisas", "Celis", 4, 11),
(12, 12726898, 12, "Ban", "Aponte", 15, 12),
(13, 97017313, 13, "Nathy", "Asin", 15, 13),
(14, 89764933, 14, "Damian", "Barrantes",15 , 14),
(15, 94582834, 15, "Bruno", "Valqui", 15, 15),
(16, 89348923, 16, "Paulo", "Obregón", 15, 16),
(17, 89009382, 17, "Aaron", "Fajardo", 15, 17),
(18, 93710422, 18, "Shirley", "Rodriguez", 15, 18),
(19, 73526177, 19, "Alberto", "Martinez", 15 , 19),
(20, 71243509, 20, "Alfonso", "Batar", 15, 20),
(21, 72903615, 21, "Scott", "Pilgrim", 15, 21),
(22, 71425308, 22, "Diego", "Almar", 15, 22),
(23, 71263740, 23, "Carlos", "Zambrano", 30, 23),
(24, 52417829, 24, "Gonzalo", "Ordoñez", 30, 24),
(25, 28012467, 25, "Carla", "Vargas", 30, 25),
(26, 73516729, 26, "Ariel", "Velis", 30, 26),
(27, 76942901, 27, "Toni", "Chanca", 30, 27),
(28, 72820813, 28, "Renzo", "Quispe", 30, 28),
(29, 72720714, 29, "Fiorella", "Ramirez", 30 , 29),
(30, 72620615, 30, "Aaron", "Palomino", 30, 30),
(31, 72520516, 31, "Wily", "Ortiz", 30, 31),
(32, 72420417, 32, "Mafer", "Quispe", 30, 32),
(33, 72320318, 33, "Violeta", "Ortiz", 30, 33);