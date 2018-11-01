function gplot3(A,xyz)
        
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      % gplot3(A,xyz) dessine un graphe xyz en 3D     %
      % en tenant compte de la matrice d'adjacence A. %
      %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
      
      [s s] = size(A);
      
      xa = []; 
      xb = []; 
      ya = []; 
      yb = []; 
      za = []; 
      zb = [];
      
      % Extraction des coordonnées de  toutes les arêtes (Pa---Pb)
      for i = 1:(s-1) 
          for j = 2:s 
              if A(i,j) == 1 
                  xa = [xa xyz(i, 1)]; 
                  xb = [xb xyz(j, 1)]; 
                  ya = [ya xyz(i, 2)]; 
                  yb = [yb xyz(j, 2)]; 
                  za = [za xyz(i, 3)]; 
                  zb = [zb xyz(j, 3)]; 
              end 
          end 
      end 
      
      % Dessin de  toutes les arêtes (Pa---Pb)
      plot3([xa; xb], [ya; yb], [za; zb],'m');

