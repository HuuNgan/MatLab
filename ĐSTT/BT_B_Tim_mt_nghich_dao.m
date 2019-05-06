%Tim ma tran nghich dao
%%%%%%%%%%%%%%%%%%%%%%%

M = input('nhap vao ma tran vuong: ')
N = size (M,1); % 1 la dong, 2 la cot, i la hang, j la cot
m = size (M,2);
I=eye(N)        %Tao ma tran don vi

if N~=m
    error ('ma tran khong vuong')
else
if det(M)==0
    error ('ma tran khong kha nghich')
else
    A=[M I]
    
    %Bien doi tam giac tren bang 0
    i=1             % i:hang, j: cot
    j=N
        while i<=(j-1)
            A(i,:)=A(i,:)-(A(i,j)/A((i+1),j))*A((i+1),:)
            if (i==N-1)&&(j>=2)
               i=0
               j=j-1
            end;
           i=i+1
        end;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Bien doi tam giac duoi bang 0
    i=N             % i:hang, j: cot
    j=1
        while i>=(j+1)
            A(i,:)=A(i,:)-(A(i,j)/A((i-1),j))*A((i-1),:)
            if (i==2)&&(j<=(N-1))
               i=N+1
               j=j+1
            end;
           i=i-1
        end;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Tao ma tran don vi o phia truoc
    for i=1:N
        A(i,:)=A(i,:)/A(i,i)
    end;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    disp('Ma tran nghich dao: ')
    disp([A(:,(N+1):N*2)])
end;
end;