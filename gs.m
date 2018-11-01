
t1 = 0;
t2 = 0;
t3 = 0;
t4 = 0;
%on donne une valeur > 0.01 a x pour commencer notre boucle while. 
x = 1;

while x > 0.001 

        T1 = [t1,t2,t3,t4];
        
        t1 = (t2 + t3)/4 ;
        t2 = (t1 + t4 + 40)/4;
        t3 = (t1 + t4+80)/4;
        t4 = (t2 + t3 + 200)/4;
        
        T2=[t1,t2,t3,t4];
   
        % on compare la norme infini d'un vecteur comprenant nos rsultats apres l'iteration 
        % avec celle d'un vecteur comprenant nos resultats avant
        % l'iteration
        x = (norm(T2,inf) - norm(T1,inf));
    
end
disp(T2)