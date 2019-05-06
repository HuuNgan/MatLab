%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%-----------FINDING DERIVATIVE----------%
%-----------Author: HUUNGAN-------------%
function DIF = daoham(f,level_x,level_y)
    syms x y ;
    n= level_x+level_y;
    DIF = diff(f,x,level_x);
    DIF = diff(DIF,y,level_y);
return;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%