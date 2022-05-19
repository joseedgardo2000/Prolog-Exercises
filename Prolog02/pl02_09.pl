% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

pais_frontera(canada,[estados_unidos]).
pais_frontera(estados_unidos,[canada,mexico]).
pais_frontera(mexico,[estados_unidos,guatemala,belice]).

buscarEnLista(E,L):- L == [], false, !;
                     L = [H|_],H==E, true, !;
					 L = [_|T],buscarEnLista(E,T).
					 
fronteraCon01(Pais,Frontera):- pais_frontera(Pais,Fs), 
                               buscarEnLista(Frontera,Fs). 
					 
fronteraCon02(Pais,Frontera):- pais_frontera(Pais, Fs),
                               member(Frontera,Fs).					 

