%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de Matlab 10  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

format

%% Question a)
display('-----------------------------------------------')
display('Réponse à la question a)')

% Calcul (en million) du vecteur de la population initiale en 2018
Pop_CA_2018=31524000*1e-6;
Pop_USA_2018=228680000*1e-6;
x0=[Pop_CA_2018 ; Pop_USA_2018]; 

% Informations (en million) sur les flux migtatoires annuels (dans les deux sens)
CA2USA=516000*1e-6;
USA2CA=381262*1e-6;

% Calcul (en million) des populations qui ne changent pas de place en 2018
CA2CA=(Pop_CA_2018-CA2USA);
USA2USA=(Pop_USA_2018-USA2CA);

% Calcul de la matrice de Migration M (État 1: Californie | État 2: Reste des USA)
M(1,1)=CA2CA/x0(1);
M(2,1)=CA2USA/x0(1);
M(1,2)=USA2CA/x0(2);
M(2,2)=USA2USA/x0(2);
M

pause(10)

%% Question b)
display('-----------------------------------------------')
display('Réponse à la question b)')

% Calcul de la matrice P1
x=x0;
P1=x;
for i=2019:2038,
    x=M*x;
    P1=[P1 x];
end
format bank
P1=round(P1,2)';

% Affichage d'un tableau montrant l'évolution des deux populations de 2018
% à 2038
Annee=(2018:2038)';
Population_Ca=P1(:,1);
Population_USA=P1(:,2);
RESULTATS=table(Annee,Population_Ca,Population_USA)

pause(10)

%% Question c)
display('-----------------------------------------------')
display('Réponse à la question c)')

figure, subplot(2,1,1), subplot(2,1,2)

subplot(2,1,1)
plot(Annee, P1,'-o')
legend('Population en Californie','Population dans le reste des USA','Location','best')
axis([2018 2038 0 300])
grid, grid minor, title('Migration de populations entre CA et reste USA')
xlabel('Année'), ylabel('Effectifs (million)')

display(' ')
display('"Voir la figure"')

pause(10)
clc

%% Question d)
display('-----------------------------------------------')
display('Réponse à la question d)')

display(' ')
display('L''équation matricielle qui modélise la nouvelle situation est: x(k+1) = M x(k) + [0.1 ; 2]')
display(' ')

pause(10)

%% Question e)
display('-----------------------------------------------')
display('Réponse à la question e)')

% Vecteur immigration provenant de l'extérieur des USA
Externe=[0.1 ; 2];

% Calcul de la matrice P2
x=x0;
P2=x;
for i=2019:2038,
    x=M*x+Externe;
    P2=[P2 x];
end
P2=round(P2,2)';

% Affichage d'un tableau montrant l'évolution des deux populations de 2018
% à 2038
Population_Ca_New=P2(:,1);
Population_USA_New=P2(:,2);
RESULTATS=table(Annee,Population_Ca_New,Population_USA_New)

pause(10)

%% Question f)
display('-----------------------------------------------')
display('Réponse à la question f)')

subplot(2,1,2)
plot(Annee, P2,'-o')
legend('Population en Californie','Population dans le reste des USA','Location','best')
axis([2018 2038 0 300])
grid, grid minor, title('Migration de populations (Avec immigration de l''extérieur)')
xlabel('Année'), ylabel('Effectifs (million)')

display(' ')
display('"Voir la figure"')
display(' ')

pause(10)

%% Question g)
display('-----------------------------------------------')
display('Réponse à la question g)')

% Sauvegare de la figure sous la forme d'une image *.jpg
saveas(gcf,'Migration.jpg')
display(' ')
display('"Voir le fichier image"')