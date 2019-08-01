syms x;
f=x^2-x;
a=solve(f);
dt=double(2*pi*int(abs(f)*sqrt(1+(diff(f))^2),x,a(1,1),a(2,1)))

