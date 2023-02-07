function output = qddot(u)

global a_eqn

global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
%
%
x1 = u(1);
x2 = u(2);
x3 = u(3);
alphatdot = u(4);
M = u(5);
del = u(6);
% M = u(5);
%
%
a1 = 0;
a2 = 0;
a3 = Ka*M*(6*an*x1 + 2*bn*sign(x1))*(x2^2);
a4 = Ka*M*(3*an*(x1^2) + 2*bn*abs(x1) + cn*(2-M/3))*x3;

b1 = Kq*(M^2)*dm*wa;
% 
%
%
qddot = (alphatdot - (a3 + a4));
%
%
output = qddot;
%
%
return