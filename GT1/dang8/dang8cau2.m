syms x; 
	y=log(cos(x)); 
	a=diff(y) 
	b=sqrt(1-a^2); 
	L=int(b,x,0,pi/4)
