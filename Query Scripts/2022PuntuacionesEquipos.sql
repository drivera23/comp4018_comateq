SELECT idEquipo, (puntosSM + puntosRA) AS puntosTotal 
FROM 
	(SELECT idEquipo, Año, COUNT(*) AS puntosSM
	FROM RespondeSM NATURAL JOIN Equipo
	WHERE Respuesta = 4
	GROUP BY idEquipo) AS puntuacionesSM
	NATURAL JOIN
	(SELECT idEquipo, COUNT(*) AS puntosRA
	FROM RespondeRA NATURAL JOIN ProblemasRA
	WHERE RespondeRA.Respuesta = ProblemasRA.Contestación
	GROUP BY idEquipo) AS puntuacionesRA
WHERE Año = 2022
ORDER BY puntosTotal DESC;
