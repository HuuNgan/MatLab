function Cau10
format short;
clear all;
clc;
syms x u y;
mn = input('Nhap 2 so cuoi MSSV: ');
M = (mn+12)/10;
h = 0.2;
x1 = 1;
y1 = 2.4;
xi = 2.2;
f = 2*M.*x+x.*sin(x+2.*y);
K1 = 0; K2 = 0; K3 = 0; K4 = 0;
u = [];u(1) = x1;
k = (xi-x1)/h;
for i=1:k
    u(i+1)= u(i) + h; 
end
y = []; y(1) = y1;
for i=1:round(k)
    K1=h*subs(subs(f,u(i)),y(i));
    K2=h*subs(subs(f,u(i)+h/2),y(i)+K1/2);
    K3=h*subs(subs(f,u(i)+h/2),y(i)+K2/2);
    K4=h*subs(subs(f,u(i)+h),y(i)+K3);
    y(i+1)=y(i)+(K1+2*K2+2*K3+K4)/6;
end
n = round(k+1);
disp('Xap xi: '), y(n),
end