function dang2cau5
syms x; 
	y=subs(diff(sqrt(x+sqrt(x+sqrt(x))),x,1),x,1)
double(y)