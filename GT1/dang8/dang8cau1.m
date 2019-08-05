  	 syms x;
f=x^(3/2)
a=diff(f)
l=double(int(sqrt(1-a^2),x,0,4))
