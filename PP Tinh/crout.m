%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   N la cap cua ma tran,
%   A la ma tran he so cap N.
% OUTPUT:
%   L va U la cac ma tran tam giac
%---------------------------------------------------------%
function [L, U] = crout(N, A);
    L = zeros(N); U = zeros(N);
    for i = 1:N, U(i,i) = 1; end;
    for i = 1:N, L(i,1) = A(i,1); end;
    if L(1,1) == 0
        error('Khong the phan tich duoc');
    end;
    for j = 2:N, U(1,j) = A(1,j)/L(1,1); end;
    for j = 2:N-1
        for i = j:N
            sum = 0;
            for k = 1:j-1, sum = sum + L(i,k)*U(k,j); end;
            L(i,j) = A(i,j) - sum;
        end;
        if L(j,j) == 0
            error('Khong the phan tich duco');
        end;
        for i = j+1:N
            sum = 0;
            for k = 1:j-1, sum=sum+L(j,k)*U(k,i); end;
            U(j,i) = (A(j,i)-sum)/L(j,j);
        end;
    end;
    sum = 0;
    for k = 1:N-1, sum = sum + L(N,k)*U(k,N); end;
    L(N,N) = A(N,N) - sum;
return;
%----------------------------------------------------------