%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de Matlab 11  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc
 
 %% Vecteur de population initial
 x0=100*ones(3,1);
 
%% Question a.1)
display('--------------------------------------------------------------')
display('R�ponse � la question a.1)')

% Calcul de la matrice de Leslie
t=input('Quelle est la valeur du taux de survie des b�b�s, t ? ');
display(' ')
display('Matrice de Leslie : ')
A=[0 0 0.33
     t 0 0
     0 0.71 0.94]

% Calcul de l'�volution des populations de 2018 � 2040
 P=x0;
 x=x0;
 for k=2019:2040
     x=A*x;
     P=[P x];
 end
 P1=round(P',0);
 
 X=(2018:2040)';
 Y=sum(P1')';
 Population=[X P1 Y]

 plot(X,[P1 Y],'-o')
 grid, grid minor, legend('B�b�s','Jeunes Adultes','Adultes','Population totale','location','best')
 xlabel('Ann�e'), ylabel('Effectifs des trois populations')
 display('Voir la figure 1')
 pause (10), clc
 display(' ')
   
%% Question a.2)
display('--------------------------------------------------------------')
display('R�ponse � la question a.2)')
 Pourcentage=P1'./[sum(P1'); sum(P1'); sum(P1')];
 Pourcentage1=Pourcentage';
 format bank
 Pourcentage=[X Pourcentage1]

 figure(2)
 plot(X,Pourcentage1,'-o')
 grid, grid minor, legend('B�b�s','Jeunes Adultes','Adultes','location','best')
 xlabel('Ann�e'), ylabel('Effectifs en % des trois populations')
 display('Voir la figure 2')
 display(' ')
 pause(10), clc
 
%% Question a.3)
display('--------------------------------------------------------------')
display('R�ponse � la question a.3)')
 %% Ratio en % � long terme
 Ratio_Population_Long_Terme=(Pourcentage1(23,:))'*100
 
%% Question a.4)
display('--------------------------------------------------------------')
display('R�ponse � la question a.4)')
 %% Taux de croissance � long terme
 x_23=P(:,23);
 x_22=P(:,22);
 Taux_Croissance_Long_Terme=x_23./x_22*100;
 Taux_Croissance_Long_Terme=Taux_Croissance_Long_Terme(1,1)
  
%% Questions b et c)
display('--------------------------------------------------------------')
display('R�ponses aux questions b) et c)')
display('Pour ce faire, ex�cuter le script pour les nouvelles valeurs de t.')
display(' ')
display('L''oiseau ne disparaitra pas pour les taux de survie t > 0.24')
 
 

 