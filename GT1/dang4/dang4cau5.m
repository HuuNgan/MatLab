	syms x;
	x=linspace(1/exp(1),exp(1),30);
	y=log(x);
	x1=linspace(exp(1),1/exp(1),30);
	y1=-1+0*x1;
	plot([x x1],[y y1])
