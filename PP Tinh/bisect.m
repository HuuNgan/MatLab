%-------------------------------------------------------------
% INPUT
% f là bi?u th?c c?a hàm f(x) cho theo d?ng hàm inline()
% a và b là 2 ?i?m biên c?a ?o?n [a,b]
% N là s? l?n chia ?ôi(giá tr? m?c ??nh là 100)
% OUTPUT
% x là vector nghi?m ch?a dãy l?p {x_n};
% fx là vector ch?a giá tr? c?a hàm f(x_n)
%-------------------------------------------------------------

function [x, fx] = bisect(f, a, b, N)
    if nargin < 4, N=100; end;
    if nargin < 3
        error('Ham phai co toi thieu 3 doi so.');
    end;
    fa = feval(f,a); x=[]; fx=[]; n=0; err = eps + 1;
    while (n < N+1)
        n = n+1; c= a + (b-a)/2; fc = feval(f,c);
        x = [x;c]; fx = [fx,fc];
        if fa*fc > 0
            a = c; fa = fc;
        else
            b = c;
        end;
    end;
return;
%-------------------------------------------------------------