%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT: 
%   N la so phuong trinh va so an,
%   A la ma tran he so cap N x(N+1), cot thu (N+1) la vector tu do.
% OUTPUT:
%   X la vector nghiem.
%------------------------------------------------------------------%

function [X] = gauss(N, A)
    for k = 1:N
        if A(k,k) == 0
            flag = 0;
            for i = k+1:N
                if A(i,k) != 0
                    flag =1;
                    for j = 1:N+1
                        tmp = A(k,j);
                        A(k,j) = A(i,j);
                        A(i,j) = tmp;
                    end;
                    break;
                end;
            end;
            if flag == 0
                error('Ma tran suy bien');
            end;
        end;
        for i = k+1:N
            tmp = A(i,k);
            for j = k:N+1
                A(i,j) = A(i,j) - tmp*A(k,j)/A(k,k);
            end;
        end;
    end;
    X = uppersys(N,A);
return;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%