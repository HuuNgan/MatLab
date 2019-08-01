>> syms x
>> limit((abs(tan(4*x-pi)))/(2*x-pi/2),x,pi/4,'right')
 ans = 2
 >> limit((abs(tan(4*x-pi)))/(2*x-pi/2),x,pi/4,'left')
 ans =  -2
