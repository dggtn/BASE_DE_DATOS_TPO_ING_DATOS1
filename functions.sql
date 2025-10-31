--agregar constraint para que las pks tengan nombre:
--Proyeccion clientes mayores a 18 mostrando su edad a lado
SELECT *,DATEDIFF(YEAR, fechaNacimiento, GETDATE()) AS EDAD FROM Cliente
WHERE	DATEDIFF(YEAR, fechaNacimiento, GETDATE()) >= 18;

--Cursos mensaje no se permiten clientes menores a 18
SELECT * FROM Cliente
WHERE	DATEDIFF(YEAR, fechaNacimiento, GETDATE()) <= 18;

--Proyeccion paquetes con mas ventas
