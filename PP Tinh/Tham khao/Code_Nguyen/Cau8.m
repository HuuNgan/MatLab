function Cau8
clc;
mn = input('Nhap 2 so cuoi MSSV: ');
M = (mn+12)/10;
		syms x
		p = [0.1 0.3 0.6 0.9 1.1 1.4];
		q = [3*M 0.6 1.5 3.7 3.2 4.3];
		x1 = 1; x2 = 1; x3 = 1; x4 =1; x5 = 1;
		for i = 1:(size(p,2)-1)
			a(i) = (q(i+1)-q(i))/(p(i+1)-p(i));
			x1 = x1*(x-p(i));
		end
		for i = 1:(size(a,2)-1)
			b(i) = (a(i+1)-a(i))/(p(i+2)-p(i));
			x2 = x2*(x-p(i));
		end
		for i = 1:(size(b,2)-1)
			c(i) = (b(i+1)-b(i))/(p(i+3)-p(i));
			x3 = x3*(x-p(i));
		end
		for i = 1:(size(c,2)-1)
			d(i) = (c(i+1)-c(i))/(p(i+4)-p(i));
			x4 = x4*(x-p(i));
		end
		for i = 1:(size(d,2)-1)
			e(i) = (d(i+1)-d(i))/(p(i+5)-p(i));
			x5 = x5*(x-p(i));
		end    
		A = subs(diff((q(1)+a(1)*x5+b(1)*x4+c(1)*x3+d(1)*x2+e(1)*x1),x),x,0.5);
		disp('gia tri xap xi dao ham cap 1 cua ham tai x=0.5 la:');disp(double(A));
		
		
		
		
end