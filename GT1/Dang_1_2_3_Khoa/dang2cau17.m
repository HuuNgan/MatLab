function dang2cau17
syms x t;
y=subs(int(exp(-t^2)+t,0,x),x,1)
double(y)
