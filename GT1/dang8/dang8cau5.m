syms x;
	y=sqrt(2-x^2);
    y1=diff(y,x)
	L=2*int(sqrt(1+y^2),x,-sqrt(2),sqrt(2)) %vi x^2=2-y^2,nen 0<=x<sqrt(2)
