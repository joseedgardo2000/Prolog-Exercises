% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

% ====== Base de Conocimientos =====
% ------ Hechos: Predicados siempre ciertos

hombre(juan).
hombre(luis).
hombre(alberto).
hombre(pedro).
mujer(maria).
mujer(marta).
mujer(filomena).

% ------ Reglas: predicados que tienen cabeza y cuerpo. 
%                La regla es verdadera, si el cuerpo es verdadero


es_par(X):- 0 is X mod 2.

persona(P):- hombre(P); mujer(P).

num_hombres(N):- aggregate_all(count, hombre(_), N).

num_mujeres(N):- aggregate_all(count, mujer(_), N).

% ----- Unificacion: Une el valor por ejemplo el valor de una constante
%                    con el valor de una variable, para llegar a ser el
%                    mismo elemento.