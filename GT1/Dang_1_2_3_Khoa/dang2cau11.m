function dang2cau11
syms x t;
	x=acos(1/sqrt(1+t^2));
	y=asin(t/sqrt(1+t^2));
	y1=diff(y,t)/diff(x,t)
	y2=diff(y1,t)/diff(x,t)
