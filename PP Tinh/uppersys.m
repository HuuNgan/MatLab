%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT: 
%   N la so phuong trinh va so an,
%   A la ma tran he so cap N x(N+1), cot thu (N+1) la vector tu do.
% OUTPUT:
%   X la vector nghiem.
%------------------------------------------------------------------%
function [X] = uppersys(N, A)
    X(N) = A(N,N+1)/A(N,N);
    for k = N-1:-1:1
        sum = 0;
        for j = k+1:N
            sum = sum + A(k,j)*X(j);
        end;
        X(k) = (A(k,N+1)-sum)/A(k,k);
    end;
return;
%------------------------------------------------------------------%