% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

% Probar corte

% Si N > 0 y N <= 2, S = 1
% S i N > 2 y N <= 5, S = 2
% Si N > 5, S = 3

% El corte verde no afecta la solución, solo evita que se busquen 
% soluciones innecesarias.
%
% El corte rojo si afecta la solución si se elimina

rango(N,R):- N > 0, N =< 2, R is 1, !; % Corte verde
             N > 2, N =< 5, R is 2, !; % Corte verde
			 N > 5, R is 3.
