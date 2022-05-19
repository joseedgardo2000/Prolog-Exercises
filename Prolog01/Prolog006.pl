padre_de(martin, luis).
padre_de(luis, jose).
padre_de(luis, pedro).
padre_de(roberto, eduardo).
es_padre(martin).
es_padre(luis).

hijo_de(H,P):- padre_de(P,H).                 % Regla con 1 hecho.

abuelo_de(A,N):- padre_de(A,P),padre_de(P,N). % Regla con 2 hechos.

hermano_de(H1,H2):- 
  padre_de(P,H1), padre_de(P,H2), H1 \= H2.   % Regla de conjuncion
  
familiar_de(F1,F2):- 
  hijo_de(F1,F2); hermano_de(F1,F2); 
  padre_de(F1,F2); abuelo_de(F1,F2). 
  	