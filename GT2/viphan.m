%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%------------Thuat toan tim vi phan cap n ham 2 bien---------------%
%----------------------Author: HUUNGAN-----------------------------%
function df = viphan(f,n)
    syms x y dx dy;
    df = 0;
    for k = 0: n
        df = df + (combination(k,n)*daoham(f,n-k,k)*dx^(n-k)*dy^k);
    end;
return;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%