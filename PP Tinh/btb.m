%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   p, q, f la cac ham cho truoc,
%   a, b la hai bien cua khoang dang xet,
%   n la so doan chia,
%   alpha, beta la gia tri cua ham tai hai bien,
%   t1 la diem cuoi,
% OUTPUT:
%   y la vector chua gia tri cua ham so.
%-----------------------------------------------------
function [y] = btb(p,q,f,a,b,n,alpha,beta)
if nargin<8, error('Ham co it nhat 8 doi so'); end;
h = (b-a)/n;
for i = 1:n+1, x(i) = a+(i-1)*h; end;
y(1) = alpha; y(n+1) = beta;
for i = 1:n-1
    A(i) = q(x(i+1))-2/h/h;
end;
for i = 1:n-2
    B(i) = 1/h/h+p(x(i+1))/2/h;
end;
for i = 1:n-2
    C(i) = 1/h/h-p(x(i+2))/2/h;
end;
for i = 1:n-1
    D(i) = f(x(i+1));
end;
D(1) = D(1)-(1/h/h-p(x(2))/2/h)*alpha;
D(n-1) = D(n-1)-(1/h/h+p(x(n))/2/h)*beta;
Y = tridiag(n-1,A,B,C,D);
for i = 1:n-1, y(i=1) = Y(i); end;
return;
%-----------------------------------------------------