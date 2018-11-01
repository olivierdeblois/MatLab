
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Script Markov.m                              %%
%% Écrit par H.B. | 2018                        %%
%% Chapitre 3 | Chaînes de Markov               %%
%% Ce script montre la solution de l'exemple 1  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

close all, clear all, clc

%%%%%%%%%%%%%%%%%%%%%%%%%
%% Question 1
%% Matrice de migration
display('__________________________________________________')
display('Réponse à la question 1')
P=[0.95 0.03 ; 0.05 0.97]
%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Question 2
%% Distribution initiale de la population en 2000
display('__________________________________________________')
display('Réponse à la question 2')
x0=[0.6 ; 0.4]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Question 3
%% Distribution de la population en 2001
display('__________________________________________________')
display('Réponse à la question 3')
x1=P*x0

%% Distribution de la population en 2002
x2=P*x1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Question 4
%% Analyse de la tendance à long terme
%% Distribution de la population en 2010
display('__________________________________________________')
display('Réponse à la question 4')
P10=P^10
x10=P^10*x0

%% Distribution de la population en 2100
P100=P^100
x100=P^100*x0

%% Distribution de la population en 2150
P150=P^150
x150=P^150*x0

%% Distribution de la population en 2200
P200=P^200
x200=P^200*x0

%% Distribution de la population à long terme
q=x200

%% Conclusion
display(' ')
display('CONCLUSIONS')
display(' ')
display('- La chaîne de Markov converge vers un état stationnaire unique après 150 ans environ')
display(' ')
display('- Le vecteur d''état stationnaire est q = [0.3750 0.625]''')
display(' ')
display('- P^k tend vers une matrice de la forme P^k = [q q]')
display(' ')
display('- Ces résultats étaient prévisibles étant donné que la matrice de transition P est régulière')
display(' ')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Question 5
%% Calcul manuel du vecteur d'état stationnaire q
%% Nous avons trouvé le même q = [0.3750 0.625]'
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Question 6
%% Population de la ville et de la banlieue à l’état stationnaire
display('__________________________________________________')
display('Réponse à la question 6')
Population_Ville=0.375*1e6
Population_Banlieue=0.625*1e6
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Question 7
%% Une année après, quel est le nombre de personnes qui migrent de la ville
%% vers la banlieue et celles qui migrent de la banlieue vers la ville?
display('__________________________________________________')
display('Réponse à la question 7')
Migration_Ville2Banlieue=0.05*Population_Ville
Migration_Banlieue2Ville=0.03*Population_Banlieue
display(' ')
display('CONCLUSION')
display(' ')
display('- En régime stationnaire, les deux flux migratoires deviennent égaux')
display(' ')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
