%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   x va y la cac vector chua cac gia tri cua doi so va cua ham
% OUTPUT:
%   a, b, c, d la cac vector he so cua spline.
%---------------------------------------------------------------
function [a,b,c,d] = cspline(x,y,alpha,beta)
    if nargin<4, error('Ham phai co 4 doi so'); end;
    N = min(length(x),length(y));
    for i = 1:N-1
        h(i) = x(i+1)-x(i);
    end;
    A(1) = 2*h(1); A(N) = 2*h(N-1);
    B(1) = h(1); C(1) = h(1);
    for i = 2:N-1
        A(i) = 2*(h(i-1)+h(i));
        B(i) = h(i);
        C(i) = h(i);
    end;
    D(1) = 3*(y(2)-y(1))/h(1)-3*alpha;
    D(N) = 3*beta-3*(y(N)-y(N-1))/h(N-1);
    for i = 2:N-1
        D(i) = 3*(y(i+1)-y(i))/h(i)-3*(y(i)-y(i-1))/h(i-1);
    end;
    c = tridiag(N,A,B,C,D);
    for i = 1:N-1
        a(i) = y(i);
        b(i) = (y(i+1)-y(i))/h(i)-h(i)*(c(i+1)+2*c(i))/3;
        d(i) = (c(i+1)-c(i))/3/h(i);
    end;
return;
%---------------------------------------------------------------