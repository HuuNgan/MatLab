%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-----------------------EULER---------------------------%
% INPUT:
%   f la ham hai bien,
%   t0 la diem dau,
%   y0 la gia tri ban dau cua ham,
%   h la buoc chia,
%   t1 la diem cuoi.
% OUTPUT:
%   t va y la hai vector chua gia tri cua doi so va cua
%   ham so.
%-------------------------------------------------------%
function [y,t] = rk4(f, t0, y0, h, t1)
    if nargin<4, error('Ham co it nhat 4 doi so'); end;
    if nargin<5, , t1 = t0+h; end;
    t = []; t = [t,t0]; n = (t1-t0)/h;
    for i = 1:n, t(i+1) = t(i)+h; end;
    y = []; y = [y,y0];
    for i = 1:n
        K1 = h*f(t(i),y(i));
        K2 = h*f(t(i)+h/2,y(i)+K1/2);
        K3 = h*f(t(i)+h/2,y(i)+K2/2);
        K4 = h*f(t(i)+h,y(i)+K3);
        y(i+1) = y(i)+(K1+2*K2+2*K3+K4)/6;
    end;
return;
%-------------------------------------------------------%