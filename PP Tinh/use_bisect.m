%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%--------FUNCTION USE BISECT-----------%
function use_bisect
    f = inline('x^2-sin(pi*x)', 'x');
    a=0.5; b=1; N=5;
    [x,fx] = bisect(f,a,b,N)
return;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%    
