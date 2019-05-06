%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   x la mang chua doi so,
%   y la mang chua gia tri cua ham so,
%   xx la gia tri ma tai do can tinh dao ham
% OUTPUT:
%   d la gia tri xap xi cua dao ham.
%------------------------------------------------
function [d] = derivative(x, y, xx)
p = interp(x,y);
q = polyder(p);
d = polyval(q, xx);
return;
%------------------------------------------------