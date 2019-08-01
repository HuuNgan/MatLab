syms x; 
	y1=x^2/2;
	y2=sqrt(2*x);
	f=y1-y2 
 	a=solve(f);
	dientich=abs(int(f,x,a(1,1),a(2,1)))

    
