%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de Matlab 1  %%
%% Exemples introductifs %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

%%%%%%%%%%%%%%
% Exercice 1 %
%%%%%%%%%%%%%%
display('-------------------------')
display('Solution de l''exercice 1')
display('-------------------------')

x=[-10:0.01:10];
y=2*x-x.^3-exp(-x);
plot(x,y)
grid
axis([-15 15 -1500 1500])
xlabel('Abscisse x'), ylabel('Ordonnée y')
display('(Voir Figure 1)')
pause(20)
clear all, close all, clc

%%%%%%%%%%%%%%
% Exercice 2 %
%%%%%%%%%%%%%%
display(' ')
display('-------------------------')
display('Solution de l''exercice 2')
display('-------------------------')
display('(Voir la fonction test1.m)')
pause(20)
clear all, close all, clc

%%%%%%%%%%%%%%
% Exercice 3 %
%%%%%%%%%%%%%%
display(' ')
display('-------------------------')
display('Solution de l''exercice 3')
display('-------------------------')
% Question 1)
display('Réponse à la question 1)')
A=[-1 2 -1 0 3
    -2 1 1 1 -2
    -2 -4 3 1 2]
% Question 2)
display('Réponse à la question 2)')
A(2,:)=A(2,:)+2
pause(20)
clear all, close all, clc


%%%%%%%%%%%%%%
% Exercice 4 %
%%%%%%%%%%%%%%
display(' ')
display('-------------------------')
display('Solution de l''exercice 4')
display('-------------------------')
x=[-4:0.01:4];
y1=x.^2;
y2=-x.^2+3;
subplot(1,2,1), plot(x,y1)
xlabel('Abscisse x'), ylabel('Ordonnée y')
subplot(1,2,2), plot(x,y2)
xlabel('Abscisse x'), ylabel('Ordonnée y')
display('(Voir Figure 1)')
pause(20)
clear all, close all, clc


%%%%%%%%%%%%%%
% Exercice 5 %
%%%%%%%%%%%%%%
display(' ')
display('-------------------------')
display('Solution de l''exercice 5')
display('-------------------------')
x=[-4:0.01:4];
y1=x.^2;
y2=-x.^2+3;
% Méthode 1
plot(x,y1), hold on, plot(x,y2)
xlabel('Abscisse x'), ylabel('Ordonnée y')
% Méthode 2
figure, plot(x,y1,x,y2)
xlabel('Abscisse x'), ylabel('Ordonnée y')
legend('Fonction f1(x)','Fonction f2(x)','Location','NorthOutside')
display('(Voir Figures 1 et 2)')
pause(20)
clear all, close all, clc

%%%%%%%%%%%%%%
% Exercice 6 %
%%%%%%%%%%%%%%
display(' ')
display('-------------------------')
display('Solution de l''exercice 6')
display('-------------------------')
A=[1 -2 ; -2 2]
b=[-3 ; 2]
% Résolution par Gauss-Jordan
aug=[A b]
R=rref(aug)
Vecteur_Solution=R(:,3)
x1=Vecteur_Solution(1)
x2=Vecteur_Solution(2)
% Représentation graphique de la solution
x=[-5:0.01:5];
y1=x+1;
y2=0.5*x+1.5;
plot(x,y1,x,y2)
xlabel('Abscisse x'), ylabel('Ordonnée y')
grid, grid minor
display('(Voir Figure 1 - La solution correspond au point d''intersection des deux droites)')


%%%%%%%%%%%%%%%%%%%%%%%%%
display(' ')
display('FIN DU CALCUL')