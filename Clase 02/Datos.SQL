/* Datos Personas */
Insert into Personas(Nombre)
Values ('Jimena')
Go
Insert into Personas(Nombre)
Values ('Carlos')
Go
Insert into Personas(Nombre)
Values ('Anal�a')
Go
Insert into Personas(Nombre)
Values ('Kristopher')
Go
Insert into Personas(Nombre)
Values ('Mar�a')
Go
/* Datos Idiomas */
Insert into Idiomas(Idioma)
Values ('Ingl�s')
Go
Insert into Idiomas(Idioma)
Values ('Franc�s')
Go
Insert into Idiomas(Idioma)
Values ('Espa�ol')
Go
Insert into Idiomas(Idioma)
Values ('Alem�n')
Go
/* Datos Idiomas_x_Persona */
Insert into Idiomas_x_Persona(IDPersona, IDIdioma)
Values (1, 1),
	   (1, 2),
	   (2, 3),
	   (3, 1),
	   (3, 2),
	   (3, 3),
	   (4, 4)

