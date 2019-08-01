syms x; 
	f=x; 
	g=5*x+x^2; 
	h=f-g
 	a=solve(h)
	dientich=2*pi*double(int(abs(f-g)*sqrt(1+(diff(f-g))^2),x,a(1,1),a(2,1)))
