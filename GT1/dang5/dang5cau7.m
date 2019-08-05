	syms x
xo = solve(log(x + 2) = 2*log(x))
int(abs(log(x + 2) - 2*log(x)), 1/exp(1),xo)
