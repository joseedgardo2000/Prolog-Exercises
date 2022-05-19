% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

:- dynamic(equipo/2).

% equipo(lider, colaboradores)
equipo(juan,[pedro, alberto, rosa]).
equipo(maria, [fernando, isabel, cristobal]).
equipo(laura, [jorge, felipe, lilia]).
equipo(reynaldo, [lidia, julio, jose, armando]).
equipo(mauro, [carlos, nicolas, irene, rocio]).

creaIntes(NumIntes, Intes):- 
          NumIntes == 0, Intes = [], !;
		  write('Integrante: '), read(Inte),
		  NumIntesI is NumIntes - 1,
		  creaIntes(NumIntesI, RestoIntes),
		  Intes = [Inte|RestoIntes].
                             

agregar:- writeln('------ Agregar un Nuevo Equipo ------'), nl,
          write("Lider: "), read(Lider),
		  write("Num. Integrantes: "), read(NumIntes),
		  creaIntes(NumIntes,Miembros),
		  Equipo = equipo(Lider, Miembros),
		  asserta(Equipo).                   % Graba en memoria     

eliminar:- writeln('------ Eliminar un Equipo ------'), nl,
           write('Lider: '), read(Lider),
		   retract(equipo(Lider,_)),
		   writeln('El equipo ha sido eliminado');
		   writeln('No existe equipo con este lider').

borrar:- writeln('------ Borrar todos los Equipos ------'), nl,
         abolish(equipo/2),
		 writeln('Se han borrado todos los equipos.').

muestraEqs(L):- L = [], !;
                L = [H|T], H = (Lider, Miembros), 
				write('Lider: '), write(Lider), write(' >> '),
				write('Miembros: '), writeln(Miembros), 
				muestraEqs(T).

listar:- writeln('------ Listado de Todos los Equipos ------'), nl,
         catch(
         (findall((L,Ps), equipo(L,Ps),Res),
          muestraEqs(Res)),
		 error(existence_error(procedure,equipo/2),_),
		 format('No hay equipos, para mostrar\n')),
		 nl.

optar(Op):- Op == 1, agregar, menu;
            Op == 2, eliminar, menu;
            Op == 3, borrar, menu;
            Op == 4, listar, menu;
            Op == 5, true.	   

menu:-   write('=======[Gestor de Equipos]=======\n'),
         write('= 1... Agregar un equipo        ='), nl,
	   writeln('= 2... Eliminar un equipo       ='),
	   writeln('= 3... Borrar todos los equipos ='),
	   writeln('= 4... Listar todos los equipos ='),
	   writeln('================================='),
	   writeln('= 5... Salir                    ='),
	   writeln('================================='),
	   write('Proporciona opcion :'),
	   read(Op),
	   optar(Op).
	   

			