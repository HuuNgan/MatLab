	syms t
	t=linspace(0,2*pi,30);
	x1=1+sin(t);
	y1=cos(t);
	x2=sin(t);
	y2=1+cos(t);
	plot(x1,y1);
	hold on
	plot(x2,y2)
