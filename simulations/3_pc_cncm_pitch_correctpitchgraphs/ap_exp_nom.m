function output = ap_exp_nom(u)


global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
global Mn
%
%
x1 = u(1);
x2 = u(2);
x3 = u(3);
del = u(4);
%
%
a1 = Kq*(Mn^2)*(3*am*(x1^2)+bm*2*abs(x1)+cm*(-7+8*Mn/3))*x2;
a2 = -Kq*(Mn^2)*dm*wa*del;
a3 = Ka*Mn*(6*an*x1+2*bn*sign(x1))*(x2^2);
a4 = Ka*Mn*(3*an*(x1^2)+2*bn*abs(x1)+cn*(2-Mn/3))*x3;
% 
%
%
ap_eqn_nom = (a1 + a2 + a3 + a4);
%
%
output = ap_eqn_nom;
%
%
return