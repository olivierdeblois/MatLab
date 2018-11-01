%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de Matlab 4  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

%%%%%%%%%%%%
% Partie 1 %
%%%%%%%%%%%%
display('--------')
display('Partie 1')
display('--------')

% CALCUL DU RANG DE LA MATRICE A
display(' ')
display('_________________________________________')
A = [1 2 3 4;4 5 6 7;6 9 12 15;1 1 1 1]
% Fa�on 1 - Commande rank
RangColA=rank(A)
% Fa�on 2 - Dimension de l'esapce des colonnes
BaseColA=orth(A)
TailleColA=size(BaseColA);
RangColA=TailleColA(2)


% CALCUL DU RANG DE LA MATRICE B
display(' ')
display('_________________________________________')
B = [1 2 4;1 -1 1;0 1 2]
% Fa�on 1 - Commande rank
RangColB=rank(B)
% Fa�on 2 - Dimension de l'esapce des colonnes
BaseColB=orth(B)
TailleColB=size(BaseColB);
RangColB=TailleColB(2)


% CALCUL DU RANG DE LA MATRICE C
display(' ')
display('_________________________________________')
C = [1 2 -3 0;1 2 1 1;3 6 -5 1]
% Fa�on 1 - Commande rank
RangColC=rank(C)
% Fa�on 2 - Dimension de l'esapce des colonnes
BaseColC=orth(C)
TailleColC=size(BaseColC);
RangColC=TailleColC(2)


% CALCUL DU RANG DE LA MATRICE D
display(' ')
display('_________________________________________')
D = [1 2 3;4 5 6;7 8 9;5 7 9]
% Fa�on 1 - Commande rank
RangColD=rank(D)
% Fa�on 2 - Dimension de l'esapce des colonnes
BaseColD=orth(D)
TailleColD=size(BaseColD);
RangColD=TailleColD(2)


% CALCUL DU RANG DE LA MATRICE E
display(' ')
display('_________________________________________')
E = [1 1 1 1 4 1;1 2 0 4 7 6;1 3 -1 10 13 21;1 4 -2 20 23 56];
E = [E;1 5 -3 35 38 126;1 6 -4 56 59 252]
% Fa�on 1 - Commande rank
RangColE=rank(E)
% Fa�on 2 - Dimension de l'esapce des colonnes
BaseColE=orth(E)
TailleColE=size(BaseColE);
RangColE=TailleColE(2)

pause(15), clc

%%%%%%%%%%%%
% Partie 2 %
%%%%%%%%%%%%
display('--------')
display('Partie 2')
display('--------')

display('Si toutes les colonnes v1 � vk de la matrice M sont lin�airement ind�pendantes,')
display('la base du sous-espace Col(M) est form�e par les k colonnes de M.')
display('La dimension de Col(M) est donc �gale � k (i.e. Le nombre de vecteurs formant sa base).')
display('Le rang de la matrice M est justement d�fini comme �tant la dimension de Col(M), soit donc k.')
display(' ')
display('CONCLUSION :')
display('Un moyen facile de montrer que toutes les colonnes d''une matrice sont lin�airement ind�pendantes est')
display('de v�tifier si son rang est bien �gal au nombre de ses colonnes')

pause(20), clc

%%%%%%%%%%%%
% Partie 3 %
%%%%%%%%%%%%
display('--------')
display('Partie 3')
display('--------')

% Question a)
display('_________________________________________________')
display('R�ponse pour la question a)')

F = [1 2 3 4;2 3 4 5;3 4 5 6;0 1 1 1]
RangF=rank(F)
display('R�sultat pou F : Le rang de F (3) est inf�rieur au nombre de ses colonnes (4);')
display('les quatre vecteurs ne sont donc pas lin�airement ind�pendants.')

display('----------------')

G = F; G(1,4)=3
RangG=rank(G)
display('R�sultat pou G : Le rang de G (4) est �gal au nombre de ses colonnes (4);')
display('les quatre vecteurs sont donc lin�airement ind�pendants.')

pause(5), clc

% Question b)
display('_________________________________________________')
display('R�ponse pour la question b)')

RangA=rank(A), RangB=rank(B), RangC=rank(C), RangD=rank(D), RangE=rank(E)

display('R�sultat pou les matrices A, B, C, D, E : Seul les colonnes de la matrice B forment un')
display('ensemble de vecteurs lin�airement ind�pendants.')

pause(5), clc

% Question c)
display('_________________________________________________')
display('R�ponse pour la question c)')

v1=[2 3 5 1]
v2=[1 1 -2 9]
v3=[3 4 0 0]
M=[v1' v2' v3']
RangM=rank(M)
display('R�sultat pou M : Le rang de M (3) est �gal au nombre de ses colonnes (3);')
display('les trois vecteurs v1, v2 et v3 sont donc lin�airement ind�pendants.')

pause(15), clc

%%%%%%%%%%%%
% Partie 4 %
%%%%%%%%%%%%
display('--------')
display('Partie 4')
display('--------')

% Question a)
display('_________________________________________________')
display('R�ponse pour la question a)')
X=[1 2 3
    4 5 6]
rangX=rank(X)
rangXt=rank(X')
display('Le rang de X est �gal au rang de sa transpos�e, Xt')

% Question b)
display('_________________________________________________')
display('R�ponse pour la question b)')
Y=100*rand(3, 7)
rangY=rank(Y)
rangYt=rank(Y')
display('Le rang de Y est �gal au rang de sa transpos�e, Yt')

% Question c) - M�me constat

