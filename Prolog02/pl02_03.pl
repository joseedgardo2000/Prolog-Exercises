conexion(a,b,7).
conexion(f,a,8).
conexion(f,g,10).
conexion(h,f,9).
conexion(i,f,11).
conexion(d,h,4).
conexion(d,i,2).

% Preguntas:
% 	1.- ¿Existe una conexion entre a e i?
%   2.- ¿Nodos conectados con f y su costo?
%   3.- ¿El nodo tiene aristas?
%   4.- ¿Costo de ir de un nodo a otro pasando por uno intermedio?


tiene_aristas(N):- conexion(N,_,_).
costo(Ini,Int,Fin,Costo):- conexion(Ini,Int,C1),conexion(Int,Fin,C2), 
                           Costo is C1 + C2.