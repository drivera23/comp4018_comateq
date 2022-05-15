SELECT idEquipo, (puntosSM + puntosRA) AS puntosTotal 
FROM 
	(SELECT idEquipo, Año, COUNT(*) AS puntosSM
	FROM respondesm NATURAL JOIN equipo
	WHERE Respuesta = 4
	GROUP BY idEquipo) AS puntuacionesSM
	NATURAL JOIN
	(SELECT idEquipo, COUNT(*) AS puntosRA
	FROM respondera NATURAL JOIN problemasra
	WHERE respondera.Respuesta = problemasra.Contestación
	GROUP BY idEquipo) AS puntuacionesRA
WHERE Año = 2022
ORDER BY puntosTotal DESC;