% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

lista01(L):- L = [1,2,3,4,5].
lista02(L):- Cabeza = 1, Cola = [2,3,4,5], L = [Cabeza|Cola].
lista03(L):- L = [1,2,[a,b,c],3,4,5].
lista04(L):- A = 1, Resto = [a,b,c], L = [0,A|Resto].

separa_lista([H|T],H,T).
% suma_lista(H|T):-