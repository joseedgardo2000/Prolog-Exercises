% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

% camion(placa, consumoXkm, combustible, choferes).
% chofer(nombre, añosExperiencia, kmRecorridos)

camion(mx201,0.4, diesel,
   [chofer(kyle,5,17), chofer(josh,12,60), chofer(juan,3,8)]).
camion(mx202,0.3, petroleo,
   [chofer(pedro,20,56), chofer(kyle,5,30), chofer(pedro,20,56), 
    chofer(maria,15,30)]).
camion(mx202,0.5, diesel,
   [chofer(kyle,5,17), chofer(josh,12,60), chofer(juan,3,8)]).
	
camiones_diesel(Placa):- camion(Placa,_,diesel,_).	

despleVertLista(Lista):- Lista = [], !;
                         Lista = [H|T], writeln(H), despleVertLista(T).

listaCamionesDiesel:- 
   findall(Placa, camiones_diesel(Placa), LCamiones), 
   despleVertLista(LCamiones).

kmXcombustible(Placa,Combustible,Kms):-
  camion(Placa,ConsumoXkm,_), Kms is ConsumoXkm * Combustible.