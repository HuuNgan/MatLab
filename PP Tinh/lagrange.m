%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   x va y la cac vector chua cac gia tri cua doi so ca cua ham
%   xx la gia tri cua doi so
% OUTPUT:
%   yx la gia tri xap xi cua ham tai xx.
%---------------------------------------------------------------
function [yx] = lagrange(x, y, xx)
    if nargin <3, error('Ham phai co 3 doi so'); end;
    N = min(length(x),length(y));
    for i = 1:N    %--Kiem tra xx trung voi cac diem nut.
        if xx == x(i)
            yx = y(i);
            return;
        end;
    end;
    omega = 1;
    for i = 1:N, omega = omega*(xx-x(i)); end;
    D = [];
    for k = 1:N
        D(k) = 1;
        for i = 1:N
            if i ~= k
                D(k) = D(k)*(x(k)-x(i));
            end;
        end;
        D(k) = D(k)*(xx-x(k));
    end;
    yx = 0;
    for k = 1:N, yx = yx + y(k)/D(k); end;
    yx = yx*omega;
return;
%---------------------------------------------------------------