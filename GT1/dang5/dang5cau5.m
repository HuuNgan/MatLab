syms x
A = solve(exp(x) - 1 == exp(3*x) - 3)
isreal(A(1,1)), isreal(A(2,1)),
isreal(A(3,1))
int(abs(exp(3*x) - exp(x) - 2), 0, A(1,1))

