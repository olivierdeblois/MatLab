function tracer(A, points)
%Reliez les points dans un plan a 3 dimentions.
x1 = [];
y1 = [];
z1 = [];

x2 = [];
y2 = [];
z2 = [];

nombre = size(A);
    for i = 1:(nombre-1)
        for j = 2:nombre
            if A(i,j) ~= 0
                x1 = [x1 points(i, 1)];
                x2 = [x2 points(j, 1)];
                y1 = [y1 points(i, 2)];
                y2 = [y2 points(j, 2)];
                z1 = [z1 points(i, 3)];
                z2 = [z2 points(j, 3)];
            end
        end
    end
    plot3([x1; x2], [y1; y2], [z1; z2], '-b');
end