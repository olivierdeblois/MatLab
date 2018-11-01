%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Script NulColRank.m                              %%
%% Écrit par H.B. | 2018                            %%
%% Chapitre 3 | Espaces d'une matrice A             %%
%% "Ce script montre comment trouver les bases des  %%
%% espaces Nul(A) et Col(A) d'une matrice A. Il     %%
%% montre aussi le calcul du rang de la matrice A." %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

A=[-3 6 -1 1 -7 ; 1 -2 2 3 -1 ; 2 -4 5 8 -4]

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CALCUL D'UNE BASE DE Nul(A) %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% En format rationnel
BaseNulA=null(A,'r')
%% En format orthonormé
BaseNulA=null(A)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CALCUL D'UNE BASE DE Col(A) %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% En format orthonormé seulement
%% Le format rationnel n'existe pas
BaseColA=orth(A)


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CALCUL DU RANG D'UNE MATRICE A %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Le rang d’une matrice A est la dimension
%% de l’espace  des colonnes de A (i.e., Col A).
RangA=rank(A)