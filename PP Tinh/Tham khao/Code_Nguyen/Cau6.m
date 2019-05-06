function Cau6
clc;
format short ;
syms x m real
mn = input('Nhap 2 so cuoi MSSV: ');
M = (mn+12)/10;
X = [1.3 1.7 2.3 2.7 2.9 3.1];
Y = [1.2 8.6 2.3 2.5 3*M 6.6];
n = size(X,2);
g1 = 0.2;
gn = 0.5;
for i = 1:n-1
H(i) = X(i+1) - X(i);
end
A(1) = 2*H(1);
A(n) = 2*H(n-1);
for j = 2:n-1
A(j) = 2*(H(j-1) + H(j));
end
B(1) = 3*(Y(2)-Y(1))/H(1)-3*g1;
B(n) = 3*gn - 3*(Y(n)-Y(n-1))/H(n-1);
for k = 2:(n-1)
B(k) = 3*(Y(k+1)-Y(k))/H(k) - 3*(Y(k)-Y(k-1))/H(k-1);
end
D = diag(A,0); E = diag(H,1); F = diag(H,-1);
C = inv(E+F+D)*(B');
for l = 1:(n-1)
d(l) = (C(l+1)-C(l))/(3*H(l));
b(l) = (Y(l+1)- Y(l))/H(l) - H(l)*(C(l+1)+2*C(l))/3;
end
t = 1.4;
I = 0;
for i =1:n-1
if t>= X(i) && t<X(i+1)
I = Y(i) + b(i)*(t-X(i)) + C(i)*(t-X(i))^2 + d(i)*(t-X(i))^3;
end
end
fprintf('Xap xi gia tri cua ham tai x = %.1f',t);
disp(I);
t = 3.0;
I = 0;
for i =1:n-1
if t>= X(i) && t<X(i+1)
I = Y(i) + b(i)*(t-X(i)) + C(i)*(t-X(i))^2 + d(i)*(t-X(i))^3;
end
end
fprintf('Xap xi gia tri cua ham tai x = %.1f',t);
disp(I);
end