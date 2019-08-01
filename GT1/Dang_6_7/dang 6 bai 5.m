
syms y; 
	x=sqrt(4*(1-y^2/9));	
	a=solve(x)
	dientich=2*pi*double(int(abs(x)*sqrt(1+(diff(x,y))^2),y,a(2,1),a(1,1)))

    