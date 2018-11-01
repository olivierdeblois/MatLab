%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Script infog.m pour TP2 | Projet: Infographie  %%
%% Cours MAT-2930 | A18                           %%
%% infog.m utilise la fonction gplot3.m. Celle-ci %%
%% doit ête dans le même répertoire que infog.m.  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

format bank

P1=[-6.5, -2.5, -2]'; P2=[-6.5, 2.5, -2]'; P3=[-6.5, 2.5, 0.5]';...
    P4=[-6.5, -2.5, 0.5]'; P5=[-2.5, -2.5, 0.5]'; P6=[-2.5, 2.5, 0.5]';...
    P7=[-0.75, -2.5, 2]'; P8=[-0.75, 2.5, 2]'; P8=[-0.75, 2.5, 2]';...
    P9=[3.25, -2.5, 2]'; P10=[3.25, 2.5, 2]'; P11=[4.5, -2.5, 0.5]';...
    P12=[4.5, 2.5, 0.5]'; P13=[6.5, -2.5, 0.5]'; P14=[6.5, 2.5, 0.5]';...
    P15=[6.5, 2.5, -2]'; P16=[6.5, -2.5, -2]';

A=[0	1	0	1	0	0	0	0	0	0	0	0	0	0	0	1
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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Section A: Création de la matrice des sommets
display('_______________________________________________________________________________')
display('Section A: Création de la matrice des sommets')

% Question 1)
display(' ')
display('------------------------')
display('Réponse à la question 1)')
display('------------------------')

S=[P1 P2 P3 P4 P5 P6 P7 P8 P9 P10 P11 P12 P13 P14 P15 P16];
Points_3D=table(P1, P2, P3, P4, P5, P6,P7, P8, P9,P10, P11, P12,P13, P14, P15, P16)

pause(15), clc
% FIN DE LA SECTION A

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Section B: Projection en perspective | Création de la figure 1
display('_______________________________________________________________________________')
display('Section B: Projection en perspective | Création de la figure 1')

% Question 2.1)
display(' ')
display('--------------------------')
display('Réponse à la question 2.1)')
display('--------------------------')
display('"Voir Figure 1"')

figure(1)
subplot(1,2,1)
gplot3(A,S')
axis equal, grid, grid minor
title('Voiture en 3D')

% Question 2.2)
display(' ')
display('--------------------------')
display('Réponse à la question 2.2)')
display('--------------------------')

% Matrice de projection en coordonnées en homogènes : P
display(' ')
display('La matrice de projection en perspcetive est :')
P=[1 0 0 0 ; 0 1 0 0 ; 0 0 0 0 ; 0 0 -1/10 1]

% Question 2.3)
display(' ')
display('--------------------------')
display('Réponse à la question 2.3)')
display('--------------------------')

% Matrice  des vertex en coordonnées homogènes : Sh
Sh=[S ; ones(1,16)];

% Calcul de la projection : Setoile1
proj1S=P*Sh;
xetoile=proj1S(1,:)./proj1S(4,:);
yetoile=proj1S(2,:)./proj1S(4,:);
Setoile1=[xetoile; yetoile];

% Affichages des projections (x*, y*) dans la fenêtre Commande
P1=Setoile1(:,1); P2=Setoile1(:,2); P3=Setoile1(:,3);...
    P4=Setoile1(:,4); P5=Setoile1(:,5); P6=Setoile1(:,6);...
    P7=Setoile1(:,7); P8=Setoile1(:,8); P9=Setoile1(:,9);...
    P10=Setoile1(:,10); P11=Setoile1(:,11);P12=Setoile1(:,12);...
    P13=Setoile1(:,13); P14=Setoile1(:,14); P15=Setoile1(:,15);...
    P16=Setoile1(:,16);
Coordonnees_xetoile_yetoile_des_projections = table(P1, P2, P3, P4, P5, P6,P7, P8, P9,P10, P11, P12,P13, P14, P15, P16)

% Question 2.4)
display(' ')
display('--------------------------')
display('Réponse à la question 2.4)')
display('--------------------------')
display('"Voir Figure 1"')

% DESSIN PROJECTION 2D
subplot(1,2,2)
gplot(A,Setoile1','m')
axis equal, grid minor
title('Sa projection en perspective')


% Question 2.5)
display(' ')
display('--------------------------')
display('Réponse à la question 2.5)')
display('--------------------------')

saveas(gcf,'Figure1.jpeg')
display('"Voir le fichier Figure1.jpeg joint au rapport"')

pause(25), clc
% FIN DE LA SECTION B

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Section C: Rotation suivie par une projection en perspective | Création de la figure 2
display('_______________________________________________________________________________')
display('Section C: Rotation + Projection en perspective | Création de la figure 2')

% Question 3.1)
display(' ')
display('--------------------------')
display('Réponse à la question 3.1)')
display('--------------------------')

% Matrice de rotation en coordonnées en homogènes : R
% Rotation de +45 degrés en 3D autour de Ox
display(' ')
display('La matrice de rotation en coordonnées honogènes est :')

teta=45;
R=[1 0 0 0 ; 0 cosd(teta) -sind(teta) 0; 0 sind(teta) cosd(teta) 0 ; 0 0 0 1]


% Question 3.2)
display(' ')
display('--------------------------')
display('Réponse à la question 3.2)')
display('--------------------------')

rotSh=R*Sh;
rotS=rotSh(1:3,:);
P1=rotS(:,1); P2=rotS(:,2); P3=rotS(:,3);...
    P4=rotS(:,4); P5=rotS(:,5); P6=rotS(:,6);...
    P7=rotS(:,7); P8=rotS(:,8); P9=rotS(:,9);...
    P10=rotS(:,10); P11=rotS(:,11);...
    P12=rotS(:,12); P13=rotS(:,13); P14=rotS(:,14);...
    P15=rotS(:,15); P16=rotS(:,16);
Points_3D_Apres_Rotation=table(P1, P2, P3, P4, P5, P6,P7, P8, P9,P10, P11, P12,P13, P14, P15, P16)


% Question 3.3)
display(' ')
display('--------------------------')
display('Réponse à la question 3.3)')
display('--------------------------')
display('"Voir Figure 2"')

figure(2)
subplot(1,2,1)
gplot3(A,S')
axis equal, grid, grid minor
title('Voiture en 3D après la rotation')


% Question 3.4)
display(' ')
display('--------------------------')
display('Réponse à la question 3.4)')
display('--------------------------')

% Calcul de la projection : Setoile2
proj2S=P*rotSh;
xetoile=proj2S(1,:)./proj2S(4,:);
yetoile=proj2S(2,:)./proj2S(4,:);
Setoile2=[xetoile; yetoile];

% Affichages des projections (x*, y*) dans la fenêtre Commande
P1=Setoile2(:,1); P2=Setoile2(:,2); P3=Setoile2(:,3);...
    P4=Setoile2(:,4); P5=Setoile2(:,5); P6=Setoile2(:,6);...
    P7=Setoile2(:,7); P8=Setoile2(:,8); P9=Setoile2(:,9);...
    P10=Setoile2(:,10); P11=Setoile2(:,11);P12=Setoile2(:,12);...
    P13=Setoile2(:,13); P14=Setoile2(:,14); P15=Setoile2(:,15);...
    P16=Setoile2(:,16);
Coordonnees_xetoile_yetoile_des_nouvelles_projections = table(P1, P2, P3, P4, P5, P6,P7, P8, P9,P10, P11, P12,P13, P14, P15, P16)


% Question 3.5)
display(' ')
display('--------------------------')
display('Réponse à la question 3.5)')
display('--------------------------')
display('"Voir Figure 2"')

% DESSIN PROJECTION 2D
subplot(1,2,2)
gplot(A,Setoile2','m')
axis equal, grid minor
title('Sa projection en perspective')

% Question 3.6)
display(' ')
display('--------------------------')
display('Réponse à la question 3.6)')
display('--------------------------')

saveas(gcf,'Figure2.jpeg')
display('"Voir le fichier Figure2.jpeg joint au rapport"')

pause(25), clc
% FIN DE LA SECTION C


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Section D: Zoom suivi par une projection en perspective | Création de la figure 3
display('_______________________________________________________________________________')
display('Section D: Zoom + Projection en perspective | Création de la figure 3')

% Question 4.1)
display(' ')
display('--------------------------')
display('Réponse à la question 4.1)')
display('--------------------------')

% Matrice de zoom en coordonnées en homogènes : Z
% Zoom de 200%
display(' ')
display('La matrice de zoom en coordonnées honogènes est :')

Z=[2 0 0 0; 0 2 0 0 ; 0 0 2 0 ; 0 0 0 1]

% Question 4.2)
display(' ')
display('--------------------------')
display('Réponse à la question 4.2)')
display('--------------------------')

zoomSh=Z*Sh;
zoomS=zoomSh(1:3,:);
P1=zoomS(:,1); P2=zoomS(:,2); P3=zoomS(:,3);...
    P4=zoomS(:,4); P5=zoomS(:,5); P6=zoomS(:,6);...
    P7=zoomS(:,7); P8=zoomS(:,8); P9=zoomS(:,9);...
    P10=zoomS(:,10); P11=zoomS(:,11);...
    P12=zoomS(:,12); P13=zoomS(:,13); P14=zoomS(:,14);...
    P15=zoomS(:,15); P16=zoomS(:,16);

Points_3D_Apres_Zoom=table(P1, P2, P3, P4, P5, P6,P7, P8, P9,P10, P11, P12,P13, P14, P15, P16)

% Question 4.3)
display(' ')
display('--------------------------')
display('Réponse à la question 4.3)')
display('--------------------------')

display('"Voir Figure 3"')

figure(3)
subplot(1,2,1)
gplot3(A,zoomS')
axis equal, grid, grid minor
title('Voiture en 3D après le zoom')

% Question 4.4)
display(' ')
display('--------------------------')
display('Réponse à la question 4.4)')
display('--------------------------')

% Calcul de la projection : Setoile3
proj3S=P*zoomSh;
xetoile=proj3S(1,:)./proj3S(4,:);
yetoile=proj3S(2,:)./proj3S(4,:);
Setoile3=[xetoile; yetoile];

% Affichages des projections (x*, y*) dans la fenêtre Commande
P1=Setoile3(:,1); P2=Setoile3(:,2); P3=Setoile3(:,3);...
    P4=Setoile3(:,4); P5=Setoile3(:,5); P6=Setoile3(:,6);...
    P7=Setoile3(:,7); P8=Setoile3(:,8); P9=Setoile3(:,9);...
    P10=Setoile3(:,10); P11=Setoile3(:,11);P12=Setoile3(:,12);...
    P13=Setoile3(:,13); P14=Setoile3(:,14); P15=Setoile3(:,15);...
    P16=Setoile3(:,16);
Coordonnees_xetoile_yetoile_des_nouvelles_projections = table(P1, P2, P3, P4, P5, P6,P7, P8, P9,P10, P11, P12,P13, P14, P15, P16)

% Question 4.5)
display(' ')
display('--------------------------')
display('Réponse à la question 4.5)')
display('--------------------------')
display('"Voir Figure 3"')

% DESSIN PROJECTION 2D
subplot(1,2,2)
gplot(A,Setoile3','m')
axis equal, grid minor
title('Sa projection en perspective')


% Question 4.6)
display(' ')
display('--------------------------')
display('Réponse à la question 4.6)')
display('--------------------------')

saveas(gcf,'Figure3.jpeg')
display('"Voir le fichier Figure3.jpeg joint au rapport"')
% FIN DE LA SECTION D
pause(25), clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Section E: Comparaison des projections Setoile1 & Setoile3
display('_______________________________________________________________________________')
display('Section E: Comparaison des projections Setoile1 & Setoile3')

% Question 5)
display(' ')
display('------------------------')
display('Réponse à la question 5)')
display('------------------------')

display(' ')
display('Setoile3 n’est pas exactement le zoom double de Setoile1. La raison est que la représentation')
display('3D de la voiture (avant le zoom) et la représentation 3D de la voiture (après le zoom) sont')
display('visualisées à partir du même point (e. g. Centre de projection), et que les objets les plus')
display('proches sont bien plus «amplifiés» par la transformation en perspective. Pour que l’image 2D zoomée,')
display('Setoile3, soit identique à l’image d’origine, Setoile1, il faut que la transformation par un zoom')
display('soit appliquée, après la projection en perspective, sur l''image 2D(et non avant sur l’image 3D).')
% FIN DE LA SECTION E
