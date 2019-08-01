syms x; 
	y=sqrt(x-4); 
	a=solve(y) 
	dientich=2*2*pi*int(abs(y)*sqrt(1+(diff(y))^2),x,0,a)
