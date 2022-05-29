/*
Autor: Fernanda Gonçalves da Silva
Matrícula: 201765102C
*/

:- include('charTable.pl').

:- dynamic(duplicateL2/2) .
:- dynamic(compareListsLength/3) .
:- dynamic(encryptTuple/3) .
:- dynamic(mergeTuple/4) .

duplicateL2(L2, L3) :- 
    append(L2, [], S),
    append(S, L2, L3).

compareListsLength(L1, L2, L3) :-
    length(L1, LL1),
    length(L2, LL2),
    (LL1 =< LL2 ->  append(L2, [], L3);
                    duplicateL2(L2, L4), 
                    compareListsLength(L1, L4, L3)).

encryptTuple([], R, L4) :- append(R, [], L4).
encryptTuple([Char:Key|T], Result, L4) :- 
    code(Char, X),
    code(Key, Y),
    R is X+Y,
    append(Result, [R], S),
    encryptTuple(T, S, L4).

subtractKey([], _, EL, Result) :- append(EL, [], Result).
subtractKey([H|T], [HL3|TL3], EL, Result) :- 
    code(HL3, X),
    R is H-X,
    append(EL, [R], S),
    subtractKey(T, TL3, S, Result).

mergeTuple([], _, Y, L3) :- append(Y, [], L3). 
mergeTuple([HL1|TL1], [HL2|TL2], Y, L3) :- 
    append(Y, [HL1:HL2], X),
    mergeTuple(TL1, TL2, X, L3). 
    
string2codeVigenere(Message, Word, Result) :-
    string_chars(Message, L1),
    string_chars(Word, L2),
    compareListsLength(L1, L2, L3),
    mergeTuple(L1, L3, [], L4),
    encryptTuple(L4, [], Result).

code2stringVigenere(EMessage, Word, Result) :-
    string_chars(Word, L2),
    compareListsLength(EMessage, L2, L3),
    subtractKey(EMessage, L3, [], L4),
    maplist(code, X, L4),
    string_chars(Result, X).


