%Olivier Deblois 111 145 648
%Nicola Ouellet 111 127 844
%Equipe 12
close all, clear all, clc

format rat
H = [1 0 0 1/2 1/3 0 0;
    0 0 1/3 0 1/3 0 0;
    0 1/2 0 0 0 1 0;
    0 0 0 0 1/3 0 0;
    0 0 0 1/2 0 0 0;
    0 1/2 1/3 0 0 0 0;
    0 0 1/3 0 0 0 1]

display('QUESTION 2')
display('A partir de la page 6, l''utilisateur peut seulement aller vers la page 3. Ensuite, sois l''utilasateur se rend a la page 7 ')
display('ou il reste entre les page 2, 3 et 6. A long terme, il est ertain que l''utilisateur finira a la page 7. Lorsqu''il y est,')
display('il ne peut qu''y rester.')
display('A partir de la page 5, il peut finir sois a la page 1 ou 7, car celles-ci ne revoie que sur eux-memes.')
fprintf('\n')

display('QUESTION 3')
x0=[0 0 1 0 0 0 0]';
x4 = H^4*x0;
ProbPage6 = x4(6,:)
display('Les probabilites que le navigateur se retrouve a la page 6 sont de 5/36.')
fprintf('\n')

display('QUESTION 4')
display('La matrice n''est pas reguliere car certaine valeur de la matrice restent a 0 peut importe la puissance de la matrice')
display('Ex: H^2 , H^10 , H^1000.')
fprintf('\n')

display('QUESTION 5')
format short
Hinf = H^1000
fprintf('\n')

display('QUESTION 6')
display('(P-I)q = 0 , ou I est la matrice identite.')
fprintf('\n')

display('QUESTION 7')
format rat
I= eye(7,7);
B = H-I
b = [ 0 0 0 0 0 0 0]';
Aug = [B b];
R = rref(Aug)
fprintf('\n')



