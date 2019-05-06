%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   x va y la cac vector chua cac gia tri cua doi so ca cua ham
% OUTPUT:
%   P la da thuc can tim
%---------------------------------------------------------------
function [P] = interp(x,y)
    if nargin < 2, error('Ham phai co 2 doi so'); end;
    N = min(length(x),length(y)); A = zeros(N+1);
    for i = 1:N
        for j = 1:N
            A(i,j) = x(i)^(j-1);
        end;
    end;
    for i = 1:N, A(i,N+1) = y(i); end;
    q = gaussjordan(N,A);
    for i = 1:N, P(i) = q(N-i+1); end;
return;
%---------------------------------------------------------------