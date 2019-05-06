%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   N la cap cua ma tran,
%   A la ma tran he so cap N.
% OUTPUT:
%   L va U la cac ma tran tam giac
%---------------------------------------------------------%
function [L,U] = doolittle(N, A)
    L = zeros(N); U = zeros(N);
    for i = 1:N, L(i,i) = 1; end;
    for j = 1:N, U(1,j) = A(1,j); end;
    if U(1,1) == 0,
        error('Khong the phan tich duoc');
    end;
    for i = 2:N, L(i,1) = A(i,1)/U(1,1); end;
    for i = 2:N-1
        for j = i:N
            sum = 0;
            for k = 1:i-1, sum = sum + L(i,k)*U(k,j); end;
            U(i,j) = A(i,j)-sum;
        end;
        if U(i,i) == 0,
            error('Khong the phan tich duoc')
        end;
        for j = i+1:N
            sum = 0;
            for k = 1:i-1, sum = sum + L(j,k)*U(k,i); end;
            L(j,i) = (A(j,i)-sum)/U(i,i);
        end;
    end;
    sum = 0;
    for k = 1:N-1, sum = sum + L(N,k)*U(k,N); end;
    U(N,N) = A(N,N)-sum;
return;
%---------------------------------------------------------%