mas_grande(elefante, burro).
mas_grande(burro, perro).
mas_grande(perro, gato).
mas_grande(gato, raton).

mucho_mas_grande(X,Y):- 
  mas_grande(X,Y);
  mas_grande(X,I), mucho_mas_grande(I,Y).

