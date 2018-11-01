%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de Matlab 6  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

%%%%%%%%%%%%%%%
% Question a) %
%%%%%%%%%%%%%%%
display('---------------------------')
display('Réponse pour la question a)')
display('---------------------------')

F=[0 0 6 6 2 2 6 6 2 2 0
    0 14 14 12 12 10 10 8 8 0 0]

x=F(1,:);
y=F(2,:);
plot(x,y)
axis([-4 18 -4 18]), axis equal
grid, grid minor

Fhomogene=[F ; ones(1,length(F))]

display('Voir Figure 1')
display(' ')
pause(5)

%%%%%%%%%%%%%%%
% Question b) %
%%%%%%%%%%%%%%%
display('---------------------------')
display('Réponse pour la question b)')
display('---------------------------')

% Matrice de rotation en coordonnées en homogènes
teta=-45;
R=[cosd(teta) -sind(teta) 0
    sind(teta) cosd(teta) 0
    0 0 1];

Frotation=R*Fhomogene;
Frotation=Frotation([1 2],:)

figure(2)

subplot(1,2,1)
plot(x,y)
axis([-4 18 -4 18]), axis equal
grid, grid minor

subplot(1,2,2)
xnew=Frotation(1,:);
ynew=Frotation(2,:);
plot(xnew,ynew)
axis([-4 18 -4 18]), axis equal
grid, grid minor

display('Voir Figure 2')
display(' ')
pause(5)

%%%%%%%%%%%%%%%
% Question c) %
%%%%%%%%%%%%%%%
display('---------------------------')
display('Réponse pour la question c)')
display('---------------------------')

% Matrice du cisaillement en coordonnées en homogènes
C=[1 0 0
    1 1 0
    0 0 1];

Fcisaillement=C*Fhomogene;
Fcisaillement=Fcisaillement([1 2],:)

figure(3)

subplot(1,2,1)
plot(x,y)
axis([-4 18 -4 18]), axis equal
grid, grid minor

subplot(1,2,2)
xnew=Fcisaillement(1,:);
ynew=Fcisaillement(2,:);
plot(xnew,ynew)
axis([-4 18 -4 18]), axis equal
grid, grid minor

display('Voir Figure 3')
display(' ')
pause(5)

%%%%%%%%%%%%%%%
% Question d) %
%%%%%%%%%%%%%%%
display('---------------------------')
display('Réponse pour la question d)')
display('---------------------------')

% Matrice de translation en coordonnées en homogènes
T=[1 0 5
    0 1 -6
    0 0 1];

Ftranslation=T*Fhomogene;
Ftranslation=Ftranslation([1 2],:)

figure(4)

subplot(1,2,1)
plot(x,y)
axis([-4 18 -4 18]), axis equal
grid, grid minor

subplot(1,2,2)
xnew=Ftranslation(1,:);
ynew=Ftranslation(2,:);
plot(xnew,ynew)
axis([-4 18 -4 18]), axis equal
grid, grid minor

display('Voir Figure 4')
display(' ')
pause(5)

%%%%%%%%%%%%%%%
% Question e) %
%%%%%%%%%%%%%%%
display('---------------------------')
display('Réponse pour la question e)')
display('---------------------------')

% Matrice de transformation composée
A=T*C*R;

Fglobale=A*Fhomogene;
Fglobale=Fglobale([1 2],:)

figure(5)

subplot(1,2,1)
plot(x,y)
axis([-4 18 -4 18]), axis equal
grid, grid minor

subplot(1,2,2)
xnew=Fglobale(1,:);
ynew=Fglobale(2,:);
plot(xnew,ynew)
axis([-4 22 -4 18]), axis equal
grid, grid minor

display('Voir Figure 5')
display(' ')
