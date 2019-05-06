%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   N la so phuong trinh va so an,
%   A la vector chua cac phan tu thuoc duong cheo chinh,
%   B va C la cac vector chua cac phan tu nam tren va duoi duong cheo chinh
%   D la vector tu do o ve phai cua he.
% OUTPUT:
%   X la vector nghiem.
%--------------------------------------------------------------------------
function [X] = tridiag(N,A,B,C,D)
    if nargin < 5,
        error('ham co toi thieu 5 doi so');
    end;
    u(1)=A(1); v(1)=B(1); l(1)=C(1)/u(1); y(1)=D(1);
    for i = 2:N-1
        u(i) = A(i)-l(i-1)*v(i-1);
        v(i) = B(i);
        l(i) = C(i)/u(i);
        y(i) = D(i)-l(i-1)*y(i-1);
    end;
    u(N) = A(N)-l(N-1)*v(N-1);
    y(N) = D(N)-l(N-1)*y(N-1);
    X(N) = y(N)/u(N);
    for i = N-1:-1:1
        X(i) = (y(i)-v(i)*x(i+1))/u(i);
    end;
return;
%--------------------------------------------------------------------------