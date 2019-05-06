% TIM MA TRAN NGHICH DAO %

%clear all
%clc
%%%
%M = input('nhap vao ma tran vuong: ')
%if det(M)==0
%   sprintf ('ma tran khong kha nghich')
%else  
%     M_ngich_dao = M^-1
%end;

% START FROM HERE %

function[B] = nghichdao(A) %tim ma tran nghich dao theo ma tran A
if nargin <1 error ('phai nhap vao ma tran can phan tich');
end;

N = size (A,1); % 1 la dong, 2 la cot, i la hang, j la cot
m = size (A,2);
d=0;
a=A;
i=1;
if N ~= m
    error ('ma tran khong vuong');
end;
l=A;
for h=1:N % bien doi bac thang
    k=A(h:N,:);
    k=k(:,h:N);
    for j=1:(N-h+1)
        for i=1:(N-h+1)
            if k(i,j) ~= 0
            e=i;
                if h==1
                    f=j;
                end;
                if h~=1
                    f=1;
                end;
                break;
            end;
        end;
        if k(i,j)~=0
            break
        end;
    end;
    
    d=d+(e-1)*(N-1)+(f-1)*(N-1);
    k=circshift(k,[-(e-1), -(f-1)]);
    p=[A(1:(h-1), h:N);k]
    A=[A(1:N,1:(h-1)) p];
        
        for g=h:(N-1)
            for i=(g+1):N
                if A(g,g)~=0
                    c=A(i,g)/A(g,g);
                    for j=g:N
                        A(i,j)=A(i,j)-(c*A(g,j));
                    end;
                end;
                if A(g,g)==0
                    break;
                end;
            end;
            if A(g,g)==0
                break;
            end;
        end;
    end;
    E=A(2:N,1:N,:);
    F=A(1,1:N);
    F=((-1)^d)*F;
    K=[F;E];
    dinhthuccha=1;
    for i=1:N % tinh dinh thuc
        dinhthuccha=dinhthuccha*K(i,i);
    end;
    for o=1:N
        l(o,:) = [];
        D=l;
        for t=1:N
            l(:,t)=[];
            N=N-1;
            for h=1:N
                k=l(h:N,:);
                k=k(:,h:N);
                for j=1:(N-h+1)
                    for i=1:(N-h+1)
                        if k(i,j)~=0
                            e=i;
                            if h==1
                                f=j;
                            end;
                            if h~=1
                                f=1;
                            end;
                            break;
                        end;
                    end;
                    if k(i,j)~=0
                        break;
                    end;
                end;
                d=d+(e-1)*(N-1)+(f-1)*(N-1);
                k=circshift(k, [-(e-1),-(f-1)]);
                p=[l(1:(h-1),h:N);k];
                l=[l(1:N,1:(h-1)) p];
                for g=h:(N-1)
                    for i=(g+1):N
                        if l(g,g)~=0
                            c=l(i,g)/l(g,g);
                            for j=g:N
                                l(i,j)=l(i,j)-(c*l(g,j));
                            end;
                        end;
                        if l(g,g)==0
                            break;
                        end;
                    end;
                    if l(g,g)==0
                        break;
                    end;
                end;
            end;
            E=l(2:N,1:N,:);
            F=l(1,1:N);
            F=((-1)^d)*F;
            G=[F;E];
            dinhthuccon=1;
            for i=1:N
                dinhthuccon=dinhthuccon*G(i,i);
            end;
            B(o,t)=((-1)^(o+t))*dinhthuccon;
            dinhthuccon=1;
            l=D;
            N=N+1;
        end;
        l=a;
    end; %tim ma tran dinh thuc con
    C=B;
    for j=1:N %chuyen vi ma tran
        for i=1:N
            B(i,j)=C(j,i);
        end;
    end;
    B=B/dinhthuccha;
                    