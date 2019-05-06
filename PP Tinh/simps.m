%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   f la ham duoi dau tich phan
%   a va b la cac can duoi va tren
%   eps la sai so.
% OUTPUT:
%   I la gia tri xap xi cua tich phan.
%----------------------------------------------------------
function [I] = simps(f,a,b,eps)
if nargin<4, eps = 10^(-6); end;
if nargin<3, error('Ham phai co it nhat 3 doi so'); end;
err = eps+1; k = 1;
y0 = simpson(f,a,b,2);
while((err > eps)&&(k<64))
    k = k+1; n = 2^k;
    I = simpson(f,a,b,n);
    err = abs(I-y0);
    y0 = y;
end;
return;
%----------------------------------------------------------