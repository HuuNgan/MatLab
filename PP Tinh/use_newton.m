function use_newton
    f = inline('x^3-2*x-3','x');
    f1 = inline('3*x^2-2','x');
    x0 = 2;
    [x,ss,n] = newton1(f,f1,x0,0.000001)
return;