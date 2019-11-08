%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Tim dao ham f tai M(1,1) theo huong u(1,-2)
syms x y;
f = x*y^2-3*x^4*y^5;             
fx = subs(diff(f,x),[x y],[1 1]);
fy = subs(diff(f,y),[x y],[1 1]); 
daohamtheohuong = (fx*1+fy*(-2))/sqrt(1+(-2)^2)

