function output = b_exp(u)

global a_eqn

global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
global Mn
%
%
% M = u(1);
% delc = u(1);
delc = u(1);
M = u(2);
%
b = Kq*(Mn^2)*dm*wa;
%
output = b*delc;
%
%
return