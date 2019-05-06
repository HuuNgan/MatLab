function Cau9
clc;
syms x y;
mn = input('Nhap 2 so cuoi MSSV: ');
M = (mn+12)/10;
a=  2;
b = 62;
n =120;
h= (b-a)/n;
m=n/2;
f= (2*M*x^2+x+1)/(7*x^4+x+6);
y= subs(f,x,a)+subs(f,x,b)+4*subs(f,x,a+h);
for i = 1 :m-1
    y= y+ 2*subs(f,x,a+2*i*h)+4*subs(f,x,a+(2*i+1)*h);
end
y=double(y*h/3);
y=round(y*10000)/10000;
disp(y);
end
