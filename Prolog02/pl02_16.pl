% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

% familia(padre, madre, hijos).

familia(pedro, ana, [lilia, martin, luis]).
familia(adrian, lilia,[juan, marta]).
familia(martin,petra,[raul]).

%Obtiene nombres repetidos
obtenPadresHijos00(F):- familia(P,_,H), member(F,[P|H]).
obtenPadresHijos01(L):- findall(F,(familia(P,_,H), member(F,[P|H])),L).

%Obtiene nombres unicos, tomando en cuenta P y H como iniciadores de 
% conjunto
obtenPadresHijos02(L):- setof(F,(familia(P,_,H), member(F,[P|H])),L).

%Obtiene nombres unicos, ignorando P y H como iniciadores de conjunto
obtenPadresHijos03(L):- 
  setof(F,(P,H,M)^(familia(P,M,H), member(F,[P|H])),L).