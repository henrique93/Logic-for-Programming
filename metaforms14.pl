%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%       GRUPO NUM:24
%	ALUNOS:77459 Henrique Lourenco, 78215 Jose Touret, 78579
%	Pedro Cruz
%
%               ATENCAO: NAO USAR ACENTOS OU CEDILHAS
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ESCREVER AQUI O CODIGO DO PROJECTO DE LP 2013/2014
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                        Pistas Intermedias
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

trioLeft(Peca , Linha , Coluna , Tabuleiro ):-
	coloca(Peca, Linha , Coluna , Tabuleiro );
	coloca(Peca, Linha ,middle,Tabuleiro).

trioRight(Peca , Linha , Coluna , Tabuleiro ):-
	coloca(Peca, Linha , Coluna , Tabuleiro );
	coloca(Peca, Linha , middle , Tabuleiro ).

cobra(Peca, Linha, Coluna, Tabuleiro):-
	coloca(Peca, Linha , Coluna , Tabuleiro );
	coloca(Peca, Linha , middle , Tabuleiro ).

tSimples(Peca, Linha, Coluna, Tabuleiro):-
	coloca(Peca, Linha , Coluna , Tabuleiro );
	coloca(Peca, center , Coluna , Tabuleiro ).

tLeft(Peca, Linha, Coluna, Tabuleiro):-
	coloca(Peca, Linha , Coluna , Tabuleiro );
	coloca(Peca, Linha , middle , Tabuleiro ).

tRight(Peca, Linha, Coluna, Tabuleiro):-
	coloca(Peca, Linha , Coluna , Tabuleiro );
	coloca(Peca, Linha ,middle,Tabuleiro).

tInvertido(Peca, Linha, Coluna, Tabuleiro):-
	coloca(Peca, Linha , Coluna , Tabuleiro );
	coloca(Peca, Linha ,middle,Tabuleiro).

cantoTopLeft(Peca, Linha, Coluna, Tabuleiro):-
	coloca(Peca, Linha ,Coluna ,Tabuleiro );
	coloca(Peca, Linha ,middle ,Tabuleiro);
	coloca(Peca, center ,coluna,Tabuleiro);
	coloca(Peca, center ,Coluna,Tabuleiro).

cantoTopRight(Peca, Linha, Coluna, Tabuleiro):-
	coloca(Peca, Linha ,Coluna ,Tabuleiro );
	coloca(Peca, Linha ,middle ,Tabuleiro);
	coloca(Peca, center ,coluna,Tabuleiro);
	coloca(Peca, center ,Coluna,Tabuleiro).

cantoBottomLeft(Peca, Linha, Coluna, Tabuleiro):-
	coloca(Peca, Linha ,Coluna ,Tabuleiro );
	coloca(Peca, Linha ,middle ,Tabuleiro);
	coloca(Peca, center ,coluna,Tabuleiro);
	coloca(Peca, center ,Coluna,Tabuleiro).

cantoBottomRight(Peca, Linha, Coluna, Tabuleiro):-
	coloca(Peca, Linha ,Coluna ,Tabuleiro );
	coloca(Peca, Linha ,middle ,Tabuleiro);
	coloca(Peca, center ,coluna,Tabuleiro);
	coloca(Peca, center ,Coluna,Tabuleiro).

diagonalGrave(Peca, Linha, Coluna, Tabuleiro):-
	coloca(Peca, Linha, Coluna, Tabuleiro);
	coloca(Peca, center, middle, Tabuleiro);
	coloca(Peca, center, Coluna, Tabuleiro);
	coloca(Peca, Linha, middle, Tabuleiro).

diagonalAguda(Peca, Linha, Coluna, Tabuleiro):-
	coloca(Peca, Linha, Coluna, Tabuleiro);
	coloca(Peca, center, middle, Tabuleiro);
	coloca(Peca, center, Coluna, Tabuleiro);
	coloca(Peca, Linha, middle, Tabuleiro).
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%                   FIM Pistas Intermedias
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%
% check(tabuleiroCompleto,tabuleiroCompleto) e a funcao que preenche o
% tabuleiro.
%
check(TabuleiroCompleto,TabuleiroCompleto):-
	permuta([peca(circulo, azul),peca(circulo, amarelo),peca(circulo,
 vermelho),peca(quadrado, azul),peca(quadrado, amarelo),peca(quadrado,
 vermelho),peca(triangulo, azul),peca(triangulo,
 amarelo),peca(triangulo, vermelho)],TabuleiroCompleto).


%
% escolhe(Lista1,E,Lista2) e uma funcao que verifica se a Lista2 origina
% da Lista1 retirando-lhe o elemento E.
%
escolhe([P|R],P,R).
escolhe([P|R],E, [P|S]):-
	escolhe(R, E, S).


%
% permuta(Lista1,Lista2) e uma funcao que verifica se a Lista1 contem
% todos os membros da Lista2 independentemente da ordem.
%
permuta([],[]).
permuta(L,[P|R]):-
	escolhe(L,P,L1),
	permuta(L1, R).












