syms y; 
	x=sqrt(y); 
	a=solve(x); 
	dientich=2*2*pi*int(abs(x)*sqrt(1+(diff(x))^2),y,a,4)
