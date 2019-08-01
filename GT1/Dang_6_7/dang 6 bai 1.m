syms x;
y=x^3/3
dt=2*pi*int(abs(y)*sqrt(1+(diff(y))^2),x,0,1)

