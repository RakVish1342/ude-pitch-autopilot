function output = fil_exp(u)

global a_eqn

global an am bn bm cn cm dn dm
global m Vs Po S Ka Kq wa Iy d Ca
global M
%
y = u(1);
%
yy = smooth(y);
%
output = yy;
%
return