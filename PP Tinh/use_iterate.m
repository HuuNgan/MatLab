function use_iterate
    g = inline('(2*x+3)^(1/3)','x');
    x0 = 1.5;
    [x,ss,n] = iterate(g,x0,0.0001)
return;