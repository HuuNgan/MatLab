%Tim khai trien maclaurint den cap 3 cua f
%Luu y: code nay can su dung kem cac files script sau day:
%    combination.m --dung de tinh to hop
%    daoham.m      --dung tinh dao ham 2 bien
%    viphan.m      --tinh vi phan cap n ham 2 bien
%    KT_taylor.m   --khai trien taylor ham 2 bien
syms x y;
f = exp(x)*sin(y);
f = KT_taylor(f,0,0,3)