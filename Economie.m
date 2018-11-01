%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Script Economie.m                                          %%
%% Écrit par H.B. | 2018                                      %%
%% Chapitre 3 | Application : Modèles économiques de Leontief %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

display('----------------------------------------------')
display('MODELE ECONOMIQUE FERME DE LEONTIEF')

format rat

% Calcul de la matrice d'échange E
display('----------------------------------------------')
display('La matrice d''échange E est :')
E=[1/4 1/3 1/2 ; 1/4 1/3 1/4 ; 1/2 1/3 1/4]

% Calcul du vecteur [x1 ; x2 ; x3]
display(' ')
display('Le vecteur [x1 x2 x3] est :')
M=E-eye(size(E));
BaseNulM=null(M,'r');
x=BaseNulM'



display('----------------------------------------------')
display('MODELE ECONOMIQUE OUVERT DE LEONTIEF')

format bank

% Vecteur demande externe
d=[10 10 30]';

% Calcul de la matrice d'échange C
display('----------------------------------------------')
display('La matrice d''échange C est :')
C=[0.2 0.5 0.1
    0.4 0.2 0.2
    0.1 0.3 0.3]

% Calcul du vecteur [x1 ; x2 ; x3]
display(' ')
display('Le vecteur [x1 x2 x3] est :')
A=eye(size(C))-C;
aug=[A d];
R=rref(aug);
x=R(:,end)
