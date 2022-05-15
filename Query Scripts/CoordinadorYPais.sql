SELECT CONCAT(Coordinador.NombreP, ' ', Coordinador.ApellidoP, ' ', Coordinador.ApellidoM), Pais.Nombre 
FROM Coordinador, Pais, Universidad 
WHERE Universidad.idUniversidad = Coordinador.idUniversidad 
AND Universidad.idPais = Pais.idPais;  