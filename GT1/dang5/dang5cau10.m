	syms x
	f1=27/(x^2+9);
	f2=x^2/6;
	solve(f1-f2) %ra nghi?m là -3 ,3
	int(abs(f1-f2),x,-3,3)