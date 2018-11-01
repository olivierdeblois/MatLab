%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de l'exemple 6 :                   %%
%% Croissance démographique : Modèle de Leslie %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc
 
 %% Matrice de Leslie
display('--------------------------------------------------------------')
display('Matrice de Leslie')
 L=[0 4 3
     0.5 0 0
     0 0.25 0]
 
 %% Vecteur de population initial
 x0=[40
     40
     20];
 
%% Question a)
display('--------------------------------------------------------------')
display('Réponse à la question a)')
 P=x0;
 x=x0;
 for k=1:35
     x=L*x;
     P=[P x];
 end
 P1=round(P',0);
 
 Annee=(0:35)';
 Population_Bebes=P1(:,1);
 Population_Jeunes=P1(:,2);
 Population_Adultes=P1(:,3);
 RESULTAT=table(Annee,Population_Bebes,Population_Jeunes,Population_Adultes)

 pause(10)
 
 plot(Annee,P1,'-*')
 grid, grid minor, legend('Bébés','Jeunes Adultes','Adultes','location','best')
 xlabel('Année'), ylabel('Effectifs des trois populations')
 display('Voir la figure 1')
 display(' ')
 
 pause(20), clc
  
%% Question b)
display('--------------------------------------------------------------')
display('Réponse à la question b)')
 
 Pourcentage=P./[sum(P); sum(P); sum(P)];
 Pourcentage1=Pourcentage'*100;
 
 Pourcentage_Bebes=Pourcentage1(:,1);
 Pourcentage_Jeunes=Pourcentage1(:,2);
 Pourcentage_Adultes=Pourcentage1(:,3);
 RESULTAT=table(Annee,Pourcentage_Bebes,Pourcentage_Jeunes,Pourcentage_Adultes)

 pause(10)
  
 figure(2)
 plot(Annee,Pourcentage1,'-*')
 grid, grid minor, legend('Bébés','Jeunes Adultes','Adultes','location','best')
 xlabel('Année'), ylabel('Effectifs en % des trois populations')
 display(' ')
 display('Voir la figure 2')
 display(' ')
 
 pause(20), clc
 
%% Question c)
display('--------------------------------------------------------------')
display('Réponse à la question c)')
 %% ratio en % à long terme
 Ratio_Population_Long_Terme=(Pourcentage1(36,:))'
 
%% Question d)
display('--------------------------------------------------------------')
display('Réponse à la question d)')
 %% Taux de croissance à long terme
 x_35=P(:,36);
 x_34=P(:,35);
 Taux_Croissance_Annuel_Long_Terme=x_35./x_34*100
 
 
 
 

 