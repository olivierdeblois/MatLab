%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de Matlab 9  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc


% Les matrices données
P1=[0.7 0.2 0.6 ; 0 0.2 0.4 ; 0.3 0.6 0];

P2=[0.7 0.2 0.6 ; 0 0.2 0 ; 0.3 0.6 0.4];

P3=[0 1 0 ; 1 0 0 ; 0 0 1];


%% Question a)
display('------------------------------------------------------------------------------')
display('Quelles sont les matrices stochastiques régulières ? Justifier.')

% Analyse des puissances de P1
format
P1
P1^2
display('P1^2 est stritement positive ; P1 est donc régulière.')
pause(10), clc

% Analyse des puissances de P2
format rat
P2
P2^2
P2^3
P2^10
P2^100
P2^1000
display('Les puissances de P2 comportent toujours des éléments nuls ; P2 est donc non régulière.')
pause(10), clc

% Analyse des puissances de P3
format
P3
P3^2
P3^3
P3^4
P3^5
P3^6
P3^1000
display('Les puissances de P3 comportent toujours des éléments nuls ; P3 est donc non régulière.')
pause(10), clc


%% Question b)
display('------------------------------------------------------------------------------')
display('Calculer le vecteur stationnaire q pour chaque P1, P2 et P3.')
display('Pour chacune des matrices, dire si le vecteur stationnaire est unique.')

% Analyse des puissances de P1 à long terme
P1
P1^50
P1^100
display('Comme P1 est régulière, nous sommes certains que sa puissance convergera')
display('vers un état stationnaire unique de la forme [q q q].')
display('Le vecteur q est unique et est égal à : q=[0.6087 0.1304 0.2609].')
pause(10), clc

% Analyse des puissances de P2 à long terme
format rat
P2
P2^2
P2^3
P2^10
P2^100
P2^1000
display('Malgré que P2 soit non régulière, sa puissance a convergé aussi vers')
display('un état stationnaire unique de la forme [q q q]. Ceci est plutôt rare.')
display('Le vecteur q est donc unique et est égal à : q=[2/3 0 1/3].')
pause(10), clc

% Analyse des puissances de P3 à long terme
format
P3
P3^2
P3^3
P3^4
P3^5
P3^6
P3^1000
P3^1001
display('P3 est une matrice de transition particulière ; c''est une matrice de permutation.')
display('Elle permet de permuter les lignes 1 et 2 de tout vecteur d''état (ou matrice).')
display('Cette chaîne de Markov est périodique. Toutes les puisances paires de P3 sont égales à la matrice identité.')
display('Toutes les puisances impaires de P3 sont égales à la matrice même, soit P3.')
display('La sortie de cette chaîne de Markov est donc soit le vecteur initial lui-même, soit le vecteur initial permuté.')
display('Le vecteur q est donc pas unique. Il y a une infinité de solutions.')

