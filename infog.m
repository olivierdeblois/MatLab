%Olivier Deblois 111 145 648
%Nicola Ouellet 111 127 844
%Equipe 12

clear all, close all, clc
%Section A - Création de la matrice des sommets
% Création de la matrice de genre 

S = [-6.5, -2.5, -2;
     -6.5, 2.5, -2;
     -6.5, 2.5, 0.5;
     -6.5, -2.5, 0.5;
     -2.5, -2.5, 0.5;
     -2.5, 2.5, 0.5;
     -0.75, -2.5, 2;
     -0.75, 2.5, 2; 
     3.25, -2.5, 2; 
     3.25, 2.5, 2; 
     4.5, -2.5, 0.5; 
     4.5, 2.5, 0.5;
     6.5, -2.5, 0.5;
     6.5, 2.5, 0.5;
     6.5, 2.5, -2; 
     6.5, -2.5, -2]
 
A = [0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	1
1	0	1	0	0	0	0	0	0	0	0	0	0	0	1	0
0	1	0	1	0	1	0	0	0	0	0	0	0	0	0	0
1	0	1	0	1	0	0	0	0	0	0	0	0	0	0	0
0	0	0	1	0	1	1	0	0	0	0	0	0	0	0	0
0	0	1	0	1	0	0	1	0	0	0	0	0	0	0	0
0	0	0	0	1	0	0	1	1	0	0	0	0	0	0	0
0	0	0	0	0	1	1	0	0	1	0	0	0	0	0	0
0	0	0	0	0	0	1	0	0	1	1	0	0	0	0	0
0	0	0	0	0	0	0	1	1	0	0	1	0	0	0	0
0	0	0	0	0	0	0	0	1	0	0	1	1	0	0	0
0	0	0	0	0	0	0	0	0	1	1	0	0	1	0	0
0	0	0	0	0	0	0	0	0	0	1	0	0	1	0	1
0	0	0	0	0	0	0	0	0	0	0	1	1	0	1	0
0	1	0	0	0	0	0	0	0	0	0	0	0	1	0	1
1	0	0	0	0	0	0	0	0	0	0	0	1	0	1	0];


[I,J] = find(A);
St = S';

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  Section B                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(1)
suptitle('FIGURE 1')
%2.1 Tracer le graphe de la voiture en 3D sur la partie gauche de la figure 1.
subplot(1,2,1), tracer(A, S)
title('Voiture en 3D')
xlabel('x')
ylabel('y')
zlabel('z')
axis('equal')
axis([ -10 10 -5 5 -5 5])
grid, grid minor

%%Calcul de projection

%2.2 Déterminer la matrice de projection P dans le script et l’afficher dans la fenêtre commande lors de son exécution.
Shomog=[St; ones(1,16)];
P=[1 0 0 0 ; 0 1 0 0 ; 0 0 0 0 ; 0 0 -1/10 1]
%2.3 Déterminer Setoile1 dans le script et l’afficher dans la fenêtre commande lors de son exécution.
Setoile = P*Shomog;
ligne4=Setoile(4,:);
xetoile=Setoile(1,:)./ligne4;
yetoile=Setoile(2,:)./ligne4;
Setoile1=[xetoile ; yetoile]

%2.4. Tracer sur la partie droite de la figure 1, la projection de la voiture sur le plan Oxy.
subplot(1,2,2), gplot(A, Setoile1', '-b')
title('Projection sur le plan Oxy')
xlabel('x')
ylabel('y')
zlabel('z')
axis('equal')
axis([ -10 10 -5 5])
grid, grid minor


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  Section C                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(2)
suptitle('FIGURE 2')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     rotation du model 3D           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%3.1 Déterminer la matrice de rotation R dans le script et l’afficher dans la fenêtre commande lors de son exécution.
teta = 45;
R = [1 0 0 ;
    0 cosd(teta) -sind(teta);
    0 sind(teta) cosd(teta)]

%3.2 Déterminer rotS dans le script et l’afficher dans la fenêtre commande lors de l’exécution du script.
rotS=R*S';
rotS=rotS'

%3.3. Tracer en 3D le graphe de la voiture après la rotation sur la partie gauche d’une figure 2.
subplot(1,2,1), tracer(A, rotS)
title('Voiture en 3D')
xlabel('x')
ylabel('y')
zlabel('z')
axis('equal')
axis([-10 10 -5 5 -5 5])
grid, grid minor

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     projection de la rotation      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%3.4 Déterminer Setoile2 dans le script et l’afficher dans la fenêtre commande lors de son exécution.
rotShomog=[rotS'; ones(1,16)];
Setoile2 = P*rotShomog;
ligne4=Setoile2(4,:);
xetoile=Setoile2(1,:)./ligne4;
yetoile=Setoile2(2,:)./ligne4;
Setoile2=[xetoile ; yetoile]

%3.5 Tracer sur la partie droite de la figure 2, la nouvelle projection de la voiture sur le plan Oxy.
subplot(1,2,2), gplot(A, Setoile2', '-b')
title('Projection sur le plan Oxy')
xlabel('x')
ylabel('y')
zlabel('z')
axis('equal')
axis([-10 10 -5 5])
grid, grid minor

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                  Section D                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure(3)
suptitle('FIGURE 3')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%        Zoom du model 3D            %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%4.1 Déterminer la matrice de zoom Z dans le script et l’afficher dans la fenêtre commande lors de son exécution.
Z=[2 0 0
   0 2 0
   0 0 2]

%4.2 Déterminer zomS dans le script et l’afficher dans la fenêtre commande lors de l’exécution du script.
zoomS = (Z*St)'

%4.3 Tracer en 3D le graphe de la voiture après le zoom sur la partie gauche d’une figure 3.
subplot(1,2,1), tracer(A, zoomS)
title('Voiture en 3D')
xlabel('x')
ylabel('y')
zlabel('z')
axis('equal')
axis([-20 20 -10 10 -10 10])
grid, grid minor

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%       projection du zoom           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%4.4 Déterminer Setoile3 dans le script et l’afficher dans la fenêtre commande lors de son exécution.
zoomShomog=[zoomS'; ones(1,16)];
Setoile3 = P*zoomShomog;
ligne4=Setoile3(4,:);
xetoile=Setoile3(1,:)./ligne4;
yetoile=Setoile3(2,:)./ligne4;
Setoile3=[xetoile ; yetoile]

%4.5 Tracer sur la partie droite de la figure 3, la nouvelle projection de la voiture sur le plan Oxy.
subplot(1,2,2), gplot(A, Setoile3', '-b')
title('Projection sur le plan Oxy')
xlabel('x')
ylabel('y')
zlabel('z')
axis('equal')
axis([-20 20 -10 10])
grid, grid minor

%5. Dans un commentaire à la fin du script, comparer 
%les graphes des projections Setoile1 et Setoile3. Est-ce que Setoile3 et un zoom de 200% de Setoile1 ? Justifier.

%La Figure 3 est en fait au agrandissement de 200% de la distance entre les
%points de la figure 1.





