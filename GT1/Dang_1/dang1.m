D?NG 1:
1/
>> syms n
>> limit((9^n)/(factorial(n)),inf)
 ans = 0

2/
>> syms x
>> limit((1/(x+(-1)^x)),x,inf)
 ans = NaN

3/
>> syms x
>> limit(sqrt(x^2+1)-(x^3+1)^(1/3),x,inf)
 ans = 0

 4/
>> syms x
>> limit((2^x+3^x)/(2^x-3^x),x,inf)
 ans =  -1

 5/
>> syms x
>> limit((2*x^3+3*x^2-(log(x))^9)/(3*(log(x))^7-x^3),x,inf)
 ans =  -2

 6/
>> syms x
>> syms m
>> syms n
>> limit((x^(1/m)-1)/(x^(1/n)-1),x,1)
ans = n/m

7/
>> syms x
>> limit((sqrt(x)+sqrt(x-1)-1)/sqrt(x^2-1),x,1)
 ans =   2^(1/2)/2

 8/
>> syms x
>> limit((sqrt(2)-2*cos(x))/(pi-4*x),x,pi/4)
 ans =   -2^(1/2)/4

 9/
>> syms a x;
>> limit((tan(pi*x)/(2*a))*sin((x-a)/2),x,a)
 ans = 0

 10/
>> syms x a 
>> f=(log(x*(1+x))/(x*log(a)))
 f = log(x*(x + 1))/(x*log(a))
 >> limit(f,x,0)
 ans = NaN

11/
>> syms x
>> limit(((x-3)/(x+2))^(2*x+1),x,inf)
 ans = exp(-10)

 12/
>> syms a x; 
>> 	limit(x*(a^(1/x)-1),x,inf)
 ans = log(a)

 13/
>> syms x
>> 	limit((2+x)^(1/x),x,0,'left') 
 ans = 0
 >> 	limit((2+x)^(1/x),x,0,'right')
 ans = Inf

 14/
>> syms x
>> limit((abs(tan(4*x-pi)))/(2*x-pi/2),x,pi/4,'right')
 ans = 2
 >> limit((abs(tan(4*x-pi)))/(2*x-pi/2),x,pi/4,'left')
 ans =  -2

 15/
syms x
>> limit((exp(1/x)+1/x)^x,x,0)
 ans = NaN

16/
>> syms x
>> 	limit((2^x-x^2)/(x-2),x,2) 
 ans = 4*log(2) – 4

17/
>> syms x
>> 	limit((tan(2*x)-3*asin(4*x))/(sin(5*x)-6*atan(7*x)),x,0)
 ans = 10/37

18/
syms x
>> 	limit((exp(sin(x))+log(1-x)-1)/(asin(x)-sin(x)),x,0)
 ans =   -1

19/
>> syms x 
>> 	limit((exp(x)+log(1-sin(x))-1)/((8-x^4)^(1/3)-2),x,0)
 ans =  1/2

20/
>> syms x
>> 	limit(((1+x)^(1/x)-exp(1))/((sin(x))^2+x),x,0)
 ans = NaN

21/
>> syms x
>> 	limit((1+x*cos(x)-sqrt(1+2*x))/(log(1+x)-x),x,0)
 ans =  -1

22/

23/
>> syms x
>> limit(((2*x^2+3)/(2*x^2-1))^(x^2),x,inf)
 ans = exp(2)

 24/
>> syms x a
>> 	limit((2-x/a)^(tan((pi*x)/(2*a))),x,a)
 ans =exp(2/pi)
 

 

 
