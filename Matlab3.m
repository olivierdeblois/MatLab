%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de Matlab 3  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Partie 1 : Fonction usager dans Matlab %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
display('--------------------------------------')
display('Partie 1 : Fonction usager dans Matlab')
display('--------------------------------------')

display('(Voir la fonction prodiv.m)')


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Partie 2 : Pratique sur les op�rations sur les lignes %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
display(' ')
display('-----------------------------------------------------')
display('Partie 2 : Pratique sur les op�rations sur les lignes')
display('-----------------------------------------------------')

display('(Voir les fonctions cadrer.m, permuter.m, remplacer.m)')

%% D�termination de la forme �chelonn�e r�duite de la matrice A
%% En utilisant les trois fonctions : cadrer.m, permuter.m, remplacer.m
A=[0 3 6 9 ; -1 1 -2 -1]
A=permuter(A, 1, 2);
A=cadrer(A,1,-1);
A=cadrer(A,2,1/3);
A=remplacer(A, 1, 2, 1)
%% En utilisant la commande rref
A=[0 3 6 9 ; -1 1 -2 -1];
RA=rref(A)

%% D�termination de la forme �chelonn�e r�duite de la matrice B
%% En utilisant les trois fonctions : cadrer.m, permuter.m, remplacer.m
B=[0 1 -2 3 ; 1 -3 4 -6]
B=permuter(B, 1, 2);
B=remplacer(B, 1, 2, 3)
%% En utilisant la commande rref
B=[0 1 -2 3 ; 1 -3 4 -6];
RB=rref(B)
