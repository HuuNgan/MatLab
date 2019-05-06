function Cau1
clc;
format short
syms x
mn = input('Nhap 2 so cuoi MSSV: ');
M = (mn+12)/10;
f = exp(x)+2*x^2+sin(x)/M-10;
a = 1;
b = 2;
if double(subs(f,x,a)*subs(diff(diff(f,x),x),x,a))>0
    X = a;
else
    X = b;
end
if double(subs(diff(f,x),x,a))<double(subs(diff(f,x),x,b));
    min = subs(diff(f,x),x,a);
else 
    min = subs(diff(f,x),x,b);
end
for i = 1:2
    X = X - subs(f,x,X)/subs(diff(f,x),x,X);
    Denta = ceil((abs(subs(f,x,X))*10^4)/min)/10^4;
    i = i+1;
end

x2 = double(X), SaiSo = double(Denta),

end

