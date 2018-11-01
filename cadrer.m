function [B] = cadrer(A, l, c)

% Permet de multiplier la ligne l d’une matrice A par le scalaire non nul c
% Sa synthaxe est : B = cadrer(A, l, c)

B=A;
B(l,:)=B(l,:)*c;

end

