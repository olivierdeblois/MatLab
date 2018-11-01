
t1 = 0;
t2 = 0;
t3 = 0;
t4 = 0;
%on donne une valeur > 0.01 a x pour commencer notre boucle while.
x = 1;

while x > 0.001 

        T1 = [t1,t2,t3,t4];
        
        tt1 = (t2 + t3)/4 ;
        tt2 = (t1 + t4 + 40)/4;
        tt3 = (t1 + t4+80)/4;
        tt4 = (t2 + t3 + 200)/4;
        
        T2=[tt1,tt2,tt3,tt4];
        
       
        % on compare la norme infini d'un vecteur comprenant nos rsultats apres l'iteration 
        % avec celle d'un vecteur comprenant nos resultats avant
        % l'iteration
        x = (norm(T2,inf) - norm(T1,inf));
        
    
        t1=tt1;
        t2=tt2;
        t3=tt3;
        t4=tt4;
    
end
 disp(T2)