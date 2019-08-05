	syms y
	f1=sqrt(y^2-2*y);
	f2=sqrt(2*y-y^2);
	f3=y*sqrt(3);
	gd=double(solve(f1-f3)) 
	gd=double(solve(f2-f3)) %th?y ra 2 nghi?m-> s? d?ng d? v?)
	set(ezplot(f2,[gd(1), gd(2)]),'color','r')
	set(ezplot(f3,[gd(1),gd(2)]),'color','b')
