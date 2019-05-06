function Cau2
clc;
format short
syms x
mn = input('Nhap 2 so cuoi MSSV: ');
M = (mn+12)/10;
A=[6+M 2 -3 4 5; 4 7+M 4 -2 -6; 3 -3 8+M -2 -5; 2 -3 4 9+M -3; 5 -3 4 -2 10+M];
B=[9;8;7;6;5];
[L , U]= lu(A);
X= inv(A)*B;
l43 = L(4,3);
u55 = U(5,5);
x5 = X(5,1);
a = 'Phan tu L43 la:'; 
disp(a);
disp (l43);
b = 'Phan tu U55 la:'; disp(b); disp(u55);
c = 'Gia tri x5 la:';
disp(c); disp (x5)
end