SELECT idEquipo, (puntosSM) AS puntosTotal 
FROM 
	(SELECT idEquipo, Año, COUNT(*) AS puntosSM
	FROM RespondeSM NATURAL JOIN Equipo
	WHERE Respuesta = 4 AND RespondeSM.idProblemaSM = 4
	GROUP BY idEquipo) AS puntuacionesSM
WHERE Año = 2022
ORDER BY puntosTotal DESC
