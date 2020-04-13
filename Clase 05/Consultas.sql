-- 1) Listar para cada autor el Apellido y el Nombre, el sexo, el IDPais y el nombre del país.
Select A.apellidos, A.nombres, A.sexo, P.nombre 
from Autores as A
inner join Paises AS P ON P.ID = A.IDPais

-- 2) Listar para cada usuario el Apellido y nombre, el sexo, 
-- el nombre del país de nacimiento y el nombre del tipo de usuario.

Select U.Apellidos, U.Nombres, U.Sexo, P.Nombre as Pais, TP.Nombre As Tipo, 
  DateDiff(Day, U.FechaReg, getdate())  As CantDias
From 
Usuarios as U
Inner Join Paises AS P ON P.ID = U.IDPais
Inner Join TiposUsuarios AS TP ON TP.ID = U.IDTipo

-- 3) Listar para cada libro el título, la cantidad de páginas, el precio y el nombre de la editorial. Sólo listar los libros que posean editorial registrada.
Select L.Titulo, L.Paginas, L.Precio, E.Nombre 
From Libros as L
Inner Join Editoriales AS E ON E.ID = L.IDEditorial

-- 4) Listar para cada libro el título, la cantidad de páginas, el precio y el nombre de la editorial. Listar todos los libros independientemente de si disponen editorial.
Select L.Titulo, L.Paginas, L.Precio, IsNull(E.Nombre, 'Sin editorial') AS NombreEditorial
From Libros as L
Left Join Editoriales as E ON E.ID = L.IDEditorial

-- 5) Listar para cada libro el título, la cantidad de páginas, el precio y el nombre de la editorial. Listar todas las editoriales independientemente de si disponen libros.
Select L.Titulo, L.Paginas, L.Precio, E.Nombre 
From Libros as L
Right Join Editoriales AS E ON E.ID = L.IDEditorial

Select L.Titulo, L.Paginas, L.Precio, E.Nombre 
From Libros as L
Full Join Editoriales AS E ON E.ID = L.IDEditorial

-- 6) Listar para cada libro el título, el año, el precio, la cantidad de páginas y el nombre de los géneros asociados al libro.
-- 7) Listar para cada libro el título, el año, el apellido y nombre del autor y el nombre del país del autor.
-- 8) Listar para cada usuario el apellido y nombres, el email, el tipo de usuario y el nombre del país, el sexo ('M' - Masculino, 'F' - Femenino, 'X' - Otro género), la edad y la cantidad de días transcurridos desde la registración.
-- 9) Listar para cada usuario el apellido y nombres y el nombre de sus bibliotecas. Solamente los usuarios que se hayan registrado hace menos de 1000 días.
-- 10) Listar el título del libro, el nombre del formato, la valoración, la conservación, la fecha de adquisición, el precio, el nombre de la biblioteca de los usuarios cuyo tipo de usuario sea 'Bibliotecarian'.
-- 11) Listar apellido y nombres, el título del libro y la cantidad de días que demoró el usuario en leerlo. Sólo aquellos que hayan finalizado la lectura.
-- 12) Listar el apellido y nombres sin repeticiones de los usuarios que registren al menos un libro en formato 'EPUB'.
-- 13) Listar el apellido y nombres de los usuarios y apellido y nombre de los autores cuyos libros el usuario haya finalizado la lectura. No repetir la combinación de datos de usuario y autores.
-- 14) Listar apellido y nombres de los usuarios que no posean bibliotecas.
-- 15) Listar apellido y nombres de los usuarios que tengan algún libro sin terminar de leer. No repetir combinación de apellido y nombres.
-- 16) Listar apellido y nombres de los autores que hayan recibido alguna calificación de 8,00 o más en alguno de sus libros. No repetir combinación de apellido y nombres.
-- 17) Listar para cada autor el apellido y nombres y los nombres de los géneros de los libros que dicho autor escribió. No repetir el mismo género para el mismo autor.
-- 18) Listar el título del libro, el idioma (si lo tiene), la editorial (si la tiene) de los libros 5 con mejor calificación individual.
-- 19) Listar los títulos de los libros sin idioma.
-- 20) Listar para cada usuario el apellido y nombres y los idiomas de los libros que posee. No repetir la combinación de usuario e idioma.
-- 21) Listar los apellidos y nombres de los usuarios que posean al menos un libro cuyo título contenga 'Historia' o cuyo género contenga 'Edad media'
-- 22) Listar los apellidos y nombres de los usuarios que posean al menos un libro en Inglés pero que no lo hayan leído aún.
-- 23) Listar el nombre de las editoriales que tengan al menos un libro en Francés.
-- 24) Listar todos los títulos de los libros de autores cuyo país de nacimiento sea Escocia o Austria.
-- 25) Listar apellido y nombre de los usuarios en una columna llamada Usuario, nombre de la biblioteca, título de los libros, apellido y nombre de los autores en una columna llamada Autor, idioma, nombre de los géneros, nombre de la editorial, nombre del formato del libro, grado de valoración y conservación, fecha de adquisición y precio abonado, fecha de inicio, fin de lectura y cantidad de días en finalizar la lectura. El listado deberá figurar ordenado por usuario en primera instancia, nombre de biblioteca en segunda instancia y título del libro en tercera instancia. Incluir los usuarios que no posean bibliotecas y los datos de los libros que figuren en bibliotecas pero que no posean autor, editorial o género.
-- NOTA: Si un libro tiene más de un autor o más de un género, éstos datos deberán aparecer en filas distintas. No se pretende que un registro se almacenen autores o géneros separados por coma.