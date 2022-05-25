/*
Autor: Fernanda Gonçalves da Silva
Matrícula: 201765102C
*/
:- include('db.pl') .

code(Char, Code) .    % relaciona char com seu codigo
string2code(S, L ).     % faz o uso do predicado code para relacionar um texto com uma lista de códigos ee seus chars


% _______________________________________________
% predicados:

% codeDecode(Chave, Chifra, Mensagem);      %codifica e decodifica
% addData(S, X)                             % adiciona novas palavras
% removeData(S, X)                          % remove palavras
% code(Char, Code)                          % relaciona char com seu codigo
% string2code(S, L)              % faz o uso do predicado code para relacionar um texto com uma lista de códigos ee seus chars
% mergeLists(L1, L2, L3);        %faz uma lista de pares L3 sendo os pares elementos da L1 e L2
% predicado2Vigenere(T, K, W, P);
% predicado3Vigenere(T, K, W);
% predicado4Vigenere(M, L, K);
% _______________________________________________

% code(‘a’, X), 
% code(Ch, 1),
% string2code(“abc”, L),
% string2code(S, [1,2,3]),
% X = 1, Ch = a, L = [1, 2, 3] e S = “abc”

% _______________________________________________

% cifras: Cesar e Vigenere.

% Deve-se implementar uma estrategia para decifrar uma mensagem criptografada para cada uma das cifras, Cesar e Vigenere.

% A estrategia para decifrar uma mensagem cifrada com a cifra de Cesar devera usar o conhecimento da frequencia de letras 
% da lıngua portuguesa para tentar descobrir a chave. 

% Para decifrar um texto com a cifra de Vigenere e necessario descobrir o tamanho da chave. 
% Para tal, deve-se usar tecnicas de  ındice de coincidˆencia (IC), a qual diz a respeito da probabilidade de duas letras
% aleatoriamente no texto serem identicas. 
% O IC depende de cada linguagem e para a lıngua portuguesa é 0,0738 e para um texto aleatorio e de 0,0385. 
% Espera-se que um texto cifrado com a cifra de Vigenere tenha um IC proximo de um texto aleatorio. 
% A estrategia para descobrir o tamanho da chave usa uma ideia de forca-bruta para variar o tamanho da chave ate que o IC 
% seja proximo do esperado. 
% Neste trabalho nao e obrigatorio implementar um predicado que decifra uma mensagem cifrada com o codigo de Vigenere sem o
% tamanho da chave, ficando este como extra.

% Com o objetivo de decifrar uma mensagem codificada com a cifra de Vigenere, pede-se que sejam definidos os seguintes
% predicados:

% 1) um predicado de aridade 3 que relaciona duas listas com uma terceira lista de pares, na qual cada par
% é formado por um elemento de cada uma das lista. Caso a segunda lista seja menor que a primeira,
% replica-se o texto até que tenha o mesmo tamanho. Por exemplo, suponha L1 = [a, b, c, d, e] e L2 = [f, l, a],
% a lista de pares deve ser L3 = [(a, f),(b, l),(c, a),(d, f),(e, l)]. Note que os elementos de L2
% foram replicados até ter o mesmo tamanho de L1, resultando na lista [f, l, a, f, l];

% 2) um predicado que relaciona uma mensagem cifrada, um tamanho de chave, uma palavra que sabidamente
%  ocorre na mensagem decifrada e sua posicao com a chave. Por simplificacao, pode assumir que
% o tamanho da chave é menor que a palavra que ocorre no texto e que o texto;

% 3) um predicado que relaciona uma mensagem cifrada, um tamanho de chave e uma palavra que ocorre
% no texto com a mensagem decifrada;

% 4) um predicado que relaciona uma mensagem cifrada, uma lista de possıveis palavras que ocorre no texto
% e um tamanho de chave com a mensagem decifrada.



% _______________________________________________
% Perguntas:

% Como assim as palavras devem ser salvas?
% As 100 palavras são palavras ou chars com seus respectivos codigos?
% como assim o mesmo modelo vai codificar e decodificar? 

% _______________________________________________
% relatorio:
% como foi possível (ou não )usar um mesmo modelo para codificar e decodificar uma determinada cifra?


