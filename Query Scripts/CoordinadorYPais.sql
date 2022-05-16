SELECT CONCAT(Coordinador.NombreP, ' ', Coordinador.ApellidoP, ' ', Coordinador.ApellidoM) AS FullName, Pais.Nombre AS Pais
FROM Coordinador, Pais, Universidad 
WHERE Universidad.idUniversidad = Coordinador.idUniversidad 
AND Universidad.idPais = Pais.idPais;  
