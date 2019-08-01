syms x; 
	y=sqrt(9*(1-x^2/4)); 
	a=solve(y); 
	dientich=abs(2*pi*double(int(abs(y)*sqrt(1+(diff(y))^2),x,a(2,1),a(1,1))))
