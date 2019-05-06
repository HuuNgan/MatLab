%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%----------Function finding taylor(maclaurin) series----------%
%--------------------Author: HUUNGAN--------------------------%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%------------------------INSTRUCTION--------------------------%
%---Enter 'syms x y;' then enter your function and run--------%
%---You can demo with below function in GT2-Book, P.47&P.48---%
%---f= x^3-5*x^2-x*y+y^2+10*x+5*y-4;--------------------------%
%---x0=2;y0=1;n=3;--------------------------------------------%

function T = KT_taylor(f,x0,y0,n)
    syms x y dx dy;
    T = subs(subs(f,x,x0),y,y0);
    for i = 1:n
        T = T + subs(subs(viphan(f,i),x,x0),y,y0)/factorial(i);
    end;
    T= subs(subs(T,dx,x-x0),dy,y-y0);
return;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%