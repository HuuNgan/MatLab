%-------------------------------------------------------------
% INPUT
% f l� bi?u th?c c?a h�m f(x) cho theo d?ng h�m inline()
% a v� b l� 2 ?i?m bi�n c?a ?o?n [a,b]
% N l� s? l?n chia ?�i(gi� tr? m?c ??nh l� 100)
% OUTPUT
% x l� vector nghi?m ch?a d�y l?p {x_n};
% fx l� vector ch?a gi� tr? c?a h�m f(x_n)
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