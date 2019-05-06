%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INPUT:
%   x, y, z la cac vector chua cac gia tri cua doi so,
%   cua ham va dao ham cua no.
% OUTPUT:
%   P la mang 2n chieu chua he so cua da thuc Hermite
%   H(x) = P(1)+P(2)(x-x(1))+P(3)(x-x(1))^2+...+
%        +P(2n)(x-x(1))^2...(x-x(n-1))^2(x-x(n))
%--------------------------------------------------------------------
function [P] = hermite(x,y,z)
if nargin<3, error('ham phai co 3 doi so'); end;
n = length(x);
xx  = zeros(2*n,1);
Q = zeros(2*n);
for i = 1:n
    xx(2*i-1) = x(i);
    xx(2*i) = x(i);
    Q(2*i-1,1) = y(i);
    Q(2*i,1) = y(i);
    Q(2*i,2) = z(i);
    if i>1
        Q(2*i-1,2) = (Q(2*i-1,1)-Q(2*i-2,1))/(xx(2*i-1)-xx(2*i-2));
    end;
end;
for j = 3:2*n
    for i = j:2*n
        Q(i,j) = (Q(i,j-1)-Q(i-1,j-1))/(xx(i)-xx(i-j+1));
    end;
end;
P = zeros(2*n,1);
for i = 1:2*n
    P(i) = Q(i,i);
end;
return;
%--------------------------------------------------------------------
