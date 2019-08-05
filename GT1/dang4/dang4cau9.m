syms t
	x=linspace(1,3,30);
	y=3./x;
	y1=4*ones(1,30)-x;
	plot(x,y);
	hold on
	plot(x,y1)
