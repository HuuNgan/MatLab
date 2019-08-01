syms x; 
	f=x^2-4; 
	a=solve(f)
	dientich=abs(2*pi*double(int(abs(f)*sqrt(1+(diff(x))^2),x,a(2,1),a(1,1))))
