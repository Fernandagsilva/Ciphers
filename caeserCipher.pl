/*
Autor: Fernanda Gonçalves da Silva
Matrícula: 201765102C
*/

:- include('common.pl').
:- include('charTable.pl').

string2codeCaeser(K, M, C) :- 
    string_chars(M, X), 
    maplist(code, X, Y),
    maplist(increase(K), Y, C).

code2stringCaeser(K, M, C) :- 
    maplist(decrease(K), C, R),
    maplist(code, X, R),
    string_chars(M, X). 