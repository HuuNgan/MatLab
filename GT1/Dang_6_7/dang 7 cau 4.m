syms x
	y1=x^2/2;
	y2=(3-2*x)/2;
	double(solve(y1-y2))
	pi*int(abs(y1^2-y2^2),x,-3,1)

    