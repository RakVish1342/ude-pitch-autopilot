function output = b_exp(u)

global dm_a
global Kq wa Iy d Ca
global M
%
%
%M = u(1);
delc = u;
%
b = Kq*(M^2)*dm_a*wa;
%
output = b*delc;
%
%
return