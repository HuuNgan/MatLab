function Cau5
clc;
format short
mn = input('Nhap 2 so cuoi MSSV: ');
M = (mn+12)/10;
syms x 
X = [1.3 1.7 2.3 2.7 2.9 3.1];
Y = [1.2 8.6 2.3 2.5 2*M 6.6];
n = size(X,2); h=[]; b=[];d=[];
A = zeros(n);
B = zeros(n,1);
A(1,1)=1; A(n,n)=1;
for i=1:n-1
    h(i) = X(i+1)-X(i);
end
for i=2:n-1
    A(i,i)=2*(h(i-1)+h(i));
    A(i,i-1)=h(i-1);
    A(i,i+1)=h(i);
    B(i,1)=3*(Y(i+1)-Y(i))/h(i)-3*(Y(i)-Y(i-1))/h(i-1);
end
c = inv(A)*B;
for i=1:n-1
    b(i)=(Y(i+1)-Y(i))/h(i)-h(i)*(c(i+1)+2*c(i))/3;
    d(i)=(c(i+1)-c(i))/(3*h(i));
end
t = 1.4;
I = 0;
for i =1:n-1
if t>= X(i) && t<X(i+1)
I = Y(i) + b(i)*(t-X(i)) + c(i)*(t-X(i))^2 + d(i)*(t-X(i))^3;
end
end
fprintf('Xap xi gia tri cua ham tai x = %.1f',t);
disp(I);
t = 2.5;
I = 0;
for i =1:n-1
if t>= X(i) && t<X(i+1)
I = Y(i) + b(i)*(t-X(i)) + c(i)*(t-X(i))^2 + d(i)*(t-X(i))^3;
end
end
fprintf('Xap xi gia tri cua ham tai x = %.1f',t);
disp(I);
end

