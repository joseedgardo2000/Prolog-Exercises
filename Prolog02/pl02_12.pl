% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

% Uso de selectores.

persona(morales, juarez, juan).
persona(martinez, lopez, maria).
persona(perez, matos, pedro).

obtenNombre(persona(_, _, Nombre), Nombre).

saluda(Persona):- 
  write('Hola '),
  obtenNombre(Persona, Nombre),
  write(Nombre),   
  writeln(' buen dia').
