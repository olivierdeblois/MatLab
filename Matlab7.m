%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de Matlab 7  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Partie A : Tracé d'une surface en 3D %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
display('-----------------------------------------------------')
display('Réponse pour la partie A : Tracé d''une surface en 3D')
display('------------------------------------------------------')

x=-3:0.01:3;
y=x;

% Création de la grille
[X,Y] = meshgrid(x,y);

% Calcul de la surface z
a=-1.5*sqrt(X.^2+Y.^2);
b=1.8.^a;
z=b.*sin(X).*cos(0.5*X);

% Diverses façons de présenter z en 3D
mesh(x,y,z), title('Commande mesh'), pause(5)
surf(x,y,z), title('Commande surf'), pause(5)
meshz(x,y,z), title('Commande meshz'), pause(5)
meshc(x,y,z), title('Commande meshc'), pause(5)
surfc(x,x,z), title('Commande surfc'), pause(5)
surfl(x,y,z), title('Commande surfl'), pause(5)
waterfall(x,y,z), title('Commande waterfall'), pause(5)
contour3(x,y,z), title('Commande contour3'), pause(5)
contour(x,y,z), title('Commande contour'), pause(5)


clear all, close all, clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Partie B : Tracé d'une courbe en 3D %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
display('----------------------------------------------------')
display('Réponse pour la partie B : Tracé d''une courbe en 3D')
display('----------------------------------------------------')

t=0:0.01:6*pi;
x=sqrt(t).*sin(2*t);
y=sqrt(t).*cos(2*t);
z=0.5*t;

plot3(x,y,z,'r')
grid, grid minor
title('Dessin d''une courbe en 3D')
xlabel('X'), ylabel('Y'), zlabel('Z')

% Sauvegare de la figure sous la forme d'une image *.jpg
saveas(gcf,'Courbe_3D.jpg')