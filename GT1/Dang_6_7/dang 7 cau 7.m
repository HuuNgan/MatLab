syms x;
f=exp(-x)+1
g=exp(-2*x)-1
a=solve(-exp(-2*x)+exp(-x)+2)
tt=abs(pi*int(f-g,x,0,a(2,1)))
%can  than vi khi giai Phuong trinh ta dc 1 nghiem phuc nen loai ko tinh
%nghiem phuc do
