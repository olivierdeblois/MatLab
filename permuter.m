function [B] = permuter(A, l, s)

% Permet de permuter les lignes l et s d’une matrice A
% Sa syntaxe est : B = permuter(A, l, s)

B=A;
B([l s],:)=B([s l],:);

end

