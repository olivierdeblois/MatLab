%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de Matlab 1 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Modification d'éléments particuliers %%
%% dans les matrices                    %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
display('------------------------------------------------------------------')
display('Partie 1 : Modification d''éléments particuliers dans les matrices')
display('------------------------------------------------------------------')

%% Question a)
C=[-4 8 -1 ; 5 0 3 ; 6 2 10];

%% Question b)
display('_____________________________________________')
display('Réponse à la question b)')
C, C(3,1)
C(3,1)=-9
pause(20)
clc

%% Question c)
display('_____________________________________________')
display('Réponse à la question c)')
C, C(:,2)
C(:,2)=[1 1 0]
pause(20)
clc

%% Question d)
display('_____________________________________________')
display('Réponse à la question d)')
C, C([1 3],[2 3])
C([1 3],[2 3])=[-2 3 ; 6 7]
pause(20)
clc

%% Question e)
display('_____________________________________________')
display('Réponse à la question e)')
C, C([1 3],:)
C([1 3],:)=C([3 1],:)
pause(20)
clc

%% Question f)
display('_____________________________________________')
display('Réponse à la question f)')
C, C(3,:)
C(3,:)=[0 1 2]
pause(20)
clc



%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Matrices particulières %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
display('---------------------------------')
display('Partie 2 : Matrices particulières')
display('---------------------------------')

%% Question a)
display('_____________________________________________')
display('Réponse à la question a)')
I=eye(4)
Z1=zeros(3, 5)
Z2=zeros(3)
U1=ones(2, 3)
U2=ones(2)
D1=diag([4 5 6 7])
D2=diag([4 5 6 7], -1)
C, diag(C), diag(diag(C))
pause(20)
clc

%% Question b)
display('_____________________________________________')
display('Réponse à la question b)')
I=eye(2)
Z=zeros(2)
U=ones(3, 2)
D=diag([7 0.1 6 -2])
pause(20)
clc



%%%%%%%%%%%%%%%%%%%%%%%%
%% La commande format %%
%%%%%%%%%%%%%%%%%%%%%%%%
display('-----------------------------')
display('Partie 3 : La commande format')
display('-----------------------------')
R=123.125
format long, R
format short e, R
format short, R

