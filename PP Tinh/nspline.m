%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   x va y la cac vector chua cac gia tri cua doi so va cua ham
% OUTPUT:
%   a, b, c, d la cac vector he so cua spline.
%---------------------------------------------------------------
function [a,b,c,d] = nspline(x,y)
    if nargin<2, error('Ham phai co 2 doi so'); end;
    N = min(length(x),length(y));
    for i = 1:N-1
        h(i) = x(i+1)-x(i);
    end;
    A(1) = 1; A(N) = 1;
    B(1) = 0; C(N-1) = 0;
    for i = 2:N-1
        A(i) = 2*(h(i-1)+h(i));
        B(i) = h(i);
        C(i-1) = h(i-1);
    end;
    D(1) = 0; D(N) = 0;
    for i = 2:N-1
        D(i) = 3*(y(i+1)-y(i))/h(i)-3*(y(i)-y(i-1))/h(i-1);
    end;
    [c] = tridiag(N,A,B,C,D);
    for i = 1:N-1
        a(i) = y(i);
        b(i) = (y(i+1)-y(i))/h(i)-h(i)*(c(i+1)+2*c(i))/3;
        d(i) = (c(i+1)-c(i))/3/h(i);
    end;
return;
%---------------------------------------------------------------