%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT: 
%   N la so phuong trinh va so an,
%   A la ma tran he so cap N x(N+1), cot thu (N+1) la vector tu do.
% OUTPUT:
%   X la vector nghiem.
%------------------------------------------------------------------%
function [X] = lowersys(N, A)
    X(1) = A(1,N+1)/A(1,1);
    for k = 2:N
        sum = 0;
        for j = 1:k-1
            sum = sum + A(k,j)*X(j);
        end;
        X(k) = (A(k,N+1)-sum)/A(k,k);
    end;
return;
%------------------------------------------------------------------%