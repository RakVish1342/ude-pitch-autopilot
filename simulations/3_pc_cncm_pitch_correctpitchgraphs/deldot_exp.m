function output = deldot_exp(u)

global a_eqn

global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
global M
%
%
del = u(1);
delc = u(2);
%
%
deldot = -wa*del + wa*delc;
%
%
output = deldot;
%
%
return