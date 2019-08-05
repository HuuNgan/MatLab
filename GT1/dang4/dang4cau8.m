
syms x;
	x=linspace(0,3,30);
	y=sinh(x);
	x1=linspace(3,0,30);
	y1=0*x1;
	plot([x x1],[y y1])
