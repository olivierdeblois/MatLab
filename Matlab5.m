%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de Matlab 5  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

%%%%%%%%%%%%
% Partie 1 %
%%%%%%%%%%%%
display('--------')
display('Partie 1')
display('--------')

format

% La matrice A et son conditionnement
A = [ 1 0 -2 ; -3 1 4 ; 2 -3 4], cond_A = cond(A)
display('Commentaire : Le conditionnement de A est moyen, il faut faire attention � la fiabilit� de la solution.')
display(' ')
b = rand(length(A),1)

% Calcul des solutions x de l'�quation Ax = b
x1 = A\b;
x2 = inv(A)*b;
aug = [A b]; R = rref(aug); x3 = R(:,end);

format long e
display(' ')
display('Les solutions [x1 x2 x3] obtenues respectivement par les trois m�thodes sont : ')
Solutions = [x1 x2 x3]

% Calcul des normes
Normex2_x1 = norm(x2-x1);
Normex3_x1 = norm(x3-x1);
Normex3_x2 = norm(x3-x2);
display(' ')
display('Les trois normes ||x2-x1||, ||x3-x1||, ||x3-x2|| sont : ')
Normes = [Normex2_x1 Normex3_x1 Normex3_x2]

% Conclusion sur la partie 1
display('Conclusion sur la partie 1 : Les normes sont tr�s faibles, proches de z�ro.')
display('On conclut que les trois m�thodes donnent un r�sultat pr�cis')
display('malgr� le fait que cond(A)soit moyen et non faible.')



%%%%%%%%%%%%
% Partie 2 %
%%%%%%%%%%%%
display(' ')
display('--------')
display('Partie 2')
display('--------')

format rat

H4 = hilb(4)
H5 = hilb(5)



%%%%%%%%%%%%
% Partie 3 %
%%%%%%%%%%%%
display(' ')
display('--------')
display('Partie 3')
display('--------')

format

% La matrice H et son conditionnement
H = hilb(20); cond_H = cond(H)
display('Commentaire : Le conditionnement de H est immense, il est fort probable que la solution soit impr�cise.')
display(' ')
b = rand(length(H),1)

% Calcul des solutions x de l'�quation Hx = b
x1 = H\b;
x2 = inv(H)*b;
aug = [H b]; R = rref(aug); x3 = R(:,end);

format long e
display(' ')
display('Les solutions [x1 x2 x3] obtenues respectivement par les trois m�thodes sont : ')
Solutions = [x1 x2 x3]

% Calcul des normes
Normex2_x1 = norm(x2-x1);
Normex3_x1 = norm(x3-x1);
Normex3_x2 = norm(x3-x2);
display(' ')
display('Les trois normes ||x2-x1||, ||x3-x1||, ||x3-x2|| sont : ')
Normes = [Normex2_x1 Normex3_x1 Normex3_x2]

% Conclusion sur la partie 2
display('Conclusion sur la partie 2 : Les normes sont tr�s grandes.')
display('C''est un signe que les m�thodes utilis�es ne donnent pas des r�sultats pr�cis.')
display('Ceci �tait pr�visible vu l''�norme valeur du conditionnement de H.')
display(' ')
display('Matlab �met un "Warning" quand les commandes \ ou inv sont utilis�es.')
display('Ce n''est malheureusement pas le cas pour la commande rref.')

% Remarque importante
display(' ')
display('La commande \ est la plus stable num�riquement en comparaison avec inv et rref')