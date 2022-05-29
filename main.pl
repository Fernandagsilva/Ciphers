/*
Autor: Fernanda Gonçalves da Silva
Matrícula: 201765102C
*/

:- include('caeserCipher.pl').
:- include('vigenereCipher.pl').

get_action(Choice) :-
    menu('Hi, what cipher do you want to use?',
        [ 1 : 'Caeser Cipher - Encryp', 
          2 : 'Caesar Cipher - Decrypt',
          3 : 'Vigenère Cipher - Encryp',
          4 : 'Vigenère Cipher - Decrypt',
          5 : 'Quit'], Choice).

switch(X, [Val:Goal|Cases]) :-
    (X =:= Val ->
        call(Goal) ;
        switch(X, Cases)).

main :- get_action(X), 
        switch(X, [ 1 : callEncryptCaeser,
                    2 : callDecryptCaeser,
                    3 : callEncryptVigenere,
                    4 : callDecryptVigenere,
                    5 : halt]). 

callEncryptCaeser :-
    nl,
    writeln('Key: '), 
    read(K),
    writeln('Message: '), 
    read(M),
    string2codeCaeser(K, M, C),
    nl,
    write('Encrypted message: '),
    write(C). 

callDecryptCaeser :-
    nl,
    writeln('Key: '), 
    read(K),
    writeln('Codes: '), 
    read(C),
    code2stringCaeser(K, M, C),
    nl,
    write('Decrypted message: '),
    write(M). 

callEncryptVigenere :-
    nl,
    writeln('Message: '), 
    read(M),
    writeln('Key: '), 
    read(K),
    string2codeVigenere(M, K, C),
    nl,
    write('Encrypted message: '),
    write(C).   

callDecryptVigenere :-
    nl,
    writeln('Encrypted Message: '), 
    read(C),
    writeln('Key: '), 
    read(K),
    code2stringVigenere(C, K, M),
    nl,
    write('Decrypted message: '),
    write(M).   
