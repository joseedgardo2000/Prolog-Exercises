% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

mismosElementos(L):- L = [],!;
                     L = [_],!;
					 L = [H,H|C], mismosElementos([H|C]).
					 
equilatero(P):- 
    P =.. [H|T], 
	H = poligono, 
	length(T,N), 
	N >= 3, 
	mismosElementos(T).

mismosElementos02(Poligono,UltElem):- 
  UltElem = 0,!, true;
  UltElem = 1,!, true;
  arg(UltElem, Poligono, E01),
    UltElem02 is UltElem - 1,
    arg(UltElem02, Poligono, E02),
	E01 = E02,
	mismosElementos02(Poligono, UltElem02).
	
equilatero02(Poligono):-
  functor(Poligono,Nom,NumLados),
  Nom=poligono,
  NumLados >= 3,
  mismosElementos02(Poligono,NumLados).	