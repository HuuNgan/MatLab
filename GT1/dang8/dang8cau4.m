syms x y t 
x= t - sin(t) 
y = 1-cos(t) 
c= diff(y)/diff(x) 
int((1+c^2)^1/2*diff(x),0,2*pi)
