	syms x y
A = solve(x^2 + y^2 == 8, y^2 == 2*x)
abs(int(abs(y^2/2 - sqrt(8 - y^2)), 2, -2))
