function Cau7
clc;
format short
syms x
mn = input('Nhap 2 so cuoi MSSV: ');
M = (mn+12)/10;
u = [1.2 1.3 1.4 1.5 1.7];
y = [4*M 2.5 5 4.5 5.5];
gx = sqrt(x.^2+1);
hx = cos(x);
fx = sin(x);
A = zeros(3); B = zeros(3,1);
for i = 1:5
    A(1,1)=A(1,1)+subs(gx.^2,u(i)) ;
    A(2,2)=A(2,2)+subs(hx.^2,u(i));
    A(3,3)=A(3,3)+subs(fx.^2,u(i));
    A(1,2)=A(1,2)+subs(hx.*gx,u(i));
    A(1,3)=A(1,3)+subs(gx.*fx,u(i));
    A(2,3)=A(2,3)+subs(fx.*hx,u(i));
    B(1,1)=B(1,1)+y(i)*subs(gx,u(i));
    B(2,1)=B(2,1)+y(i)*subs(hx,u(i));
    B(3,1)=B(3,1)+y(i)*subs(fx,u(i));
end
A(2,1) = A(1,2); A(3,1) = A(1,3); A(3,2) = A(2,3);
C = inv(A)*B;
A = C(1), B = C(2), C = C(3),
end

