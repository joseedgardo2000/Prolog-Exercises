% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

persona(juan,perez,prado,fec_nac(11,3,2000)).

desglosa01(P):- P =.. L, write(L).
desglosa02:- persona(juan,perez,prado,fec_nac(11,3,2000)) =.. L,
             write(L).
