function dang2cau10
syms x t;
	x=t*(t*cos(t)-2*sin(t))
	y=t*(sin(t)+2*cos(t));
	y1=diff(x,t)/diff(y,t)
	z=subs(y1,t,pi/4)
double(z)