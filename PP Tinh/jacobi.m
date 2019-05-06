%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   N la cap cua ma tran
%   A la ma tran he so cap N x(N+1),
%   X0 la vector lap ban dau,
%   eps la sai so (gia tri mac dinh la $10^{-6}$),
%   maxit la so lan lap toi da cho phep.
% OUTPUT:
%   X la vector nghiem,
%   ss la sai so thuc te,
%   n la so lan lap thuc te.
%-----------------------------------------------------
function [X, ss, N] = jacobi(N, A, X0, eps, maxit)
    if nargin < 5, maxit = 100; end;
    if nargin < 4, eps = 1.0E-6; end;
    if nargin < 3,
        error('Ham co it nhat 3 doi so');
    end;
    n = 0;
    for l = 1:maxit
        n = n+1;
        for k = 1:N
            sum = 0;
            for j = 1:N;
                if j ~= k
                    sum = sum + A(k,j)*X0(j);
                end;
            end;
            X(k) = (A(k,N+1)-sum)/A(k,k);
        end;
        ss = 0;
        for k = 1:N
            if abs(X(k)-X0(k)) > ss,
                ss  = abs(X(k)-X0(k));
            end;
        end;
        if ss < eps, break; end;
        for k = 1:N, X0(k) = X(k); end;
    end;
return;
%-----------------------------------------------------