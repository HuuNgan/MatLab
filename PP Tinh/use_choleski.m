function use_choleski
N = 3;
A = [1 1 -1; 1 2 0; -1 0 4];
b = [1 2 3]'
C = choleski(N,A);
y = C^(-1)*b
x = (C')^(-1)*y
return;