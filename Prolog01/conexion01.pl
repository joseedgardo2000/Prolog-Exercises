abrir_conexion:- odbc_connect('PostgreSQL35W', _,
  [
    user(postgres),
	password('Admin'),
	alias(postgresql),
	open(once)
  ]).

cerrar_conexion:- odbc_disconnect('postgresql').

inserta_datos(F):-
  odbc_query('postgresql', 
             'INSERT INTO public."padreDeTbl"(padre,hijo) VALUES (\'Ruben\',\'Marcos\')',
			 affected(F)
            ).
			
inserta_padre_hijo(Padre, Hijo, N):-
  odbc_query('postgresql',
             'INSERT INTO public."padreDeTbl"(padre,hijo) VALUES (\'~w\', \'~w\')'-[Padre, Hijo],
			 affected(N)
            ).		
			
select01(X):-
  odbc_query('postgresql',
             'SELECT padre, hijo FROM "padreDeTbl"', X,
			 [types([string,default])]
            ).
			
selectAll(X):-
  odbc_query('postgresql',
             'SELECT * FROM "padreDeTbl"', X
            ).
			
actualizar(Y):-
  odbc_query('postgresql',
             'UPDATE "padreDeTbl" set padre=\'Uno\', hijo=\'Dos\' WHERE padre = \'Ruben\'', 
			 Y
            ).
			
borrar(X):-
  odbc_query('postgresql',
             'DELETE FROM "padreDeTbl" WHERE padre = \'Uno\'', 
			 X
            ).

% Uso Prolog Normal	
progenitor(Padre, Hijo):-		
  odbc_query('postgresql',
             'SELECT (padre), (hijo) FROM "padreDeTbl"',
			 row(Padre, Hijo)
            ).
			
abuelo(Abuelo,Nieto):-
  progenitor(Abuelo,Padre),
  progenitor(Padre,Nieto).

			