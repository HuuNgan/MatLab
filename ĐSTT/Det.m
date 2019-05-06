%Tim dinh thuc
%%%%%%%%%%%%%% LUU Y %%%%%%%%%%%%%%%
%%% Code chi tinh duoc den bac 3 %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

M=input('nhap M: ')
N = size (M,1); % 1 la dong, 2 la cot, i la hang, j la cot
m = size (M,2);
if N~=m
    error ('ma tran khong vuong')
else

    n=N
    Y=0
    X=1
    for i=1:N
        D=M
        while n>2
        X=(D(i,1)*(-1)^(i+1))   %X la phan bu dai so
        D(i,:)=[]
        D(:,1)=[]
        n=size (D,1)
        end;
        n=N
        Z=(D(1,1)*D(2,2)-D(2,1)*D(1,2))*X
        Y=Y+Z
    end;
end;
disp ('Det(M) = ')
disp (Y)