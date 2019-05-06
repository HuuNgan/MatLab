%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   N la cap cua ma tran
%   A la ma tran cap N la doi xung va xac dinh duong
% OUTPUT:
%   C la ma tran tam giac duoi
%-----------------------------------------------------
function [C] = choleski(N,A)
    for i=1:N, for j=1:N
            if A(i,j) ~= A(j,i)
                error('ma tran khong doi xung')
            end;
        end;
    end;
    C = zeros(N);
    if A(1,1) <= 0
        error('ma tran khong xac dinh duong');
    end;
    C(1,1) = sqrt(A(1,1));
    for i = 2:N, C(i,1) = A(i,1)/C(1,1); end;
    for k = 2:N
        ak = 0;
        for j = 1:k-1, , ak = ak+C(k,j)*C(k,j); end;
        ak = A(k,k) - ak;
        if ak <= 0
            error('ma tran khong xac dinh duong');
        end;
        C(k,k) = sqrt(ak);
        for i = k+1:N
            ak = 0;
            for j = 1:k-1, ak = ak+C(i,j)*C(k,j); end;
            C(i,k)  = (A(i,k)-ak)/C(k,k);
        end;
    end;
return;
%-----------------------------------------------------