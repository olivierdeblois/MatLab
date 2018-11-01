%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Script Gauss-Seidel pour TP1                     %%
%% Calcule la distribution thermique � 0.001 C pr�s %%
%% �crit par H.B. en 2018 | Cours MAT-2930          %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

k=1;          % Initialisation du nombre d'it�rations
error=1;      % Initialisation de la pr�cision
T=zeros(4,1); % Initialisation des quatre temp�ratures

while norm(error,1)> 0.001
    T(1,k+1)=1/4*(T(2,k)+T(3,k));
    T(2,k+1)=1/4*(T(1,k+1)+T(4,k)+40);
    T(3,k+1)=1/4*(T(1,k+1)+T(4,k)+80);
    T(4,k+1)=1/4*(T(2,k+1)+T(3,k+1)+200);
    error=T(:,k+1)-T(:,k);
    k=k+1;
end

% Affichage des quatre temp�ratures � chaque it�ration
display('-----------------------------------------------------------------------------')
Iteration=(1:k)';
T1=T(1,:)';
T2=T(2,:)';
T3=T(3,:)';
T4=T(4,:)';
RESULTATS=table(Iteration,T1,T2,T3,T4)

%% Extraction de la solution finale
Solution=T(:,k)';
Solution=round(Solution,3);

%% Affichage des r�sultats de l'analyse
display('-----------------------------------------------------------------------------')
display('CONCLUSION :')
display(' ')
display(['- Nombre d''it�rations qui ont �t� n�cessaires : ',num2str(k-1)])
display(' ')
display(['- La solution converge vers : ', num2str(Solution)])
display(' ')
display(['- L''erreur commise est de : ',num2str(norm(error,inf)), ' < 0.001'])