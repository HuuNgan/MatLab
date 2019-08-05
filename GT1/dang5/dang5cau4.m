	syms x
	f1=2*sqrt(x);
	f2=-2*sqrt(x);
	f3=x^2/4;
	solve(f1-f3) %th?y ra 2 nghi?m-> s? d?ng
	solve(f2-f3)
	gd=double(solve(f1-f3));
	int(abs(2*sqrt(x)-x^2/4),x,gd(1),gd(2))
