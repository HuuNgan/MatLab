%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-- INPUT -------------------------------------------------%
% f va f1 la bieu thuc cua f(x) va dao ham cua no,
% x0 la gia tri lap ban dau,
% eps la sai so cho truoc (gia tri mac dinh la 10^(-6)),
% N la so lan lap toi da (gia tri mac dinh la 100).
%-- OUTPUT ------------------------------------------------%
% x la vector nghiem chua day lap x_n,
% ss la vector chua sai so,
% n la so lan lap thuc te.
%----------------------------------------------------------%
function [x,ss,n] = newton1(f, f1, x0, eps, N)
    if nargin < 5, N = 100; end;
    if nargin < 4, eps = 1.0E-6; end;
    if nargin < 3
        error('Ham phai co toi thieu 4 doi so');
    end;
    x = []; ss = []; x = [x;x0];
    n = 1; err = eps+1; ss = [ss;err];
    while (n < N & err > eps)
        x1 = x0 - feval(f,x0)/feval(f1,x0);
        err = abs(x1-x0);
        n = n+1; x = [x;x1]; ss = [ss;err]; x0 = x1;
    end;
return;
%-----------------------------------------------------------%