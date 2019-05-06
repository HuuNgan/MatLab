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
    j=N
    while j>=2
        for i=1:(j-1)
            A(i,:)=A(i,:)-(A(i,j)/A((i+1),j))*A((i+1),:)
            i=i-1
        end;
        j=j-1
    end;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Bien doi tam giac duoi bang 0
    for j=1:N
        i=N
        while i>=(j+1)
            A(i,:)=A(i,:)-(A(i,j)/A((i-1),j))*A((i-1),:)
            i=i-1
        end;
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