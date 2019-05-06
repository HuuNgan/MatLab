%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-- INPUT ------------------------------------------------%
% g la bieu thuc cua ham lap g(x),
% x0 la gia tri lap ban dau,
% eps la sai so cho truoc (gia tri mac dinh la 10^(-6)),
% N la so lan lap toi da (gia tri mac dinh la 100).
%-- OUTPUT -----------------------------------------------%
% x la vector nghiem chua day lap x_n,
% ss la vector chua sai so,
% n la so lan lap thuc te.
%---------------------------------------------------------%

function [x, ss, n] = iterate(g, x0, eps, N)
    if nargin < 4, N = 100; end;
    if nargin < 3, eps = 1.0E-6; end;
    if nargin < 2
        error('Ham phai co toi thieu 3 doi so')
    end;
    x = []; ss = []; x = [x;x0]; n = 1;
    err = eps+1; ss = [ss;err];
    while (n < N & abs(err) > eps)
        x1 = feval(g,x0); err = abs(x1-x0);
        n = n+1; x = [x;x1]; ss = [ss;err];
        x0 = x1;
    end;
return;
%---------------------------------------------------------%