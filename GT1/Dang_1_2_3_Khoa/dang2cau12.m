function dang2cau12
syms x t;
	x=atan(t);
	y=log(1-t^2);
	y1=diff(y,t)/diff(x,t);
	y2=diff(y1,t)/diff(x,t)
