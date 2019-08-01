>> syms x a 
>> f=(log(x*(1+x))/(x*log(a)))
 f = log(x*(x + 1))/(x*log(a))
 >> limit(f,x,0)
 ans = NaN