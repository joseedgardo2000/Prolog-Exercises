% Author: José Edgardo Morales Barroso
% GitHub: https://github.com/joseedgardo2000

% Serie de Gauss:
% N = 4 Res = 1 + 2 + 3 + 4 = 10

gauss(N,Res):- N is 0, Res is N, !;
               N2 is N - 1, gauss(N2,R),Res is N + R.