%cau10
syms x t;
	x=linspace(0,1,30);
	y=asin(x);
	y1=pi/2+0*x;
	hold on
	plot(x,y);
	plot(x,y1);
	set(ezplot(0*t,t,[0 asin(1)]));
