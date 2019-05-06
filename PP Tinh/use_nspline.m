function use_nspline
x = [0.1 0.3 0.5 0.7 0.9 1.0 1.2 1.4 1.6 1.8 2.0];
y = [0.32 0.55 0.67 0.83 0.99 1.11 1.33 1.51 1.67 1.84 2.0];
[a,b,c,d] = nspline(x,y);
p = [d(9) c(9) b(9) a(9)];
Y = polyval(p, 0.05);
fprintf('Y = %15.12f\n', Y);
return;