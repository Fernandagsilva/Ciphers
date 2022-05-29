/*
Autor: Fernanda Gonçalves da Silva
Matrícula: 201765102C
*/

increase(K,C,R):- 
    X is C+K,
    (X > 154 -> R is X - 154 ; R is X).

decrease(K,C,R):- 
    X is C-K,
    (X < 0 -> R is 154 + X ; R is X).