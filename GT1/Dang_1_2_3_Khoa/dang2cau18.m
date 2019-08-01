function dang2cau18
syms t x; 	
	y=subs(int(exp(t)/t,1,x),x,log(2))
    double(y)
