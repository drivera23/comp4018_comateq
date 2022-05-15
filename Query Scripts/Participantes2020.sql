SELECT Universidad.Nombre, Pais.Nombre
FROM Universidad, Equipo, Coordinador, Pais
WHERE Equipo.Año = 2020 AND Equipo.idCoordinador = Coordinador.idCoordinador
AND Coordinador.idUniversidad = Universidad.idUniversidad
AND Universidad.idPais = Pais.idPais;