syms y; 
	x=4-y^2; 
	a=solve(x)
	dientich=2*2*pi*int(abs(x)*sqrt(1+(diff(x,y))^2),y,a(2,1),a(1,1))
