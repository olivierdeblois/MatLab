function [B] = remplacer(A, l, p, m)

% Permet de remplacer une ligne l d’une matrice A par sa somme avec m fois la ligne p
% Sa synthaxe est : B = remplacer(A, l, p, m)

B=A;
B(l,:)=B(l,:)+ m*B(p,:);

end

