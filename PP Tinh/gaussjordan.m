%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT: 
%   N la so phuong trinh va so an,
%   A la ma tran he so cap N x(N+1), cot thu (N+1) la vector tu do.
% OUTPUT:
%   X la vector nghiem.
%------------------------------------------------------------------%
function [X] = gaussjordan(N, A)
    for i = 1:N, b(i) = 0; end;
    for k = 1:N
        max = 0;
        for i = 1:N
            if b(i) == 0
                for j = 1:N
                    if max < abs(A(i,j))
                        max = abs(A(i,j));
                        im = i; jm = j;
                    end;
                end;
            end;
        end;
        if max <= 0, error('Ma tran suy bien'); end;
        b(im) = jm; max = A(im,jm);
        for j = 1:N+1, A(im,j) = A(im,j)/max; end;
        for i = 1:N
            if i ~= im
                tmp = A(i,jm);
                for j = 1:N+1;
                    A(i,j) = A(i,j) - A(im,j)*tmp;
                end;
            end;
        end;
    end;
    for i = 1:N, X(b(i)) = A(i,N+1); end;
return;
%-------------------------------------------------------------------%