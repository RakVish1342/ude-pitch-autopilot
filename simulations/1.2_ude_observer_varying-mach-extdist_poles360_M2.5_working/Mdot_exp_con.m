function output = Mdot_exp_con(u)

global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
%
%
x1 = u(1);
del = u(2);
M = u(3);
%
Kz = 0.7*Po*S/m;
%
Cn = an*(x1^3)+bn*x1*abs(x1)+cn*(2-M/3)*x1+dn*del;
%
ax = 0.7*Po*S*Ca/m;
%
az = Kz*(M^2)*Cn;
%
Mdot = (-abs(az)*sin(abs(x1))+ax*(M^2)*cos(x1))/Vs;
%
output = Mdot;
%
%
return