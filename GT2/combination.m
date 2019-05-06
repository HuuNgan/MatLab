%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%---------------FIND THE COMBINATION-----------------%
%---------------AUTHOR: HUUNGAN----------------------%
function C = combination(k,n);
    if ((n>=k)&(n>=0)&(k>=0))
        C = factorial(n)/(factorial(k)*factorial(n-k));
        %formular for finding the combination
    else error('n,k must be positive and n>=k');
    end;
return;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
