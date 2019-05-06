function Cau11
clc;
format short
syms x real
mn = input('Nhap 2 so cuoi MSSV: ');
M = (mn+12)/10;
a = 0; b = 1;
h = 0.1; ya = 1; yb = 1.2;
n = (b-a)/h;
px = x + 2*M; 
qx = x.^3; 
rx = -30;
fx = -x.*(x+1);
for i = 1:n
    x(i) = a + i*h;
end
n = round(n);
A = zeros(n-1);
B = zeros(n-1,1);
A(1,1) = subs(rx,x(1)) - 2*subs(px,(x(1)))/(h^2);
A(1,2) = subs(px,x(1))/(h^2) + subs(qx,x(1))/(2*h);
A(n-1,n-1) = subs(rx,x(n-1)) - 2*subs(px,x(n-1))/(h^2);
A(n-1,n-2) = subs(px,x(n-1))/(h^2) - subs(qx,x(n-1))/(2*h);
B(1,1) = subs(fx,x(1)) - subs((px/(h^2)-qx/(2*h)),x(1))*ya;
B(n-1,1) = subs(fx,x(n-1))-subs((px/(h^2)+qx/(2*h)),x(n-1))*yb;
for i=2:n-2
    A(i,i) = subs(rx,x(i)) - 2*subs(px,(x(i)))/(h^2);
    A(i,i-1) = subs(px,x(i))/(h^2) - subs(qx,x(i))/(2*h);
    A(i,i+1) = subs(px,x(i))/(h^2) + subs(qx,x(i))/(2*h);
    B(i,1) = subs(fx,x(i));
end
C = inv(A)*B;
Xap = 'Xap xi gia tri cua ham y(0.1) = ';disp(Xap);disp(C(1));
Xap = 'Xap xi gia tri cua ham y(0.5) = ';disp(Xap);disp(C(5));
Xap = 'Xap xi gia tri cua ham y(0.9) = ';disp(Xap);disp(C(9));
end