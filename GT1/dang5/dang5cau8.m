syms x y
A = solve(x^2 + y^2 == 1, x^2 + y^2 +2*y ==1)
A = [A.x A.y]
int(abs(sqrt(1 - x^2) - sqrt(2 - x^2) + 1),
A(1,1), A(1,2)

