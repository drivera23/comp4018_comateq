
SELECT CONCAT(Estudiante.NombreP, ' ',Estudiante.ApellidoP ,' ', Estudiante.ApellidoM) AS Estudiantes
FROM
(
	SELECT idEstudiante1 AS idEstu, COUNT(*) AS Appearances
	FROM (
		SELECT DISTINCT(E1.idEquipo), E1.idEstudiante1, E1.idEstudiante2, E1.idEstudiante3
		FROM Equipo AS E1 CROSS JOIN Equipo AS E2
		WHERE (E1.idEstudiante1 = E2.idEstudiante1
		OR E1.idEstudiante2 = E2.idEstudiante2
		OR E1.idEstudiante3 = E2.idEstudiante3)
		AND SUBSTRING_INDEX(E1.idEquipo, '_', 1) = SUBSTRING_INDEX(E1.idEquipo, '_', 1)
		AND E1.Año != E2.Año
		) AS A    
        
        Group BY idEstu
	UNION ALL
	SELECT idEstudiante2 AS idEstu, COUNT(*) AS Appearances
	FROM (
		SELECT DISTINCT(E1.idEquipo), E1.idEstudiante1, E1.idEstudiante2, E1.idEstudiante3
		FROM Equipo AS E1 CROSS JOIN Equipo AS E2
		WHERE (E1.idEstudiante1 = E2.idEstudiante1
		OR E1.idEstudiante2 = E2.idEstudiante2
		OR E1.idEstudiante3 = E2.idEstudiante3)
		AND SUBSTRING_INDEX(E1.idEquipo, '_', 1) = SUBSTRING_INDEX(E1.idEquipo, '_', 1)
		AND E1.Año != E2.Año
		) AS A
        
        GROUP BY idEstu
	UNION ALL
	SELECT idEstudiante3 AS idEstu, COUNT(*) AS Appearances
	FROM (
		SELECT DISTINCT(E1.idEquipo), E1.idEstudiante1, E1.idEstudiante2, E1.idEstudiante3
		FROM Equipo AS E1 CROSS JOIN Equipo AS E2
		WHERE (E1.idEstudiante1 = E2.idEstudiante1
		OR E1.idEstudiante2 = E2.idEstudiante2
		OR E1.idEstudiante3 = E2.idEstudiante3)
		AND SUBSTRING_INDEX(E1.idEquipo, '_', 1) = SUBSTRING_INDEX(E1.idEquipo, '_', 1)
		AND E1.Año != E2.Año
		) AS A
        
        GROUP BY idEstu
) AS B, Estudiante

WHERE B.Appearances > 1 AND B.idEstu = Estudiante.idEstudiante;

