% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

% ====== Base de Conocimientos =====
% ------ Hechos: Predicados siempre ciertos

% --- Hombre -----
hombre('Juan').
hombre('Luis').
hombre('Alberto').
hombre('Pedro').
hombre('Jose').
% --- Mujer -----
mujer('Maria').
mujer('Marta').
mujer('Filomena').
mujer('Clara').
mujer('Ana').
mujer('Ema').
% --- progenitor ----
progenitor('Ana','Clara').
progenitor('Alberto','Clara').
progenitor('Clara','Pedro').
progenitor('Juan','Maria').
progenitor('Filomena','Maria').
progenitor('Maria','Jose').
progenitor('Pedro','Jose').
progenitor('Marta','Luis').
progenitor('Jose','Luis').
progenitor('Pedro','Ema').

% ------ Reglas: predicados que tienen cabeza y cuerpo. 
%                La regla es verdadera, si el cuerpo es verdadero

persona(P):- hombre(P); mujer(P).

num_hombres(N):- aggregate_all(count, hombre(_), N).

num_mujeres(N):- aggregate_all(count, mujer(_), N).

hermano(H1, H2):- progenitor(X, H1), progenitor(X, H2),H1\=H2,!.

abuelo(A,N):- progenitor(A,P), progenitor(P,N).

bisabuelo(BA,BN):- progenitor(BA,A), abuelo(A,BN).

tatarabuelo(TA,TN):- abuelo(TA,A), abuelo(A,TN).

ancestro(A,D):- progenitor(A,D);
                progenitor(A,I), ancestro(I,D).				  

% ----- Unificacion: Une el valor por ejemplo el valor de una constante
%                    con el valor de una variable, para llegar a ser el
%                    mismo elemento.