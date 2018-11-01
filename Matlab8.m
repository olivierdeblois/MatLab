%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Solution de Matlab 8  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all, close all, clc

format rat

A=[-5 3 4 ; 10 -8 -9 ; 15 1 2];

%%%%%%%%%%%%%
% Section I %
%%%%%%%%%%%%%
display('---------')
display('Section I')
display('---------')

% Question 1)
display('_________________________________________')
display('Réponse à la question 1)')
display('Voir la fonction remplacer.m')

% Question 2)
display('_________________________________________')
display('Réponse à la question 2)')

A
B = remplacer(A, 2, 1, 2)
C = remplacer(B, 3, 1, 3)
U1 = remplacer(C, 3, 2, 5)
L1 =[1 0 0 ; -2 1 0 ; 3 -5 1]
pause(10), clc

% Question 3)
display('_________________________________________')
display('Réponse à la question 3)')

b=[1 2 3]'
display('La solution de Ax = b est trouvée de façon manuelle.')
display('La solution est : [x1=2/45  x2=-31/9   x3=26/9]')
display(' ')
pause(10), clc



%%%%%%%%%%%%%%
% Section II %
%%%%%%%%%%%%%%
display('----------')
display('Section II')
display('----------')

% 4.1)
[L2, U2]=lu(A)

% 4.2)
[L3, U3, P]=lu(A)
% Comparaison de L2 et P'*L3
alpha=P'*L3;
display('On constate que L2 = P''*L3. Ce résultat est normal.')
% Comparaison de U3 et U2
display('On constate que U2 = U3. Ce résultat est normal.')

% 4.3)
% Comparaison de (L1, U1) avec (L2, U2) puis avec (L3, U3)
display(' ')
display('On constate que L2 et L3 sont différents de L1.')
display('On constate que U2 et U3 sont différents de U1.')
display('Ce résultat est également normal. La raison est simple : Matlab utilise la méthode du pivot partiel pour trouver U.')
display('Dans cet exemple, les lignes 1 et 3 ont été permutées.')

pause(10), clc

%%%%%%%%%%%%%%%
% Section III %
%%%%%%%%%%%%%%%
display('-----------')
display('Section III')
display('-----------')

A=[-5 3 4 ; 10 -8 -9 ; 15 1 2]

display('Avec le pivot partiel, il faut permuter les lignes 1 et 3.')
display('La nouvelle matrice à factoriser en LU est la matrice B suivante :')

B=P*A
B=remplacer(B,2,1,-2/3);
B=remplacer(B,3,1,1/3);
U1new=remplacer(B,3,2,5/13)
L1new=[1 0 0 ; 2/3 1 0 ; -1/3 -5/13 1]
U3=U3
L3=L3

display('Nous avons bien U1new = U3 et L1new = L1 comme prévu. Matlab a fait la même permutation que nous.')
