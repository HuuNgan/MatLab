function use_hermite(x,y,z,xx)
n = length(x);
X = zeros(2*n,1);
for i = 1:n
    X(2*i-1) = x(i);
    X(2*i) = x(i);
end;
P = hermite(x,y,z);
S = P(1);
for i = 2:2*n
    T = 1;
    for j = 1:i-1
        T = T*(xx-X(j));
    end;
    S = S + P(i)*T;
end;
fprintf('H(%3.1f) = %8.6f\n', xx, S);
return;