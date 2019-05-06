%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   f la ham duoi dau tich phan
%   a va b la cac can duoi va tren
%   n la so doan chia.
% OUTPUT:
%   I la gia tri xap xi cua tich phan
%-----------------------------------------------------
function [I] = simpson(f,a,b,n)
    if n<=0, error('Khong the tinh tich phan'); end;
    if mod(n,2) ~= 0,
        error('So doan chia phai la so chan');
    end;
    h = (b-a)/n; m = n/2;
    I = subs(f,a)+subs(f,b)+4*subs(f,a+h);
    for i = 1:m-1
        I = I+2*subs(f,a+2*i*h)+4*subs(f,a+(2*i+1)*h)
    end;
    I = I*h/3;
return;
%-----------------------------------------------------