function output = a_exp(u)

global a_eqn

global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
%
%
x1 = u(1);
x2 = u(2);
x3 = u(3);
del = u(4);
M = u(5);
% M = u(5);
%
%
a1 = Kq*(M^2)*(3*am*(x1^2) + bm*2*abs(x1) + cm*(-7+8*M/3))*x2;
a2 = -Kq*(M^2)*dm*wa*del;
a3 = Ka*M*(6*an*x1 + 2*bn*sign(x1))*(x2^2);
a4 = Ka*M*(3*an*(x1^2) + 2*bn*abs(x1) + cn*(2-M/3))*x3;
% 
%
%
a_eqn = (a1 + a2 + a3 + a4);
%
%
output = a_eqn;
%
%
return