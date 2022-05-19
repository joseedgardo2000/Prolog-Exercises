% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

% camion(placa, consumoXkm, choferes).
% chofer(nombre, añosExperiencia, kmRecorridos)

camion(mx201,0.4, 
   [chofer(kyle,5,17), chofer(josh,12,60), chofer(juan,3,8)]).
camion(mx202,0.3,
   [chofer(pedro,20,56), chofer(kyle,5,30), chofer(pedro,20,56), 
    chofer(maria,15,30)]).

% para un programa independiente:   
% :- write('Introduce la placa: '),read(Placa), 
%    camion(Placa,_,LstChoferes),
%    length(LstChoferes,NumChoferes),
%    write('El numero de choferes que han usado el camion es: '),
%    write(NumChoferes).

num_choferes_por_camion:- 
   write('Introduce la placa: '),read(Placa), 
   camion(Placa,_,LstChoferes),
   length(LstChoferes,NumChoferes),
   write('El numero de choferes que han usado el camion es: '),
   write(NumChoferes).   