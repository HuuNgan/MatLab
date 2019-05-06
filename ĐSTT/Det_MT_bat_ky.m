M=input('nhap M: ')
N = size (M,1); % 1 la dong, 2 la cot, i la hang, j la cot
m = size (M,2);
if N~=m
    error ('ma tran khong vuong')
else
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %Bien doi thanh ma tran bac thang
    for j=1:N
        i=N
        while i>=(j+1)
            M(i,:)=M(i,:)-(M(i,j)/M((i-1),j))*M((i-1),:)
            i=i-1
        end;
    end;
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     DET=1
     for i=1:N
         DET=DET*M(i,i)
     end;
end;
