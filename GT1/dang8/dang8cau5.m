syms x;
	y=sqrt(2-x^2);
    y1=diff(y,x)
	L=int(sqrt(1+y1^2),x) %vi x^2=2-y^2,nen 0<=x<sqrt(2)
    a=limit(L,x,-sqrt(2))
    b=limit(L,x,sqrt(2))
    L=b-a
