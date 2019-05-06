%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   f la ham duoi dau tich phan,
%   a va b la cac can duoi va tren
%   n la so doan chia
% OUTPUT:
%   I la gia tri xap xi cua tich phan
%-----------------------------------------------------
function [I] = trapez(f,a,b,n)
    if nargin<4, error('Ham co it nhat 4 doi so'); end;
    if n <= 0, error('Khong the tinh tich phan'); end;
    h = (b-a)/n;
    I = (feval(f,a)+ feval(f,b))/2
    for i = 1:N-1
        I = I + feval(f,a+i*h);
    end;
    I = I*h;
return;
%-----------------------------------------------------